.class public Lcom/sleepycat/je/rep/ReplicationConfig;
.super Lcom/sleepycat/je/rep/ReplicationMutableConfig;
.source "ReplicationConfig.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/RepConfigProxy;


# static fields
.field public static final ALLOW_UNKNOWN_STATE_ENV_OPEN:Ljava/lang/String; = "je.rep.allowUnknownStateEnvOpen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARBITER_ACK_TIMEOUT:Ljava/lang/String; = "je.rep.arbiterAckTimeout"

.field public static final ARBITER_OUTPUT_QUEUE_SIZE:Ljava/lang/String; = "je.rep.arbiterOutputQueueSize"

.field public static final ARBITER_USE:Ljava/lang/String; = "je.rep.arbiterUse"

.field public static final BIND_INADDR_ANY:Ljava/lang/String; = "je.rep.bindInaddrAny"

.field public static final CONSISTENCY_POLICY:Ljava/lang/String; = "je.rep.consistencyPolicy"

.field public static final DEFAULT:Lcom/sleepycat/je/rep/ReplicationConfig;

.field public static final DEFAULT_PORT:Ljava/lang/String; = "je.rep.defaultPort"

.field public static final ELECTIONS_PRIMARY_RETRIES:Ljava/lang/String; = "je.rep.electionsPrimaryRetries"

.field public static final ELECTIONS_REBROADCAST_PERIOD:Ljava/lang/String; = "je.rep.electionsRebroadcastPeriod"

.field public static final ENV_CONSISTENCY_TIMEOUT:Ljava/lang/String; = "je.rep.envConsistencyTimeout"

.field public static final ENV_SETUP_TIMEOUT:Ljava/lang/String; = "je.rep.envSetupTimeout"

.field public static final ENV_UNKNOWN_STATE_TIMEOUT:Ljava/lang/String; = "je.rep.envUnknownStateTimeout"

.field public static final FEEDER_TIMEOUT:Ljava/lang/String; = "je.rep.feederTimeout"

.field public static final GROUP_NAME:Ljava/lang/String; = "je.rep.groupName"

.field public static final HELPER_HOSTS:Ljava/lang/String; = "je.rep.helperHosts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSUFFICIENT_REPLICAS_TIMEOUT:Ljava/lang/String; = "je.rep.insufficientReplicasTimeout"

.field public static final MAX_CLOCK_DELTA:Ljava/lang/String; = "je.rep.maxClockDelta"

.field public static final MAX_MESSAGE_SIZE:Ljava/lang/String; = "je.rep.maxMessageSize"

.field public static final NODE_HOST_PORT:Ljava/lang/String; = "je.rep.nodeHostPort"

.field public static final NODE_NAME:Ljava/lang/String; = "je.rep.nodeName"

.field public static final NODE_TYPE:Ljava/lang/String; = "je.rep.nodeType"

.field public static final PROTOCOL_OLD_STRING_ENCODING:Ljava/lang/String; = "je.rep.protocolOldStringEncoding"

.field public static final REPLAY_COST_PERCENT:Ljava/lang/String; = "je.rep.replayCostPercent"

.field public static final REPLAY_DB_HANDLE_TIMEOUT:Ljava/lang/String; = "je.rep.replayOpenHandleTimeout"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLAY_FREE_DISK_PERCENT:Ljava/lang/String; = "je.rep.replayFreeDiskPercent"

.field public static final REPLAY_MAX_OPEN_DB_HANDLES:Ljava/lang/String; = "je.rep.replayMaxOpenDbHandles"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLAY_TXN_LOCK_TIMEOUT:Ljava/lang/String; = "je.rep.replayTxnLockTimeout"

.field public static final REPLICA_ACK_TIMEOUT:Ljava/lang/String; = "je.rep.replicaAckTimeout"

.field public static final REPLICA_GROUP_COMMIT_INTERVAL:Ljava/lang/String; = "je.rep.replicaGroupCommitInterval"

.field public static final REPLICA_MAX_GROUP_COMMIT:Ljava/lang/String; = "je.rep.replicaMaxGroupCommit"

.field public static final REPLICA_RECEIVE_BUFFER_SIZE:Ljava/lang/String; = "je.rep.replicaReceiveBufferSize"

.field public static final REPLICA_TIMEOUT:Ljava/lang/String; = "je.rep.replicaTimeout"

