.class public Lcom/sleepycat/je/latch/SharedLatchImpl;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "SharedLatchImpl.java"

# interfaces
.implements Lcom/sleepycat/je/latch/SharedLatch;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Lcom/sleepycat/je/latch/LatchContext;

.field private lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method constructor <init>(ZLcom/sleepycat/je/latch/LatchContext;)V
    .locals 0
    .param p1, "fair"    # Z
    .param p2, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 33
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 34
    iput-object p2, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 35
    return-void
.end method

.method private doAcquireExclusive(Z)Z
    .locals 4
    .param p1, "noWait"    # Z

    .line 53
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getReadHoldCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 66
    invoke-interface {v1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    .line 72
    nop

    .line 77
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 80
    :cond_2
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Lcom/sleepycat/je/latch/OwnerInfo;

    iget-object v1, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/OwnerInfo;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 83
    :cond_3
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->handleTimeout(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local p1    # "noWait":Z
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .restart local p1    # "noWait":Z
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 71
    invoke-interface {v2}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 55
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private doRelease(Z)V
    .locals 3
    .param p1, "ifOwner"    # Z

    .line 131
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getReadHoldCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 136
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 142
    :cond_2
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 146
    return-void

    .line 148
    :cond_4
    if-eqz p1, :cond_5

    .line 153
    return-void

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 150
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch not held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public acquireExclusive()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->doAcquireExclusive(Z)Z

    .line 45
    return-void
.end method

.method public acquireExclusiveNoWait()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->doAcquireExclusive(Z)Z

    move-result v0

    return v0
.end method

.method public acquireShared()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getReadHoldCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 104
    invoke-interface {v1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 110
    nop

    .line 114
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 117
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->handleTimeout(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 109
    invoke-interface {v2}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 97
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held non-exclusively: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 91
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held exclusively: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public clearStats()V
    .locals 1

    .line 182
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public debugString()Ljava/lang/String;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->debugString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExclusiveOwner()Ljava/lang/Thread;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getNWaiters()I
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 177
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public isExclusiveOnly()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isExclusiveOwner()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->isWriteLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->getReadHoldCount()I

    move-result v0

    if-lez v0, :cond_0

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

.method public release()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->doRelease(Z)V

    .line 123
    return-void
.end method

.method public releaseIfOwner()V
    .locals 1

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/latch/SharedLatchImpl;->doRelease(Z)V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/SharedLatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->toString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
