.class public interface abstract Lcom/sleepycat/je/trigger/ReplicatedDatabaseTrigger;
.super Ljava/lang/Object;
.source "ReplicatedDatabaseTrigger.java"

# interfaces
.implements Lcom/sleepycat/je/trigger/Trigger;


# virtual methods
.method public abstract repeatAddTrigger(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract repeatCreate(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract repeatDelete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)V
.end method

.method public abstract repeatPut(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
.end method

.method public abstract repeatRemove(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract repeatRemoveTrigger(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract repeatRename(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V
.end method

.method public abstract repeatTransaction(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract repeatTruncate(Lcom/sleepycat/je/Transaction;)V
.end method
