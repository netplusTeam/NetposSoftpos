.class public Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;
.super Ljava/lang/Object;
.source "ReplicaFeederHandshake.java"


# static fields
.field private static CLOCK_SKEW_MAX_SAMPLE_SIZE:I = 0x0

.field private static final CLOCK_SKEW_MIN_DELAY_MS:J = 0x2L

.field static final MEMBERSHIP_RETRIES:I = 0x0

.field static final MEMBERSHIP_RETRY_SLEEP_MS:I = 0xea60

.field private static volatile testCurrentLogVersion:I

.field private static volatile testCurrentProtocolVersion:I


# instance fields
.field private final checkClockSkew:Z

.field private final clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

.field private clockDelay:J

.field private clockDelta:J

.field private feederJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

.field private feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final groupFormatVersion:I

.field private final logger:Ljava/util/logging/Logger;

.field private final maxClockDelta:I

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

.field private final nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentLogVersion:I

    .line 85
    sput v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentProtocolVersion:I

    .line 90
    const/4 v0, 0x5

    sput v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->CLOCK_SKEW_MAX_SAMPLE_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;)V
    .locals 3
    .param p1, "conf"    # Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 88
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelay:J

    .line 89
    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    .line 109
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 110
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getNamedChannel()Lcom/sleepycat/je/rep/utilint/NamedChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 111
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 112
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->groupFormatVersion:I

    .line 113
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 115
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 116
    invoke-interface {p1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 117
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->checkClockSkew:Z

    goto :goto_0

    .line 121
    :cond_0
    nop

    .line 122
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_CLOCK_DELTA:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->checkClockSkew:Z

    .line 125
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    .line 126
    return-void
.end method

.method private checkClockSkew()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "isLast":Z
    const/4 v1, 0x0

    .line 397
    .local v1, "sampleCount":I
    :goto_0
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->checkClockSkew:Z

    if-eqz v2, :cond_2

    .line 399
    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->CLOCK_SKEW_MAX_SAMPLE_SIZE:I

    if-ge v1, v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelay:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_3

    .line 402
    :cond_2
    const/4 v0, 0x1

    .line 405
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v3, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2, v0}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Z)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 406
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    const-class v4, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;

    .line 408
    .local v2, "response":Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->getDelay()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelay:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 409
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->getDelay()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelay:J

    .line 410
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->getDelta()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    .line 413
    .end local v2    # "response":Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;
    :cond_3
    if-eqz v0, :cond_7

    .line 415
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->checkClockSkew:Z

    if-nez v2, :cond_4

    .line 416
    return-void

    .line 419
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-wide v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    .line 421
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_4

    :cond_5
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Round trip delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms. Clock delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms. Max permissible delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 427
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 436
    return-void

    .line 428
    :cond_6
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clock delta: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clockDelta:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms. between Feeder: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 432
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and this Replica exceeds max permissible delta: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->maxClockDelta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_7
    goto/16 :goto_0
.end method

