.class Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/BackupManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 405
    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 406
    const-string p1, "JEBackupSnapshot"

    invoke-direct {p0, p2, p1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private sleepFor(J)V
    .locals 2
    .param p1, "delay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 498
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 499
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/BackupManager;->sleepMs(J)V

    .line 501
    :cond_0
    return-void
.end method

.method private wakeUp()V
    .locals 0

    .line 523
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->interrupt()V

    .line 524
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->access$102(Lcom/sleepycat/je/dbi/BackupManager;Z)Z

    .line 425
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->wakeUp()V

    .line 426
    const/16 v0, 0xbb8

    return v0
.end method

.method public run()V
    .locals 9

    .line 446
    const-wide/16 v0, 0x3e8

    .line 447
    .local v0, "retryWait":J
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/BackupManager;->access$100(Lcom/sleepycat/je/dbi/BackupManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/BackupManager;->access$200(Lcom/sleepycat/je/dbi/BackupManager;)V

    .line 451
    const-wide/16 v0, 0x3e8

    .line 452
    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/BackupManager;->access$300(Lcom/sleepycat/je/dbi/BackupManager;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->sleepFor(J)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/cleaner/EraserAbortException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 484
    :catch_0
    move-exception v2

    goto :goto_2

    .line 474
    :catch_1
    move-exception v2

    goto :goto_3

    .line 472
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 459
    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 463
    invoke-static {v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$300(Lcom/sleepycat/je/dbi/BackupManager;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 462
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 464
    .local v3, "wait":J
    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 465
    invoke-static {v5}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem creating snapshot, retrying in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms, exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 468
    invoke-static {v8, v2}, Lcom/sleepycat/je/dbi/BackupManager;->access$400(Lcom/sleepycat/je/dbi/BackupManager;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->sleepFor(J)V

    .line 470
    const-wide/16 v5, 0x2

    mul-long/2addr v5, v0

    const-wide/32 v7, 0x36ee80

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v5

    goto :goto_4

    .line 485
    .end local v3    # "wait":J
    .local v2, "e":Ljava/lang/Error;
    :goto_2
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 487
    invoke-static {v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 486
    invoke-static {v3, v4, p0, v2}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->initiateSoftShutdown()I

    .line 490
    goto :goto_6

    .line 475
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_3
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 477
    invoke-static {v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shutting down backups because of unexpected exception when creating snapshot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->initiateSoftShutdown()I

    .line 483
    goto :goto_6

    .line 491
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_4
    goto/16 :goto_0

    .line 453
    :catch_5
    move-exception v2

    goto :goto_5

    :catch_6
    move-exception v2

    .line 471
    :goto_5
    goto :goto_4

    .line 493
    :cond_2
    :goto_6
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 415
    return-void
.end method
