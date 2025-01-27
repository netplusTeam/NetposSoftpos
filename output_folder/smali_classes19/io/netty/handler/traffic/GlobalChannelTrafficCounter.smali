.class public Lio/netty/handler/traffic/GlobalChannelTrafficCounter;
.super Lio/netty/handler/traffic/TrafficCounter;
.source "GlobalChannelTrafficCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 2
    .param p1, "trafficShapingHandler"    # Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "checkInterval"    # J

    .line 38
    invoke-direct/range {p0 .. p5}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    .line 39
    if-eqz p2, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public resetCumulativeTime()V
    .locals 3

    .line 121
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    check-cast v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    iget-object v0, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 122
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v2, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    .line 123
    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    goto :goto_0

    .line 124
    :cond_0
    invoke-super {p0}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    .line 125
    return-void
.end method

.method public declared-synchronized start()V
    .locals 9

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 93
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 94
    .local v0, "localCheckInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z

    .line 96
    new-instance v2, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;

    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    invoke-direct {v2, v3, p0}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Lio/netty/handler/traffic/TrafficCounter;)V

    iput-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitor:Ljava/lang/Runnable;

    .line 97
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitor:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    move-wide v6, v0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local p0    # "this":Lio/netty/handler/traffic/GlobalChannelTrafficCounter;
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "localCheckInterval":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z

    .line 111
    invoke-static {}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->resetAccounting(J)V

    .line 112
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-virtual {v0, p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 113
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local p0    # "this":Lio/netty/handler/traffic/GlobalChannelTrafficCounter;
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
