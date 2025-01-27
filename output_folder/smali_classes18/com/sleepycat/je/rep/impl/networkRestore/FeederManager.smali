.class public Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "FeederManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEASE_DURATION:J = 0x493e0L

.field public static final FEEDER_SERVICE:Ljava/lang/String; = "LogFileFeeder"

.field private static POLL_TIMEOUT:J


# instance fields
.field private final channelQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;"
        }
    .end annotation
.end field

.field final feeders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;",
            ">;"
        }
    .end annotation
.end field

.field leaseDuration:J

.field public leaseRenewalCount:I

.field final leaseTimer:Ljava/util/Timer;

.field final leases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Ljava/util/logging/Logger;

.field final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final statResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->POLL_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 3
    .param p1, "serviceDispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feeder Manager node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->feeders:Ljava/util/Map;

    .line 63
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    .line 69
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->statResponses:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseTimer:Ljava/util/Timer;

    .line 82
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    .line 87
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 120
    new-instance v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "LogFileFeeder"

    invoke-direct {v1, p1, v2, v0, p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V

    .line 121
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 123
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    .line 125
    return-void
.end method


# virtual methods
.method public clearedCachedFileChecksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->statResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public getActiveFeederCount()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->feeders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->getLeaseCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getLeaseCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLeaseDuration()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    return-wide v0
.end method

.method public getLeaseRenewalCount()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseRenewalCount:I

    return v0
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .line 177
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    sget-wide v1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->POLL_TIMEOUT:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/net/DataChannel;

    .line 179
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Log file Feeder manager soft shutdown."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown()V

    .line 182
    return-void

    .line 184
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;Lcom/sleepycat/je/rep/net/DataChannel;)V

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unanticipated exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "ie":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Log file feeder manager interrupted"

    .line 188
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown()V

    throw v0
.end method

.method public setLeaseDuration(J)V
    .locals 0
    .param p1, "leaseDuration"    # J

    .line 159
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseDuration:J

    .line 160
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 201
    const-string v2, "Shutting down log file feeder manager"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->feeders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;

    .line 211
    .local v1, "feeder":Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->shutdown()V

    .line 212
    .end local v1    # "feeder":Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;
    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    .line 219
    .local v1, "l":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->terminate()Lcom/sleepycat/je/util/DbBackup;

    move-result-object v2

    .line 220
    .local v2, "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbBackup;->backupIsOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    .line 223
    .end local v1    # "l":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    .end local v2    # "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    :cond_2
    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "LogFileFeeder"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->cleanup()V

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "Shut down log file feeder manager completed"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 228
    return-void
.end method
