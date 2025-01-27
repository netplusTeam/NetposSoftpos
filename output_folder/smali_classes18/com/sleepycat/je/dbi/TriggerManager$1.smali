.class final Lcom/sleepycat/je/dbi/TriggerManager$1;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isNew:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 56
    iput-boolean p2, p0, Lcom/sleepycat/je/dbi/TriggerManager$1;->val$isNew:Z

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 3
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 60
    instance-of v0, p2, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v0, :cond_0

    .line 61
    nop

    .line 62
    invoke-static {p1}, Lcom/sleepycat/je/dbi/TriggerManager;->access$000(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;

    move-result-object v0

    .line 63
    .local v0, "env":Lcom/sleepycat/je/Environment;
    move-object v1, p2

    check-cast v1, Lcom/sleepycat/je/trigger/PersistentTrigger;

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/TriggerManager$1;->val$isNew:Z

    invoke-interface {v1, p1, v0, v2}, Lcom/sleepycat/je/trigger/PersistentTrigger;->open(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/Environment;Z)V

    .line 66
    .end local v0    # "env":Lcom/sleepycat/je/Environment;
    :cond_0
    return-void
.end method
