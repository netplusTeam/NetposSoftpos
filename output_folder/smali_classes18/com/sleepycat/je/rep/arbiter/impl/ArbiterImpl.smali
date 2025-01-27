.class public Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ArbiterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;,
        Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;
    }
.end annotation


# static fields
.field private static final DATA_FILE_NAME:Ljava/lang/String; = "00000000.adb"

.field private static final MASTER_QUERY_INTERVAL:I = 0x3e8


# instance fields
.field private arbiterAcker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

.field private final arbiterHome:Ljava/io/File;

.field private arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

.field private binaryStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

.field private cachedRepGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private changeListener:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;

.field private channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

.field private currentState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;",
            ">;"
        }
    .end annotation
.end field

.field private elections:Lcom/sleepycat/je/rep/elections/Elections;

.field private formatter:Ljava/util/logging/Formatter;

.field private groupName:Ljava/lang/String;

.field private helperSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private joinGroupTime:J

.field private logger:Ljava/util/logging/Logger;

.field private masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

.field private monitorEventManager:Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;

.field nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private nodeStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

.field private volatile readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

.field private repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 3
    .param p1, "arbiterHome"    # Ljava/io/File;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArbiterNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 176
    iput-object p2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 177
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterHome:Ljava/io/File;

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->initialize()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 184
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem attempting to join on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {p2, v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/stream/MasterStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    return-object v0
.end method

.method private checkGroupMasterIsAlive(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Z
    .locals 9
    .param p1, "groupMasterNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 659
    const/4 v0, 0x0

    .line 662
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 663
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMaster()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 665
    .local v2, "masterSocket":Ljava/net/InetSocketAddress;
    new-instance v3, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 669
    .local v3, "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 671
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    new-instance v6, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 673
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 674
    const/16 v8, 0x1388

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 675
    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 670
    invoke-interface {v4, v2, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v4

    move-object v0, v4

    .line 676
    const-string v4, "BinaryNodeState"

    .line 677
    invoke-static {v0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 679
    new-instance v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 682
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v6

    sget-object v8, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 685
    const-class v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 686
    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 688
    .local v4, "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v5

    .line 689
    .local v5, "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move v1, v7

    .line 696
    :cond_0
    if-eqz v0, :cond_1

    .line 698
    :try_start_1
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 701
    goto :goto_0

    .line 699
    :catch_0
    move-exception v6

    .line 689
    :cond_1
    :goto_0
    return v1

    .line 696
    .end local v2    # "masterSocket":Ljava/net/InetSocketAddress;
    .end local v3    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .end local v4    # "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    .end local v5    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 690
    :catch_1
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

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

    .line 694
    nop

    .line 696
    if-eqz v0, :cond_2

    .line 698
    :try_start_3
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 701
    goto :goto_1

    .line 699
    :catch_2
    move-exception v3

    .line 694
    :cond_2
    :goto_1
    return v1

    .line 696
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_3

    .line 698
    :try_start_4
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 701
    goto :goto_3

    .line 699
    :catch_3
    move-exception v2

    .line 701
    :cond_3
    :goto_3
    throw v1
.end method

.method private checkLoopbackAddresses()V
    .locals 6

    .line 624
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 625
    .local v0, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    .line 627
    .local v1, "isLoopback":Z
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 628
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 630
    .local v4, "nodeAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-ne v5, v1, :cond_0

    .line 631
    goto :goto_0

    .line 633
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " the address associated with this node, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v5, "is "

    goto :goto_1

    :cond_1
    const-string v5, "is not "

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "a loopback address. It conflicts with an existing use, by a different node  of the address:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_2

    const-string v5, " which is a loopback address."

    goto :goto_2

    :cond_2
    const-string v5, " which is not a loopback address."

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Such mixing of addresses within a group is not allowed, since the nodes will not be able to communicate with each other."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 646
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "nodeAddress":Ljava/net/InetAddress;
    :cond_3
    return-void
.end method

.method private getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 3

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "reason":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v1

    .line 360
    .local v1, "exception":Ljava/lang/Exception;
    if-nez v1, :cond_0

    .line 361
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->NORMAL_SHUTDOWN:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    goto :goto_0

    .line 362
    :cond_0
    instance-of v2, v1, Lcom/sleepycat/je/rep/GroupShutdownException;

    if-eqz v2, :cond_1

    .line 363
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->MASTER_SHUTDOWN_GROUP:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->ABNORMAL_TERMINATION:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 368
    :goto_0
    return-object v0
.end method

.method private getSocket()Ljava/net/InetSocketAddress;
    .locals 3

    .line 707
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    .line 212
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->formatter:Ljava/util/logging/Formatter;

    .line 213
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 215
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 217
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 218
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;-><init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 220
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->start()V

    .line 222
    new-instance v0, Lcom/sleepycat/je/rep/stream/MasterStatus;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 223
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->changeListener:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;

    .line 224
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterHome:Ljava/io/File;

    .line 225
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00000000.adb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "dataFile":Ljava/io/File;
    new-instance v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    invoke-direct {v2, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    .line 228
    new-instance v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;

    invoke-direct {v2, p0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    .line 230
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->getCachedNodeId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    new-instance v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 232
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    .line 233
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->getCachedNodeId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->groupName:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    .line 237
    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->monitorEventManager:Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;

    .line 238
    return-void
.end method

.method private queryGroupForMembership()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->checkLoopbackAddresses()V

    .line 559
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->getLearner()Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V

    .line 567
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    .line 568
    .local v0, "groupMasterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/InterruptedException;
    nop

    .line 584
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 588
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->checkGroupMasterIsAlive(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    nop

    .line 598
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " located master: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 600
    return-void

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdownOrInvalid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 596
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 594
    :cond_2
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "Arbiter node shutting down."

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    .end local v0    # "groupMasterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :cond_3
    nop

    .line 561
    const-string v0, "Need a helper to add a new node into the group"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private utilityServicesShutdown()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->binaryStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error shutting down binaryStateService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nodeStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    if-eqz v0, :cond_1

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "NodeState"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    goto :goto_1

    .line 422
    :catch_1
    move-exception v0

    .line 423
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error canceling serviceDispatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private utilityServicesStart()V
    .locals 2

    .line 400
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nodeStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    .line 401
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 403
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->binaryStateService:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 405
    return-void
.end method


# virtual methods
.method public getArbState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    return-object v0
.end method

.method getChannelTimeoutTask()Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    return-object v0
.end method

.method public getElections()Lcom/sleepycat/je/rep/elections/Elections;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    return-object v0
.end method

.method getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->cachedRepGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method getGroupName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 751
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 753
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 754
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 753
    :goto_0
    return-object v2
.end method

.method getJoinGroupTime()J
    .locals 2

    .line 532
    iget-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->joinGroupTime:J

    return-wide v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method getMasterName()Ljava/lang/String;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    return-object v0
.end method

.method getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method getNodeName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 766
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 769
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 771
    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 769
    :goto_0
    return v2
.end method

.method public getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    return-object v0
.end method

.method getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isShutdownOrInvalid()Z
    .locals 2

    .line 612
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 613
    return v1

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->wasInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->saveShutdownException(Ljava/lang/Exception;)V

    .line 617
    return v1

    .line 619
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterAcker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Arbiter"

    const-string v2, "Arbiter statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "arbStat":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 192
    .end local v0    # "arbStat":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 194
    .restart local v0    # "arbStat":Lcom/sleepycat/je/utilint/StatGroup;
    :goto_0
    new-instance v1, Lcom/sleepycat/je/utilint/StringStat;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_STATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/StringStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 195
    .local v1, "state":Lcom/sleepycat/je/utilint/StringStat;
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StringStat;->set(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    if-nez v2, :cond_1

    .line 198
    invoke-static {}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->loadEmptyStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    .line 199
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    :goto_1
    nop

    .line 201
    .local v2, "trackerStats":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 203
    return-object v0
.end method

.method notifyJoinGroup()V
    .locals 2

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->joinGroupTime:J

    .line 528
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->monitorEventManager:Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->notifyJoinGroup()V

    .line 529
    return-void
.end method

.method refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 506
    .local v0, "repGroupImpl":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/elections/Elections;->updateRepGroupOnly(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 507
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 509
    .local v1, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v1, :cond_0

    .line 510
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 511
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->writeNodeId(I)V

    .line 514
    .end local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 515
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 516
    .local v1, "helpers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllHelperSockets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 517
    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    .line 518
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->cachedRepGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 519
    return-object v0
.end method

.method public refreshHelperHosts()V
    .locals 2

    .line 491
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 492
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHelperSockets()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 493
    .local v0, "helpers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->cachedRepGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllHelperSockets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 496
    :cond_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    .line 497
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->setHelperSockets(Ljava/util/Set;)V

    .line 500
    :cond_1
    return-void
.end method

.method public resetReadyLatch(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 736
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 737
    .local v0, "old":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 738
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V

    .line 742
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 286
    const-string v0, "Unexpected exception during shutdown"

    const-string v1, "Arbiter shutdown exception:\n"

    const-string v2, "Arbiter main thread shutting down."

    const-string v3, "Node state at shutdown:\n"

    const/4 v4, 0x0

    .line 288
    .local v4, "repNodeError":Ljava/lang/Error;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdownOrInvalid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->queryGroupForMembership()V

    .line 290
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->sync()V

    .line 291
    new-instance v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v5, p0, v6}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterAcker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 292
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->runArbiterAckLoop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    if-nez v4, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 326
    .local v2, "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_1

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 329
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 334
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 338
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :goto_2
    nop

    .line 346
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->setState(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 347
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->cleanup()V

    .line 348
    .end local v2    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_6

    .line 339
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 341
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 344
    throw v1

    .line 319
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4

    .line 315
    :catchall_0
    move-exception v5

    goto/16 :goto_7

    .line 309
    :catch_1
    move-exception v5

    .line 310
    .local v5, "e":Ljava/lang/Error;
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " incurred during arbiter loop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 312
    move-object v4, v5

    .line 313
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v5    # "e":Ljava/lang/Error;
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    nop

    .line 319
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4

    .line 304
    :catch_2
    move-exception v5

    .line 305
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Arbiter main thread sees runtime ex - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->saveShutdownException(Ljava/lang/Exception;)V

    .line 308
    nop

    .end local v4    # "repNodeError":Ljava/lang/Error;
    throw v5

    .line 302
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "repNodeError":Ljava/lang/Error;
    :catch_3
    move-exception v5

    .line 303
    .local v5, "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->saveShutdownException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .end local v5    # "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    if-nez v4, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 326
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_3

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 329
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_3

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 334
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 338
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V
    :try_end_4
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 339
    :catch_4
    move-exception v1

    .line 340
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 341
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 344
    throw v1

    .line 319
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4

    .line 298
    :catch_5
    move-exception v5

    .line 299
    .local v5, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    :try_start_5
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->saveShutdownException(Ljava/lang/Exception;)V

    .line 300
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Arbiter main thread sees group shutdown - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 315
    .end local v5    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    if-nez v4, :cond_6

    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 326
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_5

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 329
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_4

    .line 331
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 334
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 338
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V
    :try_end_6
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    .line 339
    :catch_6
    move-exception v1

    .line 340
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 341
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 344
    throw v1

    .line 319
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4

    .line 294
    :catch_7
    move-exception v5

    .line 295
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_7
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v8, "Arbiter main thread interrupted -  forced shutdown."

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 315
    .end local v5    # "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    if-nez v4, :cond_8

    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 326
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_7

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 329
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 334
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v3, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 338
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V
    :try_end_8
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 349
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_6
    return-void

    .line 339
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_8
    move-exception v1

    .line 340
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 341
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 344
    throw v1

    .line 319
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4

    .line 315
    :goto_7
    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v6, v7, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    if-nez v4, :cond_a

    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    .line 326
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-nez v2, :cond_9

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 329
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v6, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_8

    .line 331
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 334
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v3, v6, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 338
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V
    :try_end_9
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_9 .. :try_end_9} :catch_9

    .line 345
    nop

    .line 346
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->setState(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 347
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->cleanup()V

    .line 348
    .end local v2    # "exception":Ljava/lang/Throwable;
    throw v5

    .line 339
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_9
    move-exception v1

    .line 340
    .restart local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils;->chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 341
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 344
    throw v1

    .line 319
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 321
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 322
    throw v4
.end method

.method public runArbiter()V
    .locals 5

    .line 242
    new-instance v0, Lcom/sleepycat/je/rep/elections/Elections;

    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->changeListener:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/Elections;-><init>(Lcom/sleepycat/je/rep/elections/ElectionsConfig;Lcom/sleepycat/je/rep/elections/Learner$Listener;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 246
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->startLearner()V

    .line 247
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->startAcceptor()V

    .line 249
    new-instance v0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->helperSockets:Ljava/util/Set;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repGroupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    .line 254
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->timer:Ljava/util/Timer;

    .line 255
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->timer:Ljava/util/Timer;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    .line 257
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->utilityServicesStart()V

    .line 259
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->start()V

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 262
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    .line 264
    .local v0, "timeout":I
    if-nez v0, :cond_0

    .line 265
    const v0, 0x7fffffff

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v1

    int-to-long v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->awaitOrException(JLjava/util/concurrent/TimeUnit;)Z

    .line 276
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arbiter started in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public setState(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V
    .locals 2
    .param p1, "state"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNodeState()Lcom/sleepycat/je/rep/impl/node/NodeState;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/rep/impl/node/NodeState;->changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 396
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 431
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 432
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 433
    return-void

    .line 437
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->monitorEventManager:Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/MonitorEventManager;->notifyLeaveGroup(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error shutting down monitor event manager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 441
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 444
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->utilityServicesShutdown()V

    .line 446
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterAcker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    if-eqz v2, :cond_1

    .line 448
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    goto :goto_1

    .line 449
    :catch_1
    move-exception v2

    .line 450
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error shutting down ArbiterAcker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 456
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    if-eqz v2, :cond_2

    .line 458
    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 463
    goto :goto_2

    .line 459
    :catch_2
    move-exception v2

    .line 460
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error shutting down elections "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 465
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->shutdown()V

    .line 468
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shutdown completed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    const/4 v3, 0x0

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sleepycat/je/rep/stream/MasterStatus;->setGroupMaster(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 471
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->readyLatch:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V

    .line 472
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->arbiterVLSNTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->close()V

    .line 474
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->cancel()Z

    .line 475
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 476
    return-void
.end method

.method updateNameIdPair(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 523
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 524
    return-void
.end method
