.class Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
.super Ljava/lang/Object;
.source "FSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FSyncGroup"
.end annotation


# static fields
.field static DO_LEADER_FSYNC:I

.field static DO_TIMEOUT_FSYNC:I

.field static NO_FSYNC_NEEDED:I


# instance fields
.field private volatile doFsync:Z

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final fsyncTimeout:J

.field private leaderExists:Z

.field private volatile workDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 333
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_TIMEOUT_FSYNC:I

    .line 334
    const/4 v0, 0x1

    sput v0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_LEADER_FSYNC:I

    .line 335
    const/4 v0, 0x2

    sput v0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->NO_FSYNC_NEEDED:I

    return-void
.end method

.method constructor <init>(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "fsyncTimeout"    # J
    .param p3, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->doFsync:Z

    .line 344
    iput-wide p1, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->fsyncTimeout:J

    .line 345
    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->workDone:Z

    .line 346
    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->leaderExists:Z

    .line 347
    iput-object p3, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 348
    return-void
.end method


# virtual methods
.method declared-synchronized getDoFsync()Z
    .locals 1

    monitor-enter p0

    .line 429
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->doFsync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 429
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLeader()Z
    .locals 2

    monitor-enter p0

    .line 351
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->workDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    monitor-exit p0

    return v1

    .line 354
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->leaderExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 355
    monitor-exit p0

    return v1

    .line 357
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->leaderExists:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    monitor-exit p0

    return v0

    .line 350
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDoFsync(Z)V
    .locals 1
    .param p1, "doSync"    # Z

    monitor-enter p0

    .line 425
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->doFsync:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->doFsync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 424
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    .end local p1    # "doSync":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized waitForEvent()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/ThreadInterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_0
    sget v0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->NO_FSYNC_NEEDED:I

    .line 374
    .local v0, "status":I
    iget-boolean v1, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->workDone:Z

    if-nez v1, :cond_3

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .local v1, "startTime":J
    :goto_0
    :try_start_1
    iget-wide v3, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->fsyncTimeout:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    nop

    .line 390
    :try_start_2
    iget-boolean v3, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->workDone:Z

    if-eqz v3, :cond_0

    .line 392
    sget v3, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->NO_FSYNC_NEEDED:I

    move v0, v3

    .line 393
    goto :goto_1

    .line 400
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :cond_0
    iget-boolean v3, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->leaderExists:Z

    if-nez v3, :cond_1

    .line 401
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->leaderExists:Z

    .line 402
    sget v3, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_LEADER_FSYNC:I

    move v0, v3

    .line 403
    goto :goto_1

    .line 410
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 411
    .local v3, "now":J
    sub-long v5, v3, v1

    iget-wide v7, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->fsyncTimeout:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 413
    sget v5, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_TIMEOUT_FSYNC:I

    move v0, v5

    .line 414
    goto :goto_1

    .line 416
    .end local v3    # "now":J
    :cond_2
    goto :goto_0

    .line 380
    :catch_0
    move-exception v3

    .line 381
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "Unexpected interrupt while waiting for write or fsync"

    invoke-direct {v4, v5, v6, v3}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    .end local v1    # "startTime":J
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    .line 371
    .end local v0    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized wakeupAll()V
    .locals 1

    monitor-enter p0

    .line 433
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->workDone:Z

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized wakeupOne()V
    .locals 1

    monitor-enter p0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 438
    .end local p0    # "this":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
