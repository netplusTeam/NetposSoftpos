.class public Lcom/sleepycat/je/txn/ThinLockImpl;
.super Lcom/sleepycat/je/txn/LockInfo;
.source "ThinLockImpl.java"

# interfaces
.implements Lcom/sleepycat/je/txn/Lock;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sleepycat/je/txn/LockInfo;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/txn/ThinLockImpl;)V
    .locals 2
    .param p1, "tl"    # Lcom/sleepycat/je/txn/ThinLockImpl;

    .line 45
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/ThinLockImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/ThinLockImpl;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/txn/LockInfo;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)V

    .line 46
    return-void
.end method


# virtual methods
.method public demote(Lcom/sleepycat/je/txn/Locker;)V
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 171
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 175
    :cond_1
    return-void
.end method

.method public flushWaiter(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 57
    return-void
.end method

.method public getOwnedLockType(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eq p1, v0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method public getOwnersClone(Z)Ljava/util/Set;
    .locals 2
    .param p1, "cloneLockInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eqz v1, :cond_1

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ThinLockImpl;->clone()Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    return-object v0
.end method

.method public getWaitersListClone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWriteOwnerLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 180
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOwnedWriteLock(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    return v0

    .line 82
    :cond_1
    return v1
.end method

.method public isOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThin()Z
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public isWaiter(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/Locker;ZZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 8
    .param p1, "requestType"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "nonBlockingRequest"    # Z
    .param p4, "jumpAheadOfWaiters"    # Z
    .param p5, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p6, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eq v0, p2, :cond_0

    .line 118
    new-instance v1, Lcom/sleepycat/je/txn/LockImpl;

    new-instance v0, Lcom/sleepycat/je/txn/LockInfo;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/txn/LockInfo;-><init>(Lcom/sleepycat/je/txn/LockInfo;)V

    invoke-direct {v1, v0}, Lcom/sleepycat/je/txn/LockImpl;-><init>(Lcom/sleepycat/je/txn/LockInfo;)V

    .line 119
    .local v1, "newLock":Lcom/sleepycat/je/txn/Lock;
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/txn/Lock;->lock(Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/Locker;ZZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    return-object v0

    .line 123
    .end local v1    # "newLock":Lcom/sleepycat/je/txn/Lock;
    :cond_0
    const/4 v0, 0x0

    .line 124
    .local v0, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    iget-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-nez v1, :cond_1

    .line 125
    iput-object p2, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 126
    iput-object p1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 127
    sget-object v0, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_1

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/txn/LockType;->getUpgrade(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockUpgrade;

    move-result-object v1

    .line 132
    .local v1, "upgrade":Lcom/sleepycat/je/txn/LockUpgrade;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockUpgrade;->getUpgrade()Lcom/sleepycat/je/txn/LockType;

    move-result-object v2

    if-nez v2, :cond_2

    .line 133
    sget-object v0, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockUpgrade;->getUpgrade()Lcom/sleepycat/je/txn/LockType;

    move-result-object v2

    .line 136
    .local v2, "upgradeType":Lcom/sleepycat/je/txn/LockType;
    if-eqz v2, :cond_4

    .line 137
    iput-object v2, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 138
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockUpgrade;->getPromotion()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    :goto_0
    move-object v0, v3

    .line 143
    .end local v1    # "upgrade":Lcom/sleepycat/je/txn/LockUpgrade;
    .end local v2    # "upgradeType":Lcom/sleepycat/je/txn/LockType;
    :goto_1
    new-instance v1, Lcom/sleepycat/je/txn/LockAttemptResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sleepycat/je/txn/LockAttemptResult;-><init>(Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockGrantType;Z)V

    return-object v1

    .line 136
    .restart local v1    # "upgrade":Lcom/sleepycat/je/txn/LockUpgrade;
    .restart local v2    # "upgradeType":Lcom/sleepycat/je/txn/LockType;
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public nOwners()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public nWaiters()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public release(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Ljava/util/Set;
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I
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

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 151
    iput-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 152
    iput-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    return-object v1
.end method

.method public stealLock(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 162
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 163
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getPreemptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->setPreempted()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 167
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " ThinLockAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " Owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ThinLockImpl;->nOwners()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, " (none)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/ThinLockImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    :goto_0
    const-string v1, " Waiters: (none)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
