.class public final Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;
.super Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
.source "VLSNRecoveryTracker.java"

# interfaces
.implements Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;


# instance fields
.field private lastMatchpointLsn:J

.field private lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private rollbackType:B


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;III)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "stride"    # I
    .param p3, "maxMappings"    # I
    .param p4, "maxDistance"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;III)V

    .line 78
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointLsn:J

    .line 87
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->rollbackType:B

    .line 88
    return-void
.end method


# virtual methods
.method public getLastMatchpointLsn()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointLsn:J

    return-wide v0
.end method

.method public getLastMatchpointVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackMapping(JLcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V
    .locals 4
    .param p1, "lsn"    # J
    .param p3, "currentEntryHeader"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p4, "targetLogEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 96
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 100
    .local v0, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->track(Lcom/sleepycat/je/utilint/VLSN;JB)V

    .end local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    iget-byte v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->rollbackType:B

    if-ne v0, v1, :cond_4

    .line 102
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    .line 103
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/RollbackStart;

    .line 105
    .local v0, "rb":Lcom/sleepycat/je/txn/RollbackStart;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/RollbackStart;->getMatchpointVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 106
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/RollbackStart;->getMatchpoint()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointLsn:J

    .line 107
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-lez v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->initEmpty()V

    .line 114
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 119
    return-void

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->lastMatchpointLsn:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->truncateFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    goto :goto_1

    .line 101
    .end local v0    # "rb":Lcom/sleepycat/je/txn/RollbackStart;
    :cond_4
    :goto_0
    nop

    .line 124
    :goto_1
    return-void
.end method
