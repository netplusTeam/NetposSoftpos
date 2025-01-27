.class Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;
.super Ljava/lang/Object;
.source "Checkpointer.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/Checkpointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootFlusher"
.end annotation


# instance fields
.field private final db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private flushed:Z

.field private stillRoot:Z

.field private final targetNodeId:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "targetNodeId"    # J

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput-object p1, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->flushed:Z

    .line 1535
    iput-wide p2, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->targetNodeId:J

    .line 1536
    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->stillRoot:Z

    .line 1537
    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 6
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;

    .line 1545
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1546
    return-object v0

    .line 1549
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 1550
    .local v1, "rootIN":Lcom/sleepycat/je/tree/IN;
    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1552
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->targetNodeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1558
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->logDirtyChildren()V

    .line 1566
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->stillRoot:Z

    .line 1568
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1569
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->log()J

    move-result-wide v3

    .line 1570
    .local v3, "newLsn":J
    invoke-virtual {p1, v3, v4}, Lcom/sleepycat/je/tree/ChildReference;->setLsn(J)V

    .line 1571
    iput-boolean v2, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->flushed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    .end local v3    # "newLsn":J
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1576
    nop

    .line 1577
    return-object v0

    .line 1575
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0
.end method

.method getFlushed()Z
    .locals 1

    .line 1581
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->flushed:Z

    return v0
.end method

.method stillRoot()Z
    .locals 1

    .line 1585
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->stillRoot:Z

    return v0
.end method