.field public static final REP_STREAM_TIMEOUT:Ljava/lang/String; = "je.rep.repStreamTimeout"

.field public static final TXN_ROLLBACK_DISABLED:Ljava/lang/String; = "je.rep.txnRollbackDisabled"

.field public static final TXN_ROLLBACK_LIMIT:Ljava/lang/String; = "je.rep.txnRollbackLimit"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allowConvert:Z

.field private transient authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

.field private transient feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field private transient logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

.field private repNetConfig:Ljava/lang/Object;

.field private transient syncupProgressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/rep/SyncupProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1210
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationConfig;->DEFAULT:Lcom/sleepycat/je/rep/ReplicationConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1249
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;-><init>()V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    .line 1231
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    .line 1250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "hostPort"    # Ljava/lang/String;

    .line 1272
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;-><init>()V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    .line 1231
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    .line 1273
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1274
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1275
    invoke-virtual {p0, p3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1276
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1291
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;-><init>(Ljava/util/Properties;Z)V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    .line 1231
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    .line 1292
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->propagateRepNetProps()V

    .line 1293
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Z)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "validateParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1301
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;-><init>(Ljava/util/Properties;Z)V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    .line 1231
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    .line 1302
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->propagateRepNetProps()V

    .line 1303
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 2

    .line 1677
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1678
    .local v0, "copy":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    return-object v0

    .line 1680
    .end local v0    # "copy":Lcom/sleepycat/je/rep/ReplicationConfig;
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->clone()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v0

    return-object v0
.end method

.method getAllowConvert()Z
    .locals 1

    .line 1354
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    return v0
.end method

.method public getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    return-object v0
.end method

.method public getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 2

    .line 1609
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CONSISTENCY_POLICY:Lcom/sleepycat/je/config/ConfigParam;

    .line 1610
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "propertyValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->getReplicaConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v1

    return-object v1
.end method

.method public getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getHelperHosts()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getSockets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLogFileRewriteListener()Lcom/sleepycat/je/rep/LogFileRewriteListener;
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

    return-object v0
.end method

