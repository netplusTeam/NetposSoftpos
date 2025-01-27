.class public Lcom/sleepycat/je/rep/elections/Acceptor;
.super Lcom/sleepycat/je/rep/elections/ElectionAgentThread;
.source "Acceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "Acceptor"


# instance fields
.field private acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field private final config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

.field private promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field private final suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/ElectionsConfig;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;)V
    .locals 3
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "config"    # Lcom/sleepycat/je/rep/elections/ElectionsConfig;
    .param p3, "suggestionGenerator"    # Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    .line 67
    invoke-interface {p2}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acceptor Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-interface {p2}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {p0, v0, p1, v1}, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 50
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 71
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    .line 72
    return-void
.end method


# virtual methods
.method process(Lcom/sleepycat/je/rep/elections/Protocol$Accept;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 6
    .param p1, "accept"    # Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    .line 224
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reject Accept: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Promised proposal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/elections/Protocol$Reject;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 232
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Promised: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Accepted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 234
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    return-object v0
.end method

.method process(Lcom/sleepycat/je/rep/elections/Protocol$Propose;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 12
    .param p1, "propose"    # Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reject Propose: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Promised proposal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/elections/Protocol$Reject;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 201
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    invoke-interface {v1, v0}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;->get(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v0

    .line 202
    .local v0, "suggestedValue":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->suggestionGenerator:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 203
    invoke-interface {v1, v2}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;->getRanking(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    move-result-object v1

    .line 204
    .local v1, "suggestionRanking":Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Promised: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Suggested Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Suggestion Ranking: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 208
    new-instance v11, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->promisedProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 212
    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getElectionPriority()I

    move-result v8

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 213
    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getLogVersion()I

    move-result v9

    sget-object v10, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    move-object v2, v11

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v10}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;IILcom/sleepycat/je/JEVersion;)V

    .line 208
    return-object v11
.end method

.method public run()V
    .locals 16

    .line 79
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 80
    invoke-interface {v0}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v2

    .line 81
    .local v2, "serviceDispatcher":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v3, "Acceptor"

    invoke-virtual {v2, v3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 82
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 83
    const-string v7, "Acceptor started"

    invoke-static {v0, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    move-object v4, v0

    .line 87
    .local v4, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 88
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->takeChannel(Ljava/lang/String;I)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v4, v0

    .line 90
    if-nez v4, :cond_0

    .line 177
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    .line 92
    return-void

    .line 95
    :cond_0
    const/4 v5, 0x0

    .line 96
    .local v5, "in":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 98
    .local v6, "out":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 100
    invoke-static {v4}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 101
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v0, Ljava/io/PrintWriter;

    .line 102
    invoke-static {v4}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v5

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v15, v0

    .line 103
    .end local v6    # "out":Ljava/io/PrintWriter;
    .local v15, "out":Ljava/io/PrintWriter;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v0

    .line 104
    .local v14, "requestLine":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 105
    :try_start_4
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Acceptor: EOF on request"

    invoke-static {v0, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    :try_start_5
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v8, v4

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_0

    .line 164
    .end local v14    # "requestLine":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v11, v9

    goto/16 :goto_4

    .line 158
    :catch_0
    move-exception v0

    move-object v11, v9

    goto/16 :goto_3

    .line 110
    .restart local v14    # "requestLine":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 112
    .local v5, "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    :try_start_6
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v0, v14}, Lcom/sleepycat/je/rep/elections/Protocol;->parseRequest(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    move-result-object v0
    :try_end_6
    .catch Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 116
    .end local v5    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .local v0, "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    nop

    .line 117
    :try_start_7
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v5

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/elections/Protocol;->SHUTDOWN:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v5, v6, :cond_2

    .line 164
    :try_start_8
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v13, v4

    move-object v6, v14

    .end local v14    # "requestLine":Ljava/lang/String;
    .local v6, "requestLine":Ljava/lang/String;
    move-object v14, v9

    move-object v7, v15

    .end local v15    # "out":Ljava/io/PrintWriter;
    .local v7, "out":Ljava/io/PrintWriter;
    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 177
    .end local v0    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/PrintWriter;
    .end local v9    # "in":Ljava/io/BufferedReader;
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    .line 179
    nop

    .line 180
    return-void

    .line 120
    .restart local v0    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "requestLine":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/PrintWriter;
    :cond_2
    move-object v6, v14

    move-object v7, v15

    .end local v14    # "requestLine":Ljava/lang/String;
    .end local v15    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :try_start_9
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 121
    invoke-interface {v5}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->config:Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    .line 122
    invoke-interface {v5}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 123
    .local v5, "masterTransfer":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :goto_1
    if-eqz v5, :cond_4

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Acceptor ignoring request due to active master transfer initiated at:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    .line 127
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->getStartTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;->getDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "msg":Ljava/lang/String;
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v10, v11, v12, v13, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    :try_start_a
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v13, v4

    move-object v14, v9

    move-object v15, v7

    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_0

    .line 133
    .end local v8    # "msg":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 134
    .local v8, "responseMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :try_start_b
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v10

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v11, v11, Lcom/sleepycat/je/rep/elections/Protocol;->PROPOSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v10, v11, :cond_5

    .line 135
    move-object v10, v0

    check-cast v10, Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/rep/elections/Acceptor;->process(Lcom/sleepycat/je/rep/elections/Protocol$Propose;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v10

    move-object v8, v10

    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v10

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v11, v11, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v10, v11, :cond_6

    .line 137
    move-object v10, v0

    check-cast v10, Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/rep/elections/Acceptor;->process(Lcom/sleepycat/je/rep/elections/Protocol$Accept;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v10

    move-object v8, v10

    .line 155
    :goto_2
    nop

    .line 156
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getSendVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->setSendVersion(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->wireFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 164
    .end local v0    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v5    # "masterTransfer":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v8    # "responseMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :try_start_c
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v13, v4

    move-object v14, v9

    move-object v15, v7

    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 166
    nop

    .line 167
    .end local v7    # "out":Ljava/io/PrintWriter;
    .end local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 139
    .restart local v0    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v5    # "masterTransfer":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "responseMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_6
    :try_start_d
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v13, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Acceptor unrecognized request: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 164
    :try_start_e
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v13, v4

    move-object v14, v9

    move-object v15, v7

    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_0

    .line 113
    .end local v0    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/PrintWriter;
    .end local v8    # "responseMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .local v5, "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v14    # "requestLine":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    .line 114
    .end local v14    # "requestLine":Ljava/lang/String;
    .end local v15    # "out":Ljava/io/PrintWriter;
    .local v0, "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :try_start_f
    iget-object v8, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-virtual {v8, v4, v0}, Lcom/sleepycat/je/rep/elections/Protocol;->processIME(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 164
    :try_start_10
    iget-object v10, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v13, v4

    move-object v14, v9

    move-object v15, v7

    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto/16 :goto_0

    .line 164
    .end local v0    # "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    .end local v5    # "requestMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v6    # "requestLine":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v15, v7

    move-object v11, v9

    goto/16 :goto_4

    .line 158
    :catch_2
    move-exception v0

    move-object v15, v7

    move-object v11, v9

    goto :goto_3

    .line 164
    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v15    # "out":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v0

    move-object v7, v15

    move-object v11, v9

    .end local v15    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    goto :goto_4

    .line 158
    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v15    # "out":Ljava/io/PrintWriter;
    :catch_3
    move-exception v0

    move-object v7, v15

    move-object v11, v9

    .end local v15    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .line 164
    .end local v7    # "out":Ljava/io/PrintWriter;
    .local v6, "out":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v0

    move-object v15, v6

    move-object v11, v9

    goto :goto_4

    .line 158
    :catch_4
    move-exception v0

    move-object v15, v6

    move-object v11, v9

    goto :goto_3

    .line 164
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v0

    move-object v11, v5

    move-object v15, v6

    goto :goto_4

    .line 158
    :catch_5
    move-exception v0

    move-object v11, v5

    move-object v15, v6

    .line 159
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/io/IOException;
    .local v11, "in":Ljava/io/BufferedReader;
    .restart local v15    # "out":Ljava/io/PrintWriter;
    :goto_3
    :try_start_11
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Acceptor IO error on socket: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 164
    :try_start_12
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v8, v4

    move-object v9, v11

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v0

    :goto_4
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    move-object v8, v4

    move-object v9, v11

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    .end local v2    # "serviceDispatcher":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .end local v4    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    throw v0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 177
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "serviceDispatcher":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .restart local v4    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 168
    :catch_6
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->isShutdown()Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v5, :cond_7

    .line 177
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    .line 171
    return-void

    .line 173
    :cond_7
    :try_start_14
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Acceptor;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Acceptor unexpected interrupted"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v2    # "serviceDispatcher":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .end local v4    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    throw v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "serviceDispatcher":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .restart local v4    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_5
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Acceptor;->cleanup()V

    throw v0
.end method
