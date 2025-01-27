.class Lcom/sleepycat/je/rep/impl/node/Replay$1;
.super Lcom/sleepycat/je/rep/txn/ReplayTxn;
.source "Replay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/node/Replay;->getReplayTxn(JZ)Lcom/sleepycat/je/rep/txn/ReplayTxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replay;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLcom/sleepycat/je/rep/utilint/SimpleTxnMap;Ljava/util/logging/Logger;)V
    .locals 7
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/node/Replay;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p4, "txnId"    # J
    .param p7, "logger"    # Ljava/util/logging/Logger;

    .line 925
    .local p6, "activeTxns":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$1;->this$0:Lcom/sleepycat/je/rep/impl/node/Replay;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/txn/ReplayTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLcom/sleepycat/je/rep/utilint/SimpleTxnMap;Ljava/util/logging/Logger;)V

    return-void
.end method


# virtual methods
.method protected registerImmediately()Z
    .locals 1

    .line 929
    const/4 v0, 0x0

    return v0
.end method
