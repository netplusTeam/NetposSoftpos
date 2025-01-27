.class Lcom/sleepycat/je/log/LogFlusher$FlushTask;
.super Ljava/util/TimerTask;
.source "LogFlusher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogFlusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushTask"
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private volatile flushCount:I

.field private final fsync:Z

.field private lastNCommits:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "fsync"    # Z

    .line 208
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 210
    iput-boolean p2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->fsync:Z

    .line 211
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getNTotalCommits()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->lastNCommits:J

    .line 212
    return-void
.end method


# virtual methods
.method getFlushCount()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->flushCount:I

    return v0
.end method

.method public run()V
    .locals 4

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 222
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getNTotalCommits()J

    move-result-wide v0

    .line 225
    .local v0, "newNCommits":J
    iget-wide v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->lastNCommits:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    iget-boolean v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->fsync:Z

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 235
    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->lastNCommits:J

    .line 236
    iget v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->flushCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->flushCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0    # "newNCommits":J
    goto :goto_1

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 241
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/LogFlusher$FlushTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 240
    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void
.end method
