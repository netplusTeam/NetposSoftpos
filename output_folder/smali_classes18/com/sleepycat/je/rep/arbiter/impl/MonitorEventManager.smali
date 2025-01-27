.class public Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;
.super Ljava/lang/Object;
.source "MonitorEventManager.java"


# instance fields
.field arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

.field private joinTime:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V
    .locals 2
    .param p1, "arbImpl"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    .line 50
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 51
    return-void
.end method

.method private getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;
    .locals 5
    .param p1, "repGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 132
    new-instance v0, Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 133
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 134
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/monitor/Protocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 132
    return-object v0
.end method

.method private refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;
    .locals 5
    .param p1, "repGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p2, "requestMessage"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepGroupImpl;",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;",
            ")",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMonitorSockets()Ljava/util/Set;

    move-result-object v0

    .line 142
    .local v0, "monitors":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " monitors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 148
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getElections()Lcom/sleepycat/je/rep/elections/Elections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 145
    const-string v2, "Monitor"

    invoke-static {v0, v2, p2, v1}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public disableLeaveGroupEvent()V
    .locals 2

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    .line 61
    return-void
.end method

.method public getJoinTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    return-wide v0
.end method

.method public notifyJoinGroup()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 75
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    if-nez v0, :cond_1

    .line 76
    return-void

    .line 79
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    .line 80
    new-instance v1, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;

    .line 81
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 82
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterName()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V

    .line 84
    .local v1, "joinEvent":Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    .line 85
    return-void
.end method

.method public notifyLeaveGroup(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;)V
    .locals 11
    .param p1, "reason"    # Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 99
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    if-nez v0, :cond_1

    .line 100
    return-void

    .line 102
    :cond_1
    new-instance v10, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;

    .line 103
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 104
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterName()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->joinTime:J

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, v10

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V

    .line 108
    .local v1, "leaveEvent":Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;
    nop

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v2

    .line 112
    .local v2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->getFutures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 119
    .local v4, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    const-wide/16 v5, 0xa

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v5

    goto :goto_2

    .line 120
    :catch_1
    move-exception v5

    .line 124
    :goto_1
    nop

    .line 125
    .end local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    :goto_2
    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method
