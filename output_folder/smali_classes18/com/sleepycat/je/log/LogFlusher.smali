.class public Lcom/sleepycat/je/log/LogFlusher;
.super Ljava/lang/Object;
.source "LogFlusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/LogFlusher$FlushTask;
    }
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private flushNoSyncInterval:I

.field private flushNoSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

.field private flushSyncInterval:I

.field private flushSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

.field private shutdownRequest:Z

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogFlusher;->shutdownRequest:Z

    .line 53
    iput-object p1, p0, Lcom/sleepycat/je/log/LogFlusher;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 55
    new-instance v0, Ljava/util/Timer;

    .line 56
    const-string v1, "LogFlusher"

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->timer:Ljava/util/Timer;

    .line 58
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->cancel()Z

    .line 98
    iput-object v1, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->cancel()Z

    .line 102
    iput-object v1, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    .line 104
    :cond_1
    return-void
.end method

.method private updateConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)Z
    .locals 5
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 133
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_RUN_LOG_FLUSH_TASK:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v0

    const-string v1, " must not be specified."

    const-string v2, " and "

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_RUN_LOG_FLUSH_TASK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 134
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_NO_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 137
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "newSyncInternal":I
    const/4 v1, 0x0

    .local v1, "newNoSyncInterval":I
    goto/16 :goto_1

    .line 139
    .end local v0    # "newSyncInternal":I
    .end local v1    # "newNoSyncInterval":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_RUN_LOG_FLUSH_TASK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 140
    invoke-virtual {v4}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is set to false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_NO_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_LOG_FLUSH_TASK_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_LOG_FLUSH_TASK_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 166
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .restart local v0    # "newSyncInternal":I
    goto :goto_0

    .line 159
    .end local v0    # "newSyncInternal":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Both "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_LOG_FLUSH_TASK_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 160
    invoke-virtual {v4}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 169
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .line 172
    .restart local v0    # "newSyncInternal":I
    :goto_0
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_NO_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 173
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    .line 176
    .restart local v1    # "newNoSyncInterval":I
    :goto_1
    iget v2, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncInterval:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncInterval:I

    if-ne v1, v2, :cond_4

    .line 178
    const/4 v2, 0x0

    return v2

    .line 181
    :cond_4
    iput v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncInterval:I

    .line 182
    iput v1, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncInterval:I

    .line 183
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public configFlushTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 7
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 69
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/LogFlusher;->updateConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogFlusher;->shutdownRequest:Z

    if-nez v0, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/sleepycat/je/log/LogFlusher;->cancel()V

    .line 77
    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncInterval:I

    if-lez v0, :cond_1

    .line 78
    new-instance v2, Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/log/LogFlusher$FlushTask;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    .line 80
    iget-object v1, p0, Lcom/sleepycat/je/log/LogFlusher;->timer:Ljava/util/Timer;

    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncInterval:I

    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 84
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncInterval:I

    if-lez v0, :cond_2

    .line 85
    new-instance v2, Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/log/LogFlusher$FlushTask;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    .line 87
    iget-object v1, p0, Lcom/sleepycat/je/log/LogFlusher;->timer:Ljava/util/Timer;

    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncInterval:I

    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 92
    :cond_2
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFlushNoSyncInterval()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncInterval:I

    return v0
.end method

.method getFlushNoSyncTask()Lcom/sleepycat/je/log/LogFlusher$FlushTask;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushNoSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    return-object v0
.end method

.method getFlushSyncInterval()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncInterval:I

    return v0
.end method

.method getFlushSyncTask()Lcom/sleepycat/je/log/LogFlusher$FlushTask;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->flushSyncTask:Lcom/sleepycat/je/log/LogFlusher$FlushTask;

    return-object v0
.end method

.method public requestShutdown()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogFlusher;->shutdown()V

    .line 108
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 111
    monitor-enter p0

    .line 112
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogFlusher;->shutdownRequest:Z

    .line 113
    invoke-direct {p0}, Lcom/sleepycat/je/log/LogFlusher;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
