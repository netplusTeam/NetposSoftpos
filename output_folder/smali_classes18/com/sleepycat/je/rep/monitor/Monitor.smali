.class public Lcom/sleepycat/je/rep/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;,
        Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;
    }
.end annotation


# instance fields
.field private channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private disableNotify:Z

.field private final formatter:Ljava/util/logging/Formatter;

.field private final groupMembers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final joinEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private learner:Lcom/sleepycat/je/rep/elections/Learner;

.field private final logger:Ljava/util/logging/Logger;

.field private masterChangeListener:Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;

.field private monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

.field private final monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private pingThread:Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;

.field private final repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

.field private serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationConfig;)V
    .locals 1
    .param p1, "monitorConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;-><init>(Lcom/sleepycat/je/rep/ReplicationConfig;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/monitor/Monitor;-><init>(Lcom/sleepycat/je/rep/monitor/MonitorConfig;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/MonitorConfig;)V
    .locals 6
    .param p1, "monitorConfig"    # Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->joinEvents:Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->disableNotify:Z

    .line 218
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 222
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 223
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "nodeHost":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->clone()Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 228
    nop

    .line 230
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v3

    .line 229
    invoke-static {v3, v0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 231
    new-instance v3, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    .line 233
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getHelperSockets()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->logger:Ljava/util/logging/Logger;

    .line 236
    new-instance v3, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v3, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->formatter:Ljava/util/logging/Formatter;

    .line 237
    return-void

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing nodeHost"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v2    # "nodeHost":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing group name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/elections/Learner;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->joinEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    return-object v0
.end method

.method private notifyJoinGroupEventsForActiveNodes(Lcom/sleepycat/je/rep/ReplicationGroup;)V
    .locals 11
    .param p1, "group"    # Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 429
    new-instance v0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 430
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 434
    .local v0, "stateProtocol":Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationGroup;->getNodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 441
    .local v2, "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    goto :goto_0

    .line 453
    :cond_1
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    new-instance v5, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;-><init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;)V

    const-string v6, "NodeState"

    invoke-direct {v3, v0, v4, v6, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 457
    .local v3, "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->run()V

    .line 458
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v4

    .line 459
    .local v4, "resp":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    instance-of v5, v4, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;

    if-eqz v5, :cond_2

    .line 460
    move-object v5, v4

    check-cast v5, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;

    .line 461
    .local v5, "response":Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;
    new-instance v6, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->getMasterName()Ljava/lang/String;

    move-result-object v8

    .line 463
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->getJoinTime()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 461
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyJoin(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V

    .line 465
    .end local v2    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    .end local v3    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v4    # "resp":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .end local v5    # "response":Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;
    :cond_2
    goto :goto_0

    .line 466
    :cond_3
    return-void
.end method


# virtual methods
.method disableNotify(Z)V
    .locals 0
    .param p1, "disableNotify"    # Z

    .line 421
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->disableNotify:Z

    .line 422
    return-void
.end method

.method public getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v0

    return-object v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The monitor has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterNodeName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getMasterNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The monitor has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMonitorNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getMonitorSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized notifyGroupChange(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;

    monitor-enter p0

    .line 561
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->disableNotify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 562
    monitor-exit p0

    return-void

    .line 565
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/monitor/Monitor$1;->$SwitchMap$com$sleepycat$je$rep$monitor$GroupChangeEvent$GroupChangeType:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->getChangeType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 585
    .end local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 577
    .restart local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    :pswitch_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 578
    monitor-exit p0

    return-void

    .line 582
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    goto :goto_0

    .line 569
    .end local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    :pswitch_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 570
    monitor-exit p0

    return-void

    .line 573
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->groupMembers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 574
    nop

    .line 589
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    invoke-interface {v1, p1}, Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;->notify(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 585
    :goto_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized GroupChangeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 586
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->getChangeType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    .end local v0    # "name":Ljava/lang/String;
    .end local p1    # "event":Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized notifyJoin(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;

    monitor-enter p0

    .line 596
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->disableNotify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 597
    monitor-exit p0

    return-void

    .line 600
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->joinEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 603
    monitor-exit p0

    return-void

    .line 610
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->joinEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    invoke-interface {v1, p1}, Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;->notify(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 595
    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    .end local p1    # "event":Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized notifyLeave(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->joinEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;->notify(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    :cond_0
    monitor-exit p0

    return-void

    .line 619
    .end local p1    # "event":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register()Lcom/sleepycat/je/rep/ReplicationNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getHelperSockets()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    sget-object v3, Lcom/sleepycat/je/rep/NodeType;->MONITOR:Lcom/sleepycat/je/rep/NodeType;

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 314
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeHostname()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 315
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodePort()I

    move-result v5

    sget-object v6, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 318
    .local v0, "monitorNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->ensureMonitor(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v1

    return-object v1

    .line 308
    .end local v0    # "monitorNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No helper sockets were specified at Monitor initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The monitor has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 536
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shutting down monitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->pingThread:Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->stopThread()V

    .line 545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->pingThread:Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;

    .line 548
    .end local p0    # "this":Lcom/sleepycat/je/rep/monitor/Monitor;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    if-eqz v1, :cond_2

    .line 549
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Learner;->shutdown()V

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    if-eqz v1, :cond_3

    .line 553
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_3
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startListener(Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;)V
    .locals 10
    .param p1, "newListener"    # Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    if-eqz p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorChangeListener:Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    .line 374
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 375
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;-><init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 377
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->start()V

    .line 378
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol;

    .line 379
    invoke-static {}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v4

    .line 380
    invoke-static {}, Lcom/sleepycat/je/rep/elections/MasterValue;->getParser()Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v5

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->monitorConfig:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 381
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getGroupName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/rep/elections/Protocol;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 385
    .local v0, "electionProtocol":Lcom/sleepycat/je/rep/elections/Protocol;
    new-instance v1, Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/rep/elections/Learner;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    .line 386
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    new-instance v2, Lcom/sleepycat/je/rep/monitor/MonitorService;

    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/je/rep/monitor/MonitorService;-><init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 388
    new-instance v1, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;-><init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/monitor/Monitor$1;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->masterChangeListener:Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;

    .line 389
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/elections/Learner;->addListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V

    .line 390
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Learner;->start()V

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v1

    .line 394
    .local v1, "repGroup":Lcom/sleepycat/je/rep/ReplicationGroup;
    invoke-static {v1}, Lcom/sleepycat/je/rep/RepInternal;->getRepGroupImpl(Lcom/sleepycat/je/rep/ReplicationGroup;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    .line 400
    .local v2, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllLearnerSockets()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V

    .line 403
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyJoinGroupEventsForActiveNodes(Lcom/sleepycat/je/rep/ReplicationGroup;)V

    .line 406
    new-instance v3, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;

    invoke-direct {v3, p0, v1}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;-><init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/ReplicationGroup;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->pingThread:Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;

    .line 407
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->start()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/UnknownMasterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1    # "repGroup":Lcom/sleepycat/je/rep/ReplicationGroup;
    .end local v2    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 410
    .local v1, "ume":Lcom/sleepycat/je/rep/UnknownMasterException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 411
    const-string v5, "No current master."

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 413
    .end local v1    # "ume":Lcom/sleepycat/je/rep/UnknownMasterException;
    :goto_0
    return-void

    .line 368
    .end local v0    # "electionProtocol":Lcom/sleepycat/je/rep/elections/Protocol;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A Listener has already been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A MonitorChangeListener must be associated with  this Monitor when invoking this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The monitor has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
