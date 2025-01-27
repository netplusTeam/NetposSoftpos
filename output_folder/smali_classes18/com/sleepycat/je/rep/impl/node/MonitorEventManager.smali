.class public Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;
.super Ljava/lang/Object;
.source "MonitorEventManager.java"


# instance fields
.field private joinTime:J

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 49
    return-void
.end method

.method private getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;
    .locals 5
    .param p1, "repGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 124
    new-instance v0, Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 125
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 126
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/monitor/Protocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 124
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

    .line 133
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMonitorSockets()Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, "monitors":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " monitors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 142
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElections()Lcom/sleepycat/je/rep/elections/Elections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 139
    const-string v2, "Monitor"

    invoke-static {v0, v2, p2, v1}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public disableLeaveGroupEvent()V
    .locals 2

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    .line 59
    return-void
.end method

.method public getJoinTime()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    return-wide v0
.end method

.method public notifyGroupChange(Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "opType"    # Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 68
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v1, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;

    .line 69
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 70
    .local v1, "changeEvent":Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    .line 71
    return-void
.end method

.method public notifyJoinGroup()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 86
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v7, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;

    .line 87
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 88
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterName()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V

    .line 90
    .local v1, "joinEvent":Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    .line 91
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

    .line 99
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 105
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v10, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;

    .line 106
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->getProtocol(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)Lcom/sleepycat/je/rep/monitor/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 107
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterName()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->joinTime:J

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, v10

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V

    .line 111
    .local v1, "leaveEvent":Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;
    nop

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->refreshMonitors(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v9

    .line 115
    .local v9, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 116
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 117
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    const/4 v8, 0x0

    .line 116
    move-object v2, v9

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/rep/elections/Utils;->checkFutures(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 118
    return-void
.end method
