.class public Lcom/sleepycat/je/LockStats;
.super Ljava/lang/Object;
.source "LockStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xa422edeL


# instance fields
.field private final basicStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final tableStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "basicStats"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "tableStats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sleepycat/je/LockStats;->basicStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 65
    iput-object p2, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 66
    return-void
.end method


# virtual methods
.method public getNAcquiresNoWaitSuccessful()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_SUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNAcquiresNoWaitUnSuccessful()I
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_UNSUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNAcquiresNoWaiters()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NO_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNAcquiresSelfOwned()I
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_SELF_OWNED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNAcquiresWithContention()I
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_CONTENTION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNOwners()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_OWNERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNReadLocks()I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNReleases()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_RELEASES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNRequests()J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->basicStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNTotalLocks()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNWaiters()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNWaits()J
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->basicStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNWriteLocks()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/LockStats;->basicStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/LockStats;->basicStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/sleepycat/je/LockStats;->tableStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
