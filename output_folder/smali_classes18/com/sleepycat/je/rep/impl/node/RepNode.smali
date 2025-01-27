.class public Lcom/sleepycat/je/rep/impl/node/RepNode;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "RepNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;,
        Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final JOIN_RETRIES:I = 0xa

.field private static final MASTER_QUERY_RETRY_MS:I = 0x3e8

.field public static volatile beforeFindRestoreSupplierHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile queryGroupForMembershipBeforeQueryForMaster:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile queryGroupForMembershipBeforeSleepHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appStateMonitor:Lcom/sleepycat/je/rep/AppStateMonitor;

.field private final arbiter:Lcom/sleepycat/je/rep/arbitration/Arbiter;

.field private binaryNodeStateService:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

.field final cbvlsnTracker:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

.field private final changeListener:Lcom/sleepycat/je/rep/stream/MasterChangeListener;

.field private final channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

.field private final clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

.field private convertHooks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

.field private final durabilityQuorum:Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

.field private final electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

.field private electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

.field private elections:Lcom/sleepycat/je/rep/elections/Elections;

.field private feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

.field final globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

.field private volatile group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private groupService:Lcom/sleepycat/je/rep/impl/GroupService;

.field private ldiff:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

.field private logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

.field private logVersion:I

.field final logger:Ljava/util/logging/Logger;

.field private final masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

.field private final minJEVersionLock:Ljava/lang/Object;

.field private monitorEventManager:Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private volatile needsAcks:Z

.field private final nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

.field private nodeStateService:Lcom/sleepycat/je/rep/impl/NodeStateService;

.field private final nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private volatile readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

.field final repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final replica:Lcom/sleepycat/je/rep/impl/node/Replica;

.field private replicaCloseCatchupMs:J

.field private final serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field private final suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

.field private final timer:Ljava/util/Timer;

.field private final transientIds:Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

.field private final vlsnFreezeLatch:Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