.method private getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentLogVersion()I
    .locals 1

    .line 130
    sget v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentLogVersion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentLogVersion:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method private getCurrentProtocolVersion()I
    .locals 1

    .line 152
    sget v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentProtocolVersion:I

    if-eqz v0, :cond_0

    .line 153
    sget v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentProtocolVersion:I

    return v0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getJEVersionProtocolVersion(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    return v0
.end method

.method private negotiateProtocol()Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 186
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentProtocolVersion()I

    move-result v3

    iget v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->groupFormatVersion:I

    .line 185
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->getProtocol(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;II)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    .line 189
    .local v0, "defaultProtocol":Lcom/sleepycat/je/rep/stream/Protocol;
    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 196
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    .line 197
    .local v1, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    instance-of v2, v1, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;

    if-nez v2, :cond_1

    .line 205
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;

    .line 207
    .local v2, "feederVersion":Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 208
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 210
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getVersion()I

    move-result v7

    .line 211
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentProtocolVersion()I

    move-result v8

    iget v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->groupFormatVersion:I

    .line 209
    invoke-static/range {v4 .. v9}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;III)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v3

    .line 212
    .local v3, "configuredProtocol":Lcom/sleepycat/je/rep/stream/Protocol;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Feeder id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Response message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 214
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->setNameIdPair(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 216
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel Mapping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 218
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 220
    if-eqz v3, :cond_0

    .line 235
    return-object v3

    .line 222
    :cond_0
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->PROTOCOL_VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible protocol versions. Protocol version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 226
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " introduced in JE version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 228
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->getVersion()I

    move-result v9

    invoke-static {v9}, Lcom/sleepycat/je/rep/stream/Protocol;->getProtocolJEVersion(I)Lcom/sleepycat/je/JEVersion;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " requested by the Feeder: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is not supported by this Replica: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with protocol version: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 233
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v8

    invoke-static {v8}, Lcom/sleepycat/je/rep/stream/Protocol;->getProtocolJEVersion(I)Lcom/sleepycat/je/JEVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v4

    .line 198
    .end local v2    # "feederVersion":Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;
    .end local v3    # "configuredProtocol":Lcom/sleepycat/je/rep/stream/Protocol;
    :cond_1
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A replica with the name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already active with the Feeder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v2
.end method

.method public static setTestLogVersion(I)V
    .locals 0
    .param p0, "testLogVersion"    # I

    .line 142
    sput p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentLogVersion:I

    .line 143
    return-void
.end method

.method public static setTestProtocolVersion(I)V
    .locals 0
    .param p0, "testProtocolVersion"    # I

    .line 163
    sput p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->testCurrentProtocolVersion:I

    .line 164
    return-void
.end method

.method private verifyMembership()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 321
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "groupName":Ljava/lang/String;
    new-instance v12, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 325
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 327
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 328
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPort()I

    move-result v8

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 330
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->isDesignatedPrimary()Z

    move-result v10

    .line 331
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v11

    move-object v2, v12

    move-object v4, v1

    invoke-direct/range {v2 .. v11}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Ljava/lang/String;ILcom/sleepycat/je/rep/NodeType;ZLcom/sleepycat/je/JEVersion;)V

    .line 332
    .local v2, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v3, v2, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 334
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    .line 336
    instance-of v3, v2, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;

    const-string v4, " Feeder: "

    if-nez v3, :cond_3

    .line 345
    instance-of v3, v2, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;

    if-eqz v3, :cond_2

    .line 352
    move-object v3, v2

    check-cast v3, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;

    .line 353
    .local v3, "nodeGroupInfoOK":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hasUnknownUUID()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->getUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setUUID(Ljava/util/UUID;)V

    .line 357
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 361
    :cond_1
    return-void

    .line 346
    .end local v3    # "nodeGroupInfoOK":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;
    :cond_2
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Protocol error. Unexpected response "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v6, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v3

    .line 337
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;

    .line 338
    .local v3, "reject":Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ". "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v5
.end method

.method private verifyVersions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    .line 285
    invoke-static {}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentLogVersion()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;I)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 287
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 288
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    const-string v2, " Feeder: "

    if-nez v1, :cond_1

    .line 301
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    .line 303
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getLogVersion()B

    move-result v1

    invoke-static {}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentLogVersion()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 312
    return-void

    .line 304
    :cond_0
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ". Feeder log version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    .line 308
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getLogVersion()B

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not known to the replica, whose current log version is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-static {}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->getCurrentLogVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_1
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ". "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v5, v0

    check-cast v5, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    .line 294
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public execute()Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Replica-feeder handshake start"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->negotiateProtocol()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 253
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->verifyVersions()V

    .line 259
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getLogVersion()B

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->setFixLogVersion12Entries(Z)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->verifyMembership()V

    .line 269
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->checkClockSkew()V

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replica-feeder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 272
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handshake completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    return-object v0
.end method

.method public getFeederMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->feederJEVersions:Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    return-object v0
.end method
