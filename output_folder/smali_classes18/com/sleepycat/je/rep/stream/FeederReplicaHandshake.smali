.class public Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;
.super Ljava/lang/Object;
.source "FeederReplicaHandshake.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static testCurrentLogVersion:I


# instance fields
.field private final GROUP_RETRY:I

.field private final GROUP_RETRY_SLEEP_MS:J

.field private final feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final logger:Ljava/util/logging/Logger;

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

.field private replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private volatile replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

.field private streamLogVersion:I

.field private final writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    nop

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->testCurrentLogVersion:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "feeder"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p3, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->GROUP_RETRY:I

    .line 56
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->GROUP_RETRY_SLEEP_MS:J

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 103
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 104
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 105
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    .line 107
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getWriteMessageHook()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 108
    return-void
.end method

.method private checkClockSkew(Lcom/sleepycat/je/rep/stream/Protocol;)V
    .locals 2
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    .line 318
    .local v0, "request":Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;
    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)V

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 319
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    return-void

    .line 319
    :cond_0
    goto :goto_0
.end method

.method private checkJECompatibility(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;)Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;
    .locals 6
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "jeVersions"    # Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;

    .line 179
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getLogVersion()B

    move-result v0

    .line 180
    .local v0, "replicaLogVersion":I
    const-string v1, ", Replica JE version: "

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 181
    new-instance v2, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incompatible log versions. Feeder log version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentLogVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Feeder JE version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Replica log version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    .line 181
    return-object v2

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    .line 190
    .local v2, "minJEVersion":Lcom/sleepycat/je/JEVersion;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v3

    if-lez v3, :cond_1

    .line 191
    new-instance v3, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported JE version. Feeder JE version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Feeder min JE version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    .line 191
    return-object v3

    .line 198
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private doGroupChecks(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 3
    .param p1, "nodeGroup"    # Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .param p2, "group"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->isDesignatedPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 460
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isDesignatedPrimary()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting Primary designations. Feeder node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 463
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and replica node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot simultaneously be designated primaries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->isUnknownUUID(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 477
    :cond_2
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The environments have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but represent different environment instances. The environment at the master has UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while the replica "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 483
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_3
    :goto_1
    return-void

    .line 469
    :cond_4
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The feeder belongs to the group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but replica id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " belongs to the group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 472
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doNodeChecks(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 5
    .param p1, "nodeGroup"    # Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 498
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " Replica is configured to use: "

    if-eqz v0, :cond_4

    .line 507
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port()I

    move-result v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v2

    const-string v3, " Feeder thinks it uses: "

    if-ne v0, v2, :cond_3

    .line 514
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->SECONDARY:Lcom/sleepycat/je/rep/NodeType;

    .line 515
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->EXTERNAL:Lcom/sleepycat/je/rep/NodeType;

    .line 516
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ARBITER:Lcom/sleepycat/je/rep/NodeType;

    .line 517
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->MONITOR:Lcom/sleepycat/je/rep/NodeType;

    .line 518
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The replica node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/NodeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 531
    return-void

    .line 525
    :cond_2
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting node types for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Replica is configured as type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_3
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting ports for replica id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 510
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 511
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_4
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting hostnames for replica id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Feeder thinks it is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 502
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentLogVersion()I
    .locals 1

    .line 128
    sget v0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->testCurrentLogVersion:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0
.end method

.method private getCurrentProtocolVersion()I
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getJEVersionProtocolVersion(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    return v0
.end method

.method private maybeUpdateJEVersion(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 3
    .param p1, "nodeGroup"    # Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .param p2, "group"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p3, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 547
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/JEVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepGroupDB()Lcom/sleepycat/je/rep/impl/RepGroupDB;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->updateMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/InsufficientReplicasException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/LockTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 562
    .end local v0    # "e":Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 570
    :cond_0
    :goto_0
    return-void
.end method

.method private negotiateProtocol()Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 585
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentProtocolVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->getProtocol(Lcom/sleepycat/je/rep/impl/node/RepNode;I)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    .line 591
    .local v0, "defaultProtocol":Lcom/sleepycat/je/rep/stream/Protocol;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 592
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;

    .line 594
    .local v1, "message":Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 596
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 597
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getFeeder(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/Feeder;

    move-result-object v2

    .line 613
    .local v2, "dup":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getChannel()Ljava/nio/channels/Channel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 614
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getChannel()Ljava/nio/channels/Channel;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 615
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feeder\'s channel for node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getFeeder(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/Feeder;

    move-result-object v2

    .line 622
    if-nez v2, :cond_2

    .line 623
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 624
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 644
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;->getVersion()I

    move-result v3

    .line 645
    .local v3, "replicaVersion":I
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 646
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentProtocolVersion()I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/node/RepNode;II)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v4

    .line 647
    .local v4, "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    if-nez v4, :cond_1

    .line 648
    move-object v4, v0

    .line 650
    :cond_1
    new-instance v5, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;I)V

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 653
    return-object v4

    .line 626
    .end local v3    # "replicaVersion":I
    .end local v4    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already in active use at the feeder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 630
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 631
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/je/rep/net/DataChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 633
    .local v3, "dupAddress":Ljava/net/SocketAddress;
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A replica with the id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already active with this feeder.  The duplicate replica resides at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static setTestLogVersion(I)V
    .locals 0
    .param p0, "testLogVersion"    # I

    .line 146
    sput p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->testCurrentLogVersion:I

    .line 147
    return-void
.end method

.method private verifyMembershipInfo(Lcom/sleepycat/je/rep/stream/Protocol;)V
    .locals 8
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 337
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;

    check-cast v0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;

    .line 338
    .local v0, "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    .line 339
    .local v1, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    .line 343
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeId()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 351
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 358
    if-nez v2, :cond_8

    .line 361
    new-instance v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {v3, v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v2, v3

    .line 363
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->addTransientIdNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_1 .. :try_end_1} :catch_7

    .line 366
    goto/16 :goto_6

    .line 364
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    invoke-direct {v5, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/Throwable;Z)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v5
    :try_end_2
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_2 .. :try_end_2} :catch_7

    .line 368
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_0
    const-string v3, "Node: "

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_6

    .line 414
    :cond_2
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is no longer a member of the group. It was explicitly removed."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v4

    .line 370
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 371
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getArbiterMembers()Ljava/util/Set;

    move-result-object v5

    .line 372
    .local v5, "arbMembers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-gtz v6, :cond_4

    goto :goto_2

    .line 373
    :cond_4
    new-instance v3, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    const-string v4, "An Arbiter node already exists in the replication group."

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v3
    :try_end_3
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_3 .. :try_end_3} :catch_7

    .line 387
    .end local v5    # "arbMembers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_5
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepGroupDB()Lcom/sleepycat/je/rep/impl/RepGroupDB;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->ensureMember(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V

    .line 388
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/16 v6, 0x3c

    if-ge v5, v6, :cond_7

    .line 389
    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 390
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v6

    .line 391
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v6
    :try_end_4
    .catch Lcom/sleepycat/je/rep/InsufficientReplicasException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/sleepycat/je/LockTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v2, v6

    .line 392
    if-eqz v2, :cond_6

    .line 393
    goto :goto_5

    .line 396
    :cond_6
    const-wide/16 v6, 0x3e8

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sleepycat/je/rep/InsufficientReplicasException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/sleepycat/je/LockTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_5 .. :try_end_5} :catch_7

    .line 399
    goto :goto_4

    .line 397
    :catch_2
    move-exception v6

    .line 388
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 401
    .end local v5    # "i":I
    :cond_7
    :goto_5
    if-eqz v2, :cond_9

    .line 412
    nop

    .line 420
    :cond_8
    :goto_6
    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->doGroupChecks(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 421
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->doNodeChecks(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 422
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->maybeUpdateJEVersion(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    :try_end_6
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_6 .. :try_end_6} :catch_7

    .line 436
    nop

    .line 439
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 440
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->setNameIdPair(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 441
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel Mapping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 443
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 444
    new-instance v3, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v3, p1, v4, v5}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/util/UUID;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 444
    invoke-direct {p0, p1, v3}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 447
    return-void

    .line 402
    :cond_9
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v3
    :try_end_7
    .catch Lcom/sleepycat/je/rep/InsufficientReplicasException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sleepycat/je/LockTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_7 .. :try_end_7} :catch_7

    .line 410
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :catch_3
    move-exception v3

    .line 411
    .local v3, "e":Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
    :try_start_8
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    invoke-direct {v5, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/Throwable;Z)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v5

    .line 406
    .end local v3    # "e":Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :catch_4
    move-exception v3

    goto :goto_7

    :catch_5
    move-exception v3

    goto :goto_7

    :catch_6
    move-exception v3

    .line 409
    .local v3, "e":Lcom/sleepycat/je/OperationFailureException;
    :goto_7
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/Throwable;Z)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v4

    .line 344
    .end local v3    # "e":Lcom/sleepycat/je/OperationFailureException;
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_a
    new-instance v3, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The replica node ID sent during protocol negotiation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " differs from the one sent in the MembershipInfo request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .end local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    throw v3
    :try_end_8
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_8 .. :try_end_8} :catch_7

    .line 423
    .restart local v0    # "nodeGroup":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .restart local v1    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :catch_7
    move-exception v3

    .line 424
    .local v3, "exception":Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 425
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->failReplica()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 431
    new-instance v4, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1, v4}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 435
    :cond_b
    throw v3
