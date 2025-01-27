.class public Lcom/sleepycat/je/txn/BuddyLocker;
.super Lcom/sleepycat/je/txn/BasicLocker;
.source "BuddyLocker.java"


# instance fields
.field private final buddy:Lcom/sleepycat/je/txn/Locker;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buddy"    # Lcom/sleepycat/je/txn/Locker;

    .line 52
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->getDefaultNoWait()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/txn/BasicLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 53
    iput-object p2, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    .line 54
    invoke-virtual {p2, p0}, Lcom/sleepycat/je/txn/Locker;->addBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V

    .line 55
    return-void
.end method

.method public static createBuddyLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/BuddyLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/sleepycat/je/txn/BuddyLocker;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/txn/BuddyLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V

    return-object v0
.end method


# virtual methods
.method public checkPreempted(Lcom/sleepycat/je/txn/Locker;)V
    .locals 1
    .param p1, "allowPreemptedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/OperationFailureException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->checkPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 193
    return-void
.end method

.method close()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/sleepycat/je/txn/BasicLocker;->close()V

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/txn/Locker;->removeBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V

    .line 68
    return-void
.end method

.method getBuddy()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method

.method public getLockTimeout()J
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getLockTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransaction()Lcom/sleepycat/je/Transaction;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTxnLocker()Lcom/sleepycat/je/txn/Txn;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    return-object v0
.end method

.method public getTxnStartMillis()J
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getTxnStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnTimeout()J
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getTxnTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public isLocalWrite()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->isLocalWrite()Z

    move-result v0

    return v0
.end method

.method public isReplicated()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v0

    return v0
.end method

.method public isTimedOut()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->isTimedOut()Z

    move-result v0

    return v0
.end method

.method public releaseNonTxnLocks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 103
    invoke-super {p0}, Lcom/sleepycat/je/txn/BasicLocker;->releaseNonTxnLocks()V

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->releaseNonTxnLocks()V

    .line 105
    return-void
.end method

.method public setLockTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/Locker;->setLockTimeout(J)V

    .line 147
    return-void
.end method

.method public setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V
    .locals 1
    .param p1, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 181
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Locker;->setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V

    .line 182
    return-void
.end method

.method public setTxnTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 155
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/Locker;->setTxnTimeout(J)V

    .line 156
    return-void
.end method

.method public sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/txn/Locker;

    .line 113
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    if-eq v0, p1, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    if-eq v0, p0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/txn/BuddyLocker;->buddy:Lcom/sleepycat/je/txn/Locker;

    .line 118
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getBuddy()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 116
    :goto_1
    return v1
.end method
