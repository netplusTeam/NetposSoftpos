.class public abstract Lcom/sleepycat/je/rep/elections/Proposer;
.super Ljava/lang/Object;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;,
        Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;,
        Lcom/sleepycat/je/rep/elections/Proposer$Proposal;,
        Lcom/sleepycat/je/rep/elections/Proposer$HaveQuorum;,
        Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;,
        Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;,
        Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;,
        Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;,
        Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    }
.end annotation


# instance fields
.field protected final elections:Lcom/sleepycat/je/rep/elections/Elections;

.field protected final formatter:Ljava/util/logging/Formatter;

.field protected final logger:Ljava/util/logging/Logger;

.field protected final phase1Arbiter:Lcom/sleepycat/je/utilint/IntStat;

.field private final phase1HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

.field protected final phase1NoNonZeroPrio:Lcom/sleepycat/je/utilint/IntStat;

.field private final phase1NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

.field private final phase2HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

.field private final phase2NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

.field private final promiseCount:Lcom/sleepycat/je/utilint/IntStat;

.field private volatile shutdown:Z

.field private final statistics:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 3
    .param p1, "elections"    # Lcom/sleepycat/je/rep/elections/Elections;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 80
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    .line 85
    :goto_0
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v0, p2}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    .line 87
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Election Proposer"

    const-string v2, "Proposals are the first stage of a replication group election."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    .line 89
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

    .line 90
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_NO_NON_ZERO_PRIO:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1NoNonZeroPrio:Lcom/sleepycat/je/utilint/IntStat;

    .line 91
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_ARBITER:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1Arbiter:Lcom/sleepycat/je/utilint/IntStat;

    .line 92
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

    .line 93
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE2_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase2NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

    .line 94
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE2_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase2HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

    .line 95
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PROMISE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->promiseCount:Lcom/sleepycat/je/utilint/IntStat;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/elections/Proposer;)Lcom/sleepycat/je/utilint/IntStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Proposer;

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/elections/Proposer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Proposer;

    .line 53
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->shutdown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/elections/Proposer;)Lcom/sleepycat/je/utilint/IntStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Proposer;

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase2HigherProposal:Lcom/sleepycat/je/utilint/IntStat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/QuorumPolicy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Proposer;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/elections/Proposer;->haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z

    move-result v0

    return v0
.end method

.method private haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z
    .locals 1
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "votes"    # I

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z

    move-result v0

    .line 122
    return v0
.end method

.method private phase1(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    .locals 6
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phase 1 proposal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 145
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections;->getAcceptorSockets()Ljava/util/Set;

    move-result-object v0

    .line 146
    .local v0, "acceptorSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    new-instance v1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 150
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p2}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 151
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 148
    const-string v3, "Acceptor"

    invoke-static {v0, v3, v1, v2}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v1

    .line 153
    .local v1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-direct {p0, p2, v1}, Lcom/sleepycat/je/rep/elections/Proposer;->tallyPhase1Results(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    move-result-object v2

    .line 160
    .local v2, "result":Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    iget-object v3, v2, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisories:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/je/rep/elections/Proposer;->haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    return-object v2

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase1NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 165
    const/4 v3, 0x0

    return-object v3
.end method

.method private phase2(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Ljava/util/Set;)Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    .locals 6
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p3, "phase2Value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/QuorumPolicy;",
            "Lcom/sleepycat/je/rep/elections/Proposer$Proposal;",
            "Lcom/sleepycat/je/rep/elections/Protocol$Value;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
        }
    .end annotation

    .line 263
    .local p4, "promisories":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 264
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phase 2 proposal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 269
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p2, p3}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 270
    .local v0, "accept":Lcom/sleepycat/je/rep/elections/Protocol$Accept;
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 272
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 271
    const-string v2, "Acceptor"

    invoke-static {p4, v2, v0, v1}, Lcom/sleepycat/je/rep/elections/Utils;->broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    move-result-object v1

    .line 273
    .local v1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-direct {p0, p1, v1}, Lcom/sleepycat/je/rep/elections/Proposer;->tallyPhase2Results(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    move-result-object v2

    .line 275
    .local v2, "result":Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    iget-object v3, v2, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;->accepts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/je/rep/elections/Proposer;->haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    return-object v2

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer;->phase2NoQuorum:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 280
    const/4 v3, 0x0

    return-object v3
.end method

.method private tallyPhase1Results(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    .locals 12
    .param p1, "currentProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/elections/Proposer$Proposal;",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;)",
            "Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
        }
    .end annotation

    .line 186
    .local p2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$1;)V

    .line 188
    .local v0, "result":Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    new-instance v1, Lcom/sleepycat/je/rep/elections/Proposer$1;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 189
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 190
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v9

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/sleepycat/je/rep/elections/Proposer$1;-><init>(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;)V

    .line 237
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Proposer$1;->execute()V

    .line 239
    iget-object v1, v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v1, :cond_0

    .line 241
    iput-object p1, v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->promiseCount:Lcom/sleepycat/je/utilint/IntStat;

    iget-object v2, v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisories:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 245
    return-object v0
