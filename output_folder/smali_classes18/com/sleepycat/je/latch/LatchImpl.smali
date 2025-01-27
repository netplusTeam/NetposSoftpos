.class public Lcom/sleepycat/je/latch/LatchImpl;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LatchImpl.java"

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

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/latch/LatchContext;)V
    .locals 0
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 39
    return-void
.end method


# virtual methods
.method public acquireExclusive()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 62
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/latch/LatchImpl;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 68
    nop

    .line 73
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 76
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lcom/sleepycat/je/latch/OwnerInfo;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/OwnerInfo;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 79
    :cond_1
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    return-void

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->handleTimeout(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 67
    invoke-interface {v2}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 55
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->debugString()Ljava/lang/String;

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

.method public acquireExclusiveNoWait()Z
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 98
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Lcom/sleepycat/je/latch/OwnerInfo;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/OwnerInfo;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 101
    :cond_2
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 87
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public acquireShared()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->acquireExclusive()V

    .line 108
    return-void
.end method

.method public clearStats()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public debugString()Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->debugString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExclusiveOwner()Ljava/lang/Thread;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getNWaiters()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->getQueueLength()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getLatchName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 162
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public isExclusiveOnly()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public isExclusiveOwner()Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 120
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->unlock()V

    .line 124
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    .line 114
    invoke-interface {v0}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch not held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public releaseIfOwner()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V

    .line 134
    :cond_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/LatchImpl;->unlock()V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchImpl;->context:Lcom/sleepycat/je/latch/LatchContext;

    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchImpl;->lastOwnerInfo:Lcom/sleepycat/je/latch/OwnerInfo;

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/latch/LatchSupport;->toString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