.end method

.method private writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V
    .locals 1
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0, p2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {p1, p2, v0}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 305
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public execute()Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    const-string v2, "Feeder-replica handshake start"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->negotiateProtocol()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    .line 248
    .local v0, "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Replica "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 250
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Versions JE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    .line 252
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    .line 253
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->getLogVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "versionMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    .line 257
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->checkJECompatibility(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;)Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    move-result-object v2

    .line 259
    .local v2, "reject":Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;
    if-nez v2, :cond_0

    .line 272
    nop

    .line 273
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentLogVersion()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->getLogVersion()B

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->streamLogVersion:I

    .line 275
    new-instance v3, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->streamLogVersion:I

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 279
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;ILcom/sleepycat/je/JEVersion;)V

    .line 275
    invoke-direct {p0, v0, v3}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 282
    iget v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->streamLogVersion:I

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/rep/stream/Protocol;->setStreamLogVersion(I)V

    .line 285
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->verifyMembershipInfo(Lcom/sleepycat/je/rep/stream/Protocol;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->checkClockSkew(Lcom/sleepycat/je/rep/stream/Protocol;)V

    .line 288
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 289
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Feeder-replica "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 290
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handshake completed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Stream Log: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getStreamLogVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 295
    return-object v0

    .line 260
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version incompatibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with replica "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 262
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->writeMessage(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    .line 265
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;

    invoke-direct {v4, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getReplicaJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0
.end method

.method public getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Handshake did not complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamLogVersion()I
    .locals 2

    .line 138
    iget v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->streamLogVersion:I

    if-lez v0, :cond_0

    .line 142
    return v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "execute() method was not invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
