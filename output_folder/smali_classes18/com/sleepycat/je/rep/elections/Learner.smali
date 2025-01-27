.class public Lcom/sleepycat/je/rep/elections/Learner;
.super Lcom/sleepycat/je/rep/elections/ElectionAgentThread;
.source "Learner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Learner$Listener;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "Learner"


# instance fields
.field private currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field private currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/elections/Learner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
    .locals 1
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "serviceDispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sleepycat/je/rep/elections/Learner;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p3, "serviceDispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Learner Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/elections/Protocol;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 71
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 97
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 100
    new-instance v0, Lcom/sleepycat/je/rep/elections/Learner$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/elections/Learner$1;-><init>(Lcom/sleepycat/je/rep/elections/Learner;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/Learner;->addListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/elections/Learner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Learner;

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public static findMaster(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/Set;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)Lcom/sleepycat/je/rep/elections/MasterValue;
    .locals 17
    .param p0, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p4, "formatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/elections/Protocol;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/util/logging/Logger;",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/logging/Formatter;",
            ")",
            "Lcom/sleepycat/je/rep/elections/MasterValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 391
    .local p1, "learnerSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 395
    .local v1, "threadPoolSize":I
    nop

    .line 396
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 398
    .local v2, "pool":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    const-string v0, "Learner"

    new-instance v3, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v15, p0

    invoke-direct {v3, v15}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;)V

    .line 399
    move-object/from16 v14, p1

    invoke-static {v14, v0, v3, v2}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v5

    .line 404
    .local v5, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 405
    .local v13, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;>;"
    new-instance v0, Lcom/sleepycat/je/rep/elections/Learner$3;

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v4 .. v16}, Lcom/sleepycat/je/rep/elections/Learner$3;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/List;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 430
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Learner$3;->execute()V

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "bestResponse":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;

    .line 434
    .local v4, "result":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v6

    .line 436
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_2

    .line 437
    :cond_1
    move-object v0, v4

    .line 439
    .end local v4    # "result":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    :cond_2
    goto :goto_0

    .line 440
    :cond_3
    if-eqz v0, :cond_4

    .line 445
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/elections/MasterValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 445
    return-object v3

    .line 441
    :cond_4
    :try_start_1
    new-instance v3, Lcom/sleepycat/je/rep/UnknownMasterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not determine master from helpers at:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 443
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;)V

    .end local v1    # "threadPoolSize":I
    .end local v2    # "pool":Ljava/util/concurrent/ExecutorService;
    .end local p0    # "protocol":Lcom/sleepycat/je/rep/elections/Protocol;
    .end local p1    # "learnerSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    .end local p2    # "logger":Ljava/util/logging/Logger;
    .end local p3    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local p4    # "formatter":Ljava/util/logging/Formatter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v0    # "bestResponse":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    .end local v5    # "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    .end local v13    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;>;"
    .restart local v1    # "threadPoolSize":I
    .restart local v2    # "pool":Ljava/util/concurrent/ExecutorService;
    .restart local p0    # "protocol":Lcom/sleepycat/je/rep/elections/Protocol;
    .restart local p1    # "learnerSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    .restart local p2    # "logger":Ljava/util/logging/Logger;
    .restart local p3    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local p4    # "formatter":Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0
.end method

