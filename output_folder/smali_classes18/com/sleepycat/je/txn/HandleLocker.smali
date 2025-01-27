.class public Lcom/sleepycat/je/txn/HandleLocker;
.super Lcom/sleepycat/je/txn/BasicLocker;
.source "HandleLocker.java"


# instance fields
.field private final shareWithNonTxnlLocker:Lcom/sleepycat/je/txn/Locker;

.field private final shareWithTxnId:J


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buddy"    # Lcom/sleepycat/je/txn/Locker;

    .line 78
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 79
    nop

    .line 80
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/je/txn/HandleLocker;->shareWithTxnId:J

    .line 81
    nop

    .line 82
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/sleepycat/je/txn/HandleLocker;->shareWithNonTxnlLocker:Lcom/sleepycat/je/txn/Locker;

    .line 83
    return-void
.end method

.method public static createHandleLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/HandleLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/sleepycat/je/txn/HandleLocker;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/txn/HandleLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)V

    return-object v0
.end method


# virtual methods
.method public allowReleaseLockAfterLsnChange()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/txn/Locker;

    .line 98
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99
    return v1

    .line 101
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/txn/HandleLocker;->shareWithTxnId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 103
    return v1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/HandleLocker;->shareWithNonTxnlLocker:Lcom/sleepycat/je/txn/Locker;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 107
    return v1

    .line 109
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
