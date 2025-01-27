.class public Lcom/sleepycat/je/rep/RollbackException;
.super Lcom/sleepycat/je/rep/RestartRequiredException;
.source "RollbackException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "searchResults"    # Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 74
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HARD_RECOVERY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lcom/sleepycat/je/rep/RollbackException;->makeMessage(Ljava/lang/String;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;Lcom/sleepycat/je/utilint/VLSN;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 78
    iput-object p3, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RollbackException;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/RollbackException;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/RollbackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RestartRequiredException;)V

    .line 137
    iget-object v0, p2, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    iput-object v0, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 138
    return-void
.end method

.method private static makeMessage(Ljava/lang/String;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;Lcom/sleepycat/je/utilint/VLSN;)Ljava/lang/String;
    .locals 5
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "searchResults"    # Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;
    .param p2, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 87
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v0

    .line 88
    .local v0, "matchpointLSN":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must rollback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getRollbackMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in order to rejoin the replication group. All existing ReplicatedEnvironment handles must be closed and reinstantiated.  Log files were truncated to file 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vlsn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    return-object v2
.end method


# virtual methods
.method public getEarliestTransactionCommitTime()Ljava/lang/Long;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return-object v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    return-object v1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestTransactionId()J
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return-wide v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    return-wide v1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->id:J

    return-wide v0
.end method

.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/RollbackException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/RollbackException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/RollbackException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/sleepycat/je/rep/RollbackException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/RollbackException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RollbackException;)V

    return-object v0
.end method
