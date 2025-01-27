.class public final Lio/netty/util/concurrent/ImmediateEventExecutor;
.super Lio/netty/util/concurrent/AbstractEventExecutor;
.source "ImmediateEventExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;,
        Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediatePromise;
    }
.end annotation


# static fields
.field private static final DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lio/netty/util/concurrent/ImmediateEventExecutor;

.field private static final RUNNING:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final terminationFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lio/netty/util/concurrent/ImmediateEventExecutor;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 35
    new-instance v0, Lio/netty/util/concurrent/ImmediateEventExecutor;

    invoke-direct {v0}, Lio/netty/util/concurrent/ImmediateEventExecutor;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateEventExecutor;

    .line 39
    new-instance v0, Lio/netty/util/concurrent/ImmediateEventExecutor$1;

    invoke-direct {v0}, Lio/netty/util/concurrent/ImmediateEventExecutor$1;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;

    .line 48
    new-instance v0, Lio/netty/util/concurrent/ImmediateEventExecutor$2;

    invoke-direct {v0}, Lio/netty/util/concurrent/ImmediateEventExecutor$2;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->RUNNING:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>()V

    .line 55
    new-instance v0, Lio/netty/util/concurrent/FailedFuture;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, v1, v2}, Lio/netty/util/concurrent/FailedFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lio/netty/util/concurrent/ImmediateEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Future;

    .line 58
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 106
    const-string v0, "Throwable caught while executing Runnable {}"

    const-string v1, "command"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lio/netty/util/concurrent/ImmediateEventExecutor;->RUNNING:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v1}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/util/concurrent/FastThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    sget-object v2, Lio/netty/util/concurrent/ImmediateEventExecutor;->DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v2}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 116
    .local v2, "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v4, v3

    .local v4, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    .line 118
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v3

    .line 120
    .local v3, "cause":Ljava/lang/Throwable;
    sget-object v5, Lio/netty/util/concurrent/ImmediateEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v0, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "cause":Ljava/lang/Throwable;
    goto :goto_1

    .line 123
    :cond_0
    sget-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->RUNNING:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/FastThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    .end local v2    # "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v4    # "runnable":Ljava/lang/Runnable;
    goto :goto_6

    .line 111
    :catchall_1
    move-exception v2

    .line 112
    .local v2, "cause":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Lio/netty/util/concurrent/ImmediateEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 114
    .end local v2    # "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/util/concurrent/ImmediateEventExecutor;->DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v2}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 116
    .local v2, "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v4, v3

    .restart local v4    # "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    .line 118
    :try_start_3
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    :goto_3
    goto :goto_2

    .line 119
    :catchall_2
    move-exception v3

    .line 120
    .restart local v3    # "cause":Ljava/lang/Throwable;
    sget-object v5, Lio/netty/util/concurrent/ImmediateEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v0, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "cause":Ljava/lang/Throwable;
    goto :goto_3

    .line 114
    .end local v2    # "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :catchall_3
    move-exception v2

    sget-object v3, Lio/netty/util/concurrent/ImmediateEventExecutor;->DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v3}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    .line 116
    .local v3, "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :goto_4
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object v5, v4

    .local v5, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    .line 118
    :try_start_4
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 121
    :goto_5
    goto :goto_4

    .line 119
    :catchall_4
    move-exception v4

    .line 120
    .local v4, "cause":Ljava/lang/Throwable;
    sget-object v6, Lio/netty/util/concurrent/ImmediateEventExecutor;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6, v0, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v4    # "cause":Ljava/lang/Throwable;
    goto :goto_5

    .line 123
    :cond_1
    sget-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->RUNNING:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/FastThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    .end local v3    # "delayedRunnables":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v5    # "runnable":Ljava/lang/Runnable;
    throw v2

    .line 126
    :cond_2
    sget-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->DELAYED_RUNNABLES:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_6
    return-void
.end method

.method public inEventLoop()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public inEventLoop(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public newProgressivePromise()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;

    invoke-direct {v0, p0}, Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newPromise()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediatePromise;

    invoke-direct {v0, p0}, Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediatePromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 1
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

    .line 72
    invoke-virtual {p0}, Lio/netty/util/concurrent/ImmediateEventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
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

    .line 77
    iget-object v0, p0, Lio/netty/util/concurrent/ImmediateEventExecutor;->terminationFuture:Lio/netty/util/concurrent/Future;

    return-object v0
.end method
