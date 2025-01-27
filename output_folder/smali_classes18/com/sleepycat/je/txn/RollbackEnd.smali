.class public Lcom/sleepycat/je/txn/RollbackEnd;
.super Ljava/lang/Object;
.source "RollbackEnd.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private matchpointLSN:J

.field private rollbackStartLSN:J

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "matchpointLSN"    # J
    .param p3, "rollbackStartLSN"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    .line 38
    iput-wide p3, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    .line 39
    new-instance v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 40
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 91
    const-string v0, " matchpointLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, " rollbackStartLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method

.method public getLogSize()I
    .locals 3

    .line 60
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    .line 61
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 62
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public getMatchpoint()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    return-wide v0
.end method

.method public getRollbackStart()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    return-wide v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 110
    instance-of v0, p1, Lcom/sleepycat/je/txn/RollbackEnd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return v1

    .line 114
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/RollbackEnd;

    .line 115
    .local v0, "otherRE":Lcom/sleepycat/je/txn/RollbackEnd;
    iget-wide v2, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    iget-object v3, v0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 117
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;->equals(Lcom/sleepycat/je/utilint/Timestamp;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 115
    :goto_0
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 80
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    .line 81
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    .line 83
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/RollbackEnd;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 70
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->matchpointLSN:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 71
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->rollbackStartLSN:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 73
    return-void
.end method
