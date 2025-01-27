.class Lcom/sleepycat/je/rep/vlsn/GhostBucket;
.super Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
.source "GhostBucket.java"


# instance fields
.field private firstPossibleLsn:J

.field private lastPossibleLsn:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/VLSN;JJ)V
    .locals 7
    .param p1, "ghostVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "firstPossibleLsn"    # J
    .param p4, "lastPossibleLsn"    # J

    .line 57
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(JIIILcom/sleepycat/je/utilint/VLSN;)V

    .line 62
    iput-wide p2, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstPossibleLsn:J

    .line 63
    iput-wide p4, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->lastPossibleLsn:J

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->dirty:Z

    .line 65
    return-void
.end method

.method static makeNewInstance(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/GhostBucket;
    .locals 11
    .param p0, "ti"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 72
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 73
    .local v1, "ghostVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v6

    .line 74
    .local v6, "firstLsn":J
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v8

    .line 75
    .local v8, "lastLsn":J
    new-instance v10, Lcom/sleepycat/je/rep/vlsn/GhostBucket;

    move-object v0, v10

    move-wide v2, v6

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/vlsn/GhostBucket;-><init>(Lcom/sleepycat/je/utilint/VLSN;JJ)V

    return-object v10
.end method


# virtual methods
.method getGTEFileNumber()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->lastPossibleLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->lastPossibleLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 95
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/GhostBucket;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getLTEFileNumber()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstPossibleLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized getLTELsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstPossibleLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 103
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/GhostBucket;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 111
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getNumOffsets()I
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method isGhost()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized put(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 1
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J

    monitor-enter p0

    .line 130
    :try_start_0
    const-string v0, "Shouldn\'t be called"

    .line 131
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/GhostBucket;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeFromHead(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "lastDuplicate"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 137
    nop

    .line 138
    const-string v0, "Shouldn\'t be called, only used in recovery merging."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method removeFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 1
    .param p1, "startOfDelete"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "prevLsn"    # J

    .line 144
    nop

    .line 145
    const-string v0, "Shouldn\'t be called"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<GhostBucket vlsn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " firstLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstPossibleLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " lastLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->lastPossibleLsn:J

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToTupleOutput(Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "to"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 86
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->firstPossibleLsn:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 87
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->lastPossibleLsn:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 88
    return-void
.end method
