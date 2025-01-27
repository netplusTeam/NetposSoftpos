.class Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;
.super Ljava/lang/Object;
.source "GlobalChannelTrafficCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/GlobalChannelTrafficCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MixedTrafficMonitoringTask"
.end annotation


# instance fields
.field private final counter:Lio/netty/handler/traffic/TrafficCounter;

.field private final trafficShapingHandler1:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0
    .param p1, "trafficShapingHandler"    # Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
    .param p2, "counter"    # Lio/netty/handler/traffic/TrafficCounter;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->trafficShapingHandler1:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    .line 67
    iput-object p2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->counter:Lio/netty/handler/traffic/TrafficCounter;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 72
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->counter:Lio/netty/handler/traffic/TrafficCounter;

    iget-boolean v0, v0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    .line 76
    .local v0, "newLastTime":J
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->counter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 77
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->trafficShapingHandler1:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    iget-object v2, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 78
    .local v3, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v4, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 79
    .end local v3    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->trafficShapingHandler1:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;->counter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v3}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 81
    return-void
.end method
