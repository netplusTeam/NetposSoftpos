.class public final Lcom/sleepycat/je/rep/impl/node/Feeder;
.super Ljava/lang/Object;
.source "Feeder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;,
        Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;,
        Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;,
        Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;
    }
.end annotation


# static fields
.field private static volatile initialWriteMessageHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

.field private volatile caughtUp:Z

.field private feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field private final feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

.field private final feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

.field private feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

.field private volatile feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private heartbeatMs:I

.field private final inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

.field private isArbiterFeeder:Z

.field private volatile lastHeartbeatCommitTimestamp:J

.field private volatile lastHeartbeatCommitVLSN:J

.field private volatile lastHeartbeatTime:J

.field private volatile lastResponseTime:J

.field private final logger:Ljava/util/logging/Logger;

.field private final masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

.field private volatile masterXfr:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

.field private protocolVersion:I

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private volatile replicaJEVersion:Lcom/sleepycat/je/JEVersion;

.field private volatile replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private volatile replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

.field private volatile replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final securityChkIntvMs:J

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile streamLogVersion:I

.field private final vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

.field private volatile writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->isArbiterFeeder:Z

    .line 218
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 228
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 231
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastResponseTime:J

    .line 238
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    .line 248
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 266
    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->streamLogVersion:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 272
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 382
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 383
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 384
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 385
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 386
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    .line 387
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 388
    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "TestFeeder"

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    .line 390
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    .line 391
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    .line 392
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 393
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 394
    sget-object v3, Lcom/sleepycat/je/rep/impl/node/Feeder;->initialWriteMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 395
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 396
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 397
    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->securityChkIntvMs:J

    .line 398
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 4
    .param p1, "feederManager"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .param p2, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->isArbiterFeeder:Z

    .line 218
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 228
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 231
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastResponseTime:J

    .line 238
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    .line 248
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 266
    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->streamLogVersion:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 272
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 350
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 351
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 352
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 353
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 354
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 355
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    .line 358
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->configureChannel(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 359
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    .line 360
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    .line 361
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getHeartbeatInterval()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->heartbeatMs:I

    .line 362
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getVLSNRate()Lcom/sleepycat/je/utilint/LongAvgRateStat;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 363
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/Feeder;->initialWriteMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 365
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 368
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 369
    nop

    .line 370
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSecurityCheckInterval()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->securityChkIntvMs:J

    .line 371
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/rep/impl/node/Feeder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastResponseTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastResponseTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/MasterStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterStatus:Lcom/sleepycat/je/rep/stream/MasterStatus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sleepycat/je/rep/impl/node/Feeder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # J

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->deemAcked(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 168
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->processReauthenticate(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/sleepycat/je/rep/impl/node/Feeder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sleepycat/je/rep/impl/node/Feeder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatCommitVLSN:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatCommitVLSN:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sleepycat/je/rep/impl/node/Feeder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatCommitTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatCommitTimestamp:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/LongAvgRateStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sleepycat/je/rep/impl/node/Feeder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->heartbeatMs:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->isArbiterFeeder:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/TestHook;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->doSecurityCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/FeederSource;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sleepycat/je/rep/impl/node/Feeder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatTime:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->lastHeartbeatTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/impl/node/Feeder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->protocolVersion:I

    return v0
.end method

.method static synthetic access$402(Lcom/sleepycat/je/rep/impl/node/Feeder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # I

    .line 168
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->protocolVersion:I

    return p1
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/impl/node/Feeder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->streamLogVersion:I

    return v0
.end method

.method static synthetic access$602(Lcom/sleepycat/je/rep/impl/node/Feeder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # I

    .line 168
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->streamLogVersion:I

    return p1
.end method

.method static synthetic access$702(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/JEVersion;)Lcom/sleepycat/je/JEVersion;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/JEVersion;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaJEVersion:Lcom/sleepycat/je/JEVersion;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->initArbiterFeederSource()V

    return-void
.end method

.method private configureChannel(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    .locals 6
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lcom/sleepycat/je/rep/net/DataChannel;->configureBlocking(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :try_start_1
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .local v0, "remoteEndpoint":Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v0    # "remoteEndpoint":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "unknown"

    .line 324
    .local v1, "remoteEndpoint":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not determine remote address. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    move-object v0, v1

    .line 328
    .end local v1    # "remoteEndpoint":Ljava/lang/String;
    .local v0, "remoteEndpoint":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feeder accepted connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 332
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    .line 333
    .local v1, "timeoutMs":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TCP_NO_DELAY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 334
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    .line 337
    .local v2, "tcpNoDelay":Z
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 338
    new-instance v3, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {v3, v4, p1, v1}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/net/DataChannel;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 339
    .end local v0    # "remoteEndpoint":Ljava/lang/String;
    .end local v1    # "timeoutMs":I
    .end local v2    # "tcpNoDelay":Z
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception while configuring channel Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 342
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 343
    throw v0
.end method

.method private deemAcked(J)V
    .locals 5
    .param p1, "txnId"    # J

    .line 1541
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 1542
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sleepycat/je/rep/stream/FeederTxns;->noteReplicaAck(Lcom/sleepycat/je/rep/impl/RepNodeImpl;J)Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    move-result-object v0

    .line 1544
    .local v0, "txnInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    if-nez v0, :cond_0

    .line 1546
    return-void

    .line 1548
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 1549
    .local v1, "commitVLSN":Lcom/sleepycat/je/utilint/VLSN;
    if-nez v1, :cond_1

    .line 1550
    return-void

    .line 1552
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1553
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1555
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getPendingAcks()I

    move-result v2

    if-nez v2, :cond_2

    .line 1561
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateDTVLSN(J)J

    .line 1564
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    .line 1565
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->adviseMasterTransferProgress()V

    .line 1566
    return-void
.end method

.method private doSecurityCheck()Z
    .locals 8

    .line 1687
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->needSecurityChecks()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1688
    return v1

    .line 1691
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1693
    .local v2, "curr":J
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->getLastCheckTimeMs()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->securityChkIntvMs:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->checkAccess()Z

    move-result v0

    return v0

    .line 1698
    :cond_1
    return v1
.end method

.method private initArbiterFeederSource()V
    .locals 2

    .line 418
    new-instance v0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    .line 419
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->isArbiterFeeder:Z

    .line 421
    return-void
.end method

.method private processReauthenticate(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z
    .locals 3
    .param p1, "msg"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 1710
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1711
    return v1

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    if-nez v0, :cond_1

    .line 1716
    return v1

    .line 1719
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;

    .line 1720
    .local v1, "reauth":Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->getTokenBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->setToken([B)V

    .line 1722
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->checkAccess()Z

    move-result v0

    return v0
.end method

.method public static setInitialWriteMessageHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 1665
    .local p0, "initialWriteMessageHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    sput-object p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->initialWriteMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1666
    return-void
.end method


# virtual methods
.method adviseMasterTransferProgress()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterXfr:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 449
    .local v0, "mt":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    if-eqz v0, :cond_0

    .line 450
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 452
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;-><init>(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->noteProgress(Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;)V

    .line 454
    :cond_0
    return-void
.end method

.method public dumpState()Ljava/lang/String;
    .locals 3

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feederVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " replicaTxnEndVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1636
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nodeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1637
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1634
    return-object v0
.end method

.method public getArbiterFeederSource()Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;

    if-eqz v1, :cond_0

    .line 616
    check-cast v0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;

    return-object v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/Channel;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    return-object v0
.end method

.method public getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method public getFeederVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 425
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 427
    .local v0, "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "BinaryProtocol"

    const-string v3, "Network traffic due to the replication stream."

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-object v1
.end method

.method public getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method public getReplicaJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaJEVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v0
.end method

.method public getReplicaTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getWriteMessageHook()Lcom/sleepycat/je/utilint/TestHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    return-object v0
.end method

.method public initMasterFeederSource(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 4
    .param p1, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 408
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaTxnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 412
    new-instance v0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 413
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sleepycat/je/rep/stream/MasterFeederSource;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    .line 414
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public makeSecurityCheckResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1735
    .local v0, "proto":Lcom/sleepycat/je/rep/stream/Protocol;
    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1}, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    .line 1737
    .local v1, "response":Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1739
    .local v2, "replica":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1740
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to shut down after 5000 ms, security failure message sent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1744
    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1747
    :catch_0
    move-exception v3

    .line 1748
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to send security failure message to replica "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message if fail to pass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 1745
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1746
    .local v3, "ie":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v6, "Interrupted in sleep, ignore"

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1752
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 1754
    :goto_1
    new-instance v3, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Lcom/sleepycat/je/rep/ReplicationSecurityException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public needSecurityChecks()Z
    .locals 3

    .line 1672
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1673
    return v1

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    .line 1677
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->isTrustCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->isTrusted()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method resetStats()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 435
    .local v0, "protocol":Lcom/sleepycat/je/rep/stream/Protocol;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->resetStats()V

    .line 438
    :cond_0
    return-void
.end method

.method public setFeederFilter(Lcom/sleepycat/je/rep/stream/FeederFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 465
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 466
    return-void
.end method

.method setMasterTransfer(Lcom/sleepycat/je/rep/impl/node/MasterTransfer;)V
    .locals 1
    .param p1, "mt"    # Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 441
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterXfr:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 442
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->caughtUp:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->adviseMasterTransferProgress()V

    .line 445
    :cond_0
    return-void
.end method

.method public setWriteMessageHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 1647
    .local p1, "writeMessageHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->writeMessageHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1648
    return-void
.end method

.method public shutdown(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "shutdownException"    # Ljava/lang/Exception;

    .line 525
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 526
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->masterXfr:Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    .line 531
    .local v1, "mt":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "replicaName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->giveUp(Ljava/lang/String;)V

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v3, p0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->removeFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    .line 538
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederSource:Lcom/sleepycat/je/rep/stream/FeederSource;

    if-eqz v3, :cond_2

    .line 539
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-interface {v3, v4}, Lcom/sleepycat/je/rep/stream/FeederSource;->shutdown(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    sget-object v4, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 543
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v4, "BinaryProtocol"

    const-string v5, "Network traffic due to the replication stream."

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v3, "pstats":Lcom/sleepycat/je/utilint/StatGroup;
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    if-eqz v4, :cond_4

    .line 547
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    sget-object v5, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 549
    :cond_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->incStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 552
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaDelayMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->removeStat(Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaAvgDelayMsMap()Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->removeStat(Ljava/lang/String;)V

    .line 554
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplica95DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->removeStat(Ljava/lang/String;)V

    .line 555
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplica99DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->removeStat(Ljava/lang/String;)V

    .line 556
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaMaxDelayMsMap()Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->removeStat(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaLastCommitTimestampMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->removeStat(Ljava/lang/String;)V

    .line 559
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaLastCommitVLSNMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->removeStat(Ljava/lang/String;)V

    .line 560
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaVLSNLagMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->removeStat(Ljava/lang/String;)V

    .line 561
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaVLSNRateMap()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStat(Ljava/lang/String;)V

    .line 563
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shutting down feeder for replica "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_5

    const-string v7, ""

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 567
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/RepUtils;->writeTimesString(Lcom/sleepycat/je/utilint/StatGroup;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 563
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 570
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplicaCloseCatchupMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_2

    .line 586
    :catch_0
    move-exception v4

    .line 587
    .local v4, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted while waiting to join thread:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 593
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->outputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 594
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 602
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederManager:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->decrementManagedFeederCount()V

    .line 604
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isOpen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->feederReplicaChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 606
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v7

    invoke-interface {v7}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 604
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method startFeederThreads()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder;->inputThread:Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->start()V

    .line 375
    return-void
.end method
