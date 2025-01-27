.class Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "SubscriptionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;,
        Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;,
        Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SOFT_SHUTDOWN_WAIT_MS:I = 0x1388


# instance fields
.field private channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

.field private final config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

.field private exceptionHandlingTestHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionThread;",
            ">;"
        }
    .end annotation
.end field

.field private final inputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

.field private namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

.field private final outputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

.field private protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

.field private volatile status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field private volatile storedException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/ReplicatedEnvironment;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;Ljava/util/logging/Logger;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .param p2, "reqVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "config"    # Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .param p4, "stats"    # Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .param p5, "logger"    # Ljava/util/logging/Logger;

    .line 108
    invoke-static {p1}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    const-string v1, "Subscription Main"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/subscription/SubscriptionThread$1;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 111
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 112
    iput-object p3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 113
    iput-object p4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 114
    iput-object p5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    .line 115
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 116
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 118
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 119
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getInputMessageQueueSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    .line 120
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 121
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getOutputMessageQueueSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    .line 123
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->INIT:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 124
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 125
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->exceptionHandlingTestHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private checkOutputThread()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/utilint/InternalException;,
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    .line 810
    .local v0, "cachedOutputThread":Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;
    if-nez v0, :cond_0

    .line 818
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "output thread no longer exists"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 820
    return-void

    .line 823
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    if-nez v1, :cond_1

    .line 832
    return-void

    .line 825
    :cond_1
    nop

    .line 826
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    .line 827
    .local v1, "rse":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output thread exited due to security check failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 829
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 827
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 830
    throw v1
.end method

.method private createAuxThread()Z
    .locals 10

    .line 526
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 528
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 529
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 532
    new-instance v9, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 535
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 536
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;)V

    iput-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    .line 541
    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    .line 542
    .local v7, "cachedOutputThread":Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;
    if-eqz v7, :cond_0

    .line 543
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->start()V

    .line 544
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output thread created for subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 546
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 548
    new-instance v8, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;Ljava/util/logging/Logger;)V

    iput-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    .line 552
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->start()V

    .line 553
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message processing thread created for subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 555
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 556
    const/4 v1, 0x1

    return v1

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 559
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " just shut down, no need to create auxiliary threads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 562
    const/4 v1, 0x0

    return v1
.end method

