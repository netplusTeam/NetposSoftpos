.class public Lcom/sleepycat/je/rep/txn/MasterThreadLocker;
.super Lcom/sleepycat/je/txn/ThreadLocker;
.source "MasterThreadLocker.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 0
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 28
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/ThreadLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 29
    return-void
.end method


# virtual methods
.method public newEmptyThreadLockerClone()Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 2

    .line 33
    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterThreadLocker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/MasterThreadLocker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/txn/MasterThreadLocker;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    return-object v0
.end method
