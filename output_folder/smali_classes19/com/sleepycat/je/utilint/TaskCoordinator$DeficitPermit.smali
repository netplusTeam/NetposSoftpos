.class Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;
.super Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeficitPermit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V
    .locals 1
    .param p2, "task"    # Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    .param p3, "leaseIntervalMs"    # J

    .line 685
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 686
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V

    .line 687
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->incDeficitPermits()V

    .line 688
    invoke-static {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$300(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 690
    invoke-static {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$200(Lcom/sleepycat/je/utilint/TaskCoordinator;)Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->revoke(I)V

    .line 691
    return-void
.end method


# virtual methods
.method public isDeficit()Z
    .locals 1

    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized releasePermit()V
    .locals 2

    monitor-enter p0

    .line 700
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releasePermit()V

    .line 702
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$200(Lcom/sleepycat/je/utilint/TaskCoordinator;)Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->release(I)V

    .line 703
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$300(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 706
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;->checkLeaseExpiry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    monitor-exit p0

    return-void

    .line 699
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