.method private initializeConnection()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/utilint/InternalException;,
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;,
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 420
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start open channel and handshake with feeder"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->openChannel()V

    .line 426
    new-instance v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;

    new-instance v1, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 428
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/NodeType;)V

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;-><init>(Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;)V

    .line 430
    .local v0, "handshake":Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;->execute()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 433
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getMinProtocolVersion()I

    move-result v1

    .line 434
    .local v1, "minReqVersion":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 441
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscription "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 442
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync-up with feeder at vlsn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v2, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 444
    new-instance v2, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;

    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 446
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v9

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v10, v4

    check-cast v10, Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 448
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getStreamMode()Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    move-result-object v11

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 449
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPartGenDBName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;-><init>(Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/FeederFilter;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 451
    .local v2, "syncup":Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;
    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->execute(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 453
    .local v4, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->getPartGenDBId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->setPartGenDBId(Lcom/sleepycat/je/dbi/DatabaseId;)V

    .line 454
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sync-up with feeder done, start vlsn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", partition generation db id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 457
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getPartGenDBId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for given db name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 458
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPartGenDBName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 460
    sget-object v5, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 462
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v5

    .line 463
    .local v5, "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v6

    .line 465
    .local v6, "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    sget-object v7, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v6, v7, :cond_0

    .line 467
    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v7, v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->setStartVLSN(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 468
    sget-object v7, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->HEARTBEAT_ACK:Ljava/lang/Long;

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->queueAck(Ljava/lang/Long;)V

    .line 470
    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 471
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " successfully connect to feeder at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 473
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 474
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", reqVLSN: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", start VLSN: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-static {v7, v8, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 478
    return-void

    .line 479
    :cond_0
    sget-object v3, Lcom/sleepycat/je/rep/stream/Protocol;->SECURITY_FAILURE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v6, v3, :cond_1

    .line 481
    move-object v3, v5

    check-cast v3, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;

    .line 484
    .local v3, "resp":Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;
    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receiving security check failure message from feeder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 487
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 488
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 484
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 490
    new-instance v7, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    .line 491
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sleepycat/je/rep/ReplicationSecurityException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 495
    .end local v3    # "resp":Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;
    :cond_1
    new-instance v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    const-class v7, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    invoke-direct {v3, v5, v7}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/lang/Class;)V

    throw v3

    .line 499
    .end local v5    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v6    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/InsufficientLogException;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v5, Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/InsufficientLogException;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/utilint/VLSN;)V

    throw v3

    .line 435
    .end local v2    # "syncup":Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;
    .end local v4    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_3
    new-instance v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HA protocol version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 436
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is lower than minimal required version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "handshake":Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshake;
    .end local v1    # "minReqVersion":I
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to feeder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 513
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to protocol exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 515
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/sleepycat/je/utilint/InternalException;

    invoke-direct {v2, v1, v0}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 507
    .end local v0    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to handshake with feeder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 509
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 510
    throw v0

    .line 501
    .end local v0    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 502
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  will retry later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 505
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSleepBeforeRetryMs()J

    move-result-wide v4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Ljava/lang/String;JLjava/lang/Throwable;)V

    throw v0
.end method

.method private loopInternal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/utilint/InternalException;,
            Lcom/sleepycat/je/rep/GroupShutdownException;,
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 692
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start reading messages from feeder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 694
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 695
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 696
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_6

    .line 698
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->checkOutputThread()V

    .line 700
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    move-object v8, v1

    .line 702
    .local v8, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    if-nez v8, :cond_0

    .line 703
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 704
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has nothing stream, exit loop."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->exceptionHandlingTestHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1, p0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 712
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumMsgReceived()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 714
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    move-object v9, v1

    .line 715
    .local v9, "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    sget-object v1, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v9, v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive heartbeat from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 718
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 719
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->HEARTBEAT_ACK:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->queueAck(Ljava/lang/Long;)V

    goto :goto_1

    .line 720
    :cond_1
    sget-object v1, Lcom/sleepycat/je/rep/stream/Protocol;->SECURITY_FAILURE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v9, v1, :cond_4

    .line 732
    sget-object v1, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v9, v1, :cond_3

    .line 758
    invoke-virtual {p0, v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->offer(Ljava/lang/Object;)V

    .line 760
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    int-to-long v1, v1

    .line 761
    .local v1, "pending":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getMaxPendingInput()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 762
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getMaxPendingInput()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 763
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max pending request log items:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 769
    .end local v1    # "pending":J
    .end local v8    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v9    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 734
    .restart local v8    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v9    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive shutdown request from feeder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 736
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutdown subscriber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 747
    move-object v1, v8

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;

    move-object v10, v1

    .line 749
    .local v10, "req":Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    new-instance v11, Lcom/sleepycat/je/rep/GroupShutdownException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 751
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 752
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getHighVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    .line 753
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->getShutdownTimeMs()J

    move-result-wide v6

    move-object v1, v11

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/GroupShutdownException;-><init>(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;Lcom/sleepycat/je/utilint/VLSN;J)V

    move-object v1, v11

    .line 754
    .local v1, "exp":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->offer(Ljava/lang/Object;)V

    .line 755
    nop

    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    throw v1

    .line 721
    .end local v1    # "exp":Ljava/lang/Exception;
    .end local v10    # "req":Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
    .restart local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_4
    move-object v1, v8

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;

    .line 723
    .local v1, "resp":Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiving security check failure message from feeder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 726
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 727
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 729
    new-instance v2, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    .line 730
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/ReplicationSecurityException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    throw v2

    .line 709
    .end local v1    # "resp":Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;
    .end local v9    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v8    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_6
    nop

    .line 791
    return-void

    .line 787
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sleepycat/je/utilint/InternalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 784
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 786
    .local v1, "exp":Lcom/sleepycat/je/DatabaseException;
    :goto_2
    throw v1

    .line 770
    .end local v1    # "exp":Lcom/sleepycat/je/DatabaseException;
    :catch_3
    move-exception v1

    move-object v7, v1

    .line 776
    .local v7, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 777
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropped with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 778
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 779
    new-instance v1, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 780
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will retry later."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 782
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSleepBeforeRetryMs()J

    move-result-wide v5

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Ljava/lang/String;JLjava/lang/Throwable;)V

    throw v1
.end method

.method private openChannel()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;,
            Lcom/sleepycat/je/utilint/InternalException;,
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 577
    const-string v0, "Feeder"

    const-string v1, "Subscription "

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 579
    .local v2, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    if-eqz v2, :cond_3

    .line 584
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 588
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getReceiveBufferSize()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReceiveBufferSize(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 590
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getStreamOpenTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 589
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setBlocking(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    move-object v9, v3

    .line 593
    .local v9, "connectOpts":Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 594
    .local v3, "localAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->ANY_ADDRESS:Ljava/net/InetSocketAddress;

    .line 595
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    sget-object v5, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->ANY_ADDRESS:Ljava/net/InetSocketAddress;

    move-object v3, v5

    move-object v10, v3

    goto :goto_0

    .line 594
    :cond_0
    move-object v10, v3

    .line 598
    .end local v3    # "localAddr":Ljava/net/InetSocketAddress;
    .local v10, "localAddr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 599
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from local address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with connect option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 598
    invoke-static {v3, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 603
    nop

    .line 604
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 605
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-interface {v3, v5, v10, v9}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    move-object v11, v3

    .line 609
    .local v11, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 611
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getAuthInfo()[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    move-result-object v3

    .line 609
    invoke-static {v11, v0, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    .line 612
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel opened to service Feeder@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 615
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 616
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHostAddr()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 617
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 612
    invoke-static {v3, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v3

    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 620
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v8

    .line 622
    .local v8, "timeoutMs":I
    new-instance v6, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v4}, Ljava/util/Timer;-><init>(Z)V

    invoke-direct {v6, v3}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;-><init>(Ljava/util/Timer;)V

    iput-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    .line 623
    new-instance v12, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    move-object v3, v12

    move-object v4, v2

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;Lcom/sleepycat/je/rep/net/DataChannel;I)V

    iput-object v12, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v8    # "timeoutMs":I
    .end local v9    # "connectOpts":Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .end local v10    # "localAddr":Ljava/net/InetSocketAddress;
    .end local v11    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    nop

    .line 666
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 667
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has successfully created a channel to feeder at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 669
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-static {v0, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 671
    return-void

    .line 633
    :catch_0
    move-exception v3

    .line 640
    .local v3, "cause":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-eq v4, v5, :cond_2

    .line 650
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-ne v4, v5, :cond_1

    .line 652
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security check failure:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 654
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v3}, Lcom/sleepycat/je/rep/ReplicationSecurityException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 658
    :cond_1
    new-instance v4, Lcom/sleepycat/je/utilint/InternalException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 659
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "failed to handshake for service "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with feeder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 663
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 642
    :cond_2
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", wait longer and will retry later"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 646
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSleepBeforeRetryMs()J

    move-result-wide v7

    move-object v4, v0

    move-object v5, p0

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Ljava/lang/String;JLjava/lang/Throwable;)V

    throw v0

    .line 626
    .end local v3    # "cause":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 628
    .local v8, "cause":Ljava/io/IOException;
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open channel to feeder due to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", will retry later"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 631
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSleepBeforeRetryMs()J

    move-result-wide v6

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Ljava/lang/String;JLjava/lang/Throwable;)V

    throw v0

    .line 580
    .end local v8    # "cause":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Replication env is unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private queueAck(Ljava/lang/Long;)V
    .locals 3
    .param p1, "xid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    nop

    .line 853
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Ack I/O interrupted"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getStatus()Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    return-object v0
.end method

.method getStoredException()Ljava/lang/Exception;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 153
    const/16 v0, 0x1388

    return v0
.end method

.method offer(Ljava/lang/Object;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/utilint/InternalException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 366
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    return-void

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumReplayQueueOverflow()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_0

    .line 393
    :cond_2
    const-string v1, "Thread consuming input queue is gone, start shutdown process"

    .line 395
    .local v1, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    const-string v3, "Thread consuming input queue is gone, start shutdown process"

    invoke-static {v2, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 396
    new-instance v2, Lcom/sleepycat/je/utilint/InternalException;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    .end local v1    # "err":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public run()V
    .locals 10

    .line 159
    const-string v0, ", error: "

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start subscription from VLSN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from feeder at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 162
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getMaxConnectRetries()I

    move-result v1

    .line 166
    .local v1, "maxRetry":I
    const/4 v2, 0x0

    .line 167
    .local v2, "auxThreadCreated":Z
    const/4 v3, 0x0

    .line 169
    .local v3, "numRetry":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->isShutdown()Z

    move-result v4
    :try_end_0
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/utilint/InternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 171
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->initializeConnection()V

    .line 172
    if-nez v2, :cond_1

    .line 173
    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "Create auxiliary msg processing and output threads"

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->createAuxThread()Z

    move-result v4

    move v2, v4

    .line 178
    if-eqz v2, :cond_0

    .line 180
    sget-object v4, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->SUCCESS:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 181
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->loopInternal()V

    goto :goto_1

    .line 183
    :cond_0
    sget-object v4, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    :try_end_1
    .catch Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/je/utilint/InternalException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    :goto_1
    goto/16 :goto_2

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;
    if-ne v3, v1, :cond_2

    .line 189
    :try_start_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shut down after reaching max retry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to connect feeder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 193
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 194
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 196
    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 197
    iput-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 198
    sget-object v5, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->CONNECTION_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 199
    goto :goto_2

    .line 201
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 202
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to connect feeder at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 204
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sleep for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->getRetrySleepMs()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms and re-connect again"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->getRetrySleepMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sleepycat/je/utilint/InternalException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    .end local v4    # "e":Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;
    goto/16 :goto_0

    .line 262
    .end local v1    # "maxRetry":I
    .end local v2    # "auxThreadCreated":Z
    .end local v3    # "numRetry":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->shutdown()V

    .line 263
    goto/16 :goto_4

    .line 262
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Lcom/sleepycat/je/utilint/InternalException;
    :try_start_3
    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 257
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internal exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/InternalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .end local v0    # "e":Lcom/sleepycat/je/utilint/InternalException;
    goto :goto_2

    .line 249
    :catch_2
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 251
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interrupted exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 254
    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 242
    :catch_3
    move-exception v0

    .line 243
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 244
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to sync up with feeder due to EFE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 248
    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .end local v0    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    goto/16 :goto_2

    .line 235
    :catch_4
    move-exception v1

    .line 236
    .local v1, "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 237
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to subscribe from requested VLSN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->reqVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/InsufficientLogException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->VLSN_NOT_AVAILABLE:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .end local v1    # "e":Lcom/sleepycat/je/rep/InsufficientLogException;
    goto/16 :goto_2

    .line 217
    :catch_5
    move-exception v0

    .line 218
    .local v0, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->isAlive()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "\n"

    if-eqz v1, :cond_4

    .line 221
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    goto :goto_3

    .line 222
    :catch_6
    move-exception v1

    .line 224
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception in shutting down msg proc thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 227
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 230
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 231
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received group shutdown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/GroupShutdownException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v3, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->GRP_SHUTDOWN:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .end local v0    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    goto/16 :goto_2

    .line 211
    :catch_7
    move-exception v0

    .line 212
    .local v0, "ure":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->storedException:Ljava/lang/Exception;

    .line 213
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription thread exited due to security check failure message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->SECURITY_CHECK_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "ure":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    goto/16 :goto_2

    .line 264
    :goto_4
    return-void

    .line 262
    :goto_5
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->shutdown()V

    throw v0
.end method

.method setExceptionHandlingTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionThread;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p1, "exceptionHandlingTestHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/subscription/SubscriptionThread;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->exceptionHandlingTestHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 274
    return-void
.end method

.method setStatus(Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;)V
    .locals 0
    .param p1, "s"    # Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 282
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 283
    return-void
.end method

.method shutdown()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "message processing thread has shut down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    .line 310
    goto :goto_2

    .line 309
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in shutdown msg proc thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", continue shutdown the subscription thread."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 309
    :goto_1
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->messageProcThread:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;

    throw v0

    .line 312
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    if-eqz v0, :cond_2

    .line 314
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 315
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "output thread has shut down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    :goto_3
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    .line 326
    goto :goto_5

    .line 325
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 318
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in shutdown output thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", continue shutdown subscription thread."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 325
    :goto_4
    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputThread:Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;

    throw v0

    .line 329
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->inputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 330
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 332
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 334
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription thread shut down with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->status:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 340
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->channelTimeoutTask:Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->cancel()Z

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 344
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shut down."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 346
    return-void
.end method
