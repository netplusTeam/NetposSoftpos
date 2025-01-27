.class public Lorg/jpos/transaction/TransactionManager$RetryTask;
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
    name = "RetryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/transaction/TransactionManager;


# direct methods
.method public constructor <init>(Lorg/jpos/transaction/TransactionManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/transaction/TransactionManager;

    .line 1020
    iput-object p1, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1023
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-retry-task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1024
    :goto_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    :goto_1
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v0, v0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v1, "$RETRY_QUEUE"

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    move-object v2, v0

    .local v2, "context":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v0, v0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v3, v3, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-wide v4, v4, Lorg/jpos/transaction/TransactionManager;->retryTimeout:J

    invoke-interface {v0, v3, v2, v4, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1028
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-object v0, v0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1030
    .end local v2    # "context":Ljava/io/Serializable;
    :cond_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$RetryTask;->this$0:Lorg/jpos/transaction/TransactionManager;

    iget-wide v0, v0, Lorg/jpos/transaction/TransactionManager;->retryInterval:J

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_0

    .line 1032
    :cond_1
    return-void
.end method
