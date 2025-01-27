.class public Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "ArbiterNodeStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "NodeState"


# instance fields
.field private final arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

.field private final logger:Ljava/util/logging/Logger;

.field private final protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V
    .locals 5
    .param p1, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "arbImpl"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 44
    const-string v0, "NodeState"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 45
    iput-object p2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 46
    new-instance v0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 47
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->logger:Ljava/util/logging/Logger;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    return-object v0
.end method


# virtual methods
.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 68
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/NodeStateProtocol;)V

    return-object v0
.end method

.method public process(Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 8
    .param p1, "stateRequest"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;

    .line 58
    new-instance v7, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->protocol:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 60
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 61
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 62
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getJoinGroupTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->arbImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 63
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;-><init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;Ljava/lang/String;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 58
    return-object v7
.end method
