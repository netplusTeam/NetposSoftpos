.class final Lcom/sleepycat/je/dbi/TriggerManager$8;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runAbortTriggers(Lcom/sleepycat/je/txn/Txn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;


# direct methods
.method constructor <init>(ZLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 261
    iput-object p2, p0, Lcom/sleepycat/je/dbi/TriggerManager$8;->val$dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 2
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 266
    instance-of v0, p2, Lcom/sleepycat/je/trigger/TransactionTrigger;

    if-eqz v0, :cond_0

    .line 267
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/trigger/TransactionTrigger;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/trigger/TransactionTrigger;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$8;->val$dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/sleepycat/je/trigger/Trigger;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$8;->val$dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    .line 272
    :cond_0
    return-void
.end method
