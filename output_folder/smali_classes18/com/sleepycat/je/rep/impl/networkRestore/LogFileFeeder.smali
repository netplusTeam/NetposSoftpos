.class public Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "LogFileFeeder.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x493e0

.field static final TRANSFER_BYTES:I = 0x2000


# instance fields
.field private clientId:I

.field private dbBackup:Lcom/sleepycat/je/util/DbBackup;

.field private final feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

.field private final logger:Ljava/util/logging/Logger;

.field final messageDigest:Ljava/security/MessageDigest;

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 4
    .param p1, "feederManager"    # Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    const-string v1, "Log File Feeder"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    .line 100
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 101
    iget-object v0, p1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lcom/sleepycat/je/rep/utilint/NamedChannel;

    iget-object v1, p1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/je/rep/utilint/NamedChannel;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 105
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    const-string v3, "The SHA1 algorithm was not made available by the security provider"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private checkFeeder(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoReq;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 215
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getActiveFeederCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 217
    .local v0, "feeders":I
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 218
    .local v1, "rangeFirst":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 219
    .local v2, "rangeLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    instance-of v3, v3, Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 222
    .local v3, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    nop

    .line 223
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicaCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 224
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v4

    .line 225
    .local v4, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 226
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 228
    .end local v3    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v4    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {p1, v3, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 230
    return-void
.end method

.method private checkProtocol(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .locals 8
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 480
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;

    .line 482
    .local v0, "clientVersion":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;->getNodeId()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    .line 483
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    iget v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    .line 484
    .local v1, "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->terminate()Lcom/sleepycat/je/util/DbBackup;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v2, v2, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->feeders:Ljava/util/Map;

    iget v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;

    .line 488
    .local v2, "prev":Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;
    if-eqz v2, :cond_1

    .line 489
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 490
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/je/rep/net/DataChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 491
    .local v3, "prevFeederAddress":Ljava/net/SocketAddress;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log file feeder with client id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already present; originated from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new connection originated from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 496
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v7

    invoke-interface {v7}, Lcom/sleepycat/je/rep/net/DataChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 499
    .end local v3    # "prevFeederAddress":Ljava/net/SocketAddress;
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;->getVersion()I

    move-result v3

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client requested protocol version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 501
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the server version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 502
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 510
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {p1, v3, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 515
    return-object p1
.end method

.method private configureChannel()Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 525
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log File Feeder accepted connection from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 533
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 534
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    return-object v0
.end method

.method static getSHA1Digest(Ljava/io/File;J)Ljava/security/MessageDigest;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    .line 340
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 343
    nop

    .line 344
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v1, "fileStream":Ljava/io/FileInputStream;
    const/16 v2, 0x2000

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 347
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-wide v3, p1

    .local v3, "bytes":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 348
    const-wide/16 v5, 0x2000

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 349
    .local v5, "readSize":I
    nop

    .line 350
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 351
    .local v6, "readBytes":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 355
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v0, v8, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 356
    int-to-long v7, v6

    sub-long/2addr v3, v7

    .line 357
    .end local v5    # "readSize":I
    .end local v6    # "readBytes":I
    goto :goto_0

    .line 352
    .restart local v5    # "readSize":I
    .restart local v6    # "readBytes":I
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Premature EOF. Was expecting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "length":J
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "bytes":J
    .end local v5    # "readSize":I
    .end local v6    # "readBytes":I
    .restart local v0    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "length":J
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 360
    nop

    .line 361
    return-object v0

    .line 359
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2

    .line 341
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private sendFileContents(Ljava/io/File;J)[B
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/sleepycat/je/utilint/LogVerifier;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 385
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LogVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)V

    .line 386
    .local v0, "verifier":Lcom/sleepycat/je/utilint/LogVerifier;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 389
    .local v1, "fileStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 390
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 391
    nop

    .line 392
    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 393
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    nop

    .line 394
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_0

    :cond_0
    new-array v3, v3, [B

    .line 395
    .local v3, "array":[B
    :goto_0
    const/4 v5, 0x0

    .line 398
    .local v5, "transmitBytes":I
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 399
    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, 0x0

    if-gez v6, :cond_2

    .line 400
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LogVerifier;->verifyAtEof()V

    .line 401
    nop

    .line 419
    int-to-long v8, v5

    cmp-long v6, v8, p2

    if-nez v6, :cond_1

    .line 427
    const-string v6, "Sent file: %s Length:%,d bytes to client:%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    const/4 v7, 0x1

    .line 429
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    iget v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    .line 428
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v3    # "array":[B
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "transmitBytes":I
    .end local v6    # "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 433
    nop

    .line 434
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 420
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "array":[B
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "transmitBytes":I
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match the number of bytes that were transmitted:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 424
    .restart local v6    # "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "verifier":Lcom/sleepycat/je/utilint/LogVerifier;
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "length":J
    throw v7

    .line 404
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v0    # "verifier":Lcom/sleepycat/je/utilint/LogVerifier;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "length":J
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 405
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 407
    .local v6, "lim":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 408
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    .local v7, "off":I
    goto :goto_2

    .line 410
    .end local v7    # "off":I
    :cond_3
    const/4 v8, 0x0

    .line 411
    .local v8, "off":I
    invoke-virtual {v4, v3, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move v7, v8

    .line 414
    .end local v8    # "off":I
    .restart local v7    # "off":I
    :goto_2
    invoke-virtual {v0, v3, v7, v6}, Lcom/sleepycat/je/utilint/LogVerifier;->verify([BII)V

    .line 415
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8, v3, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 416
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v5, v8

    .line 417
    .end local v6    # "lim":I
    .end local v7    # "off":I
    goto/16 :goto_1

    .line 432
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v3    # "array":[B
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "transmitBytes":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method private sendFileList(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListReq;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 448
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/sleepycat/je/util/DbBackup;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/DbBackup;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    .line 450
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->setNetworkRestore()V

    .line 451
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->startBackup()V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget v1, v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseRenewalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseRenewalCount:I

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->getLogFilesInBackupSet()[Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 463
    aget-object v2, v0, v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    aget-object v2, v0, v1

    aget-object v3, v0, v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 462
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 470
    return-void
.end method

.method private sendRequestedFiles(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V
    .locals 24
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 247
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const/4 v0, 0x0

    move-object v11, v0

    .line 251
    .local v11, "prevFileName":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    const-class v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;

    invoke-virtual {v10, v0, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;

    .line 253
    .local v0, "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->getFileName()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 260
    .local v12, "fileName":Ljava/lang/String;
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    move-object v13, v2

    .line 261
    .local v13, "fMgr":Lcom/sleepycat/je/log/FileManager;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v13, v12}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    .line 263
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v7, v2

    .line 269
    .local v7, "length":J
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-wide v15, v2

    .line 270
    .local v15, "lastModified":J
    const/4 v9, 0x0

    .line 271
    .local v9, "digest":[B
    const/16 v17, 0x0

    .line 272
    .local v17, "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v2, v2, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->statResponses:Ljava/util/Map;

    .line 273
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    move-object/from16 v18, v2

    .line 274
    .local v18, "cachedResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    if-eqz v18, :cond_0

    .line 276
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getFileLength()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    .line 277
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getLastModifiedTime()J

    move-result-wide v2

    cmp-long v2, v2, v15

    if-nez v2, :cond_0

    .line 278
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getDigestSHA1()[B

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object v5, v2

    .line 280
    .local v5, "cachedDigest":[B
    instance-of v2, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;

    if-eqz v2, :cond_3

    .line 281
    if-eqz v5, :cond_1

    .line 282
    move-object v2, v5

    move-object/from16 v19, v2

    .end local v9    # "digest":[B
    .local v2, "digest":[B
    goto :goto_2

    .line 283
    .end local v2    # "digest":[B
    .restart local v9    # "digest":[B
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->getNeedSHA1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-static {v14, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->getSHA1Digest(Ljava/io/File;J)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    move-object/from16 v19, v2

    .end local v9    # "digest":[B
    .restart local v2    # "digest":[B
    goto :goto_2

    .line 287
    .end local v2    # "digest":[B
    .restart local v9    # "digest":[B
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object/from16 v19, v2

    .line 289
    .end local v9    # "digest":[B
    .local v19, "digest":[B
    :goto_2
    new-instance v20, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v9, v5

    .end local v5    # "cachedDigest":[B
    .local v9, "cachedDigest":[B
    move-wide v5, v7

    move-wide/from16 v21, v7

    .end local v7    # "length":J
    .local v21, "length":J
    move-wide v7, v15

    move-object/from16 v23, v0

    move-object v0, v9

    .end local v9    # "cachedDigest":[B
    .local v0, "cachedDigest":[B
    .local v23, "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    move-object/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-wide/from16 v20, v21

    .end local v17    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .local v2, "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    goto/16 :goto_4

    .line 293
    .end local v2    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .end local v19    # "digest":[B
    .end local v21    # "length":J
    .end local v23    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    .local v0, "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    .restart local v5    # "cachedDigest":[B
    .restart local v7    # "length":J
    .local v9, "digest":[B
    .restart local v17    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    :cond_3
    move-object/from16 v23, v0

    move-object v0, v5

    move-wide/from16 v21, v7

    .end local v5    # "cachedDigest":[B
    .end local v7    # "length":J
    .local v0, "cachedDigest":[B
    .restart local v21    # "length":J
    .restart local v23    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    if-eqz v11, :cond_4

    .line 294
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 295
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v2, v11}, Lcom/sleepycat/je/util/DbBackup;->removeFileProtection(Ljava/lang/String;)V

    .line 297
    :cond_4
    move-object v11, v12

    .line 299
    new-instance v7, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v12

    move-wide/from16 v5, v21

    move-object/from16 v19, v9

    move-object v9, v7

    .end local v9    # "digest":[B
    .restart local v19    # "digest":[B
    move-wide v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ)V

    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v10, v9, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 302
    move-wide/from16 v7, v21

    .end local v21    # "length":J
    .restart local v7    # "length":J
    invoke-direct {v1, v14, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->sendFileContents(Ljava/io/File;J)[B

    move-result-object v2

    move-object v9, v2

    .line 303
    .end local v19    # "digest":[B
    .restart local v9    # "digest":[B
    if-eqz v0, :cond_6

    .line 304
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 305
    :cond_5
    const-string v2, "Inconsistent cached and computed digests"

    .line 306
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v11    # "prevFileName":Ljava/lang/String;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    throw v2

    .line 308
    .restart local v11    # "prevFileName":Ljava/lang/String;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    :cond_6
    :goto_3
    new-instance v19, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object v4, v12

    move-wide v5, v7

    move-wide/from16 v20, v7

    .end local v7    # "length":J
    .local v20, "length":J
    move-wide v7, v15

    move-object/from16 v22, v9

    .end local v9    # "digest":[B
    .local v22, "digest":[B
    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    .line 312
    .end local v17    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .end local v22    # "digest":[B
    .restart local v2    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .local v3, "digest":[B
    :goto_4
    array-length v4, v3

    if-lez v4, :cond_7

    .line 313
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->statResponses:Ljava/util/Map;

    invoke-interface {v4, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_7
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v10, v2, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 316
    .end local v0    # "cachedDigest":[B
    .end local v2    # "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .end local v3    # "digest":[B
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "fMgr":Lcom/sleepycat/je/log/FileManager;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "lastModified":J
    .end local v18    # "cachedResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .end local v20    # "length":J
    .end local v23    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    goto/16 :goto_0

    .line 264
    .local v0, "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v13    # "fMgr":Lcom/sleepycat/je/log/FileManager;
    .restart local v14    # "file":Ljava/io/File;
    :cond_8
    move-object/from16 v23, v0

    .end local v0    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    .restart local v23    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log file not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v11    # "prevFileName":Ljava/lang/String;
    .end local p1    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    throw v0
    :try_end_0
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "fMgr":Lcom/sleepycat/je/log/FileManager;
    .end local v14    # "file":Ljava/io/File;
    .end local v23    # "fileReq":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
    .restart local v11    # "prevFileName":Ljava/lang/String;
    .restart local p1    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getUnexpectedMessage()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    instance-of v2, v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;

    if-eqz v2, :cond_9

    .line 319
    return-void

    .line 321
    :cond_9
    throw v0
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 133
    const v0, 0x493e0

    return v0
.end method

.method public run()V
    .locals 12

    .line 143
    const-string v0, "Lease created for node: "

    const-string v1, " exited"

    const-string v2, "Log file feeder for client: "

    const-string v3, "Log File feeder io exception on channel close: "

    new-instance v4, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 145
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v4, v5, v7, v6}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 147
    .local v4, "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->configureChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    .line 148
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->checkProtocol(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    move-result-object v5

    move-object v4, v5

    .line 149
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->checkFeeder(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    .line 150
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->sendFileList(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    .line 151
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->sendRequestedFiles(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    .line 154
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v5}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    .line 155
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    goto :goto_0

    .line 174
    :catch_0
    move-exception v5

    .line 175
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v6, v7, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 179
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 181
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    goto :goto_1

    .line 191
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-wide v8, v5, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V

    .line 195
    .local v3, "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    .end local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 200
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    .line 172
    :catchall_0
    move-exception v5

    goto/16 :goto_9

    .line 166
    :catch_1
    move-exception v5

    .line 167
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 168
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local v4    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    throw v6

    .line 163
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "protocol":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    :catch_2
    move-exception v5

    .line 164
    .local v5, "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Protocol Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 165
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v5    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_3
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 178
    goto :goto_2

    .line 174
    :catch_3
    move-exception v5

    .line 175
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v6, v7, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 179
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 181
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    goto :goto_3

    .line 191
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-wide v8, v5, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V

    .line 195
    .restart local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    .end local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 200
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    .line 160
    :catch_4
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_4
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " IO Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 162
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_5
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 178
    goto :goto_4

    .line 174
    :catch_5
    move-exception v5

    .line 175
    .restart local v5    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v6, v7, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 179
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 181
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v3, :cond_5

    .line 182
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    goto :goto_5

    .line 191
    :cond_4
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-wide v8, v5, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V

    .line 195
    .restart local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    .end local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 200
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    .line 156
    :catch_6
    move-exception v5

    .line 157
    .local v5, "e":Ljava/nio/channels/ClosedByInterruptException;
    :try_start_6
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 158
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    const-string v8, "Ignoring ClosedByInterruptException normal shutdown"

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    .end local v5    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :try_start_7
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 178
    goto :goto_6

    .line 174
    :catch_7
    move-exception v5

    .line 175
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v6, v7, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 179
    .end local v5    # "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 181
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v3, :cond_7

    .line 182
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    goto :goto_7

    .line 191
    :cond_6
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-wide v8, v5, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V

    .line 195
    .restart local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    .end local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 200
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 202
    nop

    .line 203
    return-void

    .line 173
    :goto_9
    :try_start_8
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    invoke-interface {v6}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 178
    goto :goto_a

    .line 174
    :catch_8
    move-exception v6

    .line 175
    .local v6, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v7, v8, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 179
    .end local v6    # "e":Ljava/io/IOException;
    :goto_a
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 181
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v3, :cond_9

    .line 182
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    goto :goto_b

    .line 191
    :cond_8
    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-wide v9, v6, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V

    .line 195
    .restart local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    .end local v3    # "lease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_9
    :goto_b
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 200
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v5
.end method

.method public shutdown()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->feeders:Ljava/util/Map;

    iget v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->feederManager:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log file feeder for client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 124
    return-void
.end method
