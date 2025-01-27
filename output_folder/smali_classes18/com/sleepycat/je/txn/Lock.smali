.class interface abstract Lcom/sleepycat/je/txn/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# virtual methods
.method public abstract demote(Lcom/sleepycat/je/txn/Locker;)V
.end method

.method public abstract flushWaiter(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
.end method

.method public abstract getOwnedLockType(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
.end method

.method public abstract getOwnersClone(Z)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWaitersListClone()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWriteOwnerLocker()Lcom/sleepycat/je/txn/Locker;
.end method

.method public abstract isOwnedWriteLock(Lcom/sleepycat/je/txn/Locker;)Z
.end method

.method public abstract isOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
.end method

.method public abstract isThin()Z
.end method

.method public abstract isWaiter(Lcom/sleepycat/je/txn/Locker;)Z
.end method

.method public abstract lock(Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/Locker;ZZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockAttemptResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract nOwners()I
.end method

.method public abstract nWaiters()I
.end method

.method public abstract release(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/dbi/MemoryBudget;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/Locker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stealLock(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
