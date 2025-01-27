.class public Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
.super Ljava/lang/Object;
.source "MasterTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile blocker:Ljava/util/concurrent/CountDownLatch;

.field private final deadlineTimeMs:J

.field private volatile done:Z

.field private eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<",
            "Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private final readyReplicas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/VLSN;",
            ">;"
        }
    .end annotation
.end field

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final replicas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimeMs:J

.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/util/Set;JLcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/sleepycat/je/rep/impl/node/RepNode;",
            ")V"
        }
    .end annotation

    .line 87
    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->logger:Ljava/util/logging/Logger;

    .line 88
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->replicas:Ljava/util/Set;

    .line 89
    iput-wide p2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->timeout:J

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->startTimeMs:J

    .line 91
    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->deadlineTimeMs:J

    .line 92
    iput-object p4, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 94
    invoke-virtual {p4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Master Transfer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec, targeting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    .line 100
    invoke-virtual {p4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;-><init>(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    .line 101
    return-void
.end method

.method private annouceWinner(Ljava/lang/String;)V
    .locals 12
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 300
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 301
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v2, Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 302
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 304
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/elections/MasterValue;-><init>(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 305
    .local v2, "newMaster":Lcom/sleepycat/je/rep/elections/MasterValue;
    new-instance v3, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;-><init>()V

    .line 306
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v3

    .line 307
    .local v3, "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElections()Lcom/sleepycat/je/rep/elections/Elections;

    move-result-object v4

    .line 308
    .local v4, "elections":Lcom/sleepycat/je/rep/elections/Elections;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections;->getLearner()Lcom/sleepycat/je/rep/elections/Learner;

    .line 309
    nop

    .line 310
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllLearnerSockets()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v2, v7}, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 312
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v7

    .line 313
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 314
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections;->getLogger()Ljava/util/logging/Logger;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 315
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v10

    .line 310
    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/sleepycat/je/rep/elections/Learner;->informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 317
    return-void
.end method

.method private chooseReplica()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getQueue()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    move-result-object v0

    .line 207
    .local v0, "queue":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    return-object v1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v2

    .line 211
    .local v2, "feederManager":Lcom/sleepycat/je/rep/impl/node/FeederManager;
    nop

    .line 212
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicasMap()Ljava/util/Map;

    move-result-object v3

    .line 213
    .local v3, "activeReplicas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->replicas:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .local v5, "nodeName":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 215
    .local v6, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz v6, :cond_1

    .line 216
    invoke-virtual {v6, p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->setMasterTransfer(Lcom/sleepycat/je/rep/impl/node/MasterTransfer;)V

    .line 218
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    const/4 v4, 0x0

    .line 229
    .local v4, "result":Ljava/lang/String;
    :goto_1
    iget-wide v5, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->deadlineTimeMs:J

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 231
    .local v5, "pollTimeout":J
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    invoke-virtual {v0, v5, v6, v7}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->pollOrException(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    .line 233
    .local v7, "event":Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
    if-nez v7, :cond_3

    .line 234
    return-object v1

    .line 236
    :cond_3
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    .line 238
    .local v8, "endVLSN":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 239
    .local v9, "level":Ljava/util/logging/Level;
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->isFeederDeathEvent()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    .line 240
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    iget-object v12, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 249
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    goto :goto_2

    .line 252
    :cond_4
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    if-nez v10, :cond_6

    .line 253
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 254
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    iget-object v12, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    iget-object v13, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    .line 256
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v10

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10, v12}, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnCompletion(Ljava/util/concurrent/CountDownLatch;)V

    .line 261
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v10

    if-ltz v10, :cond_8

    .line 262
    iget-object v4, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 265
    :cond_6
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v10

    if-ltz v10, :cond_7

    .line 266
    iget-object v4, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    goto :goto_2

    .line 275
    :cond_7
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->readyReplicas:Ljava/util/Map;

    iget-object v12, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    iget-object v13, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 281
    :cond_8
    :goto_2
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->logger:Ljava/util/logging/Logger;

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Master Transfer progress: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", phase: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    if-nez v14, :cond_9

    goto :goto_3

    :cond_9
    const/4 v11, 0x2

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", endVLSN: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v12, v9, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 286
    if-eqz v4, :cond_a

    .line 287
    return-object v4

    .line 289
    .end local v5    # "pollTimeout":J
    .end local v7    # "event":Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
    .end local v8    # "endVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v9    # "level":Ljava/util/logging/Level;
    :cond_a
    goto/16 :goto_1
.end method

.method private declared-synchronized getQueue()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<",
            "Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeoutMsg()Ljava/lang/String;
    .locals 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out: started at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->startTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds\nmaster\'s VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 346
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 347
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->dumpAckFeederState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    return-object v0
.end method


# virtual methods
.method public declared-synchronized abort(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 111
    if-eqz p1, :cond_2

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 115
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getQueue()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    move-result-object v0

    .line 116
    .local v0, "queue":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;>;"
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->releasePoll(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 110
    .end local v0    # "queue":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;>;"
    .end local p1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 111
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method addFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 5
    .param p1, "f"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 326
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->replicas:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to existing Master Transfer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->setMasterTransfer(Lcom/sleepycat/je/rep/impl/node/MasterTransfer;)V

    .line 333
    :cond_0
    return-void
.end method

.method public getStartTime()J
    .locals 2

    .line 336
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->startTimeMs:J

    return-wide v0
.end method

.method giveUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "replicaNodeName"    # Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->makeFeederDeathEvent(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->noteProgress(Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;)V

    .line 148
    return-void
.end method

.method declared-synchronized noteProgress(Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;)V
    .locals 1
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getQueue()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    move-result-object v0

    .line 128
    .local v0, "queue":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;>;"
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "queue":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;>;"
    .end local p1    # "p":Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method transfer()Ljava/lang/String;
    .locals 6

    .line 169
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->chooseReplica()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->done:Z

    .line 174
    monitor-enter p0
    :try_end_0
    .catch Lcom/sleepycat/je/rep/MasterTransferFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    .line 176
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->annouceWinner(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sleepycat/je/rep/MasterTransferFailureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    nop

    .line 186
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    .line 187
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 178
    :cond_0
    return-object v1

    .line 176
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 171
    :cond_1
    new-instance v2, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getTimeoutMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/sleepycat/je/rep/MasterTransferFailureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    .end local v1    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v2

    .line 179
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Lcom/sleepycat/je/rep/MasterTransferFailureException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Master Transfer operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 182
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    .end local v1    # "e":Lcom/sleepycat/je/rep/MasterTransferFailureException;
    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->eventQueue:Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;

    .line 187
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->done:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->blocker:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    throw v1
.end method
