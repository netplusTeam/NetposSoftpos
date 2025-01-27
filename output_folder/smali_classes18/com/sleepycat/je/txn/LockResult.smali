.class public Lcom/sleepycat/je/txn/LockResult;
.super Ljava/lang/Object;
.source "LockResult.java"


# instance fields
.field private grant:Lcom/sleepycat/je/txn/LockGrantType;

.field private wli:Lcom/sleepycat/je/txn/WriteLockInfo;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/WriteLockInfo;)V
    .locals 0
    .param p1, "grant"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p2, "wli"    # Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockResult;->grant:Lcom/sleepycat/je/txn/LockGrantType;

    .line 36
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 37
    return-void
.end method


# virtual methods
.method public copyWriteLockInfo(Lcom/sleepycat/je/txn/WriteLockInfo;)V
    .locals 2
    .param p1, "fromInfo"    # Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/WriteLockInfo;->copyAllInfo(Lcom/sleepycat/je/txn/WriteLockInfo;)V

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/WriteLockInfo;->setNeverLocked(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->grant:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v0
.end method

.method public getWriteLockInfo()Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    return-object v0
.end method

.method public setAbortInfo(JZ[B[BJIZLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "abortLsn"    # J
    .param p3, "abortKD"    # Z
    .param p4, "abortKey"    # [B
    .param p5, "abortData"    # [B
    .param p6, "abortVLSN"    # J
    .param p8, "abortExpiration"    # I
    .param p9, "abortExpirationInHours"    # Z
    .param p10, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 64
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/WriteLockInfo;->getNeverLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortLsn(J)V

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p3}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortKnownDeleted(Z)V

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortKey([B)V

    .line 69
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p5}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortData([B)V

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p6, p7}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortVLSN(J)V

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p8, p9}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortExpiration(IZ)V

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-virtual {v0, p10}, Lcom/sleepycat/je/txn/WriteLockInfo;->setDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockResult;->wli:Lcom/sleepycat/je/txn/WriteLockInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/WriteLockInfo;->setNeverLocked(Z)V

    .line 76
    :cond_1
    return-void
.end method
