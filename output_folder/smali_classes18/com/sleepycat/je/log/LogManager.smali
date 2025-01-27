.class public Lcom/sleepycat/je/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/LogManager$LogWriteInfo;,
        Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delayVLSNRegisterHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final doChecksumOnRead:Z

.field private final endOfLog:Lcom/sleepycat/je/utilint/LSNStat;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private flushHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final grpManager:Lcom/sleepycat/je/log/FSyncManager;

.field private lastLsnAtRecovery:J

.field private final lazyLogQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

.field private final logWriteMutex:Ljava/lang/Object;

.field private final nRepeatFaultReads:Lcom/sleepycat/je/utilint/LongStat;

.field private final nRepeatIteratorReads:Lcom/sleepycat/je/utilint/LongStat;

.field private final nTempBufferWrites:Lcom/sleepycat/je/utilint/LongStat;

.field private prevLogBuffer:Lcom/sleepycat/je/log/LogBuffer;

.field private final readBufferSize:I

.field private readHook:Lcom/sleepycat/je/utilint/TestHook;

.field private final readOnly:Z

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogManager;->lastLsnAtRecovery:J

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogManager;->prevLogBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 115
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/log/LogManager;->lazyLogQueue:Ljava/util/Queue;

    .line 123
    iput-object v0, p0, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 146
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 147
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 148
    new-instance v1, Lcom/sleepycat/je/log/FSyncManager;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/log/FSyncManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/LogManager;->grpManager:Lcom/sleepycat/je/log/FSyncManager;

    .line 149
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 150
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    iput-boolean p2, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    .line 151
    new-instance v2, Lcom/sleepycat/je/log/LogBufferPool;

    invoke-direct {v2, v0, p1}, Lcom/sleepycat/je/log/LogBufferPool;-><init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    .line 154
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_CHECKSUM_READ:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 155
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->doChecksumOnRead:Z

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FAULT_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 159
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/log/LogManager;->readBufferSize:I

    .line 162
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "I/O"

    const-string v3, "The file I/O component of the append-only storage system includes data file access, buffering and group commit."

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 163
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_FAULT_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogManager;->nRepeatFaultReads:Lcom/sleepycat/je/utilint/LongStat;

    .line 164
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_ITERATOR_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogManager;->nRepeatIteratorReads:Lcom/sleepycat/je/utilint/LongStat;

    .line 166
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_TEMP_BUFFER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogManager;->nTempBufferWrites:Lcom/sleepycat/je/utilint/LongStat;

    .line 167
    new-instance v2, Lcom/sleepycat/je/utilint/LSNStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_END_OF_LOG:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/LSNStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogManager;->endOfLog:Lcom/sleepycat/je/utilint/LSNStat;

    .line 168
    return-void
.end method

