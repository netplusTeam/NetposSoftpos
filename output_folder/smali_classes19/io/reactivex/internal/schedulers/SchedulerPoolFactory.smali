.class public final Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;,
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field static final PURGE_ENABLED_KEY:Ljava/lang/String; = "rx2.purge-enabled"

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_PERIOD_SECONDS_KEY:Ljava/lang/String; = "rx2.purge-period-seconds"

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    .line 95
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;-><init>()V

    .line 96
    .local v0, "propertyAccessor":Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    const/4 v1, 0x1

    const-string v2, "rx2.purge-enabled"

    invoke-static {v1, v2, v1, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z

    move-result v2

    sput-boolean v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    .line 97
    const-string v3, "rx2.purge-period-seconds"

    invoke-static {v2, v3, v1, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I

    move-result v1

    sput v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    .line 99
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    .line 100
    .end local v0    # "propertyAccessor":Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .param p0, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 145
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 146
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    sget-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v1, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V

    .line 147
    return-object v0
.end method

.method static getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultNotFound"    # Z
    .param p3, "defaultNotEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 118
    .local p4, "propertyAccessor":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 120
    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 122
    return p2

    .line 124
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 125
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Throwable;
    return p2

    .line 129
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    return p3
.end method

.method static getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultNotFound"    # I
    .param p3, "defaultNotEnabled"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 103
    .local p4, "propertyAccessor":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 105
    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    return p2

    .line 109
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 110
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Throwable;
    return p2

    .line 114
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    return p3
.end method

.method public static shutdown()V
    .locals 2

    .line 87
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 91
    :cond_0
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 92
    return-void
.end method

.method public static start()V
    .locals 1

    .line 60
    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryStart(Z)V

    .line 61
    return-void
.end method

.method static tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p0, "purgeEnabled"    # Z
    .param p1, "exec"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 153
    .local v0, "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0    # "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_0
    return-void
.end method

.method static tryStart(Z)V
    .locals 12
    .param p0, "purgeEnabled"    # Z

    .line 64
    if-eqz p0, :cond_2

    .line 66
    :goto_0
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    .local v1, "curr":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x1

    new-instance v3, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v4, "RxSchedulerPurge"

    invoke-direct {v3, v4}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 71
    .local v2, "next":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v6, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    invoke-direct {v6}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    sget v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v7, v0

    int-to-long v9, v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v2

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 79
    .end local v1    # "curr":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v2    # "next":Ljava/util/concurrent/ScheduledExecutorService;
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method
