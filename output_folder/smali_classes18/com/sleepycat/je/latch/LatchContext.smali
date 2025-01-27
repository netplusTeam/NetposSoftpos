.class public interface abstract Lcom/sleepycat/je/latch/LatchContext;
.super Ljava/lang/Object;
.source "LatchContext.java"


# virtual methods
.method public abstract getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end method

.method public abstract getLatchName()Ljava/lang/String;
.end method

.method public abstract getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
.end method

.method public abstract getLatchTimeoutMs()I
.end method