.method public getMaxClockDelta(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1531
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_CLOCK_DELTA:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNodeHostPort()Ljava/lang/String;
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeHostname()Ljava/lang/String;
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    .line 1770
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1773
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 1774
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 1773
    :goto_0
    return-object v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodePort()I
    .locals 4

    .line 1783
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    .line 1784
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1787
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1788
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1789
    invoke-static {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 1791
    .local v2, "portString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getNodeSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1760
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodePort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 3

    .line 1422
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    .line 1423
    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/EnumConfigParam;->getEnumerator(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/NodeType;

    .line 1422
    return-object v0
.end method

.method public getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    return-object v0
.end method

.method public getReplicaAckTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1496
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1497
    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 1496
    return-wide v0
.end method

.method public getSyncupProgressListener()Lcom/sleepycat/je/ProgressListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/rep/SyncupProgress;",
            ">;"
        }
    .end annotation

    .line 1829
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->syncupProgressListener:Lcom/sleepycat/je/ProgressListener;

    return-object v0
.end method

.method propagateRepNetProps()V
    .locals 5

    .line 1695
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    .line 1696
    .local v0, "rnConfig":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    if-nez v0, :cond_0

    .line 1697
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    invoke-static {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/util/Properties;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1698
    return-void

    .line 1707
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getProps()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 1708
    .local v1, "combProps":Ljava/util/Properties;
    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1709
    .local v3, "propName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1710
    .end local v3    # "propName":Ljava/lang/String;
    goto :goto_0

    .line 1716
    :cond_1
    nop

    .line 1717
    invoke-static {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/util/Properties;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v2

    .line 1724
    .local v2, "newRepNetConfig":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 1725
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->applyRepNetProperties(Ljava/util/Properties;)V

    goto :goto_1

    .line 1727
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 1729
    :goto_1
    return-void
.end method

.method setAllowConvert(Z)V
    .locals 0
    .param p1, "allowConvert"    # Z

    .line 1367
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->allowConvert:Z

    .line 1368
    return-void
.end method

.method public setAuthenticator(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "authenticator"    # Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 1892
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setAuthenticatorVoid(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V

    .line 1893
    return-object p0
.end method

.method public setAuthenticatorVoid(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V
    .locals 0
    .param p1, "authenticator"    # Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 1904
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 1905
    return-void
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 8
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1619
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getRepNetPropertySet()Ljava/util/Set;

    move-result-object v0

    .line 1620
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    goto :goto_0

    .line 1623
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 1631
    :goto_0
    return-object p0
.end method

.method public bridge synthetic setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "policy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 1581
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConsistencyPolicyVoid(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 1582
    return-object p0
.end method

.method public setConsistencyPolicyVoid(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 4
    .param p1, "policy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 1591
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CONSISTENCY_POLICY:Lcom/sleepycat/je/config/ConfigParam;

    .line 1593
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->getPropertyString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    .line 1591
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1595
    return-void
.end method

.method public setFeederFilter(Lcom/sleepycat/je/rep/stream/FeederFilter;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "feederFilter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 1868
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setFeederFilterVoid(Lcom/sleepycat/je/rep/stream/FeederFilter;)V

    .line 1869
    return-object p0
.end method

.method public setFeederFilterVoid(Lcom/sleepycat/je/rep/stream/FeederFilter;)V
    .locals 0
    .param p1, "feederFilter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 1874
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 1875
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1329
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupNameVoid(Ljava/lang/String;)V

    .line 1330
    return-object p0
.end method

.method public setGroupNameVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1342
    return-void
.end method

.method public setLogFileRewriteListener(Lcom/sleepycat/je/rep/LogFileRewriteListener;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "listener"    # Lcom/sleepycat/je/rep/LogFileRewriteListener;

    .line 1839
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setLogFileRewriteListenerVoid(Lcom/sleepycat/je/rep/LogFileRewriteListener;)V

    .line 1840
    return-object p0
.end method

.method public setLogFileRewriteListenerVoid(Lcom/sleepycat/je/rep/LogFileRewriteListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sleepycat/je/rep/LogFileRewriteListener;

    .line 1848
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

    .line 1849
    return-void
.end method

.method public setMaxClockDelta(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "maxClockDelta"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1552
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setMaxClockDeltaVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 1553
    return-object p0
.end method

.method public setMaxClockDeltaVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "maxClockDelta"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1563
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_CLOCK_DELTA:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 1565
    return-void
.end method

.method public setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "hostPort"    # Ljava/lang/String;

    .line 1477
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPortVoid(Ljava/lang/String;)V

    .line 1478
    return-object p0
.end method

.method public setNodeHostPortVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostPort"    # Ljava/lang/String;

    .line 1486
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1488
    return-void
.end method

.method public setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1401
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeNameVoid(Ljava/lang/String;)V

    .line 1402
    return-object p0
.end method

.method public setNodeNameVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1414
    return-void
.end method

.method public setNodeType(Lcom/sleepycat/je/rep/NodeType;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;

    .line 1434
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeTypeVoid(Lcom/sleepycat/je/rep/NodeType;)V

    .line 1435
    return-object p0
.end method

.method public setNodeTypeVoid(Lcom/sleepycat/je/rep/NodeType;)V
    .locals 4
    .param p1, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;

    .line 1443
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    .line 1444
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/NodeType;->name()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1445
    return-void
.end method

.method public setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 1656
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 1657
    return-object p0
.end method

.method public setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 2
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 1665
    if-eqz p1, :cond_0

    .line 1668
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->repNetConfig:Ljava/lang/Object;

    .line 1669
    return-void

    .line 1666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "netConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplicaAckTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .param p1, "replicaAckTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1509
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setReplicaAckTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 1510
    return-object p0
.end method

.method public setReplicaAckTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "replicaAckTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1519
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->validateParams:Z

    .line 1520
    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 1522
    return-void
.end method

.method public setSyncupProgressListener(Lcom/sleepycat/je/ProgressListener;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/rep/SyncupProgress;",
            ">;)",
            "Lcom/sleepycat/je/rep/ReplicationConfig;"
        }
    .end annotation

    .line 1812
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/rep/SyncupProgress;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setSyncupProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V

    .line 1813
    return-object p0
.end method

.method public setSyncupProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/rep/SyncupProgress;",
            ">;)V"
        }
    .end annotation

    .line 1822
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/rep/SyncupProgress;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationConfig;->syncupProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 1823
    return-void
.end method

.method public verify()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1928
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1932
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1936
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1939
    return-void

    .line 1937
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing node host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing node name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1929
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing group name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
