.class public Lcom/sleepycat/je/dbi/NodeSequence;
.super Ljava/lang/Object;
.source "NodeSequence.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FIRST_LOCAL_NODE_ID:I = 0x1

.field public static final FIRST_REPLICATED_NODE_ID:I = -0xa


# instance fields
.field public final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastAllocatedTransientLsnOffset:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nextBackupId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nextDatabaseCountId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nextDiskOrderedCursorId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nextNetworkRestoreId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedTransientLsnOffset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextBackupId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextDatabaseCountId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextDiskOrderedCursorId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextNetworkRestoreId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    iput-object p1, p0, Lcom/sleepycat/je/dbi/NodeSequence;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 66
    return-void
.end method


# virtual methods
.method public getLastLocalNodeId()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReplicatedNodeId()J
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextBackupId()J
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextBackupId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextDatabaseCountId()J
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextDatabaseCountId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextDiskOrderedCursorId()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextDiskOrderedCursorId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLocalNodeId()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextNetworkRestoreId()J
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->nextNetworkRestoreId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTransientLsn()J
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedTransientLsnOffset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeTransientLsn(J)J

    move-result-wide v0

    .line 132
    return-wide v0
.end method

.method initRealNodeId()V
    .locals 3

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x9

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    return-void
.end method

.method public setLastNodeId(JJ)V
    .locals 1
    .param p1, "lastReplicatedNodeId"    # J
    .param p3, "lastLocalNodeId"    # J

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 108
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedLocalNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 109
    return-void
.end method

.method public updateFromReplay(J)V
    .locals 2
    .param p1, "replayNodeId"    # J

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMaster()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isRepConverted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replay node id is unexpectedly positive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/sleepycat/je/dbi/NodeSequence;->lastAllocatedReplicatedNodeId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 126
    :cond_2
    return-void

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
