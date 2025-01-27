.class public abstract Lcom/sleepycat/je/utilint/DaemonThread;
.super Ljava/lang/Object;
.source "DaemonThread.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/DaemonRunner;
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ERROR_LISTENER:Ljava/lang/String; = "setErrorListener"

.field private static final JOIN_MILLIS:I = 0xa

.field public static stifleExceptionChatter:Z


# instance fields
.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected final logger:Ljava/util/logging/Logger;

.field protected nWakeupRequests:I

.field protected name:Ljava/lang/String;

.field private volatile paused:Z

.field private running:Z

.field private volatile shutdownRequest:Z

.field private final synchronizer:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;

.field private volatile waitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/utilint/DaemonThread;->stifleExceptionChatter:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "waitTime"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    .line 43
    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    .line 46
    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    .line 57
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->waitTime:J

    .line 58
    invoke-virtual {p4, p3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->name:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 60
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->createLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->logger:Ljava/util/logging/Logger;

    .line 61
    return-void
.end method

.method private notifyExceptionListener(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExceptionListener()Lcom/sleepycat/je/ExceptionListener;

    move-result-object v0

    .line 218
    .local v0, "listener":Lcom/sleepycat/je/ExceptionListener;
    if-nez v0, :cond_1

    .line 219
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/sleepycat/je/DbInternal;->makeExceptionEvent(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/je/ExceptionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/ExceptionListener;->exceptionThrown(Lcom/sleepycat/je/ExceptionEvent;)V

    .line 222
    return-void
.end method


# virtual methods
.method public checkErrorListener(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 231
    const-string v0, "setErrorListener"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-boolean v0, Lcom/sleepycat/je/utilint/DaemonThread;->stifleExceptionChatter:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 235
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->TEST_INVALIDATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v3, "Daemon thread failed during testing"

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected createLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getNWakeupRequests()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->nWakeupRequests:I

    return v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method protected isPaused()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    return v0
.end method

.method protected isShutdownRequested()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    return v0
.end method

.method protected nDeadlockRetries()J
    .locals 2

    .line 248
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected abstract onWakeup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public requestShutdown()V
    .locals 1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    .line 101
    return-void
.end method

.method public run()V
    .locals 9

    .line 143
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    if-nez v0, :cond_a

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "numTries":I
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->nDeadlockRetries()J

    move-result-wide v2

    .line 148
    .local v2, "maxRetries":J
    :goto_1
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    .line 152
    const/4 v4, 0x0

    :try_start_1
    iget v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->nWakeupRequests:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->nWakeupRequests:I

    .line 153
    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    .line 154
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->onWakeup()V
    :try_end_1
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    iput-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    goto :goto_2

    :catchall_0
    move-exception v5

    iput-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    throw v5

    .line 156
    :catch_0
    move-exception v5

    .line 158
    iput-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->running:Z

    .line 159
    nop

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_0
    :goto_2
    iget-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    if-nez v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    :try_start_3
    iget-wide v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->waitTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    if-eqz v5, :cond_1

    goto :goto_3

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    iget-wide v6, p0, Lcom/sleepycat/je/utilint/DaemonThread;->waitTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    .line 166
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 170
    :goto_4
    monitor-exit v4

    goto :goto_5

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    .line 198
    .end local v0    # "numTries":I
    .end local v2    # "maxRetries":J
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/DaemonThread;->checkErrorListener(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 201
    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/utilint/DaemonThread;->notifyExceptionListener(Ljava/lang/Exception;)V

    .line 207
    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    .line 208
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error caught in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "e":Ljava/lang/Error;
    :cond_3
    :goto_5
    goto/16 :goto_0

    .line 199
    .restart local v0    # "e":Ljava/lang/Error;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 181
    .end local v0    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/DaemonThread;->notifyExceptionListener(Ljava/lang/Exception;)V

    .line 183
    sget-boolean v1, Lcom/sleepycat/je/utilint/DaemonThread;->stifleExceptionChatter:Z

    if-nez v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caught exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    if-eqz v4, :cond_5

    const-string v4, " Exiting"

    goto :goto_6

    :cond_5
    const-string v4, " Continuing"

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/DaemonThread;->checkErrorListener(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/DaemonThread;->notifyExceptionListener(Ljava/lang/Exception;)V

    .line 174
    sget-boolean v2, Lcom/sleepycat/je/utilint/DaemonThread;->stifleExceptionChatter:Z

    if-nez v2, :cond_8

    .line 175
    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutting down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 178
    :cond_8
    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    .line 180
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/DaemonThread;->checkErrorListener(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 211
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    return-void
.end method

.method public runOrPause(Z)V
    .locals 3
    .param p1, "run"    # Z

    .line 85
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    .line 87
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->wakeup()V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->name:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    .line 97
    :goto_0
    return-void
.end method

.method public setWaitTime(J)V
    .locals 0
    .param p1, "waitTime"    # J

    .line 283
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->waitTime:J

    .line 284
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->shutdownRequest:Z

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 121
    :goto_1
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->thread:Ljava/lang/Thread;

    .line 125
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<DaemonThread name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/utilint/DaemonThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wakeup()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->paused:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/DaemonThread;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    :cond_0
    :goto_0
    return-void
.end method