.method private flushInternal(Z)V
    .locals 3
    .param p1, "flushWriteQueue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1362
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    if-nez v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/log/LogBufferPool;->bumpCurrent(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v1, v2, p1}, Lcom/sleepycat/je/log/LogBufferPool;->bumpAndWriteDirty(IZ)V

    .line 1372
    monitor-exit v0

    return-void

    .line 1374
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogBufferPool;->writeDirty(Z)V

    .line 1381
    return-void

    .line 1374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1362
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getLogEntry(JIZ)Lcom/sleepycat/je/log/WholeEntry;
    .locals 14
    .param p1, "lsn"    # J
    .param p3, "lastLoggedSize"    # I
    .param p4, "invisibleReadAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;
        }
    .end annotation

    .line 845
    move-object v7, p0

    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 847
    const/4 v1, 0x0

    .line 856
    .local v1, "logSource":Lcom/sleepycat/je/log/LogSource;
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/log/LogManager;->getLogSource(J)Lcom/sleepycat/je/log/LogSource;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v8, v0

    .line 859
    .end local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .local v8, "logSource":Lcom/sleepycat/je/log/LogSource;
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object v5, v8

    move/from16 v6, p4

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/log/LogManager;->getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    if-eqz v8, :cond_0

    .line 944
    invoke-interface {v8}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 859
    :cond_0
    return-object v0

    .line 943
    :catchall_0
    move-exception v0

    move-object v1, v8

    goto/16 :goto_3

    .line 938
    :catch_0
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    .line 862
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v9, v1

    .line 869
    .local v9, "ce":Lcom/sleepycat/je/log/ChecksumException;
    :try_start_2
    instance-of v0, v8, Lcom/sleepycat/je/log/LogBuffer;

    if-nez v0, :cond_2

    .line 870
    instance-of v0, v8, Lcom/sleepycat/je/log/FileSource;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v0

    .line 871
    .restart local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :cond_1
    nop

    .end local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v9

    .line 878
    .restart local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :cond_2
    move-object v0, v8

    check-cast v0, Lcom/sleepycat/je/log/LogBuffer;
    :try_end_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v0

    .line 879
    .local v10, "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    const/4 v1, 0x0

    .line 880
    .local v1, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    const-wide/16 v2, -0x1

    .line 882
    .local v2, "fileLength":J
    :try_start_3
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 883
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    move-object v1, v0

    .line 884
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v2, v4

    .line 887
    move-object v11, v1

    move-wide v12, v2

    goto :goto_0

    .line 885
    :catch_2
    move-exception v0

    move-object v11, v1

    move-wide v12, v2

    .line 896
    .end local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local v2    # "fileLength":J
    .local v11, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .local v12, "fileLength":J
    :goto_0
    if-eqz v11, :cond_4

    .line 898
    :try_start_4
    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-lez v0, :cond_4

    .line 913
    new-instance v5, Lcom/sleepycat/je/log/FileHandleSource;

    iget v0, v7, Lcom/sleepycat/je/log/LogManager;->readBufferSize:I

    iget-object v1, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {v5, v11, v0, v1}, Lcom/sleepycat/je/log/FileHandleSource;-><init>(Lcom/sleepycat/je/log/FileHandle;ILcom/sleepycat/je/log/FileManager;)V
    :try_end_4
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    .local v5, "fileSource":Lcom/sleepycat/je/log/FileSource;
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v6, p4

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/log/LogManager;->getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 920
    :try_start_6
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileSource;->release()V
    :try_end_6
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 943
    if-eqz v8, :cond_3

    .line 944
    invoke-interface {v8}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 916
    :cond_3
    return-object v0

    .line 920
    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileSource;->release()V

    .end local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v1

    .line 900
    .end local v5    # "fileSource":Lcom/sleepycat/je/log/FileSource;
    .restart local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :cond_4
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v1, "Corruption detected in log buffer, but was not written to disk."

    invoke-static {v0, v1, v9}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v0
    :try_end_7
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 924
    .end local v9    # "ce":Lcom/sleepycat/je/log/ChecksumException;
    .end local v10    # "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local v11    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local v12    # "fileLength":J
    .restart local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :catch_3
    move-exception v0

    move-object v1, v8

    goto :goto_2

    .line 943
    .end local v8    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .local v1, "logSource":Lcom/sleepycat/je/log/LogSource;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 938
    :catch_4
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Error;
    :goto_1
    :try_start_8
    iget-object v2, v7, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 940
    nop

    .end local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v0

    .line 924
    .end local v0    # "e":Ljava/lang/Error;
    .restart local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :catch_5
    move-exception v0

    .line 932
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    :goto_2
    sget-object v2, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    iget-object v3, v7, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-static {v2, v0, v3, v4}, Lcom/sleepycat/je/util/verify/VerifierUtils;->createMarkerFileFromException(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/lang/Throwable;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local p1    # "lsn":J
    .end local p3    # "lastLoggedSize":I
    .end local p4    # "invisibleReadAllowed":Z
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 943
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .restart local p1    # "lsn":J
    .restart local p3    # "lastLoggedSize":I
    .restart local p4    # "invisibleReadAllowed":Z
    :goto_3
    if-eqz v1, :cond_5

    .line 944
    invoke-interface {v1}, Lcom/sleepycat/je/log/LogSource;->release()V

    :cond_5
    throw v0
.end method

.method private log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;ZZZLcom/sleepycat/je/log/ReplicationContext;)J
    .locals 4
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p3, "flushRequired"    # Z
    .param p4, "fsyncRequired"    # Z
    .param p5, "forceNewLogFile"    # Z
    .param p6, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/sleepycat/je/log/LogParams;

    invoke-direct {v0}, Lcom/sleepycat/je/log/LogParams;-><init>()V

    .line 279
    .local v0, "params":Lcom/sleepycat/je/log/LogParams;
    iput-object p1, v0, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 280
    iput-object p2, v0, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 281
    iput-object p6, v0, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 282
    iput-boolean p3, v0, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    .line 283
    iput-boolean p4, v0, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    .line 284
    iput-boolean p5, v0, Lcom/sleepycat/je/log/LogParams;->forceNewLogFile:Z

    .line 286
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v1

    .line 288
    .local v1, "item":Lcom/sleepycat/je/log/LogItem;
    iget-wide v2, v1, Lcom/sleepycat/je/log/LogItem;->lsn:J

    return-wide v2
.end method

