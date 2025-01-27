.class final Lio/netty/util/concurrent/ScheduledFutureTask;
.super Lio/netty/util/concurrent/PromiseTask;
.source "ScheduledFutureTask.java"

# interfaces
.implements Lio/netty/util/concurrent/ScheduledFuture;
.implements Lio/netty/util/internal/PriorityQueueNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/PromiseTask<",
        "TV;>;",
        "Lio/netty/util/concurrent/ScheduledFuture<",
        "TV;>;",
        "Lio/netty/util/internal/PriorityQueueNode;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final START_TIME:J


# instance fields
.field private deadlineNanos:J

.field private id:J

.field private final periodNanos:J

.field private queueIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    nop

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "nanoTime"    # J

    .line 56
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    .line 57
    iput-wide p3, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 59
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;JJ)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "nanoTime"    # J
    .param p5, "period"    # J

    .line 64
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    .line 65
    iput-wide p3, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 66
    invoke-static {p5, p6}, Lio/netty/util/concurrent/ScheduledFutureTask;->validatePeriod(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 67
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/util/concurrent/Callable;J)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
    .param p3, "nanoTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/AbstractScheduledEventExecutor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    .line 81
    iput-wide p3, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 83
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/util/concurrent/Callable;JJ)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
    .param p3, "nanoTime"    # J
    .param p5, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/AbstractScheduledEventExecutor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;JJ)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    .line 73
    iput-wide p3, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 74
    invoke-static {p5, p6}, Lio/netty/util/concurrent/ScheduledFutureTask;->validatePeriod(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 75
    return-void
.end method

.method static deadlineNanos(J)J
    .locals 4
    .param p0, "delay"    # J

    .line 35
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 37
    .local v0, "deadlineNanos":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method static deadlineToDelayNanos(J)J
    .locals 4
    .param p0, "deadlineNanos"    # J

    .line 122
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    sub-long v2, p0, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static initialNanoTime()J
    .locals 2

    .line 41
    sget-wide v0, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    return-wide v0
.end method

.method static nanoTime()J
    .locals 4

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private scheduledExecutor()Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
    .locals 1

    .line 195
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    return-object v0
.end method

.method private static validatePeriod(J)J
    .locals 2
    .param p0, "period"    # J

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 89
    return-wide p0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period: 0 (expected: != 0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 205
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/PromiseTask;->cancel(Z)Z

    move-result v0

    .line 206
    .local v0, "canceled":Z
    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->scheduledExecutor()Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->removeScheduled(Lio/netty/util/concurrent/ScheduledFutureTask;)V

    .line 209
    :cond_0
    return v0
.end method

.method cancelWithoutRemove(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 213
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/PromiseTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 11
    .param p1, "o"    # Ljava/util/concurrent/Delayed;

    .line 137
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    if-ne p0, p1, :cond_0

    .line 138
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 142
    .local v0, "that":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 143
    .local v1, "d":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, -0x1

    if-gez v5, :cond_1

    .line 144
    return v6

    .line 145
    :cond_1
    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 146
    return v4

    .line 147
    :cond_2
    iget-wide v7, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    iget-wide v9, v0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_3

    .line 148
    return v6

    .line 150
    :cond_3
    cmp-long v3, v7, v9

    if-eqz v3, :cond_4

    .line 151
    return v4

    .line 150
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public deadlineNanos()J
    .locals 2

    .line 105
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    return-wide v0
.end method

.method public delayNanos()J
    .locals 2

    .line 118
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineToDelayNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public delayNanos(J)J
    .locals 6
    .param p1, "currentTimeNanos"    # J

    .line 126
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    sget-wide v4, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long v4, p1, v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 126
    :goto_0
    return-wide v2
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 101
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 132
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/DefaultPriorityQueue<",
            "*>;)I"
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p1, "queue":Lio/netty/util/internal/DefaultPriorityQueue;, "Lio/netty/util/internal/DefaultPriorityQueue<*>;"
    iget v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    return v0
.end method

.method public priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/DefaultPriorityQueue<",
            "*>;I)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p1, "queue":Lio/netty/util/internal/DefaultPriorityQueue;, "Lio/netty/util/internal/DefaultPriorityQueue<*>;"
    iput p2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->queueIndex:I

    .line 236
    return-void
.end method

.method public run()V
    .locals 4

    .line 157
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->scheduledExecutor()Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/util/internal/PriorityQueue;->removeTyped(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->scheduledExecutor()Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleFromEventLoop(Lio/netty/util/concurrent/ScheduledFutureTask;)V

    .line 166
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setUncancellableInternal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->runTask()Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 172
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->runTask()Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 178
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 179
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    goto :goto_1

    .line 181
    :cond_3
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 183
    :goto_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    invoke-direct {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->scheduledExecutor()Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_4
    :goto_2
    goto :goto_3

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 192
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method setConsumed()V
    .locals 6

    .line 111
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 113
    iput-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method setId(J)Lio/netty/util/concurrent/ScheduledFutureTask;
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 94
    iput-wide p1, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    .line 96
    :cond_0
    return-object p0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 218
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 221
    const-string v1, " deadline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 222
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string v2, ", period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 224
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    return-object v1
.end method
