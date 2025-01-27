.class public Lcom/sleepycat/je/txn/TxnCommit;
.super Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;
.source "TxnCommit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(JJIJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "lastLsn"    # J
    .param p5, "masterId"    # I
    .param p6, "dtvlsn"    # J

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;-><init>(JJIJ)V

    .line 26
    if-lez p5, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTVLSN value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "TxnCommit"

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 49
    instance-of v0, p1, Lcom/sleepycat/je/txn/TxnCommit;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/TxnCommit;

    .line 55
    .local v0, "otherCommit":Lcom/sleepycat/je/txn/TxnCommit;
    iget-wide v2, p0, Lcom/sleepycat/je/txn/TxnCommit;->id:J

    iget-wide v4, v0, Lcom/sleepycat/je/txn/TxnCommit;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sleepycat/je/txn/TxnCommit;->repMasterNodeId:I

    iget v3, v0, Lcom/sleepycat/je/txn/TxnCommit;->repMasterNodeId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
