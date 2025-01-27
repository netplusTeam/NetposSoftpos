.class public abstract Lcom/sleepycat/je/log/ScavengerFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "ScavengerFileReader.java"


# instance fields
.field private dumpCorruptedBounds:Z

.field private readBufferSize:I

.field private targetEntryTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJ)V
    .locals 12
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "endOfFileLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 60
    move-object v11, p0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 68
    move v0, p2

    iput v0, v11, Lcom/sleepycat/je/log/ScavengerFileReader;->readBufferSize:I

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v11, Lcom/sleepycat/je/log/ScavengerFileReader;->targetEntryTypes:Ljava/util/Set;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/sleepycat/je/log/ScavengerFileReader;->dumpCorruptedBounds:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected handleGapInBackwardsScan(J)V
    .locals 6
    .param p1, "prevFileNum"    # J

    .line 146
    const-wide v0, 0xffffffffL

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/log/ScavengerFileReader;->resyncReader(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read backward over cleaned file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 152
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method protected isTargetEntry()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->targetEntryTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->targetEntryTypes:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 240
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 239
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 99
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 100
    .local v0, "lastEntryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 101
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v2, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v1, v2, v3, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/log/ScavengerFileReader;->processEntryCallback(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V

    .line 103
    const/4 v2, 0x1

    return v2
.end method

.method protected abstract processEntryCallback(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public readNextEntry()Z
    .locals 6

    .line 121
    iget-wide v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryOffset:J

    .line 123
    .local v0, "saveCurrentEntryOffset":J
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/log/FileReader;->readNextEntryAllowExceptions()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Lcom/sleepycat/je/log/ChecksumException;
    iget-object v3, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->dumpCorruptedBounds:Z

    invoke-virtual {p0, v3, v4, v5}, Lcom/sleepycat/je/log/ScavengerFileReader;->resyncReader(JZ)Z

    .line 131
    invoke-super {p0}, Lcom/sleepycat/je/log/FileReader;->readNextEntry()Z

    move-result v3

    return v3

    .line 124
    .end local v2    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :catch_1
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected resyncReader(JZ)Z
    .locals 15
    .param p1, "nextGoodRecordPostCorruption"    # J
    .param p3, "showCorruptedBounds"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 161
    move-object v1, p0

    const/4 v2, 0x0

    .line 162
    .local v2, "reader":Lcom/sleepycat/je/log/LastFileReader;
    nop

    .line 163
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v3

    .line 165
    .local v3, "tryReadBufferFileNum":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 167
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/log/LastFileReader;

    iget-object v7, v1, Lcom/sleepycat/je/log/ScavengerFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v8, v1, Lcom/sleepycat/je/log/ScavengerFileReader;->readBufferSize:I

    .line 169
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v0, v7, v8, v9}, Lcom/sleepycat/je/log/LastFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ILjava/lang/Long;)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 178
    goto :goto_0

    .line 182
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :cond_0
    :goto_1
    nop

    .line 183
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v7

    cmp-long v0, v3, v7

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 185
    .local v0, "switchedFiles":Z
    :goto_2
    if-nez v0, :cond_2

    .line 192
    :goto_3
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LastFileReader;->readNextEntry()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 196
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v8

    .line 197
    .local v8, "lastUsedLsn":J
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v10

    .line 198
    .local v10, "nextAvailableLsn":J
    if-eqz p3, :cond_3

    .line 199
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "A checksum error was found in the log."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Corruption begins at LSN:\n   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 202
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 201
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last known good record before corruption is at LSN:\n   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 205
    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 204
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Next known good record after corruption is at LSN:\n   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 208
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 207
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_3
    iput-wide v8, v1, Lcom/sleepycat/je/log/ScavengerFileReader;->startLsn:J

    .line 212
    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/sleepycat/je/log/ScavengerFileReader;->initStartingPosition(JLjava/lang/Long;)V

    .line 213
    if-eqz v0, :cond_4

    .line 214
    iput-wide v5, v1, Lcom/sleepycat/je/log/ScavengerFileReader;->currentEntryPrevOffset:J

    .line 217
    :cond_4
    return v7
.end method

.method public setDumpCorruptedBounds(Z)V
    .locals 0
    .param p1, "dumpCorruptedBounds"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->dumpCorruptedBounds:Z

    .line 83
    return-void
.end method

.method public setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 2
    .param p1, "type"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/log/ScavengerFileReader;->targetEntryTypes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
