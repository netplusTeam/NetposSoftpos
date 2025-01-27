.class Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;
.super Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealPermit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V
    .locals 0
    .param p2, "task"    # Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    .param p3, "leaseIntervalMs"    # J

    .line 646
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 647
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V

    .line 648
    invoke-static {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$100(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 649
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->incRealPermits()V

    .line 650
    return-void
.end method


# virtual methods
.method public isDeficit()Z
    .locals 1

    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized releasePermit()V
    .locals 1

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releasePermit()V

    .line 665
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$100(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 666
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$200(Lcom/sleepycat/je/utilint/TaskCoordinator;)Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->release()V

    .line 672
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;->checkLeaseExpiry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    monitor-exit p0

    return-void

    .line 658
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
