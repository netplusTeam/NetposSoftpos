.class public Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;
.super Ljava/lang/Object;
.source "MatchpointSearchResults.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

.field private earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

.field private matchpointLSN:J

.field private numPassedCommits:I

.field private numPassedDurableCommits:I

.field private passedCheckpointEnd:Z

.field private passedSkippedGap:Z

.field private final passedTxnLimit:I

.field private final passedTxns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private penultimatePassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 89
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->matchpointLSN:J

    .line 91
    nop

    .line 92
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->TXN_ROLLBACK_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxnLimit:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    .line 94
    iput v2, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    .line 95
    iput v2, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    .line 96
    return-void
.end method

.method private processDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 4
    .param p1, "txnEndVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "txnEndDTVLSN"    # J

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, p2, p3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 201
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTVLSNs should only decrease with decreasing VLSNs. prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " commit VLSN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dumpPassedTxns()Ljava/lang/String;
    .locals 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    .line 263
    .local v2, "info":Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v2    # "info":Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;
    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDTVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getEarliestPassedTxn()Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    return-object v0
.end method

.method public getMatchpointLSN()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->matchpointLSN:J

    return-wide v0
.end method

.method public getNumPassedCommits()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    return v0
.end method

.method public getNumPassedDurableCommits()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    return v0
.end method

.method getPassedCheckpointEnd()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedCheckpointEnd:Z

    return v0
.end method

.method public getRollbackMsg()Ljava/lang/String;
    .locals 2

    .line 287
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    if-nez v0, :cond_0

    .line 288
    const-string v0, " uncommitted operations"

    return-object v0

    .line 291
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    const-string v1, " "

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total commits to the earliest point indicated by transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total commits("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of which were durable) to the earliest point indicated by transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSkippedGap()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedSkippedGap:Z

    return v0
.end method

.method notePassedAborts(Lcom/sleepycat/je/txn/TxnAbort;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 2
    .param p1, "abort"    # Lcom/sleepycat/je/txn/TxnAbort;
    .param p2, "abortVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 220
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/TxnAbort;->getDTVLSN()J

    move-result-wide v0

    .line 226
    .local v0, "abortDTVLSN":J
    invoke-direct {p0, p2, v0, v1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->processDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 227
    return-void
.end method

.method notePassedCheckpointEnd()V
    .locals 1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedCheckpointEnd:Z

    .line 104
    return-void
.end method

.method notePassedCommits(Lcom/sleepycat/je/txn/TxnCommit;Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 16
    .param p1, "commit"    # Lcom/sleepycat/je/txn/TxnCommit;
    .param p2, "commitVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "commitLSN"    # J

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 155
    .local v1, "durableCommit":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/TxnCommit;->getTime()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v10

    .line 156
    .local v10, "commitTime":Lcom/sleepycat/je/utilint/Timestamp;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/TxnCommit;->getId()J

    move-result-wide v11

    .line 157
    .local v11, "txnId":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/TxnCommit;->getDTVLSN()J

    move-result-wide v13

    .line 159
    .local v13, "commitDTVLSN":J
    if-eqz v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    invoke-direct {v0, v9, v13, v14}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->processDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/TxnCommit;->hasLoggedEntries()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 164
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 165
    invoke-virtual {v9, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 166
    :cond_0
    iget v2, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    .line 167
    const/4 v1, 0x1

    move v15, v1

    goto :goto_0

    .line 171
    :cond_1
    move v15, v1

    .end local v1    # "durableCommit":Z
    .local v15, "durableCommit":Z
    :goto_0
    iget v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    .line 172
    iget-object v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    if-eqz v1, :cond_2

    .line 173
    iput-object v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->penultimatePassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    .line 175
    :cond_2
    new-instance v8, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    move-object v1, v8

    move-object v2, v10

    move-wide v3, v11

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object v9, v8

    move v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;-><init>(Lcom/sleepycat/je/utilint/Timestamp;JLcom/sleepycat/je/utilint/VLSN;JZ)V

    iput-object v9, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    .line 182
    iget v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    iget v2, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxnLimit:I

    if-gt v1, v2, :cond_3

    .line 183
    iget-object v1, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    return-void
.end method

.method noteSkippedGap()V
    .locals 1

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedSkippedGap:Z

    .line 112
    return-void
.end method

.method setMatchpoint(J)V
    .locals 4
    .param p1, "match"    # J

    .line 120
    iput-wide p1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->matchpointLSN:J

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->lsn:J

    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->matchpointLSN:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 123
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 127
    .local v0, "lastSavedTxn":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->lsn:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->penultimatePassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    .line 133
    .end local v0    # "lastSavedTxn":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matchpointLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->matchpointLSN:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passedCkpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedCheckpointEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passedTxnLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxnLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passedTxns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedTxns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " earliestTxn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->earliestPassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " penultimateTxn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->penultimatePassedTxn:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numPassedCommits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedCommits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numPassedDurableCommits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->numPassedDurableCommits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passedSkippedGap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->passedSkippedGap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
