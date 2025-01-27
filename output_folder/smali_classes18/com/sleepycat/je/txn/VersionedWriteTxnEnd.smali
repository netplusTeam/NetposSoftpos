.class public abstract Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;
.super Lcom/sleepycat/je/txn/TxnEnd;
.source "VersionedWriteTxnEnd.java"

# interfaces
.implements Lcom/sleepycat/je/log/VersionedWriteLoggable;


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sleepycat/je/txn/TxnEnd;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(JJIJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "lastLsn"    # J
    .param p5, "masterId"    # I
    .param p6, "dtvlsn"    # J

    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/txn/TxnEnd;-><init>(JJIJ)V

    .line 43
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 176
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "\" master=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->repMasterNodeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, "\" dtvlsn=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    return-void
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 57
    const/16 v0, 0xd

    return v0
.end method

.method public getLogSize()I
    .locals 2

    .line 67
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 4
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 83
    iget-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->id:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 84
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    .line 85
    :goto_0
    invoke-static {v2, v3}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->repMasterNodeId:I

    .line 87
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    if-lt p1, v1, :cond_1

    iget-wide v1, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    .line 89
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 83
    return v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DTVLSN is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 4
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 161
    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ge p2, v1, :cond_0

    .line 162
    return v0

    .line 169
    :cond_0
    nop

    .line 170
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 169
    invoke-static {v1, v2}, Lcom/sleepycat/util/PackedInteger;->getReadLongLength([BI)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 121
    .local v2, "isUnpacked":Z
    :goto_0
    const/16 v3, 0xc

    if-lt p2, v3, :cond_1

    .line 122
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    .line 124
    :cond_1
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->id:J

    .line 125
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 126
    if-ge p2, v3, :cond_2

    .line 127
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    .line 129
    :cond_2
    if-lt p2, v1, :cond_3

    .line 130
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->repMasterNodeId:I

    .line 134
    :cond_3
    const/16 v0, 0xd

    if-lt p2, v0, :cond_5

    .line 135
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    .line 136
    iget-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    goto :goto_1

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected null dtvlsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    .line 146
    :goto_1
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 72
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 74
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 5
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I
    .param p3, "forReplication"    # Z

    .line 97
    const/16 v0, 0xc

    const-wide/16 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 98
    if-eqz p3, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    :goto_0
    invoke-static {p1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 101
    :cond_1
    iget-wide v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->id:J

    invoke-static {p1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 102
    iget-object v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 103
    if-ge p2, v0, :cond_3

    .line 104
    if-eqz p3, :cond_2

    move-wide v3, v1

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->lastLsn:J

    :goto_1
    invoke-static {p1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 107
    :cond_3
    iget v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->repMasterNodeId:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 109
    const/16 v0, 0xd

    if-lt p2, v0, :cond_5

    .line 110
    iget-wide v3, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 113
    iget-wide v0, p0, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->dtvlsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected null dtvlsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    :goto_2
    return-void
.end method
