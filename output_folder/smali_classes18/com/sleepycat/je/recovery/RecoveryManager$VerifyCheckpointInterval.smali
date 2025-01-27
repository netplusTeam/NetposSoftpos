.class Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "RecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyCheckpointInterval"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

.field private final verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/recovery/RecoveryManager;)V
    .locals 3

    .line 569
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 570
    nop

    .line 571
    invoke-static {p1}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$100(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 572
    invoke-static {p1}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$100(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    const-string v2, "VerifyCheckpointInterval"

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 566
    new-instance v0, Lcom/sleepycat/je/util/DbVerifyLog;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 567
    invoke-static {p1}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$000(Lcom/sleepycat/je/recovery/RecoveryManager;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/je/util/DbVerifyLog;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    .line 574
    return-void
.end method


# virtual methods
.method finish()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 609
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/RecoveryProgress;->FINISH_VERIFICATION:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 612
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    .line 625
    .local v0, "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :goto_0
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->join(J)V

    .line 626
    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->isAlive()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 627
    nop

    .line 636
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v1}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesVerified()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumRead(I)V

    .line 637
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v1}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesVerified()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumProcessed(I)V

    .line 638
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v1}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesDeleted()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumDeleted(I)V

    .line 639
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v1}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 640
    nop

    .line 641
    return-void

    .line 629
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    goto :goto_0

    .line 636
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .end local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 636
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesVerified()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumRead(I)V

    .line 637
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesVerified()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumProcessed(I)V

    .line 638
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbVerifyLog;->getNFilesDeleted()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setNumDeleted(I)V

    .line 639
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v1
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$200(Lcom/sleepycat/je/recovery/RecoveryManager;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 589
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$300(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/recovery/RecoveryInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 590
    .local v0, "startFile":J
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->this$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-static {v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->access$300(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/recovery/RecoveryInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    .line 593
    .local v2, "endFile":J
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->verifyLog:Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbVerifyLog;->verify(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    nop

    .line 599
    return-void

    .line 595
    :catch_0
    move-exception v4

    .line 596
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v5, v6, v7, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v5
.end method
