.class abstract Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/TriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TriggerInvoker"
.end annotation


# instance fields
.field final invokeTransactionTrigger:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "invokeTransactionTrigger"    # Z

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;->invokeTransactionTrigger:Z

    .line 373
    return-void
.end method


# virtual methods
.method invokeTransactionTrigger()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;->invokeTransactionTrigger:Z

    return v0
.end method

.method abstract run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
.end method
