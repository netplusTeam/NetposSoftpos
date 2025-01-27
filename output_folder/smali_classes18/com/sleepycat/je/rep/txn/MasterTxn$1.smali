.class final Lcom/sleepycat/je/rep/txn/MasterTxn$1;
.super Ljava/lang/Object;
.source "MasterTxn.java"

# interfaces
.implements Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/txn/MasterTxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 117
    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterTxn;

    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    return-object v0
.end method

.method public createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 125
    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterTxn$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/rep/txn/MasterTxn$1$1;-><init>(Lcom/sleepycat/je/rep/txn/MasterTxn$1;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    return-object v0
.end method