.field private xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 413
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/rep/impl/node/NodeState;)V
    .locals 8
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;
    .param p3, "nodeState"    # Lcom/sleepycat/je/rep/impl/node/NodeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RepNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 193
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->vlsnFreezeLatch:Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->needsAcks:Z

    .line 219
    sget-object v1, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 253
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replicaCloseCatchupMs:J

    .line 278
    new-instance v3, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;-><init>(I)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->transientIds:Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    .line 289
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->minJEVersionLock:Ljava/lang/Object;

    .line 292
    const/16 v3, 0x11

    iput v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logVersion:I

    .line 318
    new-instance v3, Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-direct {v3, v1, v2}, Lcom/sleepycat/je/rep/util/AtomicLongMax;-><init>(J)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    .line 352
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 353
    new-instance v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 354
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    .line 357
    new-instance v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 358
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v6

    .line 359
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v7

    invoke-direct {v5, v6, p1, v7}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;-><init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 360
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->start()V

    .line 361
    new-instance v5, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepImpl;->getClockSkewMs()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;-><init>(I)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 362
    new-instance v5, Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-direct {v5, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 364
    new-instance v5, Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-direct {v5, v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 365
    invoke-static {p0, p2}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->create(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 367
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 368
    new-instance v1, Lcom/sleepycat/je/rep/stream/MasterChangeListener;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/stream/MasterChangeListener;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->changeListener:Lcom/sleepycat/je/rep/stream/MasterChangeListener;

    .line 369
    new-instance v1, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    .line 371
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 373
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    .line 374
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->durabilityQuorum:Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    .line 376
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->utilityServicesStart()V

    .line 377
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    .line 378
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    invoke-direct {v5, p0, v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->cbvlsnTracker:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    .line 379
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->monitorEventManager:Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    .line 380
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->timer:Ljava/util/Timer;

    .line 381
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    invoke-direct {v5, v1}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;-><init>(Ljava/util/Timer;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    .line 383
    new-instance v1, Lcom/sleepycat/je/rep/arbitration/Arbiter;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/arbitration/Arbiter;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->arbiter:Lcom/sleepycat/je/rep/arbitration/Arbiter;

    .line 384
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/NodeType;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 386
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLoggedDTVLSN()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->updateMax(J)J

    .line 387
    new-array v1, v2, [Ljava/lang/Object;

    .line 388
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "DTVLSN at start:%,d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v4, p1, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 1
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
    .locals 6
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "serviceDispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RepNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 193
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    invoke-direct {v1}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->vlsnFreezeLatch:Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->needsAcks:Z

    .line 219
    sget-object v2, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 253
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replicaCloseCatchupMs:J

    .line 278
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;-><init>(I)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->transientIds:Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    .line 289
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->minJEVersionLock:Ljava/lang/Object;

    .line 292
    const/16 v4, 0x11

    iput v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logVersion:I

    .line 318
    new-instance v4, Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-direct {v4, v2, v3}, Lcom/sleepycat/je/rep/util/AtomicLongMax;-><init>(J)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    .line 419
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 420
    new-instance v2, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 422
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 423
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 425
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 427
    new-instance v1, Lcom/sleepycat/je/rep/stream/MasterStatus;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 428
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 429
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 430
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->changeListener:Lcom/sleepycat/je/rep/stream/MasterChangeListener;

    .line 431
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    .line 432
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 433
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->cbvlsnTracker:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    .line 434
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    .line 435
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    .line 436
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->timer:Ljava/util/Timer;

    .line 437
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    .line 438
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    .line 439
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->durabilityQuorum:Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    .line 440
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->arbiter:Lcom/sleepycat/je/rep/arbitration/Arbiter;

    .line 441
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 442
    return-void
.end method

.method private checkGroupMasterIsAlive(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Z
    .locals 9
    .param p1, "groupMasterNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1450
    const/4 v0, 0x0

    .line 1453
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 1454
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMaster()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 1456
    .local v2, "masterSocket":Ljava/net/InetSocketAddress;
    new-instance v3, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 1460
    .local v3, "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1462
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    new-instance v6, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 1464
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1465
    const/16 v8, 0x1388

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1466
    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1461
    invoke-interface {v4, v2, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v4

    move-object v0, v4

    .line 1467
    const-string v4, "BinaryNodeState"

    .line 1468
    invoke-static {v0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 1471
    new-instance v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1473
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1474
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 1478
    const-class v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 1479
    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 1481
    .local v4, "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v5

    .line 1482
    .local v5, "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move v1, v7

    .line 1489
    :cond_0
    if-eqz v0, :cond_1

    .line 1491
    :try_start_1
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1494
    goto :goto_0

    .line 1492
    :catch_0
    move-exception v6

    .line 1482
    :cond_1
    :goto_0
    return v1

    .line 1489
    .end local v2    # "masterSocket":Ljava/net/InetSocketAddress;
    .end local v3    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .end local v4    # "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    .end local v5    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1483
    :catch_1
    move-exception v2

    .line 1484
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queried master:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unavailable. Reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1487
    nop

    .line 1489
    if-eqz v0, :cond_2

    .line 1491
    :try_start_3
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1494
    goto :goto_1

    .line 1492
    :catch_2
    move-exception v3

    .line 1487
    :cond_2
    :goto_1
    return v1

    .line 1489
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_3

    .line 1491
    :try_start_4
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1494
    goto :goto_3

    .line 1492
    :catch_3
    move-exception v2

    .line 1494
    :cond_3
    :goto_3
    throw v1
.end method

.method private checkLoopbackAddresses(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 1302
    .local p1, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1303
    .local v0, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    .line 1305
    .local v1, "isLoopback":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 1306
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 1314
    .local v4, "nodeAddress":Ljava/net/InetAddress;
    if-eqz v4, :cond_0

    .line 1315
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1317
    .local v5, "nodeAddressIsLoopback":Z
    :goto_1
    if-ne v5, v1, :cond_1

    .line 1318
    goto :goto_0

    .line 1320
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " the address associated with this node, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_2

    const-string v6, "is "

    goto :goto_2

    :cond_2
    const-string v6, "is not "

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "a loopback address. It conflicts with an existing use, by a different node  of the address:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_3

    const-string v6, " which is a loopback address."

    goto :goto_3

    :cond_3
    const-string v6, " which is not a loopback address."

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " Such mixing of addresses within a group is not allowed, since the nodes will not be able to communicate with each other."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1331
    .local v2, "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1333
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "nodeAddress":Ljava/net/InetAddress;
    .end local v5    # "nodeAddressIsLoopback":Z
    :cond_4
    return-void
.end method

.method private checkValidity(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/MemberNotFoundException;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 1173
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    const-string v1, "Node:"

    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    new-instance v2, Lcom/sleepycat/je/rep/MemberNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "is not currently a member of the group:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1182
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " It had been removed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1187
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1192
    return-object v0

    .line 1188
    :cond_2
    new-instance v1, Lcom/sleepycat/je/rep/MasterStateException;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    .line 1189
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MasterStateException;-><init>(Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v1

    .line 1174
    :cond_3
    new-instance v2, Lcom/sleepycat/je/rep/MemberNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "is not a member of the group:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1176
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1167
    .end local v0    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not currently a master. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be invoked on the node that\'s currently the master."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private findMaster()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1229
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->startLearner()V

    .line 1230
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current group size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1231
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableGroupSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 1233
    .local v0, "thisNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 1240
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hasUnknownUUID()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unknown to rep group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v1

    .line 1251
    .local v1, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableGroupSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 1252
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 1253
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 1254
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 1255
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->selfElect()V

    .line 1258
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/elections/Elections;->updateRepGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 1260
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->setDefunctJEVersion(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    .line 1261
    return-void

    .line 1264
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->queryGroupForMembership()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    nop

    .line 1268
    .end local v1    # "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    goto :goto_1

    .line 1265
    .restart local v1    # "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v2

    .line 1266
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 1268
    .end local v1    # "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1269
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1270
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was previously deleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1275
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1276
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " querying for a current master."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v1

    .line 1284
    .restart local v1    # "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllHelperSockets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1285
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getLearner()Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V

    .line 1287
    .end local v1    # "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    :goto_1
    return-void
.end method

.method private getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 3

    .line 2063
    const/4 v0, 0x0

    .line 2065
    .local v0, "reason":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v1

    .line 2066
    .local v1, "exception":Ljava/lang/Exception;
    if-nez v1, :cond_0

    .line 2067
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->NORMAL_SHUTDOWN:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    goto :goto_0

    .line 2068
    :cond_0
    instance-of v2, v1, Lcom/sleepycat/je/rep/GroupShutdownException;

    if-eqz v2, :cond_1

    .line 2069
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->MASTER_SHUTDOWN_GROUP:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    goto :goto_0

    .line 2071
    :cond_1
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->ABNORMAL_TERMINATION:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 2074
    :goto_0
    return-object v0
.end method

.method private joinAsReplica(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 6
    .param p1, "consistency"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2283
    if-nez p1, :cond_0

    .line 2284
    nop

    .line 2285
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_CONSISTENCY_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .line 2286
    .local v0, "consistencyTimeout":I
    new-instance v1, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;

    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 2287
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/Replica;->getMasterTxnEndVLSN()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;-><init>(Lcom/sleepycat/je/utilint/VLSN;JLjava/util/concurrent/TimeUnit;)V

    move-object p1, v1

    .line 2294
    .end local v0    # "consistencyTimeout":I
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-interface {p1, v0}, Lcom/sleepycat/je/ReplicaConsistencyPolicy;->ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2301
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 2303
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Joined group as a replica.  join consistencyPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 2305
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2303
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2306
    return-void
.end method

.method private maybeUpdateMasterJEVersion()V
    .locals 4

    .line 1941
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1942
    return-void

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    .line 1946
    .local v0, "currentJEVersion":Lcom/sleepycat/je/JEVersion;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 1948
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/JEVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1949
    return-void

    .line 1951
    :cond_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->updateJEVersion(Lcom/sleepycat/je/JEVersion;)V

    .line 1952
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->updateMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 1953
    return-void
.end method

.method private queryGroupForMembership()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v0

    .line 1367
    .local v0, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->checkLoopbackAddresses(Ljava/util/Set;)V

    .line 1373
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1374
    .local v1, "helpers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllHelperSockets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1375
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1382
    :goto_0
    sget-object v2, Lcom/sleepycat/je/rep/impl/node/RepNode;->queryGroupForMembershipBeforeQueryForMaster:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1384
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1382
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1385
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getLearner()Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V

    .line 1386
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v2

    const-string v3, "Node is shutdown or invalid"

    if-nez v2, :cond_4

    .line 1389
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 1390
    .local v2, "groupMasterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_1

    .line 1392
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1393
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1402
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1403
    goto :goto_0

    .line 1406
    :cond_0
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->checkGroupMasterIsAlive(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1408
    nop

    .line 1435
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " located master: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1437
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->findRestoreSuppliers(Ljava/util/Set;)V

    .line 1422
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/RepNode;->queryGroupForMembershipBeforeSleepHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1423
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1422
    invoke-static {v4, v7}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1429
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1433
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 1430
    :cond_2
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1422
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1387
    .end local v2    # "groupMasterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :cond_4
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1376
    :cond_6
    nop

    .line 1377
    const-string v2, "Need a helper to add a new node into the group"

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private reinitSelfElect()V
    .locals 8

    .line 1632
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->emptyGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 1642
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reinitializing group to node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1651
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->initAsMaster()V

    .line 1654
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/TxnManager;->getTxns(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 1660
    .local v1, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    const/4 v3, 0x1

    .line 1661
    .local v3, "nodeId":I
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aborting incomplete replay txn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as part of group reset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1665
    sget-object v4, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v2, v5, v6}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->abort(Lcom/sleepycat/je/log/ReplicationContext;IJ)J

    .line 1667
    .end local v1    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v3    # "nodeId":I
    goto :goto_0

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->forceLogFileFlip()J

    .line 1675
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 1676
    .local v0, "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 1682
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Reinit of RepGroup"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V

    .line 1683
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 1686
    .local v1, "lastOldVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->reinitFirstNode(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 1687
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1689
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1690
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v2

    .line 1708
    .local v2, "lastOldFile":J
    nop

    .line 1709
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP_RETAIN_UUID:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v4

    .line 1710
    .local v4, "retainUUID":Z
    if-nez v4, :cond_1

    .line 1711
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 1714
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Elections;->startLearner()V

    .line 1716
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->unSync()V

    .line 1719
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v5, p0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->setDefunctJEVersion(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    .line 1720
    return-void

    .line 1633
    .end local v0    # "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v1    # "lastOldVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v2    # "lastOldFile":J
    .end local v4    # "retainUUID":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot elect node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1634
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as master because its node type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is not ELECTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runConvertHooks()Z
    .locals 4

    .line 2456
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->convertHooks:Ljava/util/Set;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2457
    return v1

    .line 2460
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/TestHook;

    .line 2461
    .local v2, "h":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2462
    .end local v2    # "h":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2461
    .restart local v2    # "h":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2463
    .end local v2    # "h":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    :cond_2
    return v1
.end method

.method private selfElect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1595
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFirstNodeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(I)V

    .line 1604
    new-instance v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    .line 1605
    .local v0, "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getLearner()Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    .line 1606
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->get(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v2

    .line 1605
    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/elections/Learner;->processResult(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 1607
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nascent group. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1608
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is master by virtue of being the first node."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1607
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1610
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->sync()V

    .line 1611
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v2, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1612
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->initAsMaster()V

    .line 1617
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->updateMax(J)J

    .line 1618
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->addFirstNode()V

    .line 1619
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1621
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->unSync()V

    .line 1622
    return-void

    .line 1596
    .end local v0    # "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot elect node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1597
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as master because its node type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is not ELECTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized setUpTransfer(Ljava/util/Set;JZ)Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;JZ)",
            "Lcom/sleepycat/je/rep/impl/node/MasterTransfer;"
        }
    .end annotation

    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "reject":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    if-eqz v1, :cond_0

    .line 1117
    const/4 v0, 0x1

    .line 1123
    if-eqz p4, :cond_0

    new-instance v2, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    const-string/jumbo v3, "superseded"

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->abort(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const/4 v0, 0x0

    .line 1128
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->unblockTxnCompletion()V

    .line 1131
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_0
    if-nez v0, :cond_1

    .line 1137
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;-><init>(Ljava/util/Set;JLcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    monitor-exit p0

    return-object v1

    .line 1132
    :cond_1
    :try_start_1
    new-instance v1, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "another Master Transfer (started at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 1134
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getStartTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already in progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    .end local v0    # "reject":Z
    .end local p1    # "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # "timeout":J
    .end local p4    # "force":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startup(Lcom/sleepycat/je/rep/QuorumPolicy;)V
    .locals 4
    .param p1, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 859
    :cond_1
    new-instance v0, Lcom/sleepycat/je/rep/elections/Elections;

    new-instance v1, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;

    invoke-direct {v1, p0, p0}, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->changeListener:Lcom/sleepycat/je/rep/stream/MasterChangeListener;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/Elections;-><init>(Lcom/sleepycat/je/rep/elections/ElectionsConfig;Lcom/sleepycat/je/rep/elections/Learner$Listener;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 864
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->nodeTypeParticipates(Lcom/sleepycat/je/rep/NodeType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->participate()V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_MASTER:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 872
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->reinitSelfElect()V

    goto :goto_0

    .line 876
    :cond_3
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->findMaster()V

    .line 878
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_MASTER:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 881
    nop

    .line 883
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->start()V

    .line 884
    return-void

    .line 880
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_MASTER:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v0
.end method

.method private utilityServicesShutdown()V
    .locals 2

    .line 2078
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->ldiff:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->shutdown()V

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown()V

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->binaryNodeStateService:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    if-eqz v0, :cond_2

    .line 2087
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->shutdown()V

    .line 2090
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeStateService:Lcom/sleepycat/je/rep/impl/NodeStateService;

    if-eqz v0, :cond_3

    .line 2091
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "NodeState"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 2094
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->groupService:Lcom/sleepycat/je/rep/impl/GroupService;

    if-eqz v0, :cond_4

    .line 2095
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 2097
    :cond_4
    return-void
.end method

.method private utilityServicesStart()V
    .locals 4

    .line 392
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->ldiff:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    .line 393
    new-instance v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 398
    new-instance v0, Lcom/sleepycat/je/rep/impl/NodeStateService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/impl/NodeStateService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeStateService:Lcom/sleepycat/je/rep/impl/NodeStateService;

    .line 399
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 401
    new-instance v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->binaryNodeStateService:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 403
    new-instance v0, Lcom/sleepycat/je/rep/impl/GroupService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/impl/GroupService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->groupService:Lcom/sleepycat/je/rep/impl/GroupService;

    .line 404
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 405
    return-void
.end method

.method private waitWhileDiskLimitViolation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node waiting for disk space to become available. Disk limit violation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1739
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1737
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1741
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1743
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    return-void

    .line 1747
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Disk limit violation cleared."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1751
    return-void
.end method


# virtual methods
.method public addTransientIdNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 6
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 2568
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2573
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->FORMAT_VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 2576
    .local v0, "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2594
    nop

    .line 2599
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->minJEVersionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2600
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    .line 2601
    .local v2, "minJEVersion":Lcom/sleepycat/je/JEVersion;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 2610
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2616
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->transientIds:Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->allocateId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(I)V

    .line 2617
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->addTransientIdNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 2618
    .end local v2    # "minJEVersion":Lcom/sleepycat/je/JEVersion;
    monitor-exit v1

    .line 2619
    return-void

    .line 2611
    .restart local v2    # "minJEVersion":Lcom/sleepycat/je/JEVersion;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2612
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2613
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already has an ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2614
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v3

    .line 2602
    .restart local v0    # "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The node does not meet the minimum required version for the group. Node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2605
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is running version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2606
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but the minimum required version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v3

    .line 2618
    .end local v2    # "minJEVersion":Lcom/sleepycat/je/JEVersion;
    .restart local v0    # "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2577
    :catch_0
    move-exception v1

    .line 2578
    .local v1, "e":Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    if-nez v2, :cond_2

    .line 2579
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secondary nodes are not currently supported. The version running on node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be determined, but this feature requires version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2584
    invoke-virtual {v0}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or later."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2587
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secondary nodes are not currently supported. Node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    .line 2590
    invoke-virtual {v4}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but this feature requires version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2592
    invoke-virtual {v0}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or later."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2569
    .end local v0    # "requiredJEVersion":Lcom/sleepycat/je/JEVersion;
    .end local v1    # "e":Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call addTransientIdNode with a node without transient ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized clearActiveTransfer()V
    .locals 1

    monitor-enter p0

    .line 1150
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    .line 1149
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearedCachedFileChecksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2415
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 2418
    .local v0, "manager":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;
    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->clearedCachedFileChecksum(Ljava/lang/String;)V

    .line 2421
    :cond_0
    return-void
.end method

.method public dumpAckFeederState()Ljava/lang/String;
    .locals 4

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->dumpState(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpState()Ljava/lang/String;
    .locals 4

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->dumpState(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2429
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2428
    return-object v0
.end method

.method public feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    return-object v0
.end method

.method public findRestoreSuppliers(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1520
    .local p1, "helpers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1521
    .local v0, "suppliers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1522
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1523
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 1525
    .local v1, "protocol":Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 1527
    .local v3, "helper":Ljava/net/InetSocketAddress;
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/RepNode;->beforeFindRestoreSupplierHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1528
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1527
    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1534
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1538
    new-instance v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;)V

    const-string v6, "Group"

    invoke-direct {v4, v1, v3, v6, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 1548
    .local v4, "msg":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->run()V

    .line 1549
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v5

    .line 1550
    .local v5, "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->RGFAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 1551
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1552
    goto :goto_0

    .line 1553
    :cond_1
    iget-object v6, v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->GROUP_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1554
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected GROUP_RESP, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1556
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1554
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1557
    goto :goto_0

    .line 1559
    :cond_2
    move-object v6, v5

    check-cast v6, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;

    .line 1566
    .local v6, "groupResp":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v7

    .line 1567
    .local v7, "groupInfo":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v8

    .line 1568
    .local v8, "me":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1569
    goto/16 :goto_0

    .line 1572
    :cond_3
    invoke-virtual {v7, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/net/InetSocketAddress;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v9

    .line 1573
    .local v9, "supplier":Lcom/sleepycat/je/rep/ReplicationNode;
    if-eqz v9, :cond_4

    .line 1574
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1576
    .end local v3    # "helper":Ljava/net/InetSocketAddress;
    .end local v4    # "msg":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v5    # "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .end local v6    # "groupResp":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;
    .end local v7    # "groupInfo":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v8    # "me":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v9    # "supplier":Lcom/sleepycat/je/rep/ReplicationNode;
    :cond_4
    goto/16 :goto_0

    .line 1535
    .restart local v3    # "helper":Ljava/net/InetSocketAddress;
    :cond_5
    new-instance v2, Ljava/lang/InterruptedException;

    const-string v4, "Node is shutdown or invalid"

    invoke-direct {v2, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1527
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1578
    .end local v3    # "helper":Ljava/net/InetSocketAddress;
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1579
    return-void

    .line 1582
    :cond_8
    new-instance v2, Lcom/sleepycat/je/rep/InsufficientLogException;

    invoke-direct {v2, p0, v0}, Lcom/sleepycat/je/rep/InsufficientLogException;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Ljava/util/Set;)V

    throw v2
.end method

.method public forceMaster(Z)V
    .locals 4
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->forceMaster(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 824
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/elections/Elections;->initiateElection(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 825
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forced master "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    const-string v3, "not "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    return-object v0
.end method

.method public getAnyDTVLSN()J
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppState()[B
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->appStateMonitor:Lcom/sleepycat/je/rep/AppStateMonitor;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sleepycat/je/rep/AppStateMonitor;->getAppState()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->appStateMonitor:Lcom/sleepycat/je/rep/AppStateMonitor;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/AppStateMonitor;->getAppState()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->appStateMonitor:Lcom/sleepycat/je/rep/AppStateMonitor;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/AppStateMonitor;->getAppState()[B

    move-result-object v0

    return-object v0

    .line 720
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application state should be a byte array larger than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->arbiter:Lcom/sleepycat/je/rep/arbitration/Arbiter;

    return-object v0
.end method

.method getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method getCBVLSNTracker()Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->cbvlsnTracker:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    return-object v0
.end method

.method public getChannelTimeoutTask()Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    return-object v0
.end method

.method public getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    return-object v0
.end method

.method getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public getDTVLSN()J
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->get()J

    move-result-wide v0

    .line 758
    .local v0, "retValue":J
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 761
    return-wide v0

    .line 759
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DTVLSN cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDbTreeCacheClearingOpCount()I
    .locals 2

    .line 638
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DBTREE_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;
    .locals 1

    .line 2445
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->durabilityQuorum:Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    return-object v0
.end method

.method public getElectionPolicy()Lcom/sleepycat/je/rep/QuorumPolicy;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    return-object v0
.end method

.method public getElectionPriority()I
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    return v0

    .line 616
    :cond_0
    nop

    .line 617
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 619
    .local v0, "priority":I
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 620
    invoke-virtual {v1}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 622
    .local v1, "defaultPriority":I
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    return-object v0
.end method

.method public getElections()Lcom/sleepycat/je/rep/elections/Elections;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    return-object v0
.end method

.method public getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalCBVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->getCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method public getHeartbeatInterval()I
    .locals 2

    .line 597
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogManager()Lcom/sleepycat/je/log/LogManager;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    return-object v0
.end method

.method public getLogProviders()[Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 2

    .line 681
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getDataMembers()Ljava/util/Set;

    move-result-object v0

    .line 682
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v1
.end method

.method public getLogVersion()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logVersion:I

    return v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 731
    const/4 v0, 0x0

    return-object v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    return-object v0
.end method

.method public getMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 2

    .line 2478
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->minJEVersionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2479
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->monitorEventManager:Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPort()I

    move-result v0

    return v0
.end method

.method public getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    return-object v0
.end method

.method public getRepGroupDB()Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method public getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    return-object v0
.end method

.method getReplicaCloseCatchupMs()J
    .locals 2

    .line 2371
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replicaCloseCatchupMs:J

    return-wide v0
.end method

.method public getRestoreResponseVLSN(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 2341
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->getRestoreResponseVLSN(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method getSecurityCheckInterval()I
    .locals 2

    .line 830
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SECURITY_CHECK_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    return-object v0
.end method

.method public getSocket()Ljava/net/InetSocketAddress;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 473
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0, p1}, Lcom/sleepycat/je/rep/RepInternal;->makeReplicatedEnvironmentStats(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionGenerator()Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->suggestionGenerator:Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;

    return-object v0
.end method

.method public getThreadWaitInterval()I
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getHeartbeatInterval()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    nop

    .line 536
    const-string v0, "Group info is not available"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getVLSNFreezeLatch()Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->vlsnFreezeLatch:Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    return-object v0
.end method

.method public getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 2058
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getThreadWaitInterval()I

    move-result v0

    return v0
.end method

.method public isAuthoritativeMaster()Z
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorum:Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->isAuthoritativeMaster(Lcom/sleepycat/je/rep/stream/MasterStatus;Lcom/sleepycat/je/rep/impl/node/FeederManager;)Z

    move-result v0

    return v0
.end method

.method public isGlobalCBVLSNDefunct()Z
    .locals 1

    .line 2331
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->isDefunct()Z

    move-result v0

    return v0
.end method

.method public isMaster()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->isNodeMaster()Z

    move-result v0

    return v0
.end method

.method public isNeedsAcks()Z
    .locals 1

    .line 2552
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->needsAcks:Z

    return v0
.end method

.method public isShutdownOrInvalid()Z
    .locals 2

    .line 1965
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1966
    return v1

    .line 1968
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->wasInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->saveShutdownException(Ljava/lang/Exception;)V

    .line 1970
    return v1

    .line 1972
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public joinGroup(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 11
    .param p1, "consistency"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p2, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2150
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;

    .line 2151
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;-><init>(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 2153
    .local v0, "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->startup(Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 2154
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joinGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 2155
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2154
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2157
    const/4 v1, 0x0

    .line 2158
    .local v1, "exitException":Lcom/sleepycat/je/DatabaseException;
    const/4 v2, 0x0

    .line 2159
    .local v2, "retries":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 2160
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/RecoveryProgress;->BECOME_CONSISTENT:Lcom/sleepycat/je/RecoveryProgress;

    .line 2161
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 2163
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5

    .line 2166
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v3

    .line 2167
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->getTimeout()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->awaitOrException(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 2173
    .local v3, "done":Z
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 2174
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v5

    .line 2175
    .local v5, "finalState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    if-nez v3, :cond_3

    .line 2178
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isReplica()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2179
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeoutIsForUnknownState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2185
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->setSetupTimeout()V

    .line 2186
    goto/16 :goto_2

    .line 2188
    :cond_0
    new-instance v6, Lcom/sleepycat/je/rep/ReplicaConsistencyException;

    const-string v7, "Setup time exceeded %,d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 2190
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->getSetupTimeout()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2189
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/sleepycat/je/rep/ReplicaConsistencyException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .end local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .end local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "retries":I
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v6

    .line 2194
    .restart local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .restart local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .restart local v2    # "retries":I
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :cond_1
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isUnknown()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2195
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeoutIsForUnknownState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2196
    sget-object v4, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/RestartRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2262
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 2196
    return-object v4

    .line 2198
    :cond_2
    goto/16 :goto_4

    .line 2201
    :cond_3
    :try_start_1
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/RepNode$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 2221
    :pswitch_0
    const-string v4, "Node in DETACHED state while joining group."

    .line 2222
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .end local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "retries":I
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v4

    .line 2216
    .restart local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .restart local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .restart local v2    # "retries":I
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :pswitch_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v7, "Joining group as master"

    invoke-static {v4, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2218
    goto :goto_1

    .line 2212
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->joinAsReplica(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/je/rep/RestartRequiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2213
    goto :goto_1

    .line 2209
    :pswitch_3
    goto/16 :goto_2

    .line 2226
    :goto_1
    nop

    .line 2262
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v4

    sget-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v4, v6}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 2226
    return-object v5

    .line 2262
    .end local v3    # "done":Z
    .end local v5    # "finalState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :catchall_0
    move-exception v3

    goto/16 :goto_3

    .line 2240
    :catch_0
    move-exception v3

    .line 2241
    .local v3, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 2242
    .local v4, "cause":Ljava/lang/Throwable;
    if-eqz v4, :cond_4

    .line 2243
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;

    if-ne v5, v6, :cond_4

    .line 2250
    move-object v1, v3

    .line 2251
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->getTimeout()I

    move-result v5

    if-lez v5, :cond_4

    .line 2252
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Join retry due to exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2254
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2252
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2255
    goto :goto_2

    .line 2258
    :cond_4
    nop

    .end local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .end local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "retries":I
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v3

    .line 2235
    .end local v3    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v4    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .restart local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .restart local v2    # "retries":I
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :catch_1
    move-exception v3

    .line 2236
    .local v3, "e":Lcom/sleepycat/je/rep/RestartRequiredException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Environment needs to be restarted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2238
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/RestartRequiredException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2236
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2239
    nop

    .end local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .end local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "retries":I
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v3

    .line 2229
    .end local v3    # "e":Lcom/sleepycat/je/rep/RestartRequiredException;
    .restart local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .restart local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .restart local v2    # "retries":I
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :catch_2
    move-exception v3

    .line 2231
    .local v3, "e":Lcom/sleepycat/je/rep/MasterStateException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Join retry due to master transition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2233
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/MasterStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2231
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2234
    nop

    .line 2163
    .end local v3    # "e":Lcom/sleepycat/je/rep/MasterStateException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2227
    :catch_3
    move-exception v3

    .line 2228
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .end local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "retries":I
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2262
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "timeouts":Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
    .restart local v1    # "exitException":Lcom/sleepycat/je/DatabaseException;
    .restart local v2    # "retries":I
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v3

    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v3

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 2263
    nop

    .line 2266
    if-eqz v1, :cond_6

    .line 2267
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting joinGroup after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retries."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2269
    throw v1

    .line 2271
    :cond_6
    new-instance v3, Lcom/sleepycat/je/rep/UnknownMasterException;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyReplicaConnected()V
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1957
    return-void
.end method

.method public recalculateGlobalCBVLSN()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->recalculate(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 1214
    return-void
.end method

.method public refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 904
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/elections/Elections;->updateRepGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 905
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 907
    .local v0, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v0, :cond_1

    .line 916
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->IGNORE_SECONDARY_NODE_ID:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 923
    .end local v0    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method public registerAppStateMonitor(Lcom/sleepycat/je/rep/AppStateMonitor;)V
    .locals 0
    .param p1, "stateMonitor"    # Lcom/sleepycat/je/rep/AppStateMonitor;

    .line 701
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->appStateMonitor:Lcom/sleepycat/je/rep/AppStateMonitor;

    .line 702
    return-void
.end method

.method public removeMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 942
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->removeMember(Ljava/lang/String;Z)V

    .line 943
    return-void
.end method

.method public removeMember(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "delete"    # Z

    .line 966
    if-eqz p2, :cond_0

    const-string v0, "Deleting member"

    goto :goto_0

    :cond_0
    const-string v0, "Removing member"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->checkValidity(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 969
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 970
    :cond_1
    new-instance v0, Lcom/sleepycat/je/rep/MemberActiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to delete an active node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/MemberActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->removeMember(Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 985
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeder(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 986
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->removeMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 987
    return-void
.end method

.method public removeTransientNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 3
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 2628
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->removeTransientNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 2634
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->transientIds:Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->deallocateId(I)V

    .line 2635
    return-void

    .line 2629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call removeTransientNode with a node without transient ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replica()Lcom/sleepycat/je/rep/impl/node/Replica;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    return-object v0
.end method

.method public resetReadyLatch(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 490
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 491
    .local v0, "old":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 492
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V

    .line 496
    :cond_0
    return-void
.end method

.method public resetStats()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->resetStats()V

    .line 478
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->resetStats()V

    .line 479
    return-void
.end method

.method public final restartNetworkBackup()V
    .locals 4

    .line 2400
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    if-nez v0, :cond_0

    .line 2403
    new-instance v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 2406
    return-void

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public run()V
    .locals 10

    .line 1773
    const-string v0, "Unexpected exception during shutdown"

    const-string v1, "RepNode shutdown exception:\n"

    const-string v2, "RepNode main thread shutting down."

    const-string v3, "Node state at shutdown:\n"

    const/4 v4, 0x0

    .line 1775
    .local v4, "repNodeError":Ljava/lang/Error;
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1776
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " started"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 1777
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " as "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, ""

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1775
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1780
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1781
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-eq v5, v6, :cond_1

    .line 1783
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v6, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v7, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1786
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1793
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->waitWhileDiskLimitViolation()V

    .line 1800
    :cond_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 1801
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1807
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 1810
    :cond_4
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/elections/Elections;->initiateElection(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 1816
    sget-object v5, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->electionQuorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    goto :goto_3

    .line 1808
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->queryGroupForMembership()V

    .line 1819
    :goto_3
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    .line 1894
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_7

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .local v2, "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_6

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_4

    .line 1910
    :cond_6
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1917
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1924
    nop

    .line 1927
    .end local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_5

    .line 1918
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 1919
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_3
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1925
    :catch_1
    move-exception v0

    .line 1928
    :goto_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1929
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->cleanup()V

    .line 1820
    return-void

    .line 1825
    :cond_8
    :try_start_4
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->sync()V

    .line 1827
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->isNodeMaster()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1828
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->initAsMaster()V

    .line 1829
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->masterTransitionCleanup()V

    .line 1832
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v6, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 1833
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1839
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->maybeUpdateMasterJEVersion()V

    .line 1841
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->runFeeders()V

    .line 1857
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v6, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v7, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1858
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->initAsReplica()V

    .line 1859
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->runConvertHooks()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1860
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-direct {v5, p0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    goto/16 :goto_1

    .line 1859
    :cond_9
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v5

    .line 1868
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_a
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->replicaTransitionCleanup()V

    .line 1869
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->runReplicaLoop()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1894
    :cond_b
    :try_start_5
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_d

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_c

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_6

    .line 1910
    :cond_c
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1917
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_6
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1924
    nop

    .line 1927
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_7
    goto/16 :goto_8

    .line 1918
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 1919
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_7
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_d
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1925
    :catch_3
    move-exception v0

    goto :goto_8

    .line 1893
    :catchall_0
    move-exception v5

    goto/16 :goto_d

    .line 1887
    :catch_4
    move-exception v5

    .line 1888
    .local v5, "e":Ljava/lang/Error;
    :try_start_8
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " incurred during repnode loop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1890
    move-object v4, v5

    .line 1891
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1894
    .end local v5    # "e":Ljava/lang/Error;
    :try_start_9
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    nop

    .line 1898
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1925
    :catch_5
    move-exception v0

    .line 1928
    :goto_8
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1929
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->cleanup()V

    .line 1930
    goto/16 :goto_c

    .line 1882
    :catch_6
    move-exception v5

    .line 1883
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_a
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RepNode main thread sees runtime ex - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->saveShutdownException(Ljava/lang/Exception;)V

    .line 1886
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v5

    .line 1880
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :catch_7
    move-exception v5

    .line 1881
    .local v5, "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->saveShutdownException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1894
    .end local v5    # "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    :try_start_b
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_f

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_e

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_9

    .line 1910
    :cond_e
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9

    .line 1917
    :goto_9
    :try_start_c
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_c
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9

    .line 1924
    goto/16 :goto_7

    .line 1918
    :catch_8
    move-exception v1

    .line 1919
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_d
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_9

    .line 1925
    :catch_9
    move-exception v0

    goto/16 :goto_8

    .line 1876
    :catch_a
    move-exception v5

    .line 1877
    .local v5, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    :try_start_e
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->saveShutdownException(Ljava/lang/Exception;)V

    .line 1878
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RepNode main thread sees group shutdown - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1894
    .end local v5    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    :try_start_f
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_11

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_10

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_a

    .line 1910
    :cond_10
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_c

    .line 1917
    :goto_a
    :try_start_10
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_10
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_c

    .line 1924
    goto/16 :goto_7

    .line 1918
    :catch_b
    move-exception v1

    .line 1919
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_11
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_11
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_c

    .line 1925
    :catch_c
    move-exception v0

    goto/16 :goto_8

    .line 1872
    :catch_d
    move-exception v5

    .line 1873
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_12
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v8, "RepNode main thread interrupted -  forced shutdown."

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1894
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_13
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_13

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_12

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_b

    .line 1910
    :cond_12
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_f

    .line 1917
    :goto_b
    :try_start_14
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_14
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_f

    .line 1924
    goto/16 :goto_7

    .line 1918
    :catch_e
    move-exception v1

    .line 1919
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_15
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_13
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_f

    .line 1925
    :catch_f
    move-exception v0

    goto/16 :goto_8

    .line 1931
    :goto_c
    return-void

    .line 1894
    :goto_d
    :try_start_16
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v6, v7, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1897
    if-nez v4, :cond_15

    .line 1903
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 1905
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_14

    .line 1906
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1908
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v1, v6, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_e

    .line 1910
    :cond_14
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1913
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v3, v6, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_11

    .line 1917
    :goto_e
    :try_start_17
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V
    :try_end_17
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_11

    .line 1924
    nop

    .line 1927
    .end local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_f

    .line 1918
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 1919
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_18
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1920
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1923
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v1

    .line 1898
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :cond_15
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1900
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1901
    throw v4
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_11

    .line 1925
    :catch_11
    move-exception v0

    .line 1928
    :goto_f
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1929
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->cleanup()V

    throw v5
.end method

.method public setConvertHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2449
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->convertHooks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2450
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->convertHooks:Ljava/util/Set;

    .line 2452
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->convertHooks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2453
    return-void
.end method

.method public setDTVLSN(J)J
    .locals 2
    .param p1, "newDTVLSN"    # J

    .line 796
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->set(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 2
    .param p1, "repGroupImpl"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 804
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 805
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->durabilityQuorum:Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    sget-object v1, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 806
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->needsAcks:Z

    .line 807
    return-void
.end method

.method public setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V
    .locals 7
    .param p1, "newMinJEVersion"    # Lcom/sleepycat/je/JEVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
        }
    .end annotation

    .line 2510
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->minJEVersionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2513
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v1

    .line 2514
    .local v1, "groupMinJEVersion":Lcom/sleepycat/je/JEVersion;
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 2515
    monitor-exit v0

    return-void

    .line 2518
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getDataMembers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 2519
    .local v3, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    .line 2520
    .local v4, "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2523
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 2527
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 2528
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getFeeder(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/Feeder;

    move-result-object v5

    .line 2529
    .local v5, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz v5, :cond_2

    .line 2530
    nop

    .line 2531
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v6

    .line 2532
    .local v6, "currentReplicaJEVersion":Lcom/sleepycat/je/JEVersion;
    if-eqz v6, :cond_2

    .line 2533
    move-object v4, v6

    .line 2537
    .end local v5    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v6    # "currentReplicaJEVersion":Lcom/sleepycat/je/JEVersion;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 2538
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 2542
    .end local v3    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v4    # "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    goto :goto_0

    .line 2539
    .restart local v3    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v4    # "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    :cond_3
    new-instance v2, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;

    .line 2540
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5, v4}, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;-><init>(Lcom/sleepycat/je/JEVersion;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    .end local p1    # "newMinJEVersion":Lcom/sleepycat/je/JEVersion;
    throw v2

    .line 2543
    .end local v3    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v4    # "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    .restart local p1    # "newMinJEVersion":Lcom/sleepycat/je/JEVersion;
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V

    .line 2544
    .end local v1    # "groupMinJEVersion":Lcom/sleepycat/je/JEVersion;
    monitor-exit v0

    .line 2545
    return-void

    .line 2544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 602
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logVersion:I

    .line 603
    return-void
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    return-void

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutting down node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DTVLSN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1993
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getAnyDTVLSN()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1991
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->monitorEventManager:Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->notifyLeaveGroup(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;)V

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->preShutdown()V

    .line 2003
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    if-eqz v0, :cond_2

    .line 2004
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->shutdown()V

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownQueue()V

    .line 2010
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplicaCloseCatchupMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 2011
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2017
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->join()V

    .line 2021
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->shutdown()V

    .line 2023
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 2025
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RepNode main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2026
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2025
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2028
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->utilityServicesShutdown()V

    .line 2031
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v0

    .line 2032
    .local v0, "mt":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    if-eqz v0, :cond_5

    .line 2033
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v1

    .line 2034
    .local v1, "ex":Ljava/lang/Exception;
    if-nez v1, :cond_4

    .line 2035
    new-instance v2, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    const-string/jumbo v3, "shutting down"

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 2037
    :cond_4
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->abort(Ljava/lang/Exception;)Z

    .line 2039
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->shutdown()V

    .line 2040
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown completed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2042
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/stream/MasterStatus;->setGroupMaster(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 2043
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V

    .line 2046
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->cancel()Z

    .line 2047
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 2048
    return-void
.end method

.method public shutdownGroupOnClose(J)V
    .locals 3
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2117
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->replicaCloseCatchupMs:J

    .line 2118
    return-void

    .line 2113
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node state must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 2115
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final shutdownNetworkBackup()V
    .locals 1

    .line 2391
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown()V

    .line 2392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->logFeederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 2393
    return-void
.end method

.method public syncupEnded(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    .locals 1
    .param p1, "fileSet"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 2367
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 2368
    return-void
.end method

.method public syncupStarted(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .locals 3
    .param p1, "syncupNode"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 2362
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syncup-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2363
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2362
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->protectRangeHead(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    move-result-object v0

    return-object v0
.end method

.method public trackSyncableVLSN(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 1
    .param p1, "syncableVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J

    .line 2314
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->cbvlsnTracker:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->track(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 2315
    return-void
.end method

.method public transferMaster(Ljava/util/Set;JZ)Ljava/lang/String;
    .locals 5
    .param p2, "timeout"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;JZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1064
    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1068
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1071
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1079
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1080
    .local v1, "rep":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    .line 1081
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1085
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1091
    .end local v1    # "rep":Ljava/lang/String;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_0

    .line 1086
    .restart local v1    # "rep":Ljava/lang/String;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' must have node type ELECTABLE, but had type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1089
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not currently an active member of the group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    .end local v1    # "rep":Ljava/lang/String;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setUpTransfer(Ljava/util/Set;JZ)Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v0

    .line 1094
    .local v0, "xfr":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    const/4 v1, 0x0

    .line 1096
    .local v1, "done":Z
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->transfer()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1097
    .local v3, "winner":Ljava/lang/String;
    const/4 v4, 0x1

    .line 1098
    .end local v1    # "done":Z
    .local v4, "done":Z
    nop

    .line 1100
    monitor-enter p0

    .line 1101
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    if-ne v1, v0, :cond_4

    if-nez v4, :cond_4

    .line 1102
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 1104
    :cond_4
    monitor-exit p0

    .line 1098
    return-object v3

    .line 1104
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1100
    .end local v3    # "winner":Ljava/lang/String;
    .end local v4    # "done":Z
    .restart local v1    # "done":Z
    :catchall_1
    move-exception v3

    monitor-enter p0

    .line 1101
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    if-ne v4, v0, :cond_5

    if-nez v1, :cond_5

    .line 1102
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->xfrInProgress:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 1104
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 1069
    .end local v0    # "xfr":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    .end local v1    # "done":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not currently master"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'replicas\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "newHostName"    # Ljava/lang/String;
    .param p3, "newPort"    # I

    .line 1002
    nop

    .line 1003
    const-string v0, "Updating node\'s address"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->checkValidity(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 1006
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getFeeder(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/Feeder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1012
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setHostName(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setPort(I)V

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setQuorumAck(Z)V

    .line 1015
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->repGroupDB:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->updateMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 1016
    return-void

    .line 1007
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/ReplicaStateException;

    const-string v2, "Can\'t update the network address for a live node."

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/ReplicaStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateDTVLSN(J)J
    .locals 2
    .param p1, "candidateDTVLSN"    # J

    .line 782
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepImpl;->isSimulatePreDTVLSNMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-wide/16 v0, 0x0

    return-wide v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->dtvlsn:Lcom/sleepycat/je/rep/util/AtomicLongMax;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/util/AtomicLongMax;->updateMax(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V
    .locals 1
    .param p1, "updateNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "barrierState"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 1204
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V

    .line 1205
    return-void
.end method
