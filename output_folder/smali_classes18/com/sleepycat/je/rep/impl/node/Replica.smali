.class public Lcom/sleepycat/je/rep/impl/node/Replica;
.super Ljava/lang/Object;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;,
        Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;,
        Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;,
        Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;,
        Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;,
        Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;,
        Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;,
        Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_SLEEP_MS:I = 0x64

.field private static final NETWORK_RETRIES:I = 0x2

.field private static final SERVICE_UNAVAILABLE_RETRIES:I = 0xa

.field private static initialReplayHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aggProtoStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

.field private final dbCache:Lcom/sleepycat/je/rep/impl/node/DbCache;

.field private dontProcessStream:Z

.field private hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

.field private final logger:Ljava/util/logging/Logger;

.field private final nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

.field private protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final replay:Lcom/sleepycat/je/rep/impl/node/Replay;

.field private final replayHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final replayQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

.field private replicaFeederSyncupHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

.field private shutdownException:Ljava/lang/Exception;

.field private testDelayMs:I

.field private volatile txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)V
    .locals 5
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 141
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    .line 160
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dontProcessStream:Z

    .line 182
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 241
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 242
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 243
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 244
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    new-instance v2, Lcom/sleepycat/je/rep/impl/node/DbCache;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_MAX_OPEN_DB_HANDLES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 246
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_DB_HANDLE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 248
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/rep/impl/node/DbCache;-><init>(Lcom/sleepycat/je/dbi/DbTree;II)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dbCache:Lcom/sleepycat/je/rep/impl/node/DbCache;

    .line 250
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 251
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    .line 253
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "BinaryProtocol"

    const-string v3, "Network traffic due to the replication stream."

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->aggProtoStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 256
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/Replay;->getMessageQueueOverflows()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

    .line 257
    nop

    .line 258
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_REPLICA_DELAY:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    .line 259
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/Replica;->initialReplayHook:Lcom/sleepycat/je/utilint/TestHook;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 262
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 263
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 265
    .local v0, "replayQueueSize":I
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayQueue:Ljava/util/concurrent/BlockingQueue;

    .line 266
    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/utilint/TestHook;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayHook:Lcom/sleepycat/je/utilint/TestHook;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica;->processShutdown(Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica;->processHeartbeat(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/DbCache;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dbCache:Lcom/sleepycat/je/rep/impl/node/DbCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/rep/impl/node/Replica;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dontProcessStream:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;
    .param p1, "x1"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 126
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sleepycat/je/rep/impl/node/Replica;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    return-object v0
.end method

.method private createReplicaFeederChannel()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;
        }
    .end annotation

    .line 1031
    const/4 v0, 0x0

    .line 1033
    .local v0, "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 1034
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1035
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    .line 1038
    .local v2, "timeoutMs":I
    const/16 v3, 0x64

    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1039
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 1040
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMaster()Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1041
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1042
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFeederConnectOptions()Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v7

    .line 1040
    invoke-interface {v4, v5, v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v4

    move-object v0, v4

    .line 1044
    new-instance v4, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {v4, v5, v0, v2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/net/DataChannel;I)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 1047
    const-string v4, "Feeder"

    .line 1048
    invoke-static {v0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    nop

    .line 1072
    return-void

    .line 1058
    :catch_0
    move-exception v4

    .line 1065
    .local v4, "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-ne v5, v6, :cond_0

    .line 1066
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7, v3}, Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;-><init>(Ljava/lang/String;II)V

    throw v5

    .line 1070
    :cond_0
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 1049
    .end local v4    # "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    :catch_1
    move-exception v4

    .line 1055
    .local v4, "e":Ljava/net/ConnectException;
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;

    invoke-virtual {v4}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7, v3}, Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;-><init>(Ljava/lang/String;II)V

    throw v5
.end method

.method private initReplicaLoop()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->createReplicaFeederChannel()V

    .line 707
    new-instance v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;

    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/impl/node/Replica$1;)V

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;-><init>(Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;)V

    .line 709
    .local v0, "handshake":Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->execute()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 710
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->notifyReplicaConnected()V

    .line 713
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getFeederMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->init(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/JEVersion;)V

    .line 717
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replica syncup after election to verify master:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    .line 720
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->getMaster()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " elected master:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 722
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 718
    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x0

    .local v1, "hardRecoveryNeedsElection":Z
    goto :goto_0

    .line 725
    .end local v1    # "hardRecoveryNeedsElection":Z
    :cond_0
    const/4 v1, 0x1

    .line 727
    .restart local v1    # "hardRecoveryNeedsElection":Z
    :goto_0
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    .line 729
    new-instance v2, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    move-object v3, v2

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;Z)V

    .line 732
    .local v2, "syncup":Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCBVLSNTracker()Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->execute(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;)V

    .line 734
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getMatchedVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 735
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getMatchedVLSNTime()J

    move-result-wide v3

    .line 736
    .local v3, "matchedTxnEndTime":J
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->reinit(JJ)V

    .line 738
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 739
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    const-class v7, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    .line 741
    .local v5, "heartbeat":Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;
    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->processHeartbeat(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V

    .line 742
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->getMasterTxnEndVLSN()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 743
    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->access$200(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 744
    .local v6, "replicaDelta":J
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 748
    invoke-static {v12}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->access$200(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 749
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->getMasterTxnEndVLSN()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 750
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getAnyDTVLSN()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 751
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 745
    const-string v11, "Replica initialization completed. Replica VLSN: %s  Heartbeat master commit VLSN: %,d  DTVLSN:%,d Replica VLSN delta: %,d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 744
    invoke-static {v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 757
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->countDown()V

    .line 758
    return-void
.end method

.method private loopExitCleanup()V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 785
    instance-of v1, v0, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;

    if-eqz v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 788
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_0
    instance-of v0, v0, Lcom/sleepycat/je/rep/GroupShutdownException;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 798
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 804
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->clearDbTreeCache()V

    .line 805
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    if-eqz v0, :cond_3

    .line 808
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->logStats()V

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    if-eqz v0, :cond_4

    .line 813
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->aggProtoStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 815
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 821
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->revertToNull()V

    .line 824
    :cond_5
    return-void
.end method

.method private processHeartbeat(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V
    .locals 4
    .param p1, "heartbeat"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 772
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->noteDequeueHeartbeatRequest(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)Z

    move-result v0

    .line 773
    .local v0, "trackResponse":Z
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->HEARTBEAT_ACK_TIMED:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->HEARTBEAT_ACK:Ljava/lang/Long;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/Replay;->queueAck(J)V

    .line 776
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->trackHeartbeat(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V

    .line 777
    return-void
.end method

.method private processShutdown(Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;
    .locals 6
    .param p1, "shutdown"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->SHUTDOWN_ACK:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/Replay;->queueAck(J)V

    .line 655
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->setTimeoutMs(I)V

    .line 667
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->requestShutdownDaemons()V

    .line 672
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Checkpoint initiated."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 673
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 674
    .local v0, "config":Lcom/sleepycat/je/CheckpointConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 675
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    const-string v2, "Group Shutdown"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Checkpoint completed."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checkpoint failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 683
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->shutdownDaemons()V

    .line 685
    new-instance v1, Lcom/sleepycat/je/rep/GroupShutdownException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 687
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->getShutdownTimeMs()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/GroupShutdownException;-><init>(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/RepNode;J)V

    .line 685
    return-object v1
.end method

.method private runReplicaLoopInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/RestartRequiredException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;
        }
    .end annotation

    .line 475
    const-string v0, " "

    const-string v1, "Replica unexpected exception "

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 476
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replica loop started with master: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 478
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 479
    iget v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    if-lez v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test delay of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms. after each message sent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 485
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->initReplicaLoop()V

    .line 486
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->doRunReplicaLoopInternalWork()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/RestartRequiredException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/je/rep/impl/node/Replica$RetryException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->loopExitCleanup()V

    .line 543
    goto/16 :goto_3

    .line 542
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 537
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 540
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    .line 534
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;
    goto :goto_0

    .line 524
    :catch_2
    move-exception v0

    .line 526
    .local v0, "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    goto :goto_0

    .line 518
    :catch_3
    move-exception v2

    .line 519
    .local v2, "e":Ljava/lang/RuntimeException;
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 520
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 522
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 523
    throw v2

    .line 515
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 516
    .local v0, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 517
    throw v0

    .line 512
    .end local v0    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    throw v0

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replica IO exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 510
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 544
    :goto_3
    return-void

    .line 490
    :catch_8
    move-exception v0

    .line 491
    .local v0, "closedByInterruptException":Ljava/nio/channels/ClosedByInterruptException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Replica loop interrupted for shutdown."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->loopExitCleanup()V

    .line 494
    return-void

    .line 496
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Replica loop unexpected interrupt."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/InterruptedException;

    .line 499
    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v0    # "closedByInterruptException":Ljava/nio/channels/ClosedByInterruptException;
    :catch_9
    move-exception v0

    .line 488
    .local v0, "rre":Lcom/sleepycat/je/rep/RestartRequiredException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    .line 489
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    .end local v0    # "rre":Lcom/sleepycat/je/rep/RestartRequiredException;
    :goto_4
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->loopExitCleanup()V

    throw v0
.end method

.method public static setInitialReplayHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 1723
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    sput-object p0, Lcom/sleepycat/je/rep/impl/node/Replica;->initialReplayHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1724
    return-void
.end method


# virtual methods
.method clearDbTreeCache()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dbCache:Lcom/sleepycat/je/rep/impl/node/DbCache;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/DbCache;->clear()V

    .line 832
    return-void
.end method

.method protected doRunReplicaLoopInternalWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 550
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .line 551
    .local v0, "timeoutMs":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->setTimeoutMs(I)V

    .line 553
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 554
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getReplay()Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replay;->reset()V

    .line 556
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    .line 557
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->start()V

    .line 559
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V

    .line 560
    .local v1, "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->start()V

    .line 564
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v3

    .line 566
    .local v3, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkDiskLimitViolation()V

    .line 574
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v4, v5, :cond_1

    .line 575
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    move-object v5, v3

    check-cast v5, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/Replay;->noteEnqueueHeartbeatRequest(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V

    .line 579
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replayQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/32 v5, 0x3b9aca00

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 580
    invoke-interface {v4, v3, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 584
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->isAlive()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_5

    .line 601
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v4, v5, :cond_2

    .line 607
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 612
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_4

    .line 617
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 623
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    .line 628
    nop

    .line 585
    return-void

    .line 618
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4

    .line 614
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_4
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v5, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    throw v4

    .line 588
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 590
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_6
    goto/16 :goto_0

    .line 601
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_7
    :goto_2
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v4, v5, :cond_8

    .line 607
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 612
    :cond_8
    :try_start_4
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_a

    .line 617
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v4, :cond_9

    .line 623
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    .line 628
    nop

    .line 567
    return-void

    .line 618
    :cond_9
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4

    .line 614
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_a
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 623
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_1
    move-exception v4

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v5, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    throw v4

    .line 601
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 591
    :catch_0
    move-exception v3

    .line 598
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_6
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 601
    .end local v3    # "ioe":Ljava/io/IOException;
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v3, v4, :cond_b

    .line 607
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 612
    :cond_b
    :try_start_7
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_d

    .line 617
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v3, :cond_c

    .line 623
    sget-object v3, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    .line 628
    nop

    .line 629
    nop

    .line 630
    return-void

    .line 618
    :cond_c
    :try_start_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    throw v3

    .line 614
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    :cond_d
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 623
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    :catchall_3
    move-exception v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    throw v3

    .line 601
    :goto_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v4, v5, :cond_e

    .line 607
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 612
    :cond_e
    :try_start_9
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_10

    .line 617
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 618
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 623
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    :cond_f
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    .line 628
    nop

    .line 627
    throw v3

    .line 614
    :cond_10
    :try_start_a
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 623
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "replayThread":Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
    :catchall_4
    move-exception v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 624
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->join()V

    .line 626
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 627
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    throw v3
.end method

.method public getConsistencyTracker()Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    return-object v0
.end method

.method public getDbCache()Lcom/sleepycat/je/rep/impl/node/DbCache;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dbCache:Lcom/sleepycat/je/rep/impl/node/DbCache;

    return-object v0
.end method

.method public getMasterTxnEndVLSN()J
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->getMasterTxnEndVLSN()J

    move-result-wide v0

    return-wide v0
.end method

.method getProtocol()Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    return-object v0
.end method

.method public getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1085
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->aggProtoStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 1088
    .local v0, "protoStats":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1089
    .local v1, "prot":Lcom/sleepycat/je/rep/stream/Protocol;
    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1094
    :cond_0
    return-object v0
.end method

.method public getReplayStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1080
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method getReplicaFeederChannel()Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    return-object v0
.end method

.method public getReplicaFeederSyncupHook()Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederSyncupHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    return-object v0
.end method

.method public getReplicaOutputThread()Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaOutputThread:Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;

    return-object v0
.end method

.method public getTestDelayMs()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    return v0
.end method

.method public getTrackerStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1099
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-static {v0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->access$300(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method masterTransitionCleanup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v0

    .line 844
    .local v0, "activeTransfer":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    if-nez v0, :cond_0

    .line 851
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    .line 852
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replay;->abortOldTxns()V

    .line 853
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    new-instance v2, Lcom/sleepycat/je/rep/MasterStateException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 854
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/MasterStateException;-><init>(Lcom/sleepycat/je/rep/StateChangeEvent;)V

    .line 854
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->forceTripLatches(Lcom/sleepycat/je/DatabaseException;)V

    .line 856
    return-void

    .line 845
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Master state transition while there is an ongoing master transfer initiated at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/je/utilint/TracerFormatter;

    invoke-direct {v2}, Lcom/sleepycat/je/utilint/TracerFormatter;-><init>()V

    .line 848
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/utilint/TracerFormatter;->getDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public replay()Lcom/sleepycat/je/rep/impl/node/Replay;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    return-object v0
.end method

.method replicaTransitionCleanup()V
    .locals 9

    .line 959
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-eq v0, v1, :cond_3

    .line 970
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getExistingMasterTxns()Ljava/util/Set;

    move-result-object v0

    .line 971
    .local v0, "existingMasterTxns":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/txn/MasterTxn;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transitioning node to replica state, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 973
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " txns to clean up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 976
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 977
    .local v2, "masterTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/MasterTxn;->freeze()V

    .line 978
    .end local v2    # "masterTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    goto :goto_0

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->unblockTxnCompletion()V

    .line 990
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 996
    .restart local v2    # "masterTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 998
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getReplay()Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v4

    .line 997
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertToReplayTxnAndClose(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/txn/ReplayTxn;

    move-result-object v3

    .line 1000
    .local v3, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    if-nez v3, :cond_1

    .line 1001
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Master Txn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1002
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no locks, nothing to transfer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1001
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_2

    .line 1005
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/txn/TxnManager;->registerTxn(Lcom/sleepycat/je/txn/Txn;)V

    .line 1006
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state for replay transaction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1008
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1009
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1006
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1011
    .end local v2    # "masterTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    .end local v3    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    :goto_2
    goto :goto_1

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->clearActiveTransfer()V

    .line 1018
    return-void

    .line 960
    .end local v0    # "existingMasterTxns":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/txn/MasterTxn;>;"
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v1, "Should not be in MASTER state when converting from master to replica state"

    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public resetStats()V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->resetStats()V

    .line 1105
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->aggProtoStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 1106
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->resetStats()V

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->access$400(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;)V

    .line 1110
    return-void
.end method

.method runReplicaLoop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/GroupShutdownException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "retryExceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;>;"
    const/4 v1, 0x0

    .line 412
    .local v1, "retryCount":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica;->runReplicaLoopInternal()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/node/Replica$RetryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    goto/16 :goto_3

    .line 462
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 447
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Lcom/sleepycat/je/DiskLimitException;
    goto/16 :goto_3

    .line 415
    .end local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    :catch_1
    move-exception v2

    .line 416
    .local v2, "e":Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v5, "Retry terminated, out of sync."

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 419
    goto/16 :goto_3

    .line 421
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_2

    iget v3, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retries:I

    if-nez v3, :cond_1

    goto :goto_1

    .line 434
    :cond_1
    const/4 v1, 0x0

    .line 435
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 423
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v3, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retries:I

    if-lt v1, v3, :cond_3

    .line 425
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to recover from exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", despite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retries.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 430
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 431
    goto :goto_3

    .line 437
    :cond_3
    :goto_2
    rem-int/lit8 v3, v1, 0xa

    if-nez v3, :cond_4

    .line 438
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry #: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Will retry replica loop after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retrySleepMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 443
    :cond_4
    iget v3, v2, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;->retrySleepMs:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 444
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    .line 445
    nop

    .line 462
    .end local v2    # "e":Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    if-nez v2, :cond_5

    .line 463
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 467
    :cond_5
    return-void

    .line 453
    :cond_6
    goto/16 :goto_0

    .line 462
    :goto_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->hardRecoveryElectionException:Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    if-nez v3, :cond_7

    .line 463
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    :cond_7
    throw v2
.end method

.method public setDontProcessStream()V
    .locals 1

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->dontProcessStream:Z

    .line 326
    return-void
.end method

.method public setReplicaFeederSyncupHook(Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1737
    .local p1, "syncupHook":Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;, "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederSyncupHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    .line 1738
    return-void
.end method

.method public setTestDelayMs(I)V
    .locals 0
    .param p1, "testDelayMs"    # I

    .line 314
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->testDelayMs:I

    .line 315
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->consistencyTracker:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->shutdown()V

    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-ne v0, v1, :cond_0

    .line 287
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNFreezeLatch()Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->clearLatch()V

    .line 308
    return-void

    .line 282
    :cond_1
    nop

    .line 283
    const-string v0, "Rep node must have initiated the shutdown."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
