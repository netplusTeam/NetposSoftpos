.class public Lcom/sleepycat/je/txn/RollbackStart;
.super Ljava/lang/Object;
.source "RollbackStart.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private activeTxnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private matchpointLSN:J

.field private matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;JLjava/util/Set;)V
    .locals 3
    .param p1, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "matchpointLSN"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p4, "activeTxnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 54
    iput-wide p2, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    .line 55
    iput-object p4, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    .line 56
    new-instance v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 57
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 125
    const-string v0, " matchpointVLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, " matchpointLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v0, "displayTxnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 136
    const-string v1, " activeTxnIds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "\" time=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    return-void
.end method

.method public getActiveTxnIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    return-object v0
.end method

.method public getLogSize()I
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    .line 82
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 83
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    .line 84
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 87
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 88
    .end local v2    # "id":Ljava/lang/Long;
    goto :goto_0

    .line 90
    :cond_0
    return v0
.end method

.method public getMatchpoint()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    return-wide v0
.end method

.method public getMatchpointVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 144
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 152
    instance-of v0, p1, Lcom/sleepycat/je/txn/RollbackStart;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/RollbackStart;

    .line 158
    .local v0, "otherRS":Lcom/sleepycat/je/txn/RollbackStart;
    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, v0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    iget-object v3, v0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 160
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;->equals(Lcom/sleepycat/je/utilint/Timestamp;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    iget-object v3, v0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    .line 161
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 158
    :goto_0
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 110
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 111
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    .line 113
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 114
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 115
    .local v0, "setSize":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/RollbackStart;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 98
    iget-wide v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->matchpointLSN:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 99
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/txn/RollbackStart;->activeTxnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 102
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 103
    .end local v1    # "id":Ljava/lang/Long;
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
