.class public interface abstract Lcom/sleepycat/je/trigger/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"


# virtual methods
.method public abstract addTrigger(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
.end method

.method public abstract removeTrigger(Lcom/sleepycat/je/Transaction;)V
.end method

.method public abstract setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;
.end method
