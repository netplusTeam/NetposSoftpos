.class public Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;
.super Ljava/lang/Object;
.source "TransactionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputQueueMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/transaction/TransactionManager;


# direct methods
.method public constructor <init>(Lorg/jpos/transaction/TransactionManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/transaction/TransactionManager;

    .line 1035
    iput-object p1, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1038
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input-queue-monitor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1039
    :goto_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1040
    :goto_1
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->getOutstandingTransactions()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v1}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v1

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget v2, v2, Lorg/jpos/transaction/TransactionManager;->threshold:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_1

    .line 1043
    :cond_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    goto :goto_3

    .line 1046
    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v2, v2, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v3, v3, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1047
    .local v2, "context":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 1048
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v3}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1049
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v3, v3, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v4, v4, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1050
    goto :goto_3

    .line 1052
    :cond_2
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v3, v3, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v4, v4, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/space/SpaceError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1054
    .end local v2    # "context":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Lorg/jpos/space/SpaceError;
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v3}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 1056
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 1057
    .end local v2    # "e":Lorg/jpos/space/SpaceError;
    :cond_3
    :goto_2
    goto :goto_0

    .line 1059
    :cond_4
    :goto_3
    return-void
.end method
