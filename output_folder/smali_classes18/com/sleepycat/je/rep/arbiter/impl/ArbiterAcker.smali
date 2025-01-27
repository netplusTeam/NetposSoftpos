.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
.super Ljava/lang/Object;
.source "ArbiterAcker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_SLEEP_MS:I = 0x3e8

.field private static final NETWORK_RETRIES:I = 0x2

.field private static final QUEUE_POLL_INTERVAL_NS:J = 0x3b9aca00L

.field private static final SERVICE_UNAVAILABLE_RETRIES:I = 0xa


# instance fields
.field private final FSYNC_INTERVAL:J

.field private final N_MAX_GROUP_XACT:I

.field private arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

.field private final arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

.field private arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

.field private final clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

.field private dtvlsn:J

.field private final groupMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final groupXact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastFSyncTime:J

.field private volatile lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final logger:Ljava/util/logging/Logger;

.field private final masterStat:Lcom/sleepycat/je/utilint/StringStat;

.field private final nAcks:Lcom/sleepycat/je/utilint/LongStat;

.field private final nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

.field private final outputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final requestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

.field private shutdownException:Ljava/lang/Exception;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 5
    .param p1, "arbiterImpl"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 156
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->dtvlsn:J

    .line 179
    const/16 v0, 0x64

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->N_MAX_GROUP_XACT:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    .line 182
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->FSYNC_INTERVAL:J

    .line 187
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 188
    iput-object p2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 189
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    .line 191
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepImpl;->getClockSkewMs()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 193
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 194
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 196
    .local v0, "requestQueueSize":I
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 205
    nop

    .line 206
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 208
    .local v1, "outputQueueSize":I
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    .line 210
    new-instance v2, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v3, "Arbiter"

    const-string v4, "Arbiter statistics"

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 212
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v2, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

    .line 214
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v2, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->nAcks:Lcom/sleepycat/je/utilint/LongStat;

    .line 215
    new-instance v3, Lcom/sleepycat/je/utilint/StringStat;

    sget-object v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_MASTER:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v2, v4}, Lcom/sleepycat/je/utilint/StringStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->masterStat:Lcom/sleepycat/je/utilint/StringStat;

    .line 216
    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->replayEntries(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->processShutdown(Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    return-object v0
.end method

.method private createArbiterFeederChannel()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 540
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 541
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    .line 544
    .local v2, "timeoutMs":I
    const/16 v9, 0x3e8

    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 545
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 546
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMaster()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 547
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 548
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFeederConnectOptions()Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 546
    invoke-interface {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    move-object v0, v3

    .line 550
    new-instance v10, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 553
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getChannelTimeoutTask()Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    move-result-object v6

    move-object v3, v10

    move-object v7, v0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;Lcom/sleepycat/je/rep/net/DataChannel;I)V

    iput-object v10, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 557
    const-string v3, "Feeder"

    .line 558
    invoke-static {v0, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    nop

    .line 582
    return-void

    .line 568
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-ne v4, v5, :cond_0

    .line 576
    new-instance v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6, v9}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 580
    :cond_0
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 559
    .end local v3    # "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    :catch_1
    move-exception v3

    .line 565
    .local v3, "e":Ljava/net/ConnectException;
    new-instance v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;

    invoke-virtual {v3}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v9}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;-><init>(Ljava/lang/String;II)V

    throw v4
.end method

.method private initializeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$ConnectRetryException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->createArbiterFeederChannel()V

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 223
    new-instance v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;

    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$1;)V

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;-><init>(Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;)V

    .line 225
    .local v0, "handshake":Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->execute()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 227
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 230
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    const-class v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 232
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->HEARTBEAT_ACK:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->queueAck(Ljava/lang/Long;)V

    .line 235
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->countDown()V

    .line 236
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->notifyJoinGroup()V

    .line 237
    return-void
.end method

.method private loopExitCleanup()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 504
    instance-of v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;

    if-eqz v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 507
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_0
    instance-of v0, v0, Lcom/sleepycat/je/rep/GroupShutdownException;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Exiting inner Arbiter loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting inner Arbiter loop with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 517
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Exiting inner Arbiter loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 523
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdown()V

    .line 524
    return-void
.end method

