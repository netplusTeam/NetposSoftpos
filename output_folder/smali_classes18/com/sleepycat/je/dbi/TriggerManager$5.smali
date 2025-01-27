.class final Lcom/sleepycat/je/dbi/TriggerManager$5;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runTruncateTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;


# direct methods
.method constructor <init>(ZLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 177
    iput-object p2, p0, Lcom/sleepycat/je/dbi/TriggerManager$5;->val$newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 1
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 182
    instance-of v0, p2, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v0, :cond_0

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/trigger/PersistentTrigger;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/trigger/PersistentTrigger;->truncate(Lcom/sleepycat/je/Transaction;)V

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$5;->val$newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    .line 186
    :cond_0
    return-void
.end method
