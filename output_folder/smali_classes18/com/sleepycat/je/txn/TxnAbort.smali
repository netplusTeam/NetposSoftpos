.class public Lcom/sleepycat/je/txn/TxnAbort;
.super Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;
.source "TxnAbort.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(JJIJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "lastLsn"    # J
    .param p5, "masterId"    # I
    .param p6, "dtvlsn"    # J

    .line 24
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;-><init>(JJIJ)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "TxnAbort"

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 41
    instance-of v0, p1, Lcom/sleepycat/je/txn/TxnAbort;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    return v1

    .line 44
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/TxnAbort;

    .line 46
    .local v0, "otherAbort":Lcom/sleepycat/je/txn/TxnAbort;
    iget-wide v2, p0, Lcom/sleepycat/je/txn/TxnAbort;->id:J

    iget-wide v4, v0, Lcom/sleepycat/je/txn/TxnAbort;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sleepycat/je/txn/TxnAbort;->repMasterNodeId:I

    iget v3, v0, Lcom/sleepycat/je/txn/TxnAbort;->repMasterNodeId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
