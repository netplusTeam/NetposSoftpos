.class public interface abstract Lcom/sleepycat/je/ReplicaConsistencyPolicy;
.super Ljava/lang/Object;
.source "ReplicaConsistencyPolicy.java"


# virtual methods
.method public abstract ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTimeout(Ljava/util/concurrent/TimeUnit;)J
.end method
