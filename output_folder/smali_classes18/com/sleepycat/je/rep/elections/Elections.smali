.class public Lcom/sleepycat/je/rep/elections/Elections;
.super Ljava/lang/Object;
.source "Elections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;,
        Lcom/sleepycat/je/rep/elections/Elections$InformLearners;,
        Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;,
        Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;,
        Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private acceptor:Lcom/sleepycat/je/rep/elections/Acceptor;

.field private final config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

.field private electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

.field private volatile electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

.field private final envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final formatter:Ljava/util/logging/Formatter;

.field private learner:Lcom/sleepycat/je/rep/elections/Learner;

.field private final listener:Lcom/sleepycat/je/rep/elections/Learner$Listener;

.field private final logger:Ljava/util/logging/Logger;

.field private nElections:I

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final pool:Ljava/util/concurrent/ExecutorService;

.field private proposer:Lcom/sleepycat/je/rep/elections/Proposer;

.field private final protocol:Lcom/sleepycat/je/rep/elections/Protocol;

.field private final rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

.field private repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/ElectionsConfig;Lcom/sleepycat/je/rep/elections/Learner$Listener;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;)V
    .locals 11
    .param p1, "config"    # Lcom/sleepycat/je/rep/elections/ElectionsConfig;
    .param p2, "listener"    # Lcom/sleepycat/je/rep/elections/Learner$Listener;
    .param p3, "suggestionGenerator"    # Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    .line 153
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    .line 162
    iput v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->nElections:I

    .line 187
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 188
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 189
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 190
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    iput-object v10, p0, Lcom/sleepycat/je/rep/elections/Elections;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 193
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    .line 195
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 196
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_REBROADCAST_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 197
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    .line 198
    .local v1, "rebroadcastPeriod":I
    new-instance v2, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    invoke-direct {v2, p0, v1}, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;-><init>(Lcom/sleepycat/je/rep/elections/Elections;I)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    .line 199
    .end local v0    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v1    # "rebroadcastPeriod":I
    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    .line 201
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    .line 203
    :goto_0
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    .line 204
    .local v0, "channelFactory":Lcom/sleepycat/je/rep/net/DataChannelFactory;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v1, v10}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    .line 206
    new-instance v1, Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-static {}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v4

    .line 207
    invoke-static {}, Lcom/sleepycat/je/rep/elections/MasterValue;->getParser()Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v5

    .line 208
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getGroupName()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-interface {p1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    move-object v3, v1

    move-object v7, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/rep/elections/Protocol;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 212
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Elections;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    .line 213
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Elections;->listener:Lcom/sleepycat/je/rep/elections/Learner$Listener;

    .line 215
    new-instance v1, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JE Elections Factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 216
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    .line 218
    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Learner;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Proposer;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->proposer:Lcom/sleepycat/je/rep/elections/Proposer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/ElectionsConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    return-object v0
.end method


# virtual methods
.method public asyncInformMonitors(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 8
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 879
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 880
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMonitorSockets()Ljava/util/Set;

    move-result-object v0

    .line 881
    .local v0, "monitorSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 887
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 886
    const-string v6, "Propagating election results to %d monitors\n"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 885
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;

    new-instance v3, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/utilint/StatGroup;)V

    invoke-direct {v2, p0, v0, v3}, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 891
    return-void
.end method

.method public declared-synchronized electionInProgress()Z
    .locals 1

    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAcceptor()Lcom/sleepycat/je/rep/elections/Acceptor;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->acceptor:Lcom/sleepycat/je/rep/elections/Acceptor;

    return-object v0
.end method

.method public getAcceptorSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllAcceptorSockets()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    nop

    .line 298
    const-string v0, "No rep group was configured"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getElectionCount()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->nElections:I

    return v0
.end method

.method public getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    move-result-object v0

    return-object v0
.end method

.method public getLearner()Lcom/sleepycat/je/rep/elections/Learner;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method public getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    monitor-enter p0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections;->electionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->getStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 497
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections;
    :cond_0
    :try_start_1
    const-string v0, "Election in progress"

    .line 498
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized initiateElection(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/QuorumPolicy;)V
    .locals 1
    .param p1, "newGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p2, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 452
    const v0, 0x7fffffff

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/elections/Elections;->initiateElection(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/QuorumPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 451
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections;
    .end local p1    # "newGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local p2    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initiateElection(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/rep/QuorumPolicy;I)V
    .locals 11
    .param p1, "newGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p2, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p3, "maxRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 355
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/elections/Elections;->updateRepGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, "startTime":J
    iget v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->nElections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->nElections:I

    .line 358
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Election initiated; election #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sleepycat/je/rep/elections/Elections;->nElections:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections;->electionInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 371
    .local v2, "waitMs":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Election in progress. Waiting ... for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->join(J)V

    .line 376
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Election did not finish as expected. resorting to shutdown"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V

    .line 382
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->shutdown()V

    .line 385
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections;
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    .line 386
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v3

    .line 387
    .local v3, "exception":Ljava/lang/Exception;
    if-nez v3, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v4, v5, v6, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v4

    .line 395
    .end local v2    # "waitMs":I
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 396
    .local v2, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->setLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    move-object v2, v4

    .line 399
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    new-instance v7, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {v7, v3, p3, v2}, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;ILjava/util/concurrent/CountDownLatch;)V

    .line 403
    .local v7, "retryPredicate":Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;
    new-instance v3, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v8, :cond_3

    const/4 v4, 0x0

    move-object v9, v4

    goto :goto_1

    .line 406
    :cond_3
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepImpl;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :goto_1
    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/elections/Elections$1;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    .line 408
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 412
    invoke-static {v7}, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->access$100(Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;)I

    move-result v3

    if-gtz v3, :cond_4

    .line 414
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retry count exhausted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 416
    invoke-static {v7}, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->access$200(Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 414
    invoke-static {v3, v4, v5, v6, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 428
    :cond_4
    nop

    .line 429
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Election finished. Elapsed time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 429
    invoke-static {v3, v4, v5, v6, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 432
    monitor-exit p0

    return-void

    .line 423
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Election initiation interrupted"

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections;->shutdown()V

    .line 427
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 399
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "retryPredicate":Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 354
    .end local v0    # "startTime":J
    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local p1    # "newGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local p2    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    .end local p3    # "maxRetries":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public participate()V
    .locals 2

    .line 275
    new-instance v0, Lcom/sleepycat/je/rep/elections/RankingProposer;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/elections/RankingProposer;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->proposer:Lcom/sleepycat/je/rep/elections/Proposer;

    .line 276
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections;->startAcceptor()V

    .line 277
    return-void
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Elections shutdown initiated"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->acceptor:Lcom/sleepycat/je/rep/elections/Acceptor;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Acceptor;->shutdown()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Learner;->shutdown()V

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->shutdown()V

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->proposer:Lcom/sleepycat/je/rep/elections/Proposer;

    if-eqz v0, :cond_4

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Proposer;->shutdown()V

    .line 584
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    if-eqz v0, :cond_5

    .line 585
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->cancel()Z

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 588
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Elections shutdown completed"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public shutdownAcceptorsLearners(Ljava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 530
    .local p1, "acceptorSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    .local p2, "learnerSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Elections being shutdown"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 532
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;)V

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    .line 533
    const-string v2, "Acceptor"

    invoke-static {p1, v2, v0, v1}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v0

    .line 538
    .local v0, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    const-wide/16 v4, 0x3c

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lcom/sleepycat/je/rep/elections/Utils;->checkFutures(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 540
    new-instance v1, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->pool:Ljava/util/concurrent/ExecutorService;

    const-string v3, "Learner"

    invoke-static {p2, v3, v1, v2}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v0

    .line 544
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Elections;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/elections/Elections;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v10, p0, Lcom/sleepycat/je/rep/elections/Elections;->formatter:Ljava/util/logging/Formatter;

    const-wide/16 v5, 0x3c

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Lcom/sleepycat/je/rep/elections/Utils;->checkFutures(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 546
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Learner;->join()V

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->acceptor:Lcom/sleepycat/je/rep/elections/Acceptor;

    if-eqz v1, :cond_1

    .line 550
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Acceptor;->join()V

    .line 552
    :cond_1
    return-void
.end method

.method public startAcceptor()V
    .locals 4

    .line 280
    new-instance v0, Lcom/sleepycat/je/rep/elections/Acceptor;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/Acceptor;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/ElectionsConfig;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->acceptor:Lcom/sleepycat/je/rep/elections/Acceptor;

    .line 281
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Acceptor;->start()V

    .line 282
    return-void
.end method

.method public startLearner()V
    .locals 7

    .line 254
    new-instance v0, Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 256
    invoke-interface {v3}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/Learner;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    .line 257
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Learner;->start()V

    .line 258
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->listener:Lcom/sleepycat/je/rep/elections/Learner$Listener;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/elections/Learner;->addListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V

    .line 259
    new-instance v0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionListener:Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    .line 260
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections;->learner:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/elections/Learner;->addListener(Lcom/sleepycat/je/rep/elections/Learner$Listener;)V

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    .line 263
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->getPeriod()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->rebroadcastTask:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    .line 264
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->getPeriod()I

    move-result v0

    int-to-long v5, v0

    .line 262
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 266
    :cond_0
    return-void
.end method

.method public updateRepGroup(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 2
    .param p1, "newRepGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 466
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 467
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllElectionMemberIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/elections/Protocol;->updateNodeIds(Ljava/util/Set;)V

    .line 468
    return-void
.end method

.method public updateRepGroupOnly(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 0
    .param p1, "newRepGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 482
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections;->repGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 483
    return-void
.end method

.method public declared-synchronized waitForElection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections;->electionThread:Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 511
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 512
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :goto_0
    monitor-exit p0

    throw v0
.end method
