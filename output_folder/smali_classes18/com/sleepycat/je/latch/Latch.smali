.class public interface abstract Lcom/sleepycat/je/latch/Latch;
.super Ljava/lang/Object;
.source "Latch.java"


# virtual methods
.method public abstract acquireExclusive()V
.end method

.method public abstract acquireExclusiveNoWait()Z
.end method

.method public abstract clearStats()V
.end method

.method public abstract debugString()Ljava/lang/String;
.end method

.method public abstract getExclusiveOwner()Ljava/lang/Thread;
.end method

.method public abstract getNWaiters()I
.end method

.method public abstract getStats()Lcom/sleepycat/je/utilint/StatGroup;
.end method

.method public abstract isExclusiveOwner()Z
.end method

.method public abstract isOwner()Z
.end method

.method public abstract release()V
.end method

.method public abstract releaseIfOwner()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
