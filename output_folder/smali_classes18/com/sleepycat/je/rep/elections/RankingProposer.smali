.class public Lcom/sleepycat/je/rep/elections/RankingProposer;
.super Lcom/sleepycat/je/rep/elections/Proposer;
.source "RankingProposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;
    }
.end annotation


# static fields
.field static volatile testLogVersionReplicatePrevious:I


# instance fields
.field private final proposalGenerator:Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->testLogVersionReplicatePrevious:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 1
    .param p1, "elections"    # Lcom/sleepycat/je/rep/elections/Elections;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/elections/Proposer;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 167
    new-instance v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer;->proposalGenerator:Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    .line 45
    return-void
.end method


# virtual methods
.method protected choosePhase2Value(Ljava/util/Set;)Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;)",
            "Lcom/sleepycat/je/rep/elections/Protocol$Value;"
        }
    .end annotation

    .line 57
    .local p1, "exchanges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJ)V

    .line 59
    .local v1, "maxRanking":Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    const/high16 v2, -0x80000000

    .line 60
    .local v2, "maxPriority":I
    const/4 v3, 0x0

    .line 61
    .local v3, "maxTarget":Ljava/lang/String;
    const/4 v4, 0x0

    .line 62
    .local v4, "zeroPrioNodes":I
    const/4 v5, 0x0

    .line 63
    .local v5, "arbRanking":Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    const/4 v6, 0x0

    .line 66
    .local v6, "nonArbCount":I
    new-instance v7, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;

    iget-object v8, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    move-object/from16 v9, p1

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Ljava/util/Set;)V

    .line 69
    .local v7, "calculator":Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;
    const/4 v8, 0x0

    .line 70
    .local v8, "acceptorValue":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 71
    .local v11, "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 72
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v14

    iget-object v14, v14, Lcom/sleepycat/je/rep/elections/Protocol;->PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-eq v13, v14, :cond_0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v13

    check-cast v13, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    .line 76
    .local v13, "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getPriority()I

    move-result v14

    if-nez v14, :cond_1

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->skipPromiseDueToVersion(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 82
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getSuggestion()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v14

    .line 87
    .local v14, "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    instance-of v15, v14, Lcom/sleepycat/je/rep/elections/MasterValue;

    if-eqz v15, :cond_3

    move-object v15, v14

    check-cast v15, Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 88
    invoke-virtual {v15}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v15

    sget-object v12, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v15, v12}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 97
    .local v12, "isArb":Z
    :goto_1
    if-nez v12, :cond_8

    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 104
    nop

    .line 105
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getSuggestionRanking()Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->compareTo(Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;)I

    move-result v15

    .line 106
    .local v15, "compareTo":I
    if-gez v15, :cond_4

    .line 107
    move/from16 v16, v6

    goto :goto_2

    .line 111
    :cond_4
    if-nez v15, :cond_6

    .line 112
    move/from16 v16, v6

    .end local v6    # "nonArbCount":I
    .local v16, "nonArbCount":I
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getPriority()I

    move-result v6

    if-ge v6, v2, :cond_5

    .line 113
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getPriority()I

    move-result v6

    if-ne v6, v2, :cond_7

    if-eqz v3, :cond_7

    iget-object v6, v11, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    .line 122
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_7

    .line 123
    nop

    .line 70
    .end local v11    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v12    # "isArb":Z
    .end local v13    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .end local v14    # "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .end local v15    # "compareTo":I
    .end local v16    # "nonArbCount":I
    .restart local v6    # "nonArbCount":I
    :goto_2
    move/from16 v6, v16

    .end local v6    # "nonArbCount":I
    .restart local v16    # "nonArbCount":I
    goto/16 :goto_0

    .line 111
    .end local v16    # "nonArbCount":I
    .restart local v6    # "nonArbCount":I
    .restart local v11    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .restart local v12    # "isArb":Z
    .restart local v13    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .restart local v14    # "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .restart local v15    # "compareTo":I
    :cond_6
    move/from16 v16, v6

    .line 127
    .end local v6    # "nonArbCount":I
    .restart local v16    # "nonArbCount":I
    :cond_7
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getSuggestion()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v8

    .line 128
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getSuggestionRanking()Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    move-result-object v1

    .line 129
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getPriority()I

    move-result v2

    .line 130
    iget-object v6, v11, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .end local v11    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v12    # "isArb":Z
    .end local v13    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .end local v14    # "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .end local v15    # "compareTo":I
    move/from16 v6, v16

    goto/16 :goto_0

    .line 100
    .end local v16    # "nonArbCount":I
    .restart local v6    # "nonArbCount":I
    .restart local v11    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .restart local v12    # "isArb":Z
    .restart local v13    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .restart local v14    # "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    :cond_8
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getSuggestionRanking()Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    move-result-object v5

    .line 101
    goto/16 :goto_0

    .line 133
    .end local v11    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v12    # "isArb":Z
    .end local v13    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .end local v14    # "suggestion":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    :cond_9
    if-nez v8, :cond_a

    if-lez v4, :cond_a

    .line 134
    iget-object v10, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->logger:Ljava/util/logging/Logger;

    iget-object v11, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v11}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v11

    iget-object v12, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No positive election priority node responded. Zero election priority node count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 139
    iget-object v10, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->phase1NoNonZeroPrio:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    goto :goto_3

    .line 140
    :cond_a
    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    const/4 v10, 0x1

    if-gt v6, v10, :cond_c

    .line 142
    invoke-virtual {v1, v5}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->compareTo(Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;)I

    move-result v10

    if-gez v10, :cond_c

    iget-wide v10, v5, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_b

    iget-wide v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    iget-wide v12, v5, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_c

    .line 150
    :cond_b
    iget-object v10, v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->phase1Arbiter:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 151
    const/4 v8, 0x0

    .line 154
    :cond_c
    :goto_3
    return-object v8
.end method

.method public declared-synchronized nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer;->proposalGenerator:Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/RankingProposer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
