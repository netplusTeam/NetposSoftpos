.class Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeadlockChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    }
.end annotation


# instance fields
.field private cycle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;",
            ">;"
        }
    .end annotation
.end field

.field private final lsn:Ljava/lang/Long;

.field private ownersForRootLock:[J

.field private final rootLocker:Lcom/sleepycat/je/txn/Locker;

.field private final rootLocktype:Lcom/sleepycat/je/txn/LockType;

.field final synthetic this$0:Lcom/sleepycat/je/txn/LockManager;

.field private waitersForRootLock:[J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/txn/LockManager;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;)V
    .locals 0
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # Ljava/lang/Long;
    .param p4, "locktype"    # Lcom/sleepycat/je/txn/LockType;

    .line 1868
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    invoke-static {}, Lcom/sleepycat/je/txn/LockManager;->access$400()[J

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->ownersForRootLock:[J

    .line 1855
    invoke-static {}, Lcom/sleepycat/je/txn/LockManager;->access$400()[J

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->waitersForRootLock:[J

    .line 1857
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    .line 1869
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->rootLocker:Lcom/sleepycat/je/txn/Locker;

    .line 1870
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->lsn:Ljava/lang/Long;

    .line 1871
    iput-object p4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->rootLocktype:Lcom/sleepycat/je/txn/LockType;

    .line 1872
    return-void
.end method


# virtual methods
.method chooseTargetedLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 2

    .line 1875
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    sget-object v1, Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;->INSTANCE:Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1876
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->getTargetedLockerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method getOwnerAndWaitersForRootLocker()V
    .locals 5

    .line 2056
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->lsn:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 2057
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v1, v1, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 2059
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->lsn:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/sleepycat/je/txn/LockManager;->getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;

    move-result-object v2

    .line 2062
    .local v2, "localOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-eqz v2, :cond_0

    .line 2063
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-static {v3, v2}, Lcom/sleepycat/je/txn/LockManager;->access$900(Lcom/sleepycat/je/txn/LockManager;Ljava/util/Collection;)[J

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->ownersForRootLock:[J

    .line 2066
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->lsn:Ljava/lang/Long;

    .line 2067
    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/je/txn/LockManager;->getWaitersInternal(Ljava/lang/Long;I)Ljava/util/List;

    move-result-object v3

    .line 2069
    .local v3, "localWaiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-eqz v3, :cond_1

    .line 2070
    iget-object v4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-static {v4, v3}, Lcom/sleepycat/je/txn/LockManager;->access$900(Lcom/sleepycat/je/txn/LockManager;Ljava/util/Collection;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->waitersForRootLock:[J

    .line 2072
    .end local v2    # "localOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v3    # "localWaiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_1
    monitor-exit v1

    .line 2073
    return-void

    .line 2072
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getOwnersForRootLock()[J
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->ownersForRootLock:[J

    return-object v0
.end method

.method getTargetedLockerIndex()I
    .locals 7

    .line 1884
    const-wide/16 v0, 0x0

    .line 1885
    .local v0, "sum":J
    const/4 v2, 0x0

    .line 1886
    .local v2, "nLockers":I
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 1895
    .local v4, "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$600(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 1896
    nop

    .end local v4    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    add-int/lit8 v2, v2, 0x1

    .line 1897
    goto :goto_0

    .line 1903
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    int-to-long v5, v2

    rem-long/2addr v3, v5

    long-to-int v3, v3

    return v3
.end method

.method getWaitersForRootLock()[J
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->waitersForRootLock:[J

    return-object v0
.end method

.method hasCycle()Z
    .locals 4

    .line 1907
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->getOwnerAndWaitersForRootLocker()V

    .line 1913
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->rootLocker:Lcom/sleepycat/je/txn/Locker;

    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->lsn:Ljava/lang/Long;

    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->rootLocktype:Lcom/sleepycat/je/txn/LockType;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasCycleInternal(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    return v0
.end method

.method hasCycleInternal(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 16
    .param p1, "checkedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lsn"    # Ljava/lang/Long;
    .param p3, "requestLocktype"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "ownLockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 1932
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, v10}, Lcom/sleepycat/je/txn/LockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v11

    .line 1933
    .local v11, "lockTableIndex":I
    iget-object v0, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v0, v0, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 1934
    :try_start_0
    iget-object v0, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v0, v10, v9, v12, v11}, Lcom/sleepycat/je/txn/LockManager;->isOwnerInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 1936
    monitor-exit v1

    return v13

    .line 1938
    :cond_0
    iget-object v0, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager;->access$700(Lcom/sleepycat/je/txn/LockManager;)[Ljava/util/Map;

    move-result-object v0

    aget-object v0, v0, v11

    .line 1939
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/sleepycat/je/txn/Lock;

    .line 1941
    .local v5, "checkedLock":Lcom/sleepycat/je/txn/Lock;
    iget-object v2, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    const/4 v14, 0x1

    invoke-virtual {v2, v10, v11, v14}, Lcom/sleepycat/je/txn/LockManager;->getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 1943
    .local v0, "ownersForCheckedLock":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    if-nez v0, :cond_1

    .line 1946
    return v13

    .line 1954
    :cond_1
    new-instance v15, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;-><init>(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;)V

    .line 1957
    .local v1, "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    iget-object v2, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 1960
    .local v3, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    .line 1961
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v6

    .line 1962
    .local v6, "ownType":Lcom/sleepycat/je/txn/LockType;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->getWaitingFor()Ljava/lang/Long;

    move-result-object v7

    .line 1963
    .local v7, "waitsFor":Ljava/lang/Long;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->getWaitingForType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v15

    .line 1992
    .local v15, "requestType":Lcom/sleepycat/je/txn/LockType;
    if-eq v4, v9, :cond_7

    .line 1993
    iget-object v13, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->rootLocker:Lcom/sleepycat/je/txn/Locker;

    if-ne v4, v13, :cond_2

    .line 1995
    return v14

    .line 2005
    :cond_2
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    iget-object v14, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 2006
    iget-object v14, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    invoke-static {v14}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v14

    if-ne v14, v4, :cond_3

    .line 2008
    iget-object v2, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v2, v14, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2009
    const/4 v2, 0x1

    return v2

    .line 2005
    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    .line 2013
    .end local v13    # "index":I
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v15, :cond_6

    if-eqz v6, :cond_6

    .line 2017
    invoke-virtual {v8, v4, v7, v15, v6}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasCycleInternal(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2019
    const/4 v13, 0x1

    return v13

    .line 2017
    :cond_5
    const/4 v13, 0x1

    goto :goto_2

    .line 2013
    :cond_6
    const/4 v13, 0x1

    goto :goto_2

    .line 1992
    :cond_7
    move v13, v14

    .line 2023
    .end local v3    # "info":Lcom/sleepycat/je/txn/LockInfo;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "ownType":Lcom/sleepycat/je/txn/LockType;
    .end local v7    # "waitsFor":Ljava/lang/Long;
    .end local v15    # "requestType":Lcom/sleepycat/je/txn/LockType;
    :goto_2
    move v14, v13

    const/4 v13, 0x0

    goto :goto_0

    .line 2025
    :cond_8
    iget-object v2, v8, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2026
    const/4 v2, 0x0

    return v2

    .line 1943
    .end local v0    # "ownersForCheckedLock":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v1    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .end local v5    # "checkedLock":Lcom/sleepycat/je/txn/Lock;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v12, p3

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method hasTrueDeadlock()Z
    .locals 8

    .line 2031
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2032
    .local v1, "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    invoke-static {v1}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$600(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v2

    .line 2033
    .local v2, "lock":Lcom/sleepycat/je/txn/Lock;
    invoke-static {v1}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$800(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Ljava/lang/Long;

    move-result-object v3

    .line 2036
    .local v3, "lsn":Ljava/lang/Long;
    iget-object v4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/txn/LockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v4

    .line 2037
    .local v4, "lockTableIndex":I
    iget-object v5, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    iget-object v5, v5, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v5, v5, v4

    monitor-enter v5

    .line 2038
    :try_start_0
    iget-object v6, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->this$0:Lcom/sleepycat/je/txn/LockManager;

    .line 2039
    invoke-static {v6}, Lcom/sleepycat/je/txn/LockManager;->access$700(Lcom/sleepycat/je/txn/LockManager;)[Ljava/util/Map;

    move-result-object v6

    aget-object v6, v6, v4

    .line 2040
    .local v6, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/txn/Lock;

    move-object v6, v7

    .line 2041
    .local v6, "realtimeLock":Lcom/sleepycat/je/txn/Lock;
    monitor-exit v5

    .line 2043
    if-eq v6, v2, :cond_0

    .line 2044
    const/4 v0, 0x0

    return v0

    .line 2046
    .end local v1    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .end local v2    # "lock":Lcom/sleepycat/je/txn/Lock;
    .end local v3    # "lsn":Ljava/lang/Long;
    .end local v4    # "lockTableIndex":I
    .end local v6    # "realtimeLock":Lcom/sleepycat/je/txn/Lock;
    :cond_0
    goto :goto_0

    .line 2041
    .restart local v1    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .restart local v2    # "lock":Lcom/sleepycat/je/txn/Lock;
    .restart local v3    # "lsn":Ljava/lang/Long;
    .restart local v4    # "lockTableIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2047
    .end local v1    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .end local v2    # "lock":Lcom/sleepycat/je/txn/Lock;
    .end local v3    # "lsn":Ljava/lang/Long;
    .end local v4    # "lockTableIndex":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2087
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2088
    .local v1, "preLock":Lcom/sleepycat/je/txn/Lock;
    const/4 v2, 0x0

    .line 2090
    .local v2, "preLsn":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->cycle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2092
    .local v4, "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    .line 2093
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$600(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v6

    .line 2094
    .local v6, "lock":Lcom/sleepycat/je/txn/Lock;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$800(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Ljava/lang/Long;

    move-result-object v7

    .line 2095
    .local v7, "lsn":Ljava/lang/Long;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$1000(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/LockType;

    move-result-object v8

    .line 2096
    .local v8, "requestType":Lcom/sleepycat/je/txn/LockType;
    invoke-static {v4}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$1100(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/LockType;

    move-result-object v9

    .line 2098
    .local v9, "ownType":Lcom/sleepycat/je/txn/LockType;
    const-string v10, "(LSN: "

    const-string v11, "Locker: \""

    if-eqz v1, :cond_0

    .line 2099
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" owns lock: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2102
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    const-string v12, ", ownedType: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "). "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    :cond_0
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" waits for lock: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    const-string v10, ", requestType: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    move-object v1, v6

    .line 2115
    move-object v2, v7

    .line 2116
    .end local v4    # "cn":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "lock":Lcom/sleepycat/je/txn/Lock;
    .end local v7    # "lsn":Ljava/lang/Long;
    .end local v8    # "requestType":Lcom/sleepycat/je/txn/LockType;
    .end local v9    # "ownType":Lcom/sleepycat/je/txn/LockType;
    goto/16 :goto_0

    .line 2118
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
