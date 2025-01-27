.class final Lcom/sleepycat/je/dbi/TriggerManager$6;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runRenameTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 197
    iput-object p2, p0, Lcom/sleepycat/je/dbi/TriggerManager$6;->val$newName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 2
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 203
    instance-of v0, p2, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/trigger/PersistentTrigger;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/TriggerManager$6;->val$newName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/sleepycat/je/trigger/PersistentTrigger;->rename(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$6;->val$newName:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    .line 208
    :cond_0
    return-void
.end method
