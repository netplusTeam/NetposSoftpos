.class public Lcom/sleepycat/je/rep/RollbackProhibitedException;
.super Lcom/sleepycat/je/rep/RestartRequiredException;
.source "RollbackProhibitedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;IZLcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "rollbackTxnLimit"    # I
    .param p3, "rollbackDisabled"    # Z
    .param p4, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "searchResults"    # Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 87
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ROLLBACK_PROHIBITED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 88
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p5, p4, p2, p3}, Lcom/sleepycat/je/rep/RollbackProhibitedException;->makeMessage(Ljava/lang/String;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;Lcom/sleepycat/je/utilint/VLSN;IZ)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 90
    iput-object p5, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RollbackProhibitedException;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/RollbackProhibitedException;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/RollbackProhibitedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RestartRequiredException;)V

    .line 139
    iget-object v0, p2, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    iput-object v0, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 140
    return-void
.end method

.method private static makeMessage(Ljava/lang/String;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;Lcom/sleepycat/je/utilint/VLSN;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "searchResults"    # Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;
    .param p2, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "rollbackTxnLimit"    # I
    .param p4, "rollbackDisabled"    # Z

    .line 98
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v0

    .line 99
    .local v0, "matchpointLSN":J
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    .line 100
    .local v2, "fileNumber":J
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 101
    .local v4, "fileOffset":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v6, "str":Ljava/lang/StringBuilder;
    const-string v7, "Node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 104
    const-string v8, " must rollback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getRollbackMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 105
    const-string v8, " in order to rejoin the replication group, but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz p4, :cond_0

    .line 108
    const-string/jumbo v7, "rollbacks are disabled because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 109
    const-string v8, "je.rep.txnRollbackDisabled has been set to true. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 110
    const-string v8, "Either set je.rep.txnRollbackDisabled to false to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 111
    const-string v8, "permit automatic rollback,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_0
    const-string v7, " the transaction rollback limit of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 115
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prohibits this. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 116
    const-string v8, "Either increase je.rep.txnRollbackLimit to a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 117
    const-string/jumbo v8, "value larger than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 118
    const-string v8, " to permit automatic rollback,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_0
    const-string v7, " or manually remove the problematic transactions. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 122
    const-string v8, "To do manual removal, truncate the log to file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 123
    invoke-static {v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFileName(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 124
    const-string v8, ", offset 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 125
    const-string v8, ", vlsn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 126
    const-string v8, " using the directions in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 127
    const-string v8, "com.sleepycat.je.util.DbTruncateLog."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public getEarliestTransactionCommitTime()Ljava/lang/Long;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

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
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->id:J

    return-wide v0
.end method

.method public getTruncationFileNumber()J
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTruncationFileOffset()J
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/rep/RollbackProhibitedException;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/RollbackProhibitedException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/RollbackProhibitedException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/RollbackProhibitedException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/sleepycat/je/rep/RollbackProhibitedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/RollbackProhibitedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RollbackProhibitedException;)V

    return-object v0
.end method
