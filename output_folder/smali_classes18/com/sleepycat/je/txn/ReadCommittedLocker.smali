.class public Lcom/sleepycat/je/txn/ReadCommittedLocker;
.super Lcom/sleepycat/je/txn/BuddyLocker;
.source "ReadCommittedLocker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buddy"    # Lcom/sleepycat/je/txn/Locker;

    .line 40
    instance-of v0, p2, Lcom/sleepycat/je/txn/ReadCommittedLocker;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/txn/ReadCommittedLocker;

    .line 42
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 40
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/txn/BuddyLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V

    .line 44
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_1

    .line 45
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static createReadCommittedLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/ReadCommittedLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/sleepycat/je/txn/ReadCommittedLocker;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/txn/ReadCommittedLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V

    return-object v0
.end method


# virtual methods
.method public addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
    .locals 1
    .param p1, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;

    .line 125
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V

    .line 126
    return-void
.end method

.method public addDeleteInfo(Lcom/sleepycat/je/tree/BIN;)V
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 134
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->addDeleteInfo(Lcom/sleepycat/je/tree/BIN;)V

    .line 135
    return-void
.end method

.method public getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 1
    .param p1, "lsn"    # J

    .line 117
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/Locker;->getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v0

    return-object v0
.end method

.method public isReadCommittedIsolation()Z
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method protected lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 8
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 87
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    .line 89
    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/txn/Locker;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 88
    return-object v0

    .line 91
    :cond_0
    nop

    .line 92
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/je/txn/BuddyLocker;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public lockingRequired()Z
    .locals 1

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/txn/ReadCommittedLocker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 71
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->createReadCommittedLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/ReadCommittedLocker;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 143
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 144
    return-void
.end method

.method public releaseLock(J)Z
    .locals 3
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x1

    .line 105
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sleepycat/je/txn/ReadCommittedLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v1, p1, p2, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sleepycat/je/txn/ReadCommittedLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->removeLock(J)V

    .line 109
    return v0
.end method

.method public unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 152
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 153
    return-void
.end method