.end method

.method private tallyPhase2Results(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    .locals 13
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/QuorumPolicy;",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;)",
            "Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
        }
    .end annotation

    .line 297
    .local p2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v0, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$1;)V

    .line 300
    .local v0, "result":Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/rep/elections/Proposer$2;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 301
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 302
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v9

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v11, v0

    move-object v12, p1

    invoke-direct/range {v2 .. v12}, Lcom/sleepycat/je/rep/elections/Proposer$2;-><init>(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 345
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Proposer$2;->execute()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/elections/Proposer$HaveQuorum; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 350
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected abstract choosePhase2Value(Ljava/util/Set;)Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;)",
            "Lcom/sleepycat/je/rep/elections/Protocol$Value;"
        }
    .end annotation
.end method

.method public getProposerStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method public issueProposal(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;)Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
    .locals 10
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "retryPredicate"    # Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 394
    :goto_0
    invoke-interface {p2}, Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;->retry()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Proposer;->nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    .line 397
    .local v0, "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/elections/Proposer;->phase1(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    move-result-object v1

    .line 398
    .local v1, "result1":Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    if-nez v1, :cond_0

    .line 399
    goto :goto_0

    .line 406
    :cond_0
    invoke-interface {p2}, Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;->electionRoundConcluded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    iget-object v2, v1, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisoryMessages:Ljava/util/Set;

    .line 411
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/elections/Proposer;->choosePhase2Value(Ljava/util/Set;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v2

    .line 412
    .local v2, "phase2Value":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    if-nez v2, :cond_1

    .line 413
    goto :goto_0

    .line 416
    :cond_1
    invoke-interface {p2}, Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;->electionRoundConcluded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 420
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisories:Ljava/util/Set;

    .line 421
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sleepycat/je/rep/elections/Proposer;->phase2(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Ljava/util/Set;)Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    move-result-object v3

    .line 423
    .local v3, "result2":Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    if-nez v3, :cond_2

    .line 424
    goto :goto_0

    .line 427
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Winning proposal: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 431
    new-instance v4, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-direct {v4, v0, v2, v5}, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/utilint/StatGroup;)V

    return-object v4

    .line 417
    .end local v3    # "result2":Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
    :cond_3
    new-instance v3, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    .end local p1    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    .end local p2    # "retryPredicate":Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
    throw v3

    .line 407
    .end local v2    # "phase2Value":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .restart local p1    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    .restart local p2    # "retryPredicate":Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
    :cond_4
    new-instance v2, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    .end local p1    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    .end local p2    # "retryPredicate":Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
    throw v2
    :try_end_0
    .catch Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .end local v1    # "result1":Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
    .restart local p1    # "quorumPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    .restart local p2    # "retryPredicate":Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "eip":Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
    goto :goto_0

    .line 436
    .end local v0    # "eip":Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
    :cond_5
    new-instance v0, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    throw v0
.end method

.method protected abstract nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
.end method

.method public shutdown()V
    .locals 1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/elections/Proposer;->shutdown:Z

    .line 103
    return-void
.end method
