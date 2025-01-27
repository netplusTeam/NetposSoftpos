.class final Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "GlobalEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/GlobalEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskRunner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/GlobalEventExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    const-class v0, Lio/netty/util/concurrent/GlobalEventExecutor;

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/GlobalEventExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/concurrent/GlobalEventExecutor;

    .line 236
    iput-object p1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 240
    :goto_0
    iget-object v0, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/GlobalEventExecutor;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 241
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    goto :goto_1

    .line 244
    :catchall_0
    move-exception v1

    .line 245
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Unexpected exception from the global event executor: "

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v1, v1, Lio/netty/util/concurrent/GlobalEventExecutor;->quietPeriodTask:Lio/netty/util/concurrent/ScheduledFutureTask;

    if-eq v0, v1, :cond_0

    .line 249
    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v1, v1, Lio/netty/util/concurrent/GlobalEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    .line 255
    .local v1, "scheduledTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    iget-object v2, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v2, v2, Lio/netty/util/concurrent/GlobalEventExecutor;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 259
    :cond_1
    iget-object v3, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$100(Lio/netty/util/concurrent/GlobalEventExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    .line 260
    .local v3, "stopped":Z
    if-eqz v3, :cond_4

    .line 263
    iget-object v5, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v5, v5, Lio/netty/util/concurrent/GlobalEventExecutor;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 268
    goto :goto_2

    .line 272
    :cond_2
    iget-object v5, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$100(Lio/netty/util/concurrent/GlobalEventExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 275
    nop

    .line 283
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "scheduledTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .end local v3    # "stopped":Z
    :cond_3
    :goto_2
    return-void

    .line 260
    .restart local v0    # "task":Ljava/lang/Runnable;
    .restart local v1    # "scheduledTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .restart local v3    # "stopped":Z
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 282
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "scheduledTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .end local v3    # "stopped":Z
    :cond_5
    goto :goto_0
.end method
