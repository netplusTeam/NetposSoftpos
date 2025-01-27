.class public Lcom/sleepycat/je/rep/impl/NodeStateService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "NodeStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/NodeStateService$NodeStateServiceRunnable;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "NodeState"


# instance fields
.field private final logger:Ljava/util/logging/Logger;

.field private final protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 5
    .param p1, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 43
    const-string v0, "NodeState"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 44
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 46
    nop

    .line 47
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "groupName":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 49
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->logger:Ljava/util/logging/Logger;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/NodeStateService;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/NodeStateService;

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/NodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/NodeStateService;

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method


# virtual methods
.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 68
    new-instance v0, Lcom/sleepycat/je/rep/impl/NodeStateService$NodeStateServiceRunnable;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/rep/impl/NodeStateService$NodeStateServiceRunnable;-><init>(Lcom/sleepycat/je/rep/impl/NodeStateService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/NodeStateProtocol;)V

    return-object v0
.end method

.method public process(Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 10
    .param p1, "stateRequest"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->getJoinTime()J

    move-result-wide v8

    .line 60
    .local v8, "joinTime":J
    new-instance v0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 61
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 63
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v7

    move-object v1, v0

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;-><init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;Ljava/lang/String;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 60
    return-object v0
.end method
