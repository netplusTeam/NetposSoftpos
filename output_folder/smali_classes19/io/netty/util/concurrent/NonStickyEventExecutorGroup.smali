.class public final Lio/netty/util/concurrent/NonStickyEventExecutorGroup;
.super Ljava/lang/Object;
.source "NonStickyEventExecutorGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;
    }
.end annotation


# instance fields
.field private final group:Lio/netty/util/concurrent/EventExecutorGroup;

.field private final maxTaskExecutePerRun:I


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;)V
    .locals 1
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;

    .line 50
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;I)V
    .locals 1
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "maxTaskExecutePerRun"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->verify(Lio/netty/util/concurrent/EventExecutorGroup;)Lio/netty/util/concurrent/EventExecutorGroup;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 59
    const-string v0, "maxTaskExecutePerRun"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->maxTaskExecutePerRun:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/concurrent/NonStickyEventExecutorGroup;Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/NonStickyEventExecutorGroup;
    .param p1, "x1"    # Lio/netty/util/concurrent/EventExecutor;

    .line 41
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->newExecutor(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;

    move-result-object v0

    return-object v0
.end method

.method private newExecutor(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 75
    new-instance v0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;

    iget v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->maxTaskExecutePerRun:I

    invoke-direct {v0, p1, v1}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutor;I)V

    return-object v0
.end method

.method private static verify(Lio/netty/util/concurrent/EventExecutorGroup;)Lio/netty/util/concurrent/EventExecutorGroup;
    .locals 5
    .param p0, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;

    .line 63
    const-string v0, "group"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "executors":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/concurrent/EventExecutor;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 66
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    instance-of v2, v1, Lio/netty/util/concurrent/OrderedEventExecutor;

    if-nez v2, :cond_0

    .line 70
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 67
    .restart local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventExecutorGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contains OrderedEventExecutors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/util/concurrent/EventExecutorGroup;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 211
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/EventExecutorGroup;->execute(Ljava/lang/Runnable;)V

    .line 212
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

    .line 189
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/EventExecutorGroup;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

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

    .line 195
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/util/concurrent/EventExecutorGroup;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

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

    .line 200
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/EventExecutorGroup;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

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

    .line 206
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/util/concurrent/EventExecutorGroup;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->isShuttingDown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/concurrent/EventExecutor;>;"
    new-instance v1, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$1;

    invoke-direct {v1, p0, v0}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$1;-><init>(Lio/netty/util/concurrent/NonStickyEventExecutorGroup;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->newExecutor(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 1
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

    .line 153
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 1
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

    .line 158
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 7
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

    .line 163
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/util/concurrent/EventExecutorGroup;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 40
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 7
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

    .line 168
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/util/concurrent/EventExecutorGroup;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 40
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdown()V

    .line 102
    return-void
.end method

.method public shutdownGracefully()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 6
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

    .line 90
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1, p2}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 148
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
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

    .line 95
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup;->group:Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