.method private logItem(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;)V
    .locals 7
    .param p1, "item"    # Lcom/sleepycat/je/log/LogItem;
    .param p2, "params"    # Lcom/sleepycat/je/log/LogParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v0

    .line 426
    .local v0, "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/log/LogManager;->serialLog(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)Lcom/sleepycat/je/log/LogManager$LogWriteInfo;

    move-result-object v1

    .line 428
    .local v1, "lwi":Lcom/sleepycat/je/log/LogManager$LogWriteInfo;
    if-eqz v1, :cond_0

    .line 434
    iget-object v2, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v3, p1, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v4, v1, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->fileOffset:J

    iget-object v6, v1, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/log/LogEntryHeader;->addPostMarshallingInfo(Ljava/nio/ByteBuffer;JLcom/sleepycat/je/utilint/VLSN;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p1, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 437
    iget-object v2, v1, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->lbs:Lcom/sleepycat/je/log/LogBufferSegment;

    iget-object v3, p1, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/LogBufferSegment;->put(Ljava/nio/ByteBuffer;)V

    .line 441
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/log/LogManager;->updateObsolete(Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)V

    .line 444
    iget-object v2, p2, Lcom/sleepycat/je/log/LogParams;->expirationTrackerToUse:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p2, Lcom/sleepycat/je/log/LogParams;->expirationTrackerToUse:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    iget-object v3, p2, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget v4, p1, Lcom/sleepycat/je/log/LogItem;->size:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->track(Lcom/sleepycat/je/log/entry/LogEntry;I)V

    .line 449
    :cond_1
    iget-object v2, p2, Lcom/sleepycat/je/log/LogParams;->expirationTrackerCompleted:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v2

    iget-object v3, p2, Lcom/sleepycat/je/log/LogParams;->expirationTrackerCompleted:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->addCompletedTracker(Lcom/sleepycat/je/cleaner/ExpirationTracker;)V

    .line 453
    :cond_2
    return-void
.end method

.method private marshallIntoBuffer(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p2, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 752
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    .local v0, "entrySize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 755
    .local v1, "destBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 758
    invoke-interface {p2, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->writeEntry(Ljava/nio/ByteBuffer;)V

    .line 761
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 763
    return-object v1
.end method

.method private serialLog(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)Lcom/sleepycat/je/log/LogManager$LogWriteInfo;
    .locals 3
    .param p1, "item"    # Lcom/sleepycat/je/log/LogItem;
    .param p2, "params"    # Lcom/sleepycat/je/log/LogParams;
    .param p3, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/log/LogManager;->serialLogWork(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)Lcom/sleepycat/je/log/LogManager$LogWriteInfo;

    move-result-object v1
    :try_end_1
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 498
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 501
    nop

    .end local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    throw v1

    .line 494
    .end local v1    # "e":Ljava/lang/Error;
    .restart local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :catch_1
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    throw v2

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :catch_2
    move-exception v1

    .line 486
    .local v1, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    nop

    .end local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    throw v1

    .line 491
    .restart local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    throw v2

    .line 503
    .end local v1    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    .restart local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private serialLogWork(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)Lcom/sleepycat/je/log/LogManager$LogWriteInfo;
    .locals 22
    .param p1, "item"    # Lcom/sleepycat/je/log/LogItem;
    .param p2, "params"    # Lcom/sleepycat/je/log/LogParams;
    .param p3, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v11

    .line 536
    .local v11, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    iget-wide v0, v9, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-boolean v0, v9, Lcom/sleepycat/je/log/LogParams;->obsoleteDupsAllowed:Z

    if-eqz v0, :cond_0

    .line 538
    iget-wide v0, v9, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    iget v2, v9, Lcom/sleepycat/je/log/LogParams;->oldSize:I

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V

    goto :goto_0

    .line 541
    :cond_0
    iget-wide v0, v9, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    iget v2, v9, Lcom/sleepycat/je/log/LogParams;->oldSize:I

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 547
    :cond_1
    :goto_0
    iget-wide v0, v9, Lcom/sleepycat/je/log/LogParams;->auxOldLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 548
    iget-boolean v0, v9, Lcom/sleepycat/je/log/LogParams;->obsoleteDupsAllowed:Z

    if-eqz v0, :cond_2

    .line 549
    iget-wide v2, v9, Lcom/sleepycat/je/log/LogParams;->auxOldLsn:J

    invoke-virtual {v10, v2, v3, v11, v1}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V

    goto :goto_1

    .line 552
    :cond_2
    iget-wide v2, v9, Lcom/sleepycat/je/log/LogParams;->auxOldLsn:J

    invoke-virtual {v10, v2, v3, v11, v1}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 564
    :cond_3
    :goto_1
    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/ReplicationContext;->getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 565
    invoke-virtual {v0}, Lcom/sleepycat/je/log/ReplicationContext;->mustGenerateVLSN()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 573
    :cond_4
    const/4 v0, 0x0

    move-object v12, v0

    .local v0, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    goto :goto_3

    .line 567
    .end local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_5
    :goto_2
    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/ReplicationContext;->mustGenerateVLSN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 568
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->assignVLSNs(Lcom/sleepycat/je/log/entry/LogEntry;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    move-object v12, v0

    .restart local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    goto :goto_3

    .line 570
    .end local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_6
    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/ReplicationContext;->getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    move-object v12, v0

    .line 583
    .local v12, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :goto_3
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    move v13, v0

    .line 586
    .local v13, "marshallOutsideLatch":Z
    if-eqz v13, :cond_9

    .line 587
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 588
    .local v0, "entrySize":I
    iget-object v3, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v3, :cond_8

    .line 599
    move v14, v0

    goto :goto_5

    .line 588
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 590
    .end local v0    # "entrySize":I
    :cond_9
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-nez v0, :cond_16

    .line 591
    new-instance v0, Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v3, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v4, v9, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    iget-object v5, v9, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {v0, v3, v4, v5}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/log/ReplicationContext;)V

    iput-object v0, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 593
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v0

    move v14, v0

    .line 599
    .local v14, "entrySize":I
    :goto_5
    iget-boolean v0, v9, Lcom/sleepycat/je/log/LogParams;->forceNewLogFile:Z

    if-eqz v0, :cond_a

    .line 600
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->forceNewLogFile()V

    .line 603
    :cond_a
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    int-to-long v3, v14

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/log/FileManager;->shouldFlipFile(J)Z

    move-result v5

    .line 604
    .local v5, "flippedFile":Z
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/log/FileManager;->calculateNextLsn(Z)J

    move-result-wide v3

    .line 625
    .local v3, "currentLsn":J
    invoke-virtual {v10, v3, v4, v11, v14}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countNewLogEntry(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 632
    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v6, v9, Lcom/sleepycat/je/log/LogParams;->nodeDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-interface {v0, v6}, Lcom/sleepycat/je/log/entry/LogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 633
    invoke-virtual {v10, v3, v4, v11, v14}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 639
    :cond_b
    if-nez v13, :cond_d

    .line 640
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_c

    .line 641
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v6, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-direct {v7, v0, v6}, Lcom/sleepycat/je/log/LogManager;->marshallIntoBuffer(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 640
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 645
    :cond_d
    :goto_6
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ne v14, v0, :cond_15

    .line 659
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    .line 660
    invoke-virtual {v0, v14, v5}, Lcom/sleepycat/je/log/LogBufferPool;->getWriteBuffer(IZ)Lcom/sleepycat/je/log/LogBuffer;

    move-result-object v6

    .line 669
    .local v6, "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    iget-object v15, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    int-to-long v1, v14

    move-wide/from16 v16, v3

    move-wide/from16 v18, v1

    move/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Lcom/sleepycat/je/log/FileManager;->advanceLsn(JJZ)J

    move-result-wide v1

    .line 672
    .local v1, "prevOffset":J
    iget-object v15, v7, Lcom/sleepycat/je/log/LogManager;->prevLogBuffer:Lcom/sleepycat/je/log/LogBuffer;

    if-eq v6, v15, :cond_e

    .line 673
    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/sleepycat/je/log/LogParams;->switchedLogBuffer:Z

    goto :goto_7

    .line 672
    :cond_e
    const/4 v15, 0x1

    .line 675
    :goto_7
    iput-object v6, v7, Lcom/sleepycat/je/log/LogManager;->prevLogBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 679
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogBuffer;->latchForWrite()V

    .line 681
    :try_start_0
    invoke-virtual {v6, v14}, Lcom/sleepycat/je/log/LogBuffer;->allocate(I)Lcom/sleepycat/je/log/LogBufferSegment;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 683
    .local v16, "useBuffer":Lcom/sleepycat/je/log/LogBufferSegment;
    if-eqz v16, :cond_f

    .line 685
    :try_start_1
    invoke-virtual {v6, v3, v4}, Lcom/sleepycat/je/log/LogBuffer;->registerLsn(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v17, v1

    goto :goto_9

    .line 710
    .end local v16    # "useBuffer":Lcom/sleepycat/je/log/LogBufferSegment;
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move v15, v5

    move-object/from16 v21, v6

    goto/16 :goto_b

    .line 694
    .restart local v16    # "useBuffer":Lcom/sleepycat/je/log/LogBufferSegment;
    :cond_f
    :try_start_2
    iget-object v0, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v15, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v15, v1, v2, v12}, Lcom/sleepycat/je/log/LogEntryHeader;->addPostMarshallingInfo(Ljava/nio/ByteBuffer;JLcom/sleepycat/je/utilint/VLSN;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 697
    iget-boolean v0, v9, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_10

    :try_start_3
    iget-boolean v0, v9, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_10

    const/16 v17, 0x1

    goto :goto_8

    :cond_10
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    .line 700
    .local v0, "flushWriteQueue":Z
    :try_start_4
    iget-object v15, v7, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide/from16 v17, v1

    .end local v1    # "prevOffset":J
    .local v17, "prevOffset":J
    :try_start_5
    new-instance v1, Lcom/sleepycat/je/log/LogBuffer;

    iget-object v2, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/log/LogBuffer;-><init>(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v15, v1, v0}, Lcom/sleepycat/je/log/FileManager;->writeLogBuffer(Lcom/sleepycat/je/log/LogBuffer;Z)V

    .line 704
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogBuffer;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_14

    .line 707
    iget-object v1, v7, Lcom/sleepycat/je/log/LogManager;->nTempBufferWrites:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 710
    .end local v0    # "flushWriteQueue":Z
    :goto_9
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 711
    nop

    .line 718
    iget-object v0, v9, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v1, v8, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, v1, v3, v4, v12}, Lcom/sleepycat/je/log/entry/LogEntry;->postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V

    .line 720
    iput-wide v3, v8, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 721
    iput v14, v8, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 724
    iget-object v0, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    if-eqz v0, :cond_12

    .line 730
    iget-wide v0, v8, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 731
    .local v0, "newFile":J
    if-eqz v5, :cond_11

    iget-object v2, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getFileNum()J

    move-result-wide v19

    cmp-long v2, v0, v19

    if-eqz v2, :cond_11

    .line 732
    iget-object v2, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    iput-object v2, v9, Lcom/sleepycat/je/log/LogParams;->expirationTrackerCompleted:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 733
    new-instance v2, Lcom/sleepycat/je/cleaner/ExpirationTracker;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;-><init>(J)V

    iput-object v2, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 739
    :cond_11
    iget-object v2, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->incrementPendingTrackCalls()V

    .line 740
    iget-object v2, v7, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    iput-object v2, v9, Lcom/sleepycat/je/log/LogParams;->expirationTrackerToUse:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 743
    .end local v0    # "newFile":J
    :cond_12
    if-nez v16, :cond_13

    const/4 v0, 0x0

    move-wide/from16 v19, v3

    move v15, v5

    move-object/from16 v21, v6

    goto :goto_a

    :cond_13
    new-instance v0, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v19, v3

    .end local v3    # "currentLsn":J
    .local v19, "currentLsn":J
    move-object/from16 v3, v16

    move-object v4, v12

    move v15, v5

    move-object/from16 v21, v6

    .end local v5    # "flippedFile":Z
    .end local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .local v15, "flippedFile":Z
    .local v21, "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    move-wide/from16 v5, v17

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;-><init>(Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/log/LogBufferSegment;Lcom/sleepycat/je/utilint/VLSN;J)V

    :goto_a
    return-object v0

    .line 704
    .end local v15    # "flippedFile":Z
    .end local v19    # "currentLsn":J
    .end local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .local v0, "flushWriteQueue":Z
    .restart local v3    # "currentLsn":J
    .restart local v5    # "flippedFile":Z
    .restart local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :cond_14
    move-wide/from16 v19, v3

    move v15, v5

    move-object/from16 v21, v6

    .end local v3    # "currentLsn":J
    .end local v5    # "flippedFile":Z
    .end local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v15    # "flippedFile":Z
    .restart local v19    # "currentLsn":J
    .restart local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :try_start_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v12    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local v13    # "marshallOutsideLatch":Z
    .end local v14    # "entrySize":I
    .end local v15    # "flippedFile":Z
    .end local v17    # "prevOffset":J
    .end local v19    # "currentLsn":J
    .end local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 710
    .end local v0    # "flushWriteQueue":Z
    .end local v16    # "useBuffer":Lcom/sleepycat/je/log/LogBufferSegment;
    .restart local v11    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v12    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v13    # "marshallOutsideLatch":Z
    .restart local v14    # "entrySize":I
    .restart local v15    # "flippedFile":Z
    .restart local v17    # "prevOffset":J
    .restart local v19    # "currentLsn":J
    .restart local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p1    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local p3    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :catchall_1
    move-exception v0

    goto :goto_b

    .end local v15    # "flippedFile":Z
    .end local v19    # "currentLsn":J
    .end local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v3    # "currentLsn":J
    .restart local v5    # "flippedFile":Z
    .restart local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :catchall_2
    move-exception v0

    move-wide/from16 v19, v3

    move v15, v5

    move-object/from16 v21, v6

    .end local v3    # "currentLsn":J
    .end local v5    # "flippedFile":Z
    .end local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v15    # "flippedFile":Z
    .restart local v19    # "currentLsn":J
    .restart local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    goto :goto_b

    .end local v15    # "flippedFile":Z
    .end local v17    # "prevOffset":J
    .end local v19    # "currentLsn":J
    .end local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v1    # "prevOffset":J
    .restart local v3    # "currentLsn":J
    .restart local v5    # "flippedFile":Z
    .restart local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move v15, v5

    move-object/from16 v21, v6

    .end local v1    # "prevOffset":J
    .end local v3    # "currentLsn":J
    .end local v5    # "flippedFile":Z
    .end local v6    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v15    # "flippedFile":Z
    .restart local v17    # "prevOffset":J
    .restart local v19    # "currentLsn":J
    .restart local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :goto_b
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    throw v0

    .line 646
    .end local v15    # "flippedFile":Z
    .end local v17    # "prevOffset":J
    .end local v19    # "currentLsn":J
    .end local v21    # "lastLogBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local v3    # "currentLsn":J
    .restart local v5    # "flippedFile":Z
    :cond_15
    move-wide/from16 v19, v3

    .end local v3    # "currentLsn":J
    .restart local v19    # "currentLsn":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logged entry entrySize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but marshalledSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 648
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 650
    invoke-static/range {v19 .. v20}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 590
    .end local v5    # "flippedFile":Z
    .end local v14    # "entrySize":I
    .end local v19    # "currentLsn":J
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private updateObsolete(Lcom/sleepycat/je/log/LogParams;Lcom/sleepycat/je/cleaner/UtilizationTracker;)V
    .locals 7
    .param p1, "params"    # Lcom/sleepycat/je/log/LogParams;
    .param p2, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;

    .line 1435
    iget-object v0, p1, Lcom/sleepycat/je/log/LogParams;->packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/je/log/LogParams;->obsoleteWriteLockInfo:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1437
    return-void

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_0
    iget-object v1, p1, Lcom/sleepycat/je/log/LogParams;->packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v1, :cond_1

    .line 1444
    iget-object v1, p1, Lcom/sleepycat/je/log/LogParams;->packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    invoke-virtual {v1, p2}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->countObsoleteInfo(Lcom/sleepycat/je/cleaner/UtilizationTracker;)V

    .line 1447
    :cond_1
    iget-object v1, p1, Lcom/sleepycat/je/log/LogParams;->obsoleteWriteLockInfo:Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1448
    iget-object v1, p1, Lcom/sleepycat/je/log/LogParams;->obsoleteWriteLockInfo:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 1449
    .local v2, "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortLsn()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 1451
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortLogSize()I

    move-result v6

    .line 1449
    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 1452
    .end local v2    # "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    goto :goto_0

    .line 1454
    :cond_2
    monitor-exit v0

    .line 1455
    return-void

    .line 1454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;IZ)V
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I
    .param p5, "countExact"    # Z

    .line 1466
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v1

    .line 1468
    .local v1, "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    if-eqz p5, :cond_0

    .line 1469
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    goto :goto_0

    .line 1471
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 1473
    .end local v1    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    :goto_0
    monitor-exit v0

    .line 1474
    return-void

    .line 1473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 1485
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1486
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v1

    .line 1487
    .local v1, "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 1488
    .end local v1    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    monitor-exit v0

    .line 1489
    return-void

    .line 1488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method flushBeforeSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1345
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    if-eqz v0, :cond_0

    .line 1346
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LogManager;->flushInternal(Z)V

    .line 1350
    return-void
.end method

.method public flushNoSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1330
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    if-eqz v0, :cond_0

    .line 1331
    return-void

    .line 1334
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LogManager;->flushInternal(Z)V

    .line 1335
    return-void
.end method

.method public flushSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1315
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    if-eqz v0, :cond_0

    .line 1316
    return-void

    .line 1320
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LogManager;->flushInternal(Z)V

    .line 1321
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->syncLogEnd()V

    .line 1322
    return-void
.end method

.method getBufferPoolLatchStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBufferPool;->getBufferPoolLatchStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method getChecksumOnRead()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogManager;->doChecksumOnRead:Z

    return v0
.end method

.method public getEntry(J)Ljava/lang/Object;
    .locals 2
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1184
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 1185
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getEntryHandleNotFound(J)Ljava/lang/Object;
    .locals 2
    .param p1, "lsn"    # J

    .line 1189
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 1190
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getLastLsnAtRecovery()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogManager;->lastLsnAtRecovery:J

    return-wide v0
.end method

.method public getLogEntry(J)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;
        }
    .end annotation

    .line 799
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(JIZ)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 799
    return-object v0
.end method

.method getLogEntryAllowChecksumException(J)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 7
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 990
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogSource(J)Lcom/sleepycat/je/log/LogSource;

    move-result-object v6

    .line 993
    .local v6, "logSource":Lcom/sleepycat/je/log/LogSource;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/log/LogManager;->getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-interface {v6}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 993
    return-object v0

    .line 997
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lcom/sleepycat/je/log/LogSource;->release()V

    throw v0
.end method

.method getLogEntryAllowChecksumException(JLjava/io/RandomAccessFile;I)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 8
    .param p1, "lsn"    # J
    .param p3, "file"    # Ljava/io/RandomAccessFile;
    .param p4, "logVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/log/ErasedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1006
    new-instance v7, Lcom/sleepycat/je/log/FileSource;

    iget v2, p0, Lcom/sleepycat/je/log/LogManager;->readBufferSize:I

    iget-object v3, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1007
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    move-object v0, v7

    move-object v1, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/log/FileSource;-><init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/je/log/FileManager;JI)V

    move-object v4, v7

    .line 1011
    .local v4, "logSource":Lcom/sleepycat/je/log/LogSource;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/log/LogManager;->getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-interface {v4}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 1011
    return-object v0

    .line 1016
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lcom/sleepycat/je/log/LogSource;->release()V

    throw v0
.end method

.method public getLogEntryAllowInvisible(J)Lcom/sleepycat/je/log/WholeEntry;
    .locals 2
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(JIZ)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    return-object v0
.end method

.method public getLogEntryAllowInvisibleAtRecovery(JI)Lcom/sleepycat/je/log/WholeEntry;
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 817
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v0

    .line 816
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(JIZ)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    return-object v0
.end method

.method public getLogEntryDirectFromFile(J)Lcom/sleepycat/je/log/WholeEntry;
    .locals 9
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogSource(J)Lcom/sleepycat/je/log/LogSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1239
    .local v1, "logSource":Lcom/sleepycat/je/log/LogSource;
    nop

    .line 1243
    instance-of v2, v1, Lcom/sleepycat/je/log/LogBuffer;

    if-eqz v2, :cond_1

    .line 1248
    :try_start_1
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/log/LogBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    .local v2, "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1252
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v3

    .line 1253
    .local v3, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    .local v4, "fileLength":J
    nop

    .line 1266
    nop

    .line 1267
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 1268
    nop

    .line 1271
    invoke-interface {v1}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 1268
    return-object v0

    .line 1271
    .end local v2    # "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local v4    # "fileLength":J
    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 1272
    nop

    .line 1280
    new-instance v2, Lcom/sleepycat/je/log/FileHandleSource;

    iget v4, p0, Lcom/sleepycat/je/log/LogManager;->readBufferSize:I

    iget-object v5, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/log/FileHandleSource;-><init>(Lcom/sleepycat/je/log/FileHandle;ILcom/sleepycat/je/log/FileManager;)V

    .line 1282
    .end local v3    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .local v2, "fileSource":Lcom/sleepycat/je/log/FileSource;
    goto :goto_0

    .line 1254
    .local v2, "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :catch_0
    move-exception v3

    .line 1256
    .local v3, "ioe":Ljava/io/IOException;
    nop

    .line 1271
    invoke-interface {v1}, Lcom/sleepycat/je/log/LogSource;->release()V

    .line 1256
    return-object v0

    .line 1271
    .end local v2    # "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/sleepycat/je/log/LogSource;->release()V

    throw v0

    .line 1283
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/log/FileSource;

    .line 1287
    .local v2, "fileSource":Lcom/sleepycat/je/log/FileSource;
    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-object v7, v2

    :try_start_4
    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/log/LogManager;->getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0
    :try_end_4
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1292
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileSource;->release()V

    .line 1287
    return-object v0

    .line 1292
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileSource;->release()V

    throw v0

    .line 1289
    :catch_1
    move-exception v3

    .line 1290
    .local v3, "e":Lcom/sleepycat/je/log/ErasedException;
    nop

    .line 1292
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileSource;->release()V

    .line 1290
    return-object v0

    .line 1237
    .end local v1    # "logSource":Lcom/sleepycat/je/log/LogSource;
    .end local v2    # "fileSource":Lcom/sleepycat/je/log/FileSource;
    .end local v3    # "e":Lcom/sleepycat/je/log/ErasedException;
    :catch_2
    move-exception v1

    .line 1238
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    return-object v0
.end method

.method getLogEntryFromLogSource(JILcom/sleepycat/je/log/LogSource;Z)Lcom/sleepycat/je/log/WholeEntry;
    .locals 16
    .param p1, "lsn"    # J
    .param p3, "lastLoggedSize"    # I
    .param p4, "logSource"    # Lcom/sleepycat/je/log/LogSource;
    .param p5, "invisibleReadAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/log/ErasedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1054
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    .line 1056
    .local v6, "fileOffset":J
    if-lez v4, :cond_0

    .line 1057
    invoke-interface {v5, v6, v7, v4}, Lcom/sleepycat/je/log/LogSource;->getBytes(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-interface {v5, v6, v7}, Lcom/sleepycat/je/log/LogSource;->getBytes(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    nop

    .line 1060
    .local v0, "entryBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const-string v9, "Incomplete log entry header in "

    const/16 v10, 0xe

    const-string v11, " lsn="

    const-string v12, " remaining="

    const-string v13, " needed="

    if-lt v8, v10, :cond_d

    .line 1069
    new-instance v8, Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1070
    invoke-interface/range {p4 .. p4}, Lcom/sleepycat/je/log/LogSource;->getLogVersion()I

    move-result v10

    invoke-direct {v8, v0, v10, v2, v3}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Ljava/nio/ByteBuffer;IJ)V

    .line 1073
    .local v8, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->isVariableLength()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1074
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    .line 1075
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getVariablePortionSize()I

    move-result v14

    if-lt v10, v14, :cond_1

    .line 1082
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/log/LogEntryHeader;->readVariablePortion(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1076
    :cond_1
    new-instance v10, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1078
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getVariablePortionSize()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1079
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1080
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1085
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 1086
    .local v9, "validator":Lcom/sleepycat/je/log/ChecksumValidator;
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, v1, Lcom/sleepycat/je/log/LogManager;->doChecksumOnRead:Z

    if-eqz v10, :cond_4

    .line 1087
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 1096
    .local v10, "itemStart":I
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1097
    nop

    .line 1098
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v14

    sub-int v14, v10, v14

    invoke-static {v0, v14}, Lcom/sleepycat/je/log/LogEntryHeader;->turnOffInvisible(Ljava/nio/ByteBuffer;I)V

    .line 1102
    :cond_3
    new-instance v14, Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v15, v1, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v14, v15}, Lcom/sleepycat/je/log/ChecksumValidator;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    move-object v9, v14

    .line 1103
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getSizeMinusChecksum()I

    move-result v14

    .line 1104
    .local v14, "headerSizeMinusChecksum":I
    sub-int v15, v10, v14

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1106
    invoke-virtual {v9, v0, v14}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 1107
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1114
    .end local v10    # "itemStart":I
    .end local v14    # "headerSizeMinusChecksum":I
    :cond_4
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v10

    .line 1115
    .local v10, "itemSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 1116
    nop

    .line 1117
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v14, v6

    .line 1116
    invoke-interface {v5, v14, v15, v10}, Lcom/sleepycat/je/log/LogSource;->getBytes(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-lt v14, v10, :cond_5

    .line 1125
    iget-object v11, v1, Lcom/sleepycat/je/log/LogManager;->nRepeatFaultReads:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v11}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    move-object v4, v0

    goto :goto_2

    .line 1119
    :cond_5
    new-instance v14, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete log entry item in "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1123
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1115
    :cond_6
    move-object v4, v0

    .line 1132
    .end local v0    # "entryBuffer":Ljava/nio/ByteBuffer;
    .local v4, "entryBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    if-eqz v9, :cond_7

    .line 1134
    invoke-virtual {v9, v4, v10}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 1135
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getChecksum()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v2, v3}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJ)V

    .line 1142
    :cond_7
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p5, :cond_8

    goto :goto_3

    .line 1143
    :cond_8
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v11, v1, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v12, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read invisible log entry at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1146
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_9
    :goto_3
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->isValidType(B)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1153
    nop

    .line 1154
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v11

    .line 1155
    .local v11, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v0, v1, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-interface {v11, v0, v8, v4}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 1158
    iget-object v0, v1, Lcom/sleepycat/je/log/LogManager;->readHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_a

    .line 1160
    :try_start_0
    invoke-interface {v0}, Lcom/sleepycat/je/utilint/TestHook;->doIOHook()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    goto :goto_4

    .line 1161
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1163
    .local v0, "e":Ljava/io/IOException;
    new-instance v12, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v13, v1, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v14, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v12, v13, v14, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v12

    .line 1169
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_4
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->isErased()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1173
    new-instance v0, Lcom/sleepycat/je/log/WholeEntry;

    invoke-direct {v0, v8, v11}, Lcom/sleepycat/je/log/WholeEntry;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V

    return-object v0

    .line 1170
    :cond_b
    new-instance v0, Lcom/sleepycat/je/log/ErasedException;

    invoke-direct {v0, v2, v3, v8}, Lcom/sleepycat/je/log/ErasedException;-><init>(JLcom/sleepycat/je/log/LogEntryHeader;)V

    throw v0

    .line 1149
    .end local v11    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read non-valid log entry type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1150
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1061
    .end local v4    # "entryBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    .end local v9    # "validator":Lcom/sleepycat/je/log/ChecksumValidator;
    .end local v10    # "itemSize":I
    .local v0, "entryBuffer":Ljava/nio/ByteBuffer;
    :cond_d
    new-instance v4, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1064
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1065
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 5
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 953
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v4, "Entry is erased unexpectedly, implied corruption"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 954
    .end local v0    # "e":Lcom/sleepycat/je/log/ErasedException;
    :catch_1
    move-exception v0

    .line 955
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLogSource(J)Lcom/sleepycat/je/log/LogSource;
    .locals 7
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/LogBufferPool;->getReadBufferByLsn(J)Lcom/sleepycat/je/log/LogBuffer;

    move-result-object v0

    .line 1205
    .local v0, "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    if-nez v0, :cond_0

    .line 1208
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    .line 1209
    .local v1, "fileNum":J
    new-instance v3, Lcom/sleepycat/je/log/FileHandleSource;

    iget-object v4, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1210
    invoke-virtual {v4, v1, v2}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/log/LogManager;->readBufferSize:I

    iget-object v6, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/log/FileHandleSource;-><init>(Lcom/sleepycat/je/log/FileHandle;ILcom/sleepycat/je/log/FileManager;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    return-object v3

    .line 1212
    .end local v1    # "fileNum":J
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lsn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 1215
    throw v1

    .line 1218
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    return-object v0
.end method

.method public getNCacheMiss()J
    .locals 2

    .line 1402
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBufferPool;->getNCacheMiss()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadBufferByLsn(J)Lcom/sleepycat/je/log/LogBuffer;
    .locals 4
    .param p1, "lsn"    # J

    .line 1302
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/LogBufferPool;->getReadBufferByLsn(J)Lcom/sleepycat/je/log/LogBuffer;

    move-result-object v0

    return-object v0

    .line 1302
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read of lsn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1303
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal because file header entry is not in the log buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getUnflushableTrackedSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .locals 2
    .param p1, "file"    # J

    .line 1416
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1417
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v1

    .line 1418
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getUnflushableTrackedSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v1

    monitor-exit v0

    .line 1417
    return-object v1

    .line 1419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWholeLogEntry(J)Lcom/sleepycat/je/log/WholeEntry;
    .locals 1
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ErasedException;
        }
    .end annotation

    .line 806
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/je/log/LogManager;->getLogEntry(JIZ)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    return-object v0
.end method

.method public getWholeLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/WholeEntry;
    .locals 5
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 969
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getWholeLogEntry(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v4, "Entry is erased unexpectedly, implied corruption"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 970
    .end local v0    # "e":Lcom/sleepycat/je/log/ErasedException;
    :catch_1
    move-exception v0

    .line 971
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public incRepeatIteratorReads()V
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->nRepeatIteratorReads:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1505
    return-void
.end method

.method public initExpirationTracker(Lcom/sleepycat/je/cleaner/ExpirationTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 188
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager;->expirationTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 189
    return-void
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->endOfLog:Lcom/sleepycat/je/utilint/LSNStat;

    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LSNStat;->set(Ljava/lang/Long;)V

    .line 1388
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 1389
    .local v0, "copyStats":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/log/LogBufferPool;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1390
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/log/FileManager;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1391
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->grpManager:Lcom/sleepycat/je/log/FSyncManager;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/log/FSyncManager;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1393
    return-object v0
.end method

.method public log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 249
    sget-object v2, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;ZZZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method public log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;
    .locals 5
    .param p1, "params"    # Lcom/sleepycat/je/log/LogParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/sleepycat/je/log/LogItem;

    invoke-direct {v0}, Lcom/sleepycat/je/log/LogItem;-><init>()V

    .line 307
    .local v0, "item":Lcom/sleepycat/je/log/LogItem;
    iget-boolean v1, p0, Lcom/sleepycat/je/log/LogManager;->readOnly:Z

    if-eqz v1, :cond_0

    .line 308
    return-object v0

    .line 313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->lazyLogQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;

    .line 314
    .local v1, "lqe":Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 317
    new-instance v2, Lcom/sleepycat/je/log/LogParams;

    invoke-direct {v2}, Lcom/sleepycat/je/log/LogParams;-><init>()V

    .line 318
    .local v2, "lqeParams":Lcom/sleepycat/je/log/LogParams;
    invoke-static {v1}, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->access$100(Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v3

    iput-object v3, v2, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 319
    sget-object v3, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    iput-object v3, v2, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 320
    invoke-static {v1}, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->access$200(Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;)Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v3

    iput-object v3, v2, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 322
    new-instance v3, Lcom/sleepycat/je/log/LogItem;

    invoke-direct {v3}, Lcom/sleepycat/je/log/LogItem;-><init>()V

    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/log/LogManager;->logItem(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;)V

    .line 315
    .end local v2    # "lqeParams":Lcom/sleepycat/je/log/LogParams;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->lazyLogQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;

    move-object v1, v2

    goto :goto_0

    .line 325
    .end local v1    # "lqe":Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;
    :cond_1
    iget-object v1, p1, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 333
    .local v1, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->marshallOutsideLatch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    new-instance v2, Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v3, p1, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    iget-object v4, p1, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {v2, v1, v3, v4}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/log/ReplicationContext;)V

    iput-object v2, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 338
    iget-object v2, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {p0, v2, v1}, Lcom/sleepycat/je/log/LogManager;->marshallIntoBuffer(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 341
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/log/LogManager;->logItem(Lcom/sleepycat/je/log/LogItem;Lcom/sleepycat/je/log/LogParams;)V

    .line 343
    iget-boolean v2, p1, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 348
    :cond_3
    iget-boolean v2, p1, Lcom/sleepycat/je/log/LogParams;->switchedLogBuffer:Z

    if-eqz v2, :cond_5

    .line 357
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/LogBufferPool;->writeDirty(Z)V

    goto :goto_2

    .line 346
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->grpManager:Lcom/sleepycat/je/log/FSyncManager;

    iget-boolean v3, p1, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/FSyncManager;->flushAndSync(Z)V

    .line 360
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->flushHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 368
    iget-object v2, p1, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 370
    iget-object v2, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 375
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->delayVLSNRegisterHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 377
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->registerVLSN(Lcom/sleepycat/je/log/LogItem;)V

    goto :goto_3

    .line 370
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected null vlsn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local p1    # "params":Lcom/sleepycat/je/log/LogParams;
    throw v2
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v0    # "item":Lcom/sleepycat/je/log/LogItem;
    .restart local p1    # "params":Lcom/sleepycat/je/log/LogParams;
    :cond_7
    :goto_3
    nop

    .line 409
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/Checkpointer;->wakeupAfterWrite()V

    .line 410
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/je/log/LogItem;->size:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/Cleaner;->wakeupAfterWrite(I)V

    .line 413
    iget-boolean v1, p1, Lcom/sleepycat/je/log/LogParams;->backgroundIO:Z

    if-eqz v1, :cond_8

    .line 414
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v2, v0, Lcom/sleepycat/je/log/LogItem;->size:I

    iget-object v3, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    .line 415
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogBufferPool;->getLogBufferSize()I

    move-result v3

    .line 414
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->updateBackgroundWrites(II)V

    .line 418
    :cond_8
    return-object v0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 402
    throw v1

    .line 397
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 380
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 392
    .local v1, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    if-nez v2, :cond_9

    .line 393
    throw v1

    .line 395
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public logForceFlip(Lcom/sleepycat/je/log/entry/LogEntry;)J
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 233
    sget-object v2, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    sget-object v6, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;ZZZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method public logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "fsyncRequired"    # Z
    .param p3, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 217
    sget-object v2, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;ZZZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method logLazily(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 3
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 263
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->lazyLogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/log/LogManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method putIntoBuffer(Lcom/sleepycat/je/log/entry/LogEntry;J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "prevLogEntryOffset"    # J

    .line 772
    new-instance v0, Lcom/sleepycat/je/log/LogEntryHeader;

    sget-object v1, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 780
    .local v0, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/log/LogManager;->marshallIntoBuffer(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 784
    .local v1, "destBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/sleepycat/je/log/LogEntryHeader;->addPostMarshallingInfo(Ljava/nio/ByteBuffer;JLcom/sleepycat/je/utilint/VLSN;)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 780
    .end local v1    # "destBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public removeTrackedFile(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    .locals 2
    .param p1, "tfs"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 1426
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->reset()V

    .line 1428
    monitor-exit v0

    .line 1429
    return-void

    .line 1428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetPool(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 2
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->logBufferPool:Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/log/LogBufferPool;->reset(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDelayVLSNRegisterHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1514
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager;->delayVLSNRegisterHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1515
    return-void
.end method

.method public setFlushLogHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1519
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager;->flushHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1520
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->grpManager:Lcom/sleepycat/je/log/FSyncManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/FSyncManager;->setFlushLogHook(Lcom/sleepycat/je/utilint/TestHook;)V

    .line 1521
    return-void
.end method

.method public setLastLsnAtRecovery(J)V
    .locals 0
    .param p1, "lastLsnAtRecovery"    # J

    .line 179
    iput-wide p1, p0, Lcom/sleepycat/je/log/LogManager;->lastLsnAtRecovery:J

    .line 180
    return-void
.end method

.method public setReadHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 1509
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager;->readHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1510
    return-void
.end method

.method public transferToUtilizationTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    .locals 2
    .param p1, "localTracker"    # Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1497
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager;->logWriteMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v1

    .line 1499
    .local v1, "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->transferToUtilizationTracker(Lcom/sleepycat/je/cleaner/UtilizationTracker;)V

    .line 1500
    .end local v1    # "tracker":Lcom/sleepycat/je/cleaner/UtilizationTracker;
    monitor-exit v0

    .line 1501
    return-void

    .line 1500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
