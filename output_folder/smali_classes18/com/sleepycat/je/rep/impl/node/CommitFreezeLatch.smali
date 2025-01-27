.class public Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;
.super Ljava/lang/Object;
.source "CommitFreezeLatch.java"


# static fields
.field private static DEFAULT_LATCH_TIMEOUT:J


# instance fields
.field private awaitElectionCount:I

.field private awaitTimeoutCount:I

.field private freezeCount:I

.field private freezeEnd:J

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field private timeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->DEFAULT_LATCH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeCount:I

    .line 49
    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitTimeoutCount:I

    .line 50
    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitElectionCount:I

    .line 53
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeEnd:J

    .line 56
    sget-wide v0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->DEFAULT_LATCH_TIMEOUT:J

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->timeOut:J

    return-void
.end method


# virtual methods
.method public awaitThaw()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 151
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 154
    .local v0, "awaitLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    monitor-exit p0

    return v1

    .line 157
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 158
    .local v2, "awaitTimeout":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    iget v4, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeCount:I

    .line 161
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 163
    .local v4, "done":Z
    monitor-enter p0

    .line 164
    if-eqz v4, :cond_1

    .line 165
    :try_start_1
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitElectionCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitElectionCount:I

    .line 166
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->clearLatch()V

    .line 167
    monitor-exit p0

    return v5

    .line 169
    :cond_1
    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 170
    iget v6, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitTimeoutCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitTimeoutCount:I

    .line 172
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->clearLatch()V

    .line 173
    monitor-exit p0

    return v1

    .line 175
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitThaw()Z

    move-result v1

    return v1

    .line 175
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 158
    .end local v0    # "awaitLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "awaitTimeout":J
    .end local v4    # "done":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public declared-synchronized clearLatch()V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 127
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeEnd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized freeze(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V
    .locals 4
    .param p1, "freezeProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 89
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 96
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->timeOut:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeEnd:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 86
    .end local p1    # "freezeProposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAwaitElectionCount()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitElectionCount:I

    return v0
.end method

.method public getAwaitTimeoutCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitTimeoutCount:I

    return v0
.end method

.method public getFreezeCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freezeCount:I

    return v0
.end method

.method public getTimeOut()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->timeOut:J

    return-wide v0
.end method

.method public setTimeOut(J)V
    .locals 0
    .param p1, "timeOut"    # J

    .line 77
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->timeOut:J

    .line 78
    return-void
.end method

.method public declared-synchronized vlsnEvent(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V
    .locals 1
    .param p1, "listenerProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    invoke-interface {p1, v0}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;
    :cond_1
    monitor-exit p0

    return-void

    .line 109
    .end local p1    # "listenerProposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
