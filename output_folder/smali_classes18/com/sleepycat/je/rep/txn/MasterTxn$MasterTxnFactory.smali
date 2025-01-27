.class public interface abstract Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;
.super Ljava/lang/Object;
.source "MasterTxn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/txn/MasterTxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MasterTxnFactory"
.end annotation


# virtual methods
.method public abstract create(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
.end method

.method public abstract createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
.end method
