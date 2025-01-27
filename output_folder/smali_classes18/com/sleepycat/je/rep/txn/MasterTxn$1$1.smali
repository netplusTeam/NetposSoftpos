.class Lcom/sleepycat/je/rep/txn/MasterTxn$1$1;
.super Lcom/sleepycat/je/rep/txn/MasterTxn;
.source "MasterTxn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/txn/MasterTxn$1;->createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/txn/MasterTxn$1;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/txn/MasterTxn$1;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/txn/MasterTxn$1;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p4, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 125
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn$1$1;->this$0:Lcom/sleepycat/je/rep/txn/MasterTxn$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    return-void
.end method


# virtual methods
.method protected updateLoggedForTxn()Z
    .locals 1

    .line 132
    const/4 v0, 0x1

    return v0
.end method
