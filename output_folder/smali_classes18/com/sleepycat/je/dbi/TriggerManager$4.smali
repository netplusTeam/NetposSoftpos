.class final Lcom/sleepycat/je/dbi/TriggerManager$4;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 159
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 1
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 163
    instance-of v0, p2, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/trigger/PersistentTrigger;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/trigger/PersistentTrigger;->removeTrigger(Lcom/sleepycat/je/Transaction;)V

    .line 166
    :cond_0
    return-void
.end method
