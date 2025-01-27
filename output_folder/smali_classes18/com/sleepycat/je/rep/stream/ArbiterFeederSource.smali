.class public Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;
.super Ljava/lang/Object;
.source "ArbiterFeederSource.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/FeederSource;


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final nQueueFull:Lcom/sleepycat/je/utilint/LongStat;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/log/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_OUTPUT_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 48
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 49
    .local v0, "queueSize":I
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 51
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "ArbiterFeeder"

    const-string v3, "ArbiterFeeder statistics"

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 54
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/rep/stream/ArbiterFeederStatDefinition;->QUEUE_FULL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->nQueueFull:Lcom/sleepycat/je/utilint/LongStat;

    .line 55
    return-void
.end method


# virtual methods
.method public addCommit(Lcom/sleepycat/je/log/LogItem;)V
    .locals 3
    .param p1, "commitItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->nQueueFull:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogItem;

    .line 71
    .local v0, "queuedItem":Lcom/sleepycat/je/log/LogItem;
    iget-object v1, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 72
    .local v1, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    .line 77
    move-object p1, v0

    .line 81
    .end local v0    # "queuedItem":Lcom/sleepycat/je/log/LogItem;
    .end local v1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_0
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    return-void
.end method

.method public dumpState()Ljava/lang/String;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWireRecord(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 4
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "waitTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->queue:Ljava/util/concurrent/BlockingQueue;

    int-to-long v1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogItem;

    .line 108
    .local v0, "commitItem":Lcom/sleepycat/je/log/LogItem;
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogItem;)V

    return-object v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 117
    .local v0, "copyStats":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method public shutdown(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 97
    return-void
.end method
