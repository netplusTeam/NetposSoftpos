.class public interface abstract Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;
.super Ljava/lang/Object;
.source "ArbiterProvider.java"


# virtual methods
.method public abstract activationPossible()Z
.end method

.method public abstract attemptActivation()Z
.end method

.method public abstract endArbitration()V
.end method

.method public abstract getAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I
.end method

.method public abstract getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I
.end method

.method public abstract shouldEndArbitration(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)Z
.end method
