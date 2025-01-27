.class abstract Lcom/sleepycat/je/rep/stream/VLSNReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "VLSNReader.java"


# instance fields
.field currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

.field currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field nReposition:J

.field nScanned:J

.field final vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;ZJIJ)V
    .locals 12
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "forward"    # Z
    .param p4, "startLsn"    # J
    .param p6, "readBufferSize"    # I
    .param p7, "finishLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 75
    move-object v11, p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v7, p4

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 83
    move-object v0, p2

    iput-object v0, v11, Lcom/sleepycat/je/rep/stream/VLSNReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 84
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, v11, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 85
    return-void
.end method


# virtual methods
.method getNReposition()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nReposition:J

    return-wide v0
.end method

.method getNScanned()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nScanned:J

    return-wide v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    new-instance v1, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 143
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method resetStats()V
    .locals 2

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nReposition:J

    .line 160
    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nScanned:J

    .line 161
    return-void
.end method

.method setPosition(J)V
    .locals 12
    .param p1, "startLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 90
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->forward:Z

    const-string v1, " reposition = "

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/VLSNReader;->getLastLsn()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feeder forward scanning should not be repositioned to  a position earlier than the current position. Current lsn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/VLSNReader;->getLastLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/VLSNReader;->getLastLsn()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_5

    .line 115
    :goto_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 116
    .local v0, "fileNum":J
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v10

    .line 118
    .local v10, "offset":J
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2, v0, v1, v10, v11}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->containsLsn(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2, v10, v11}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->positionBuffer(J)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-boolean v9, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->forward:Z

    move-wide v3, v0

    move-wide v5, v10

    move-wide v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->slideAndFill(JJJZ)V

    .line 124
    :goto_1
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->forward:Z

    if-eqz v2, :cond_4

    .line 125
    iput-wide v10, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nextEntryOffset:J

    goto :goto_2

    .line 127
    :cond_4
    iput-wide v10, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->currentEntryPrevOffset:J

    .line 129
    :goto_2
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nReposition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/rep/stream/VLSNReader;->nReposition:J

    .line 130
    return-void

    .line 107
    .end local v0    # "fileNum":J
    .end local v10    # "offset":J
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feeder backward scanning should not be repositioned to  a position later than the current position. Current lsn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/VLSNReader;->getLastLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
