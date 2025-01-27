.class public interface abstract Lcom/sleepycat/je/trigger/PersistentTrigger;
.super Ljava/lang/Object;
.source "PersistentTrigger.java"

# interfaces
.implements Lcom/sleepycat/je/trigger/Trigger;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/Environment;Z)V
.end method

.method public abstract remove(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract rename(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V
.end method

.method public abstract truncate(Lcom/sleepycat/je/Transaction;)V
.end method
