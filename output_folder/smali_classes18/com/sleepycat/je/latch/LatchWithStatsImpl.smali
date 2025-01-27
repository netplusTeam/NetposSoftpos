.class public Lcom/sleepycat/je/latch/LatchWithStatsImpl;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LatchWithStatsImpl.java"

# interfaces
.implements Lcom/sleepycat/je/latch/Latch;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Lcom/sleepycat/je/latch/LatchContext;

.field private lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

.field private final nAcquiresNoWaitSuccessful:Lcom/sleepycat/je/utilint/IntStat;

.field private final nAcquiresNoWaitUnsuccessful:Lcom/sleepycat/je/utilint/IntStat;

.field private final nAcquiresNoWaiters:Lcom/sleepycat/je/utilint/IntStat;

.field private final nAcquiresSelfOwned:Lcom/sleepycat/je/utilint/IntStat;

.field private final nAcquiresWithContention:Lcom/sleepycat/je/utilint/IntStat;

.field private final nReleases:Lcom/sleepycat/je/utilint/IntStat;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/latch/LatchContext;)V
    .locals 3
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Latch"

    const-string v2, "Latch characteristics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 54
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NO_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaiters:Lcom/sleepycat/je/utilint/IntStat;

    .line 55
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_SELF_OWNED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresSelfOwned:Lcom/sleepycat/je/utilint/IntStat;

    .line 56
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_CONTENTION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresWithContention:Lcom/sleepycat/je/utilint/IntStat;

    .line 57
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_SUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaitSuccessful:Lcom/sleepycat/je/utilint/IntStat;

    .line 58
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_UNSUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaitUnsuccessful:Lcom/sleepycat/je/utilint/IntStat;

    .line 60
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_RELEASES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nReleases:Lcom/sleepycat/je/utilint/IntStat;

    .line 61
    return-void
.end method


# virtual methods
.method public acquireExclusive()V
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresWithContention:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaiters:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 85
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 86
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 92
    nop

    .line 97
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 100
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Lcom/sleepycat/je/latch/OwnerInfo;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/OwnerInfo;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 103
    :cond_2
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    return-void

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->handleTimeout(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 91
    invoke-interface {v2}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresSelfOwned:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 73
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public acquireExclusiveNoWait()Z
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaitUnsuccessful:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresNoWaitSuccessful:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 123
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 126
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Lcom/sleepycat/je/latch/OwnerInfo;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/OwnerInfo;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 129
    :cond_2
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nAcquiresSelfOwned:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 112
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public clearStats()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 193
    return-void
.end method

.method public debugString()Ljava/lang/String;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->debugString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExclusiveOwner()Ljava/lang/Thread;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getNWaiters()I
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->getQueueLength()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getLatchName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method public isExclusiveOwner()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 143
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->unlock()V

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nReleases:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 148
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 137
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch not held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public releaseIfOwner()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 158
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->unlock()V

    .line 162
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->nReleases:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->toString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
