.class public abstract Lio/netty/util/concurrent/SingleThreadEventExecutor;
.super Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Lio/netty/util/concurrent/OrderedEventExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/SingleThreadEventExecutor$DefaultThreadProperties;,
        Lio/netty/util/concurrent/SingleThreadEventExecutor$NonWakeupRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEFAULT_MAX_PENDING_EXECUTOR_TASKS:I

.field private static final NOOP_TASK:Ljava/lang/Runnable;

.field private static final PROPERTIES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/concurrent/SingleThreadEventExecutor;",
            "Lio/netty/util/concurrent/ThreadProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCHEDULE_PURGE_INTERVAL:J

.field private static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/util/concurrent/SingleThreadEventExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final ST_NOT_STARTED:I = 0x1

.field private static final ST_SHUTDOWN:I = 0x4

.field private static final ST_SHUTTING_DOWN:I = 0x3

.field private static final ST_STARTED:I = 0x2

.field private static final ST_TERMINATED:I = 0x5

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final addTaskWakesUp:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile gracefulShutdownQuietPeriod:J

.field private gracefulShutdownStartTime:J

.field private volatile gracefulShutdownTimeout:J

.field private volatile interrupted:Z

.field private lastExecutionTime:J

.field private final maxPendingTasks:I

.field private final rejectedExecutionHandler:Lio/netty/util/concurrent/RejectedExecutionHandler;

.field private final shutdownHooks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:I

.field private final taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile thread:Ljava/lang/Thread;

.field private final threadLock:Ljava/util/concurrent/CountDownLatch;