.method private processShutdown(Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;
    .locals 9
    .param p1, "shutdown"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->SHUTDOWN_ACK:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->queueAck(Ljava/lang/Long;)V

    .line 628
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->setTimeoutMs(I)V

    .line 629
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 630
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMaster()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "masterHostName":Ljava/lang/String;
    new-instance v8, Lcom/sleepycat/je/rep/GroupShutdownException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 635
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    .line 636
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->getShutdownTimeMs()J

    move-result-wide v6

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/GroupShutdownException;-><init>(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 631
    return-object v8
.end method

.method private queueAck(Ljava/lang/Long;)V
    .locals 3
    .param p1, "xid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    nop

    .line 603
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 601
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Ack I/O interrupted"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private replayEntries(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 19
    .param p1, "firstMessage"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 664
    .local v1, "doSync":Z
    const-wide/16 v2, 0x0

    .line 665
    .local v2, "highVLSN":J
    const/4 v4, 0x0

    .line 666
    .local v4, "shutdownMessage":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 667
    iget-object v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 668
    iget-object v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    move-object/from16 v6, p1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    const/16 v8, 0x64

    invoke-interface {v5, v7, v8}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 670
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 671
    iget-object v7, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupMessages:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 673
    .local v7, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v8

    .line 675
    .local v8, "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    sget-object v9, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v8, v9, :cond_0

    .line 676
    move-object v4, v7

    goto/16 :goto_1

    .line 677
    :cond_0
    sget-object v9, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v8, v9, :cond_1

    .line 678
    iget-object v9, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    sget-object v10, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK:Ljava/lang/Long;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 680
    :cond_1
    move-object v9, v7

    check-cast v9, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    .line 681
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v9

    .line 682
    .local v9, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getEntryType()B

    move-result v10

    .line 683
    .local v10, "entryType":B
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    iput-object v11, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 685
    sget-object v11, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v11, v10}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 686
    move-object v11, v7

    check-cast v11, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;

    .line 687
    .local v11, "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->getReplicaSyncPolicy()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v12

    sget-object v13, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne v12, v13, :cond_2

    .line 689
    const/4 v1, 0x1

    .line 692
    :cond_2
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v12

    .line 693
    .local v12, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v13, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v13}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v13

    cmp-long v13, v13, v2

    if-lez v13, :cond_3

    .line 694
    iget-object v13, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v13}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    .line 696
    :cond_3
    nop

    .line 697
    invoke-interface {v12}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sleepycat/je/txn/TxnCommit;

    .line 699
    .local v13, "masterCommit":Lcom/sleepycat/je/txn/TxnCommit;
    invoke-virtual {v13}, Lcom/sleepycat/je/txn/TxnCommit;->getDTVLSN()J

    move-result-wide v14

    .line 700
    .local v14, "nextDTVLSN":J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_4

    .line 702
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v14

    .line 708
    :cond_4
    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v1    # "doSync":Z
    .end local v2    # "highVLSN":J
    .local v16, "doSync":Z
    .local v17, "highVLSN":J
    iget-wide v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->dtvlsn:J

    cmp-long v3, v14, v1

    if-lez v3, :cond_5

    move-wide v1, v14

    :cond_5
    iput-wide v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->dtvlsn:J

    .line 709
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    invoke-interface {v12}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->nAcks:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 711
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 712
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Arbiter ack commit record "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 716
    .end local v11    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    .end local v12    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v13    # "masterCommit":Lcom/sleepycat/je/txn/TxnCommit;
    .end local v14    # "nextDTVLSN":J
    :cond_6
    move/from16 v1, v16

    move-wide/from16 v2, v17

    .line 670
    .end local v7    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v10    # "entryType":B
    .end local v16    # "doSync":Z
    .end local v17    # "highVLSN":J
    .restart local v1    # "doSync":Z
    .restart local v2    # "highVLSN":J
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p1

    goto/16 :goto_0

    .line 717
    .restart local v7    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v10    # "entryType":B
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal message type recieved by  Arbiter. ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "]"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, "errMsg":Ljava/lang/String;
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 724
    .end local v5    # "i":I
    .end local v6    # "errMsg":Ljava/lang/String;
    .end local v7    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v10    # "entryType":B
    :cond_8
    if-nez v1, :cond_9

    iget-wide v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastFSyncTime:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_a

    .line 726
    :cond_9
    const/4 v1, 0x1

    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->lastFSyncTime:J

    .line 730
    :cond_a
    iget-object v5, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v5

    new-instance v6, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v6, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    new-instance v7, Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v8, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->dtvlsn:J

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iget-object v8, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 733
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v8

    .line 730
    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->write(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;IZ)V

    .line 735
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget-object v6, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 736
    iget-object v6, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->groupXact:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-direct {v0, v6}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->queueAck(Ljava/lang/Long;)V

    .line 735
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 738
    .end local v5    # "i":I
    :cond_b
    return-object v4
.end method

