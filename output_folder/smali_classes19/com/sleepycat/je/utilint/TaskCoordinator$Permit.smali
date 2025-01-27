.class public abstract Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
.super Ljava/lang/Object;
.source "TaskCoordinator.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Permit"
.end annotation


# instance fields
.field private volatile leaseEndMs:J

.field private volatile releaseMs:J

.field private final task:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

.field final synthetic this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;
    .param p2, "task"    # Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    .param p3, "leaseIntervalMs"    # J

    .line 538
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J

    .line 536
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J

    .line 540
    iput-object p2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->task:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J

    .line 547
    invoke-static {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$000(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized checkReleased()V
    .locals 5

    monitor-enter p0

    .line 581
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permit for the task:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->task:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was previously released at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Lease expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized checkLeaseExpiry()V
    .locals 5

    monitor-enter p0

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isExpired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 578
    monitor-exit p0

    return-void

    .line 575
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permit expired at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->releasePermit(Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :cond_0
    monitor-exit p0

    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getTask()Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->task:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    return-object v0
.end method

.method public abstract isDeficit()Z
.end method

.method public declared-synchronized isExpired()Z
    .locals 7

    monitor-enter p0

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isReleased()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 566
    iget-wide v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J

    iget-wide v5, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    .line 570
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    monitor-exit p0

    return v1

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 4

    monitor-enter p0

    .line 558
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 558
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releasePermit()V
    .locals 2

    monitor-enter p0

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->checkReleased()V

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releaseMs:J

    .line 623
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->task:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->incExpiredPermits()V

    .line 626
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$000(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLease(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "leaseInterval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    monitor-enter p0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->checkLeaseExpiry()V

    .line 610
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->checkReleased()V

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 613
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->leaseEndMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 607
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    .end local p1    # "leaseInterval":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
