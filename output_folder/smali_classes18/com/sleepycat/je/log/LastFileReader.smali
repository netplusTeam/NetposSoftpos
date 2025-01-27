.class public Lcom/sleepycat/je/log/LastFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "LastFileReader.java"


# instance fields
.field private entryType:Lcom/sleepycat/je/log/LogEntryType;

.field private lastOffsetSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastValidOffset:J

.field private nextUnprovenOffset:J

.field private restoreRequired:Lcom/sleepycat/je/log/entry/RestoreRequired;

.field private trackableEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V
    .locals 13
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 76
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v12}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 80
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LastFileReader;->startAtLastGoodFile(Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->trackableEntries:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastOffsetSeen:Ljava/util/Map;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    .line 90
    iget-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->nextEntryOffset:J

    iput-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    .line 91
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, p1, v2, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ILjava/lang/Long;)V
    .locals 11
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "specificFileNumber"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 107
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 110
    invoke-direct {p0, p3}, Lcom/sleepycat/je/log/LastFileReader;->startAtLastGoodFile(Ljava/lang/Long;)V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->trackableEntries:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastOffsetSeen:Ljava/util/Map;

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    .line 116
    iget-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->nextEntryOffset:J

    iput-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    .line 117
    return-void
.end method

.method private attemptToMoveBadFile(Ljava/lang/Exception;)Ljava/lang/Long;
    .locals 7
    .param p1, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 201
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/FileManager;->getFullFileNames(J)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 202
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "problemFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileManager;->clear()V

    .line 207
    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v4, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 208
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v1

    .line 209
    .local v1, "lastNum":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v4, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    const-string v6, ".bad"

    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/je/log/FileManager;->renameFile(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    return-object v1

    .line 211
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not rename file: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 213
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 219
    .end local v1    # "lastNum":Ljava/lang/Long;
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/DatabaseException;

    if-nez v1, :cond_3

    .line 222
    instance-of v1, p1, Lcom/sleepycat/je/log/ChecksumException;

    if-eqz v1, :cond_2

    .line 223
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/log/ChecksumException;

    throw v1

    .line 225
    :cond_2
    invoke-static {p1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 220
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/DatabaseException;

    throw v1
.end method

.method private findCommittedTxn()Z
    .locals 8

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/LastFileReader;->skipData(I)V

    .line 407
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/je/log/FileReader;->readNextEntryAllowExceptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sleepycat/je/log/FileReader$EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found checksum exception while searching for end of log. Last valid entry is at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 423
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Bad entry is at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 425
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 413
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 426
    :cond_1
    nop

    .line 429
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private startAtLastGoodFile(Ljava/lang/Long;)V
    .locals 10
    .param p1, "singleFileNum"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LastFileReader;->eof:Z

    .line 127
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 136
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->getLastFileNum()Ljava/lang/Long;

    move-result-object v1

    :goto_0
    nop

    .line 137
    .local v1, "lastNum":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 139
    .local v4, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    const-wide/16 v5, 0x0

    .line 140
    .local v5, "fileLen":J
    :goto_1
    if-nez v4, :cond_5

    iget-boolean v7, p0, Lcom/sleepycat/je/log/LastFileReader;->eof:Z

    if-nez v7, :cond_5

    .line 141
    if-nez v1, :cond_1

    .line 142
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sleepycat/je/log/LastFileReader;->eof:Z

    goto :goto_1

    .line 146
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v0}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 147
    iget-object v7, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v7

    move-object v4, v7

    .line 158
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    move-wide v5, v7

    .line 159
    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v0}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v7

    .line 162
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileHandle;->release()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const/4 v4, 0x0

    .line 174
    :cond_2
    if-eqz v4, :cond_3

    .line 175
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileHandle;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 170
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Lcom/sleepycat/je/log/ChecksumException;
    :try_start_2
    invoke-direct {p0, v7}, Lcom/sleepycat/je/log/LastFileReader;->attemptToMoveBadFile(Ljava/lang/Exception;)Ljava/lang/Long;

    move-result-object v8

    move-object v1, v8

    .line 172
    const/4 v4, 0x0

    .line 174
    .end local v7    # "e":Lcom/sleepycat/je/log/ChecksumException;
    if-eqz v4, :cond_3

    .line 175
    goto :goto_2

    .line 167
    :catch_1
    move-exception v7

    .line 168
    .local v7, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v7}, Lcom/sleepycat/je/log/LastFileReader;->attemptToMoveBadFile(Ljava/lang/Exception;)Ljava/lang/Long;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v8

    .line 169
    const/4 v4, 0x0

    .line 174
    .end local v7    # "e":Lcom/sleepycat/je/DatabaseException;
    if-eqz v4, :cond_3

    .line 175
    goto :goto_2

    .line 181
    :cond_3
    :goto_3
    goto :goto_1

    .line 174
    :goto_4
    if-eqz v4, :cond_4

    .line 175
    :try_start_3
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileHandle;->release()V

    :cond_4
    nop

    .end local v1    # "lastNum":Ljava/lang/Long;
    .end local v4    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local v5    # "fileLen":J
    .end local p1    # "singleFileNum":Ljava/lang/Long;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    .restart local v1    # "lastNum":Ljava/lang/Long;
    .restart local v4    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local v5    # "fileLen":J
    .restart local p1    # "singleFileNum":Ljava/lang/Long;
    :catch_2
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, v3, v7, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v2

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    iput-wide v2, p0, Lcom/sleepycat/je/log/LastFileReader;->nextEntryOffset:J

    .line 186
    return-void
