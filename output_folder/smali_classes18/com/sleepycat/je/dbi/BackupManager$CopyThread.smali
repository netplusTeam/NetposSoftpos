.class Lcom/sleepycat/je/dbi/BackupManager$CopyThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/BackupManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1018
    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1019
    const-string p1, "JEBackupCopy"

    invoke-direct {p0, p2, p1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1020
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

    .line 1126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1127
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/BackupManager;->sleepMs(J)V

    .line 1129
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->access$102(Lcom/sleepycat/je/dbi/BackupManager;Z)Z

    .line 1037
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->wakeUp()V

    .line 1038
    const/16 v0, 0xbb8

    return v0
.end method

.method public run()V
    .locals 8

    .line 1058
    const-wide/16 v0, 0x3e8

    .line 1059
    .local v0, "retryWait":J
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/BackupManager;->access$100(Lcom/sleepycat/je/dbi/BackupManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1060
    const/4 v2, 0x0

    .line 1063
    .local v2, "waitingToRetry":Z
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$500(Lcom/sleepycat/je/dbi/BackupManager;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1064
    const-wide/16 v0, 0x3e8

    .line 1067
    const-wide v3, 0x7fffffffffffffffL

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->sleepFor(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 1070
    goto :goto_1

    .line 1068
    :catch_0
    move-exception v3

    .line 1083
    :goto_1
    goto/16 :goto_7

    .line 1112
    :catch_1
    move-exception v3

    goto :goto_3

    .line 1102
    :catch_2
    move-exception v3

    goto :goto_4

    .line 1084
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 1074
    :catch_4
    move-exception v3

    .line 1075
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1076
    invoke-static {v4}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem copying snapshot, retrying in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms, exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1079
    invoke-static {v7, v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$400(Lcom/sleepycat/je/dbi/BackupManager;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1075
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1080
    const/4 v2, 0x1

    .line 1081
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->sleepFor(J)V

    .line 1082
    const-wide/16 v4, 0x2

    mul-long/2addr v4, v0

    const-wide/32 v6, 0x36ee80

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_7

    .line 1071
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    goto :goto_2

    :catch_6
    move-exception v3

    .line 1073
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .end local v0    # "retryWait":J
    .end local v2    # "waitingToRetry":Z
    throw v3
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 1113
    .restart local v0    # "retryWait":J
    .restart local v2    # "waitingToRetry":Z
    .local v3, "e":Ljava/lang/Error;
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1115
    invoke-static {v4}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1114
    invoke-static {v4, v5, p0, v3}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->initiateSoftShutdown()I

    .line 1118
    goto :goto_8

    .line 1103
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_4
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1105
    invoke-static {v4}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shutting down backups because of unexpected exception when copying snapshot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1108
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1104
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->initiateSoftShutdown()I

    .line 1111
    goto :goto_8

    .line 1084
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v3

    goto :goto_5

    :catch_8
    move-exception v3

    .line 1091
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->interrupted()Z

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2

    const-string v5, " waiting to retry"

    goto :goto_6

    :cond_2
    const-string v5, ""

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " copying snapshot, exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    .line 1095
    invoke-static {v5, v3}, Lcom/sleepycat/je/dbi/BackupManager;->access$400(Lcom/sleepycat/je/dbi/BackupManager;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v5}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5, v6, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1101
    const-wide/16 v0, 0x3e8

    .line 1119
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_7
    nop

    .line 1120
    .end local v2    # "waitingToRetry":Z
    goto/16 :goto_0

    .line 1121
    :cond_3
    :goto_8
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->this$0:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 1027
    return-void
.end method

.method declared-synchronized wakeUp()V
    .locals 1

    monitor-enter p0

    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    monitor-exit p0

    return-void

    .line 1135
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager$CopyThread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