.method public static informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    .locals 18
    .param p1, "winningProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p3, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "logger"    # Ljava/util/logging/Logger;
    .param p5, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p6, "formatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;",
            "Lcom/sleepycat/je/rep/elections/Protocol;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/logging/Logger;",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/logging/Formatter;",
            ")V"
        }
    .end annotation

    .line 502
    .local p0, "learners":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Informing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " learners."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-static {v12, v13, v14, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 509
    new-instance v2, Lcom/sleepycat/je/rep/elections/Protocol$Result;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->chosenValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-object/from16 v15, p2

    invoke-direct {v2, v15, v3, v4}, Lcom/sleepycat/je/rep/elections/Protocol$Result;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 510
    const-string v3, "Learner"

    move-object/from16 v11, p3

    invoke-static {v0, v3, v2, v11}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v16

    .line 520
    .local v16, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 522
    .local v10, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Lcom/sleepycat/je/rep/elections/Learner$4;

    .line 523
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lcom/sleepycat/je/rep/elections/Learner$4;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 544
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/rep/elections/Learner$4;->execute()V

    .line 545
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Informed learners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-static {v12, v13, v14, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 548
    return-void

    .line 502
    .end local v10    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v16    # "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    :cond_0
    move-object/from16 v15, p2

    .line 503
    nop

    .line 504
    const-string v2, "There must be at least one learner"

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private declared-synchronized processMasterQuery(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    .locals 5
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "requestMessage"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isActive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    .line 276
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    move-object v0, v1

    .line 277
    new-instance v1, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 288
    .local v1, "responseMessage":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getSendVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->setSendVersion(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->wireFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .end local v1    # "responseMessage":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    nop

    .line 292
    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    monitor-exit p0

    return-void

    .line 291
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Learner;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 292
    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    .end local v0    # "out":Ljava/io/PrintWriter;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 263
    .end local p1    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local p2    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sleepycat/je/rep/elections/Learner$Listener;

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public declared-synchronized processResult(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 10
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p1, v0}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring obsolete winner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    monitor-exit p0

    return-void

    .line 148
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Learner;
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 149
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 152
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/elections/Learner$Listener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .local v2, "listener":Lcom/sleepycat/je/rep/elections/Learner$Listener;
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-interface {v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Learner$Listener;->notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    nop

    .line 164
    .end local v2    # "listener":Lcom/sleepycat/je/rep/elections/Learner$Listener;
    goto :goto_0

    .line 156
    .restart local v2    # "listener":Lcom/sleepycat/je/rep/elections/Learner$Listener;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in Learner Listener: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 161
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 162
    goto :goto_0

    .line 165
    .end local v2    # "listener":Lcom/sleepycat/je/rep/elections/Learner$Listener;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    .end local p1    # "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .end local p2    # "value":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryForMaster(Ljava/util/Set;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "learnerSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 315
    .local v0, "threadPoolSize":I
    new-instance v1, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    const-string v3, "JE Learner"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 317
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 320
    .local v1, "pool":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;)V

    .line 321
    .local v2, "masterQuery":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    const-string v3, "Learner"

    .line 322
    invoke-static {p1, v3, v2, v1}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v6

    .line 330
    .local v6, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v3, Lcom/sleepycat/je/rep/elections/Learner$2;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 331
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-long v7, v4

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v11, v4

    check-cast v11, Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v12, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/sleepycat/je/rep/elections/Learner$2;-><init>(Lcom/sleepycat/je/rep/elections/Learner;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 362
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Learner$2;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v2    # "masterQuery":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v6    # "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v2
.end method

.method public reinformLearners(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V
    .locals 9
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 469
    .local p1, "learners":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 475
    .local v3, "winningProposal":Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 478
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    if-nez v0, :cond_1

    .line 479
    return-void

    .line 481
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v2, p1

    move-object v5, p2

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/rep/elections/Learner;->informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 483
    return-void

    .line 471
    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v3    # "winningProposal":Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sleepycat/je/rep/elections/Learner$Listener;

    .line 130
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 15

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v2, "Learner"

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 176
    const-string v5, "Learner started"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 180
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 181
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->takeChannel(Ljava/lang/String;I)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v0, v1

    .line 183
    if-nez v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Learner;->cleanup()V

    .line 185
    return-void

    .line 188
    :cond_0
    const/4 v1, 0x0

    .line 189
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 191
    .local v14, "out":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 193
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .local v1, "requestLine":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 239
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v6, v0

    move-object v8, v14

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 200
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/elections/Protocol;->parseRequest(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    move-result-object v3
    :try_end_4
    .catch Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .local v3, "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    nop

    .line 206
    :try_start_5
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v4

    .line 207
    .local v4, "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v9, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "learner request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sender: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 211
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getSenderId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 207
    invoke-static {v5, v6, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Protocol;->RESULT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v4, v5, :cond_2

    .line 213
    move-object v5, v3

    check-cast v5, Lcom/sleepycat/je/rep/elections/Protocol$Result;

    .line 214
    .local v5, "result":Lcom/sleepycat/je/rep/elections/Protocol$Result;
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Protocol$Result;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Protocol$Result;->getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/sleepycat/je/rep/elections/Learner;->processResult(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 215
    .end local v5    # "result":Lcom/sleepycat/je/rep/elections/Protocol$Result;
    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v4, v5, :cond_3

    .line 216
    invoke-direct {p0, v0, v3}, Lcom/sleepycat/je/rep/elections/Learner;->processMasterQuery(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 239
    .end local v1    # "requestLine":Ljava/lang/String;
    .end local v3    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v4    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    :goto_1
    :try_start_6
    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v11, v0

    move-object v12, v7

    move-object v13, v14

    invoke-static/range {v8 .. v13}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    goto/16 :goto_4

    .line 217
    .restart local v1    # "requestLine":Ljava/lang/String;
    .restart local v3    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v4    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    :cond_3
    :try_start_7
    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Protocol;->SHUTDOWN:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v4, v5, :cond_4

    .line 218
    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v10, "Learner thread exiting"

    .line 219
    invoke-static {v5, v6, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    :try_start_8
    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v11, v0

    move-object v12, v7

    move-object v13, v14

    invoke-static/range {v8 .. v13}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 251
    .end local v1    # "requestLine":Ljava/lang/String;
    .end local v3    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v4    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v14    # "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Learner;->cleanup()V

    .line 253
    nop

    .line 254
    return-void

    .line 223
    .restart local v1    # "requestLine":Ljava/lang/String;
    .restart local v3    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v4    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "out":Ljava/io/PrintWriter;
    :cond_4
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed request: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' Unexpected op:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "message":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v8, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    invoke-direct {v6, v8, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    .line 229
    .local v6, "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v8, v0, v6}, Lcom/sleepycat/je/rep/elections/Protocol;->processIME(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 239
    :try_start_a
    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v11, v0

    move-object v12, v7

    move-object v13, v14

    invoke-static/range {v8 .. v13}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0

    .line 201
    .end local v3    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v4    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    :catch_0
    move-exception v3

    .line 202
    .local v3, "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    :try_start_b
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v4, v0, v3}, Lcom/sleepycat/je/rep/elections/Protocol;->processIME(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 239
    :try_start_c
    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v11, v0

    move-object v12, v7

    move-object v13, v14

    invoke-static/range {v8 .. v13}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    .line 236
    .end local v1    # "requestLine":Ljava/lang/String;
    .end local v3    # "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 232
    :catch_2
    move-exception v1

    move-object v9, v7

    goto :goto_3

    .line 239
    .end local v7    # "in":Ljava/io/BufferedReader;
    .local v1, "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    move-object v9, v1

    move-object v1, v3

    goto :goto_5

    .line 236
    :catch_3
    move-exception v3

    move-object v7, v1

    move-object v1, v3

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_d
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v14    # "out":Ljava/io/PrintWriter;
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "out":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v1

    move-object v9, v7

    goto :goto_5

    .line 232
    .end local v7    # "in":Ljava/io/BufferedReader;
    .local v1, "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v9, v1

    move-object v1, v3

    .line 233
    .local v1, "e":Ljava/io/IOException;
    .local v9, "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_e
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 235
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 239
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_f
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v6, v0

    move-object v7, v9

    move-object v8, v14

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 240
    nop

    .line 241
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v14    # "out":Ljava/io/PrintWriter;
    :goto_4
    goto/16 :goto_0

    .line 239
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "out":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    :goto_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v6, v0

    move-object v7, v9

    move-object v8, v14

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .end local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    throw v1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 251
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v14    # "out":Ljava/io/PrintWriter;
    .restart local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :catchall_3
    move-exception v1

    goto :goto_6

    .line 242
    :catch_5
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Learner;->isShutdown()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v3, :cond_5

    .line 251
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Learner;->cleanup()V

    .line 245
    return-void

    .line 247
    :cond_5
    :try_start_11
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Learner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Learner unexpected interrupted"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 249
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 251
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_6
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner;->serviceDispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Learner;->cleanup()V

    throw v1
.end method
