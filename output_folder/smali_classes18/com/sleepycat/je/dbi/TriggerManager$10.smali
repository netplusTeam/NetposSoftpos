.class final Lcom/sleepycat/je/dbi/TriggerManager$10;
.super Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->runDeleteTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Lcom/sleepycat/je/DatabaseEntry;

.field final synthetic val$oldData:Lcom/sleepycat/je/DatabaseEntry;


# direct methods
.method constructor <init>(ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 307
    iput-object p2, p0, Lcom/sleepycat/je/dbi/TriggerManager$10;->val$key:Lcom/sleepycat/je/DatabaseEntry;

    iput-object p3, p0, Lcom/sleepycat/je/dbi/TriggerManager$10;->val$oldData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    .locals 2
    .param p1, "triggerTransaction"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbt"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 312
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$10;->val$key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/TriggerManager$10;->val$oldData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-interface {p2, p1, v0, v1}, Lcom/sleepycat/je/trigger/Trigger;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 313
    return-void
.end method