.field private volatile threadProperties:Lio/netty/util/concurrent/ThreadProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    const-class v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 52
    const/16 v1, 0x10

    const v2, 0x7fffffff

    .line 53
    const-string v3, "io.netty.eventexecutor.maxPendingTasks"

    invoke-static {v3, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->DEFAULT_MAX_PENDING_EXECUTOR_TASKS:I

    .line 55
    nop

    .line 56
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 64
    new-instance v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$1;

    invoke-direct {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor$1;-><init>()V

    sput-object v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->NOOP_TASK:Ljava/lang/Runnable;

    .line 71
    nop

    .line 72
    const-string v1, "state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 73
    const-class v1, Lio/netty/util/concurrent/ThreadProperties;

    .line 74
    const-string v2, "threadProperties"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->PROPERTIES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 940
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->SCHEDULE_PURGE_INTERVAL:J

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;Z)V
    .locals 6
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "addTaskWakesUp"    # Z

    .line 140
    sget v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->DEFAULT_MAX_PENDING_EXECUTOR_TASKS:I

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 141
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "addTaskWakesUp"    # Z
    .param p4, "maxPendingTasks"    # I
    .param p5, "rejectedHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 156
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadLock:Ljava/util/concurrent/CountDownLatch;

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    .line 93
    iput v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    .line 100
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 157
    iput-boolean p3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTaskWakesUp:Z

    .line 158
    const/16 v0, 0x10

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->maxPendingTasks:I

    .line 159
    invoke-static {p2, p0}, Lio/netty/util/internal/ThreadExecutorMap;->apply(Ljava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 160
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    .line 161
    const-string v0, "rejectedHandler"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/RejectedExecutionHandler;

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->rejectedExecutionHandler:Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 162
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "addTaskWakesUp"    # Z
    .param p5, "rejectedHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutorGroup;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lio/netty/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 167
    .local p4, "taskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadLock:Ljava/util/concurrent/CountDownLatch;

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    .line 93
    iput v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    .line 100
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 168
    iput-boolean p3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTaskWakesUp:Z

    .line 169
    sget v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->DEFAULT_MAX_PENDING_EXECUTOR_TASKS:I

    iput v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->maxPendingTasks:I

    .line 170
    invoke-static {p2, p0}, Lio/netty/util/internal/ThreadExecutorMap;->apply(Ljava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 171
    const-string v0, "taskQueue"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    .line 172
    const-string v0, "rejectedHandler"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/RejectedExecutionHandler;

    iput-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->rejectedExecutionHandler:Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 173
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;Z)V
    .locals 1
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "addTaskWakesUp"    # Z

    .line 112
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, v0, p3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;Z)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 6
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "addTaskWakesUp"    # Z
    .param p4, "maxPendingTasks"    # I
    .param p5, "rejectedHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 128
    new-instance v2, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v2, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/util/concurrent/SingleThreadEventExecutor;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 50
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-boolean v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->interrupted:Z

    return v0
.end method

.method static synthetic access$300()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-wide v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadLock:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 50
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method private doStartThread()V
    .locals 2

    .line 977
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;

    invoke-direct {v1, p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;-><init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1057
    return-void

    .line 977
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private ensureThreadStarted(I)Z
    .locals 4
    .param p1, "oldState"    # I

    .line 959
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 961
    :try_start_0
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->doStartThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    goto :goto_0

    .line 962
    :catchall_0
    move-exception v1

    .line 963
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x5

    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 964
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 966
    instance-of v2, v1, Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 968
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 970
    :cond_0
    return v0

    .line 973
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private execute(Ljava/lang/Runnable;Z)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "immediate"    # Z

    .line 827
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    .line 828
    .local v0, "inEventLoop":Z
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTask(Ljava/lang/Runnable;)V

    .line 829
    if-nez v0, :cond_1

    .line 830
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->startThread()V

    .line 831
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    const/4 v1, 0x0

    .line 834
    .local v1, "reject":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->removeTask(Ljava/lang/Runnable;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 835
    const/4 v1, 0x1

    .line 841
    :cond_0
    goto :goto_0

    .line 837
    :catch_0
    move-exception v2

    .line 842
    :goto_0
    if-eqz v1, :cond_1

    .line 843
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->reject()V

    .line 848
    .end local v1    # "reject":Z
    :cond_1
    iget-boolean v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTaskWakesUp:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 849
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakeup(Z)V

    .line 851
    :cond_2
    return-void
.end method

.method private executeExpiredScheduledTasks()Z
    .locals 4

    .line 300
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v0}, Lio/netty/util/internal/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v2

    .line 304
    .local v2, "nanoTime":J
    invoke-virtual {p0, v2, v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object v0

    .line 305
    .local v0, "scheduledTask":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 306
    return v1

    .line 309
    :cond_1
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->safeExecute(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {p0, v2, v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_1

    .line 311
    const/4 v1, 0x1

    return v1

    .line 301
    .end local v0    # "scheduledTask":Ljava/lang/Runnable;
    .end local v2    # "nanoTime":J
    :cond_2
    :goto_0
    return v1
.end method

.method private fetchFromScheduledTaskQueue()Z
    .locals 5

    .line 279
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v0}, Lio/netty/util/internal/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v2

    .line 284
    .local v2, "nanoTime":J
    :goto_0
    invoke-virtual {p0, v2, v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object v0

    .line 285
    .local v0, "scheduledTask":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 286
    return v1

    .line 288
    :cond_1
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 290
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    move-object v4, v0

    check-cast v4, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-interface {v1, v4}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v1, 0x0

    return v1

    .line 293
    .end local v0    # "scheduledTask":Ljava/lang/Runnable;
    :cond_2
    goto :goto_0

    .line 280
    .end local v2    # "nanoTime":J
    :cond_3
    :goto_1
    return v1
.end method

.method protected static pollTaskFrom(Ljava/util/Queue;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 215
    .local p0, "taskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 216
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    if-eq v0, v1, :cond_0

    .line 217
    return-object v0

    .line 219
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0
.end method

.method protected static reject()V
    .locals 2

    .line 926
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "event executor terminated"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runExistingTasksFrom(Ljava/util/Queue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .line 442
    .local p1, "taskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    invoke-static {p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTaskFrom(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    .line 443
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 444
    const/4 v1, 0x0

    return v1

    .line 446
    :cond_0
    iget v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->maxPendingTasks:I

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 447
    .local v1, "remaining":I
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->safeExecute(Ljava/lang/Runnable;)V

    .line 450
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "remaining":I
    .local v2, "remaining":I
    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 451
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->safeExecute(Ljava/lang/Runnable;)V

    move v1, v2

    goto :goto_0

    .line 453
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private runShutdownHooks()Z
    .locals 7

    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, "ran":Z
    :goto_0
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 604
    .local v3, "task":Ljava/lang/Runnable;
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :goto_2
    const/4 v0, 0x1

    .line 609
    goto :goto_3

    .line 605
    :catchall_0
    move-exception v4

    .line 606
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v5, Lio/netty/util/concurrent/SingleThreadEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Shutdown hook raised an exception."

    invoke-interface {v5, v6, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 610
    .end local v3    # "task":Ljava/lang/Runnable;
    :goto_3
    goto :goto_1

    .line 608
    .restart local v3    # "task":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    const/4 v0, 0x1

    .line 609
    throw v2

    .line 611
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 613
    :cond_1
    if-eqz v0, :cond_2

    .line 614
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    .line 617
    :cond_2
    return v0
.end method

.method private startThread()V
    .locals 5

    .line 943
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 944
    sget-object v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    const/4 v3, 0x0

    .line 947
    .local v3, "success":Z
    :try_start_0
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->doStartThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    const/4 v3, 0x1

    .line 950
    if-nez v3, :cond_1

    .line 951
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v0

    if-nez v3, :cond_0

    .line 951
    sget-object v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 953
    :cond_0
    throw v0

    .line 956
    .end local v3    # "success":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private throwIfInEventLoop(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 881
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from within the EventLoop is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 568
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    new-instance v0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;

    invoke-direct {v0, p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;-><init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 578
    :goto_0
    return-void
.end method

.method protected addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 345
    const-string v0, "task"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->offerTask(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->reject(Ljava/lang/Runnable;)V

    .line 349
    :cond_0
    return-void
.end method

.method protected afterRunningAllTasks()V
    .locals 0

    .line 501
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 805
    const-string v0, "unit"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 806
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 812
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isTerminated()Z

    move-result v0

    return v0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot await termination of the current thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cleanup()V
    .locals 0

    .line 549
    return-void
.end method

.method protected confirmShutdown()Z
    .locals 9

    .line 749
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 750
    return v1

    .line 753
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 757
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cancelScheduledTasks()V

    .line 759
    iget-wide v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 760
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownStartTime:J

    .line 763
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runShutdownHooks()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 779
    :cond_2
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v3

    .line 781
    .local v3, "nanoTime":J
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownStartTime:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownTimeout:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    goto :goto_1

    .line 785
    :cond_3
    iget-wide v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownQuietPeriod:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_4

    .line 788
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 790
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 795
    :goto_0
    return v1

    .line 800
    :cond_4
    return v2

    .line 782
    :cond_5
    :goto_1
    return v2

    .line 764
    .end local v3    # "nanoTime":J
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    return v2

    .line 772
    :cond_7
    iget-wide v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownQuietPeriod:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_8

    .line 773
    return v2

    .line 775
    :cond_8
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 776
    return v1

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must be invoked from an event loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected deadlineNanos()J
    .locals 5

    .line 521
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 522
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-nez v0, :cond_0

    .line 523
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lio/netty/util/concurrent/SingleThreadEventExecutor;->SCHEDULE_PURGE_INTERVAL:J

    add-long/2addr v1, v3

    return-wide v1

    .line 525
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    return-wide v1
.end method

.method protected delayNanos(J)J
    .locals 3
    .param p1, "currentTimeNanos"    # J

    .line 507
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    .line 508
    .local v0, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-nez v0, :cond_0

    .line 509
    sget-wide v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->SCHEDULE_PURGE_INTERVAL:J

    return-wide v1

    .line 512
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos(J)J

    move-result-wide v1

    return-wide v1
.end method

.method final drainTasks()I
    .locals 3

    .line 1060
    const/4 v0, 0x0

    .line 1062
    .local v0, "numTasks":I
    :goto_0
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1063
    .local v1, "runnable":Ljava/lang/Runnable;
    if-nez v1, :cond_0

    .line 1064
    nop

    .line 1072
    .end local v1    # "runnable":Ljava/lang/Runnable;
    return v0

    .line 1068
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    if-eq v2, v1, :cond_1

    .line 1069
    add-int/lit8 v0, v0, 0x1

    .line 1071
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 817
    const-string v0, "task"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 818
    instance-of v0, p1, Lio/netty/util/concurrent/AbstractEventExecutor$LazyRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakesUpForTask(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->execute(Ljava/lang/Runnable;Z)V

    .line 819
    return-void
.end method

.method protected hasTasks()Z
    .locals 1

    .line 326
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public inEventLoop(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 561
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected interruptThread()V
    .locals 2

    .line 197
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    .line 198
    .local v0, "currentThread":Ljava/lang/Thread;
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->interrupted:Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 203
    :goto_0
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 869
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v0, "invokeAll"

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->throwIfInEventLoop(Ljava/lang/String;)V

    .line 870
    invoke-super {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 876
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v0, "invokeAll"

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->throwIfInEventLoop(Ljava/lang/String;)V

    .line 877
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 855
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v0, "invokeAny"

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->throwIfInEventLoop(Ljava/lang/String;)V

    .line 856
    invoke-super {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 862
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v0, "invokeAny"

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->throwIfInEventLoop(Ljava/lang/String;)V

    .line 863
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 2

    .line 737
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShuttingDown()Z
    .locals 2

    .line 732
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 742
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lazyExecute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 823
    const-string v0, "task"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->execute(Ljava/lang/Runnable;Z)V

    .line 824
    return-void
.end method

.method protected newTaskQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->maxPendingTasks:I

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskQueue(I)Ljava/util/Queue;
    .locals 1
    .param p1, "maxPendingTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method final offerTask(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 352
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->reject()V

    .line 355
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected peekTask()Ljava/lang/Runnable;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public pendingTasks()I
    .locals 1

    .line 337
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method protected pollTask()Ljava/lang/Runnable;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTaskFrom(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected final reject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 935
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->rejectedExecutionHandler:Lio/netty/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Lio/netty/util/concurrent/RejectedExecutionHandler;->rejected(Ljava/lang/Runnable;Lio/netty/util/concurrent/SingleThreadEventExecutor;)V

    .line 936
    return-void
.end method

.method public removeShutdownHook(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 584
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->shutdownHooks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_0
    new-instance v0, Lio/netty/util/concurrent/SingleThreadEventExecutor$3;

    invoke-direct {v0, p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor$3;-><init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 594
    :goto_0
    return-void
.end method

.method protected removeTask(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 362
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    const-string v1, "task"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract run()V
.end method

.method protected runAllTasks()Z
    .locals 4

    .line 371
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const/4 v0, 0x0

    .line 376
    .local v0, "ranAtLeastOne":Z
    :cond_0
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->fetchFromScheduledTaskQueue()Z

    move-result v1

    .line 377
    .local v1, "fetchedAll":Z
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-virtual {p0, v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasksFrom(Ljava/util/Queue;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const/4 v0, 0x1

    .line 380
    :cond_1
    if-eqz v1, :cond_0

    .line 382
    if-eqz v0, :cond_2

    .line 383
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    .line 385
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->afterRunningAllTasks()V

    .line 386
    return v0

    .line 371
    .end local v0    # "ranAtLeastOne":Z
    .end local v1    # "fetchedAll":Z
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected runAllTasks(J)Z
    .locals 10
    .param p1, "timeoutNanos"    # J

    .line 461
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->fetchFromScheduledTaskQueue()Z

    .line 462
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 463
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->afterRunningAllTasks()V

    .line 465
    const/4 v1, 0x0

    return v1

    .line 468
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v3

    add-long/2addr v3, p1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 469
    .local v3, "deadline":J
    :goto_0
    const-wide/16 v5, 0x0

    .line 472
    .local v5, "runTasks":J
    :goto_1
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->safeExecute(Ljava/lang/Runnable;)V

    .line 474
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 478
    const-wide/16 v7, 0x3f

    and-long/2addr v7, v5

    cmp-long v7, v7, v1

    if-nez v7, :cond_2

    .line 479
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v7

    .line 480
    .local v7, "lastExecutionTime":J
    cmp-long v9, v7, v3

    if-ltz v9, :cond_2

    .line 481
    goto :goto_2

    .line 485
    .end local v7    # "lastExecutionTime":J
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 486
    if-nez v0, :cond_3

    .line 487
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v7

    .line 488
    .restart local v7    # "lastExecutionTime":J
    nop

    .line 492
    :goto_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->afterRunningAllTasks()V

    .line 493
    iput-wide v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    .line 494
    const/4 v1, 0x1

    return v1

    .line 486
    .end local v7    # "lastExecutionTime":J
    :cond_3
    goto :goto_1
.end method

.method protected final runAllTasksFrom(Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .line 423
    .local p1, "taskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    invoke-static {p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTaskFrom(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    .line 424
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 425
    const/4 v1, 0x0

    return v1

    .line 428
    :cond_0
    :goto_0
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->safeExecute(Ljava/lang/Runnable;)V

    .line 429
    invoke-static {p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->pollTaskFrom(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    .line 430
    if-nez v0, :cond_1

    .line 431
    const/4 v1, 0x1

    return v1

    .line 430
    :cond_1
    goto :goto_0
.end method

.method protected final runScheduledAndExecutorTasks(I)Z
    .locals 4
    .param p1, "maxDrainAttempts"    # I

    .line 398
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    const/4 v0, 0x0

    .line 404
    .local v0, "drainAttempt":I
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    invoke-direct {p0, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runExistingTasksFrom(Ljava/util/Queue;)Z

    move-result v1

    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->executeExpiredScheduledTasks()Z

    move-result v2

    or-int/2addr v1, v2

    .line 405
    .local v1, "ranAtLeastOneTask":Z
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 407
    :cond_1
    if-lez v0, :cond_2

    .line 408
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    .line 410
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->afterRunningAllTasks()V

    .line 412
    if-lez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 398
    .end local v0    # "drainAttempt":I
    .end local v1    # "ranAtLeastOneTask":Z
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    .line 693
    .local v0, "inEventLoop":Z
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    return-void

    .line 697
    :cond_1
    const/4 v1, 0x1

    .line 698
    .local v1, "wakeup":Z
    iget v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    .line 699
    .local v2, "oldState":I
    if-eqz v0, :cond_2

    .line 700
    const/4 v3, 0x4

    .local v3, "newState":I
    goto :goto_1

    .line 702
    .end local v3    # "newState":I
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 709
    move v3, v2

    .line 710
    .restart local v3    # "newState":I
    const/4 v1, 0x0

    goto :goto_1

    .line 706
    .end local v3    # "newState":I
    :pswitch_0
    const/4 v3, 0x4

    .line 707
    .restart local v3    # "newState":I
    nop

    .line 713
    :goto_1
    sget-object v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 714
    nop

    .line 718
    .end local v3    # "newState":I
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->ensureThreadStarted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    return-void

    .line 722
    :cond_3
    if-eqz v1, :cond_4

    .line 723
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    sget-object v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 724
    iget-boolean v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTaskWakesUp:Z

    if-nez v3, :cond_4

    .line 725
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakeup(Z)V

    .line 728
    :cond_4
    return-void

    .line 716
    :cond_5
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 5
    .param p1, "quietPeriod"    # J
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 622
    const-string v0, "quietPeriod"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    .line 623
    cmp-long v0, p3, p1

    if-ltz v0, :cond_6

    .line 627
    const-string v0, "unit"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 629
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    .line 637
    .local v0, "inEventLoop":Z
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 641
    :cond_1
    const/4 v1, 0x1

    .line 642
    .local v1, "wakeup":Z
    iget v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->state:I

    .line 643
    .local v2, "oldState":I
    if-eqz v0, :cond_2

    .line 644
    const/4 v3, 0x3

    .local v3, "newState":I
    goto :goto_1

    .line 646
    .end local v3    # "newState":I
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 652
    move v3, v2

    .line 653
    .restart local v3    # "newState":I
    const/4 v1, 0x0

    goto :goto_1

    .line 649
    .end local v3    # "newState":I
    :pswitch_0
    const/4 v3, 0x3

    .line 650
    .restart local v3    # "newState":I
    nop

    .line 656
    :goto_1
    sget-object v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 657
    nop

    .line 660
    .end local v3    # "newState":I
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownQuietPeriod:J

    .line 661
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->gracefulShutdownTimeout:J

    .line 663
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->ensureThreadStarted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 664
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v3

    .line 667
    :cond_3
    if-eqz v1, :cond_4

    .line 668
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    sget-object v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 669
    iget-boolean v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addTaskWakesUp:Z

    if-nez v3, :cond_4

    .line 670
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakeup(Z)V

    .line 674
    :cond_4
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 659
    :cond_5
    goto :goto_0

    .line 624
    .end local v0    # "inEventLoop":Z
    .end local v1    # "wakeup":Z
    .end local v2    # "oldState":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= quietPeriod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected takeTask()Ljava/lang/Runnable;
    .locals 7

    .line 232
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    instance-of v1, v0, Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_5

    .line 237
    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    .line 239
    .local v0, "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v1

    .line 240
    .local v1, "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    if-nez v1, :cond_1

    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, "task":Ljava/lang/Runnable;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v2, v3

    .line 244
    sget-object v3, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 249
    :cond_0
    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    .line 250
    :goto_1
    return-object v2

    .line 252
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v2

    .line 253
    .local v2, "delayNanos":J
    const/4 v4, 0x0

    .line 254
    .local v4, "task":Ljava/lang/Runnable;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    .line 256
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 260
    goto :goto_2

    .line 257
    :catch_1
    move-exception v5

    .line 259
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    return-object v6

    .line 262
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 267
    invoke-direct {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->fetchFromScheduledTaskQueue()Z

    .line 268
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/Runnable;

    .line 271
    :cond_3
    if-eqz v4, :cond_4

    .line 272
    return-object v4

    .line 275
    .end local v1    # "scheduledTask":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    .end local v2    # "delayNanos":J
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_4
    goto :goto_0

    .line 234
    .end local v0    # "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 232
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method public final threadProperties()Lio/netty/util/concurrent/ThreadProperties;
    .locals 4

    .line 892
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadProperties:Lio/netty/util/concurrent/ThreadProperties;

    .line 893
    .local v0, "threadProperties":Lio/netty/util/concurrent/ThreadProperties;
    if-nez v0, :cond_3

    .line 894
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    .line 895
    .local v1, "thread":Ljava/lang/Thread;
    if-nez v1, :cond_2

    .line 896
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 897
    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->NOOP_TASK:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->syncUninterruptibly()Lio/netty/util/concurrent/Future;

    .line 898
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->thread:Ljava/lang/Thread;

    .line 899
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 896
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 902
    :cond_2
    :goto_0
    new-instance v2, Lio/netty/util/concurrent/SingleThreadEventExecutor$DefaultThreadProperties;

    invoke-direct {v2, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor$DefaultThreadProperties;-><init>(Ljava/lang/Thread;)V

    move-object v0, v2

    .line 903
    sget-object v2, Lio/netty/util/concurrent/SingleThreadEventExecutor;->PROPERTIES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 904
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->threadProperties:Lio/netty/util/concurrent/ThreadProperties;

    .line 908
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_3
    return-object v0
.end method

.method protected updateLastExecutionTime()V
    .locals 2

    .line 536
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->lastExecutionTime:J

    .line 537
    return-void
.end method

.method protected wakesUpForTask(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 922
    const/4 v0, 0x1

    return v0
.end method

.method protected wakeup(Z)V
    .locals 2
    .param p1, "inEventLoop"    # Z

    .line 552
    if-nez p1, :cond_0

    .line 555
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->taskQueue:Ljava/util/Queue;

    sget-object v1, Lio/netty/util/concurrent/SingleThreadEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    return-void
.end method
