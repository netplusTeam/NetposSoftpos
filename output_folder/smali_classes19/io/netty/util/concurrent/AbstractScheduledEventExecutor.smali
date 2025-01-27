.class public abstract Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
.super Lio/netty/util/concurrent/AbstractEventExecutor;
.source "AbstractScheduledEventExecutor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final WAKEUP_TASK:Ljava/lang/Runnable;


# instance fields
.field nextTaskId:J

.field scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/PriorityQueue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 33
    new-instance v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;

    invoke-direct {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;

    .line 41
    new-instance v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;

    invoke-direct {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;)V
    .locals 0
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;

    .line 54
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    .line 55
    return-void
.end method

.method protected static deadlineToDelayNanos(J)J
    .locals 2
    .param p0, "deadlineNanos"    # J

    .line 68
    invoke-static {p0, p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineToDelayNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static initialNanoTime()J
    .locals 2

    .line 76
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->initialNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isNullOrEmpty(Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;)Z"
        }
    .end annotation

    .line 90
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected static nanoTime()J
    .locals 2

    .line 58
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "TV;>;)",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 255
    .local p1, "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleFromEventLoop(Lio/netty/util/concurrent/ScheduledFutureTask;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    .line 260
    .local v0, "deadlineNanos":J
    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->beforeScheduledTaskSubmitted(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->afterScheduledTaskSubmitted(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    sget-object v2, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 271
    .end local v0    # "deadlineNanos":J
    :cond_2
    :goto_0
    return-object p1
.end method

.method private validateScheduled0(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "amount"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled(JLjava/util/concurrent/TimeUnit;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected afterScheduledTaskSubmitted(J)Z
    .locals 1
    .param p1, "deadlineNanos"    # J

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method protected beforeScheduledTaskSubmitted(J)Z
    .locals 1
    .param p1, "deadlineNanos"    # J

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected cancelScheduledTasks()V
    .locals 6

    .line 99
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    .line 101
    .local v0, "scheduledTaskQueue":Lio/netty/util/internal/PriorityQueue;, "Lio/netty/util/internal/PriorityQueue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    invoke-static {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->isNullOrEmpty(Ljava/util/Queue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 106
    invoke-interface {v0, v2}, Lio/netty/util/internal/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 108
    .local v2, "scheduledTasks":[Lio/netty/util/concurrent/ScheduledFutureTask;, "[Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 109
    .local v5, "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {v5, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->cancelWithoutRemove(Z)Z

    .line 108
    .end local v5    # "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {v0}, Lio/netty/util/internal/PriorityQueue;->clearIgnoringIndexes()V

    .line 113
    return-void

    .line 99
    .end local v0    # "scheduledTaskQueue":Lio/netty/util/internal/PriorityQueue;, "Lio/netty/util/internal/PriorityQueue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .end local v2    # "scheduledTasks":[Lio/netty/util/concurrent/ScheduledFutureTask;, "[Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected final hasScheduledTasks()Z
    .locals 5

    .line 164
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 165
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final nextScheduledTaskDeadlineNanos()J
    .locals 3

    .line 151
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 152
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method protected final nextScheduledTaskNano()J
    .locals 3

    .line 142
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 143
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method final peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    .line 157
    .local v0, "scheduledTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/ScheduledFutureTask;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected final pollScheduledTask()Ljava/lang/Runnable;
    .locals 2

    .line 119
    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method protected final pollScheduledTask(J)Ljava/lang/Runnable;
    .locals 5
    .param p1, "nanoTime"    # J

    .line 127
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 130
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v1}, Lio/netty/util/internal/PriorityQueue;->remove()Ljava/lang/Object;

    .line 134
    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setConsumed()V

    .line 135
    return-object v0

    .line 131
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 127
    .end local v0    # "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final removeScheduled(Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;)V"
        }
    .end annotation

    .line 275
    .local p1, "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/util/internal/PriorityQueue;->removeTyped(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 170
    const-string v0, "command"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    const-string v0, "unit"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 173
    const-wide/16 p2, 0x0

    .line 175
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 177
    new-instance v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 180
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;J)V

    .line 177
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 3
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 185
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    const-string v0, "callable"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "unit"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 188
    const-wide/16 p2, 0x0

    .line 190
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 192
    new-instance v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/util/concurrent/Callable;J)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 15
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 197
    move-object v7, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    const-string v0, "command"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const-string v0, "unit"

    invoke-static {v12, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    .line 203
    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 207
    invoke-direct {p0, v8, v9, v12}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 208
    invoke-direct {p0, v10, v11, v12}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 210
    new-instance v14, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 211
    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v3

    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;JJ)V

    .line 210
    invoke-direct {p0, v14}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 205
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "period: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 201
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "initialDelay: %d (expected: >= 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 32
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method final scheduleFromEventLoop(Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;)V"
        }
    .end annotation

    .line 251
    .local p1, "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextTaskId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextTaskId:J

    invoke-virtual {p1, v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;->setId(J)Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 15
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 216
    move-object v7, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    const-string v0, "command"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v0, "unit"

    invoke-static {v12, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    .line 222
    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 227
    invoke-direct {p0, v8, v9, v12}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 228
    invoke-direct {p0, v10, v11, v12}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    .line 230
    new-instance v14, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 231
    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v3

    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    neg-long v5, v0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;JJ)V

    .line 230
    invoke-direct {p0, v14}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 224
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "delay: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 220
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "initialDelay: %d (expected: >= 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 32
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/PriorityQueue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lio/netty/util/internal/DefaultPriorityQueue;

    sget-object v1, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/DefaultPriorityQueue;-><init>(Ljava/util/Comparator;I)V

    iput-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    .line 86
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    return-object v0
.end method

.method protected validateScheduled(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "amount"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    return-void
.end method
