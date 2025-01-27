.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;
.super Ljava/lang/Object;
.source "ArbiterImpl.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSuggestionGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;

    .line 847
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 4
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 851
    new-instance v0, Lcom/sleepycat/je/rep/elections/MasterValue;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 852
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getPort()I

    move-result v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/sleepycat/je/rep/elections/MasterValue;-><init>(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 851
    return-object v0
.end method

.method public getRanking(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    .locals 8
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 858
    new-instance v7, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->getDTVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 859
    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterSuggestionGenerator;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 860
    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->getLastAckNodeId()I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJJ)V

    .line 858
    return-object v7
.end method
