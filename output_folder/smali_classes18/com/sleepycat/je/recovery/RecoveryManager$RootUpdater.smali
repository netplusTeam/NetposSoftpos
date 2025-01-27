.class Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
.super Ljava/lang/Object;
.source "RecoveryManager.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootUpdater"
.end annotation


# instance fields
.field private final inFromLog:Lcom/sleepycat/je/tree/IN;

.field private inFromLogIsLatched:Z

.field private inserted:Z

.field private lsn:J

.field private originalLsn:J

.field private replaced:Z

.field private final tree:Lcom/sleepycat/je/tree/Tree;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/IN;J)V
    .locals 3
    .param p1, "tree"    # Lcom/sleepycat/je/tree/Tree;
    .param p2, "inFromLog"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "lsn"    # J

    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->lsn:J

    .line 1483
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inserted:Z

    .line 1484
    iput-boolean v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->replaced:Z

    .line 1485
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->originalLsn:J

    .line 1486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLogIsLatched:Z

    .line 1489
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 1490
    iput-object p2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLog:Lcom/sleepycat/je/tree/IN;

    .line 1491
    iput-wide p3, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->lsn:J

    .line 1492
    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 7
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->tree:Lcom/sleepycat/je/tree/Tree;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLog:Lcom/sleepycat/je/tree/IN;

    const/4 v2, 0x0

    new-array v3, v2, [B

    iget-wide v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->lsn:J

    .line 1502
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sleepycat/je/tree/Tree;->makeRootChildReference(Lcom/sleepycat/je/tree/Node;[BJ)Lcom/sleepycat/je/tree/ChildReference;

    move-result-object v0

    .line 1503
    .local v0, "newRoot":Lcom/sleepycat/je/tree/ChildReference;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLog:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1504
    iput-boolean v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLogIsLatched:Z

    .line 1506
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1507
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/je/tree/Tree;->setRoot(Lcom/sleepycat/je/tree/ChildReference;Z)V

    .line 1508
    iput-boolean v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inserted:Z

    goto :goto_0

    .line 1510
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->originalLsn:J

    .line 1516
    iget-wide v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->lsn:J

    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v3

    if-gez v3, :cond_1

    .line 1517
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/je/tree/Tree;->setRoot(Lcom/sleepycat/je/tree/ChildReference;Z)V

    .line 1518
    iput-boolean v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->replaced:Z

    .line 1521
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getInFromLogIsLatched()Z
    .locals 1

    .line 1495
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inFromLogIsLatched:Z

    return v0
.end method

.method getInserted()Z
    .locals 1

    .line 1529
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inserted:Z

    return v0
.end method

.method getOriginalLsn()J
    .locals 2

    .line 1537
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->originalLsn:J

    return-wide v0
.end method

.method getReplaced()Z
    .locals 1

    .line 1533
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->replaced:Z

    return v0
.end method

.method updateDone()Z
    .locals 1

    .line 1525
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->inserted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->replaced:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