.end method


# virtual methods
.method public getEndOfLog()J
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntryType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public getLastSeen(Lcom/sleepycat/je/log/LogEntryType;)J
    .locals 5
    .param p1, "type"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 265
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastOffsetSeen:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 266
    .local v0, "typeNumber":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    .line 268
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 267
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v1

    return-wide v1

    .line 270
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getLastValidLsn()J
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrevOffset()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    return-wide v0
.end method

.method public getRestoreRequired()Lcom/sleepycat/je/log/entry/RestoreRequired;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->restoreRequired:Lcom/sleepycat/je/log/entry/RestoreRequired;

    return-object v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 286
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    .line 287
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->trackableEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->lastOffsetSeen:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    iget-wide v2, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESTORE_REQUIRED:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 298
    .local v0, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 299
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/entry/RestoreRequired;

    iput-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->restoreRequired:Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 300
    .end local v0    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 302
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public readNextEntry()Z
    .locals 9

    .line 315
    const/4 v0, 0x0

    .line 327
    .local v0, "foundEntry":Z
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/log/FileReader;->readNextEntryAllowExceptions()Z

    move-result v1

    move v0, v1

    .line 334
    iget-wide v1, p0, Lcom/sleepycat/je/log/LastFileReader;->currentEntryOffset:J

    iput-wide v1, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    .line 335
    iget-wide v1, p0, Lcom/sleepycat/je/log/LastFileReader;->nextEntryOffset:J

    iput-wide v1, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Lcom/sleepycat/je/log/ChecksumException;
    iget-object v2, p0, Lcom/sleepycat/je/log/LastFileReader;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found checksum exception while searching for end of log. Last valid entry is at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 345
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sleepycat/je/log/LastFileReader;->lastValidOffset:J

    invoke-static {v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Bad entry is at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 347
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    invoke-static {v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    .line 350
    .local v2, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->HALT_ON_COMMIT_AFTER_CHECKSUMEXCEPTION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 352
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    .line 355
    .local v3, "findCommitTxn":Z
    if-eqz v3, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/sleepycat/je/log/LastFileReader;->findCommittedTxn()Z

    move-result v4

    .line 358
    .local v4, "committedTxnFound":Z
    if-nez v4, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->FOUND_COMMITTED_TXN:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v8, "Found committed txn after the corruption point"

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v5

    .line 365
    .end local v1    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .end local v2    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v3    # "findCommitTxn":Z
    .end local v4    # "committedTxnFound":Z
    :cond_1
    :goto_0
    return v0

    .line 336
    :catch_1
    move-exception v1

    .line 337
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/log/LastFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, v3, v4, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setEndOfFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v1, p0, Lcom/sleepycat/je/log/LastFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 232
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sleepycat/je/log/LastFileReader;->nextUnprovenOffset:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/log/FileManager;->truncateSingleFile(JJ)V

    .line 233
    return-void
.end method

.method public setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 1
    .param p1, "type"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 258
    iget-object v0, p0, Lcom/sleepycat/je/log/LastFileReader;->trackableEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method
