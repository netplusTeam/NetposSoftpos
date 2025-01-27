.class public interface abstract Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;
.super Ljava/lang/Object;
.source "SubscriptionCallback.java"


# virtual methods
.method public abstract processAbort(Lcom/sleepycat/je/utilint/VLSN;J)V
.end method

.method public abstract processCommit(Lcom/sleepycat/je/utilint/VLSN;J)V
.end method

.method public abstract processDel(Lcom/sleepycat/je/utilint/VLSN;[BJLcom/sleepycat/je/dbi/DatabaseId;)V
.end method

.method public abstract processException(Ljava/lang/Exception;)V
.end method

.method public abstract processPut(Lcom/sleepycat/je/utilint/VLSN;[B[BJLcom/sleepycat/je/dbi/DatabaseId;)V
.end method
