.class public Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;
.super Ljava/lang/Object;
.source "MasterSuggestionGenerator.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;


# static fields
.field private static final MASTER_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

.field private static final PREMPTIVE_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;


# instance fields
.field private forceAsMaster:Z

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    const-wide v1, 0x7fffffffffffffffL

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJ)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->PREMPTIVE_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    .line 43
    new-instance v0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    const-wide v1, 0x7ffffffffffffffeL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJ)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->MASTER_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 1
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->forceAsMaster:Z

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 48
    return-void
.end method


# virtual methods
.method public forceMaster(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->forceAsMaster:Z

    .line 94
    return-void
.end method

.method public get(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 4
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 53
    new-instance v0, Lcom/sleepycat/je/rep/elections/MasterValue;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 54
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getPort()I

    move-result v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 55
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/MasterValue;-><init>(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 53
    return-object v0
.end method

.method public getRanking(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    .locals 12
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 60
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->forceAsMaster:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->PREMPTIVE_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNFreezeLatch()Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->freeze(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isAuthoritativeMaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->MASTER_RANKING:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    return-object v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDTVLSN()J

    move-result-wide v8

    .line 70
    .local v8, "dtvlsn":J
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v10

    .line 73
    .local v10, "vlsn":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeId()I

    move-result v1

    int-to-long v6, v1

    move-object v1, v0

    move-wide v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJJ)V

    return-object v0

    .line 81
    :cond_2
    new-instance v0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterSuggestionGenerator;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeId()I

    move-result v1

    int-to-long v6, v1

    move-object v1, v0

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJJ)V

    return-object v0
.end method
