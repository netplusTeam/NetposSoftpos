.class public abstract Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ReplicaOutputThreadBase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EOF:Ljava/lang/Long;

.field public static final HEARTBEAT_ACK:Ljava/lang/Long;

.field public static final HEARTBEAT_ACK_TIMED:Ljava/lang/Long;

.field public static final SHUTDOWN_ACK:Ljava/lang/Long;

.field private static final maxGroupedAcks:I = 0xaa


# instance fields
.field protected volatile exception:Ljava/lang/Exception;

.field final groupAcks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final groupAcksEnabled:Z

.field protected final heartbeatMs:I

.field protected final logger:Ljava/util/logging/Logger;

.field protected volatile numGroupedAcks:J

.field private outputHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final outputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field protected final queueSize:I

.field protected final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field protected final replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    nop

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->EOF:Ljava/lang/Long;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK:Ljava/lang/Long;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK_TIMED:Ljava/lang/Long;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->SHUTDOWN_ACK:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 3
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 121
    nop

    .line 122
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getReplay()Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->getOutputQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->getProtocol()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Replica;->getReplicaFeederChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    .line 121
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p4, "replicaFeederChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/rep/stream/Protocol;",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ")V"
        }
    .end annotation

    .line 131
    .local p2, "outputQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Long;>;"
    const-string v0, "ReplicaOutputThread"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    .line 133
    invoke-interface {p4}, Lcom/sleepycat/je/rep/net/DataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    .line 138
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 140
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    .line 141
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 142
    iput-object p4, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->heartbeatMs:I

    .line 147
    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->queueSize:I

    .line 149
    nop

    .line 150
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENABLE_GROUP_ACKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcksEnabled:Z

    .line 153
    return-void

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected non-blocking channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doWriteHeartbeat(Ljava/lang/Long;)V
    .locals 1
    .param p1, "txnId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK_TIMED:Ljava/lang/Long;

    if-ne p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getReplay()Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v0

    .line 286
    .local v0, "replay":Lcom/sleepycat/je/rep/impl/node/Replay;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->noteDequeueHeartbeatResponse()V

    .line 290
    .end local v0    # "replay":Lcom/sleepycat/je/rep/impl/node/Replay;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->writeHeartbeat(Ljava/lang/Long;)V

    .line 291
    return-void
.end method

.method private static isHeartbeatAck(J)Z
    .locals 2
    .param p0, "txnId"    # J

    .line 298
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->HEARTBEAT_ACK_TIMED:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getNumGroupedAcks()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    return-wide v0
.end method

.method public getOutputQueueSize()J
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected groupWriteAcks(J)Z
    .locals 8
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "eof":Z
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    const/16 v3, 0xa9

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 318
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 320
    .local v1, "txnIds":[J
    const/4 v2, 0x0

    .line 321
    .local v2, "i":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 322
    .local v4, "gtxnId":J
    sget-object v6, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->EOF:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_1

    .line 325
    :cond_0
    sget-object v6, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->SHUTDOWN_ACK:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 326
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v3, v6, v7}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 328
    const/4 v0, 0x1

    .line 329
    goto :goto_1

    .line 330
    :cond_1
    invoke-static {v4, v5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->isHeartbeatAck(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->doWriteHeartbeat(Ljava/lang/Long;)V

    .line 337
    goto :goto_0

    .line 339
    :cond_2
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-wide v4, v1, v2

    .line 340
    .end local v4    # "gtxnId":J
    move v2, v6

    goto :goto_0

    .line 342
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_3
    :goto_1
    if-lez v2, :cond_5

    .line 343
    array-length v3, v1

    if-le v3, v2, :cond_4

    .line 344
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [J

    .line 345
    .local v3, "la":[J
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    move-object v1, v3

    .line 349
    .end local v3    # "la":[J
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v4, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3, v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;[J)V

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 350
    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    array-length v5, v1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    .line 352
    :cond_5
    return v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->EOF:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, -0x1

    return v0

    .line 365
    :cond_0
    const/16 v0, 0x2710

    return v0
.end method

.method public run()V
    .locals 13

    .line 183
    const-string v0, " Max pending acks:"

    const-string v1, " Grouped acks sent:"

    const-string v2, "exited. Singleton acks sent:"

    const-wide/16 v3, 0x0

    .line 186
    .local v3, "maxPending":J
    const-wide/16 v5, 0x0

    .line 188
    .local v5, "numAcks":J
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replica output thread started. Queue size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->queueSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Max grouped acks:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    iget v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->heartbeatMs:I

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 196
    .local v7, "txnId":Ljava/lang/Long;
    :goto_0
    sget-object v8, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->EOF:Ljava/lang/Long;

    invoke-virtual {v8, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 200
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v8, p0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->writeReauthentication()V

    .line 204
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->isHeartbeatAck(J)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_2

    .line 212
    :cond_0
    sget-object v8, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->SHUTDOWN_ACK:Ljava/lang/Long;

    invoke-virtual {v8, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 218
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v9, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v8, v9, v10}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 220
    goto :goto_3

    .line 223
    :cond_1
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    .line 224
    .local v8, "pending":I
    int-to-long v9, v8

    cmp-long v9, v9, v3

    if-lez v9, :cond_2

    .line 225
    int-to-long v3, v8

    .line 226
    const-wide/16 v9, 0x64

    rem-long v9, v3, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 227
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Max pending acks:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 232
    :cond_2
    if-eqz v8, :cond_4

    iget-boolean v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupAcksEnabled:Z

    if-nez v9, :cond_3

    goto :goto_1

    .line 243
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->groupWriteAcks(J)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 245
    goto :goto_4

    .line 234
    :cond_4
    :goto_1
    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 235
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v10, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v9, v11, v12}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;J)V

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v9, v10, v11}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_3

    .line 210
    .end local v8    # "pending":I
    :cond_5
    :goto_2
    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->doWriteHeartbeat(Ljava/lang/Long;)V

    .line 211
    nop

    .line 197
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    iget v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->heartbeatMs:I

    int-to-long v9, v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v9, v10, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v7, v8

    goto/16 :goto_0

    .line 200
    :cond_7
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "maxPending":J
    .end local v5    # "numAcks":J
    throw v8
    :try_end_0
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v7    # "txnId":Ljava/lang/Long;
    .restart local v3    # "maxPending":J
    .restart local v5    # "numAcks":J
    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 271
    goto :goto_6

    .line 266
    :catchall_0
    move-exception v7

    goto :goto_7

    .line 255
    :catch_0
    move-exception v7

    .line 256
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->exception:Ljava/lang/Exception;

    .line 261
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v8}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 263
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "exiting with exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v7    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 249
    :catch_1
    move-exception v7

    .line 250
    .local v7, "rse":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    :try_start_2
    iput-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->exception:Ljava/lang/Exception;

    .line 251
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Output thread exiting due to security error, client: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 253
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getConsumer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 254
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-static {v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .end local v7    # "rse":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 272
    :goto_6
    return-void

    .line 266
    :goto_7
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->numGroupedAcks:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v7
.end method

.method public setOutputHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "outputHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;->outputHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 177
    return-void
.end method

.method public abstract writeHeartbeat(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeReauthentication()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