.method private runArbiterAckLoopInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;
        }
    .end annotation

    .line 344
    const-string v0, " "

    const-string v1, "Arbiter unexpected exception "

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 345
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arbiter loop started with master: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 347
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->initializeConnection()V

    .line 350
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    sget-object v3, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->setState(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 351
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->doRunArbiterLoopInternalWork()V

    .line 352
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    sget-object v3, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->setState(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sleepycat/je/rep/UnknownMasterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 390
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 393
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .end local v0    # "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->loopExitCleanup()V

    .line 396
    goto :goto_2

    .line 379
    :catch_2
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 381
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 384
    throw v2

    .line 376
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 377
    .local v0, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    .line 378
    throw v0

    .line 373
    .end local v0    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    :catch_4
    move-exception v0

    .line 375
    .local v0, "e":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;
    throw v0

    .line 363
    .end local v0    # "e":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arbiter exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 397
    :goto_2
    return-void

    .line 353
    :catch_7
    move-exception v0

    .line 354
    .local v0, "closedByInterruptException":Ljava/nio/channels/ClosedByInterruptException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Arbiter loop interrupted for shutdown."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->loopExitCleanup()V

    .line 357
    return-void

    .line 359
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Arbiter loop unexpected interrupt."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/lang/InterruptedException;

    .line 362
    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    .end local v0    # "closedByInterruptException":Ljava/nio/channels/ClosedByInterruptException;
    :goto_3
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->loopExitCleanup()V

    throw v0
.end method


# virtual methods
.method protected doRunArbiterLoopInternalWork()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 403
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .line 404
    .local v0, "timeoutMs":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->setTimeoutMs(I)V

    .line 406
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 407
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 409
    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 413
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 414
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    .line 415
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->start()V

    .line 417
    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    .line 418
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->start()V

    .line 420
    const-wide/16 v1, 0x0

    .line 424
    .local v1, "maxPending":J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v3

    .line 426
    .local v3, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdownOrInvalid()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 430
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/32 v5, 0x3b9aca00

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 431
    invoke-interface {v4, v3, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 435
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->isAlive()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_4

    .line 460
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    iget-object v4, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-ne v4, v5, :cond_1

    .line 466
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 471
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_3

    .line 476
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 482
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 485
    nop

    .line 436
    return-void

    .line 477
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4

    .line 473
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v6, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v6, v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    throw v4

    .line 439
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_1

    .line 442
    :cond_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    .line 443
    .local v4, "pending":I
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-lez v5, :cond_6

    .line 444
    int-to-long v1, v4

    .line 445
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max pending request log items:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 449
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v4    # "pending":I
    :cond_6
    goto/16 :goto_0

    .line 460
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    iget-object v4, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-ne v4, v5, :cond_8

    .line 466
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 471
    :cond_8
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_a

    .line 476
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v4, :cond_9

    .line 482
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 485
    nop

    .line 427
    return-void

    .line 477
    :cond_9
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4

    .line 473
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_a
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 482
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    .restart local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v6, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v6, v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    throw v4

    .line 460
    .end local v3    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 450
    :catch_0
    move-exception v3

    .line 457
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_6
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 460
    .end local v3    # "ioe":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    iget-object v3, v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-ne v3, v4, :cond_b

    .line 466
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 471
    :cond_b
    :try_start_7
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_d

    .line 476
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v3, :cond_c

    .line 482
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v4, v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 485
    nop

    .line 486
    nop

    .line 487
    return-void

    .line 477
    :cond_c
    :try_start_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    throw v3

    .line 473
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    :cond_d
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 482
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    :catchall_3
    move-exception v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    throw v3

    .line 460
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    iget-object v4, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-ne v4, v5, :cond_e

    .line 466
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 471
    :cond_e
    :try_start_9
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_10

    .line 476
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 477
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 482
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    :cond_f
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 485
    nop

    .line 484
    throw v3

    .line 473
    :cond_10
    :try_start_a
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;

    move-result-object v3

    .end local v0    # "timeoutMs":I
    .end local v1    # "maxPending":J
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 482
    .restart local v0    # "timeoutMs":I
    .restart local v1    # "maxPending":J
    :catchall_4
    move-exception v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    sget-object v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v5, v4, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 483
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->join()V

    .line 484
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    throw v3
.end method

.method loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->masterStat:Lcom/sleepycat/je/utilint/StringStat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 492
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StringStat;->set(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 494
    .local v0, "copyStats":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method runArbiterAckLoop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/GroupShutdownException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "retryExceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;>;"
    const/4 v1, 0x0

    .line 278
    .local v1, "retryCount":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->runArbiterAckLoopInternal()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    goto/16 :goto_3

    .line 314
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v5, "Retry terminated, out of sync."

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 285
    goto/16 :goto_3

    .line 287
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_2

    iget v3, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retries:I

    if-nez v3, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    const/4 v1, 0x0

    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 289
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v3, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retries:I

    if-lt v1, v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to recover from exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 294
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", despite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retries.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 297
    goto :goto_3

    .line 303
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

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

    iget v6, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Will retry Arbiter loop after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retrySleepMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 307
    iget v3, v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;->retrySleepMs:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 308
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .line 309
    nop

    .line 314
    .end local v2    # "e":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RetryException;
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 315
    nop

    .line 317
    return-void

    .line 311
    :cond_4
    goto/16 :goto_0

    .line 314
    :goto_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterImpl:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdownException:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->resetReadyLatch(Ljava/lang/Exception;)V

    throw v2
.end method

.method shutdown()V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->requestThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->shutdownThread(Ljava/util/logging/Logger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request thread error shutting down."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    if-eqz v0, :cond_1

    .line 330
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterOutputThread:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    goto :goto_1

    .line 333
    :catch_1
    move-exception v0

    .line 337
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->arbiterFeederChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 338
    return-void
.end method
