.class public final Lio/reactivex/internal/schedulers/IoScheduler;
.super Lio/reactivex/Scheduler;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field static final EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final EVICTOR_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedWorkerPoolEvictor"

.field private static final KEEP_ALIVE_TIME:J

.field public static final KEEP_ALIVE_TIME_DEFAULT:J = 0x3cL

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final KEY_IO_PRIORITY:Ljava/lang/String; = "rx2.io-priority"

.field private static final KEY_KEEP_ALIVE_TIME:Ljava/lang/String; = "rx2.io-keep-alive-time"

.field private static final KEY_SCHEDULED_RELEASE:Ljava/lang/String; = "rx2.io-scheduled-release"

.field static final NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

.field static USE_SCHEDULED_RELEASE:Z = false

.field static final WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final WORKER_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedThreadScheduler"


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 58
    const-string v0, "rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    .line 60
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    .line 61
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->dispose()V

    .line 63
    nop

    .line 64
    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    .local v0, "priority":I
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 68
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 70
    const-string v2, "rx2.io-scheduled-release"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/reactivex/internal/schedulers/IoScheduler;->USE_SCHEDULED_RELEASE:Z

    .line 72
    new-instance v2, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    .line 73
    invoke-virtual {v2}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    .line 74
    .end local v0    # "priority":I
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 171
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 172
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2

    .line 202
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 3

    .line 188
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    .line 189
    .local v0, "curr":Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    if-ne v0, v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    .line 194
    return-void

    .line 196
    .end local v0    # "curr":Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    :cond_1
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object v0, v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 5

    .line 179
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-wide v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    sget-object v3, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 180
    .local v0, "update":Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    .line 183
    :cond_0
    return-void
.end method
