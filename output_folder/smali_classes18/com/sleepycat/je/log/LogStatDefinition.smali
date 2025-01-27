.class public Lcom/sleepycat/je/log/LogStatDefinition;
.super Ljava/lang/Object;
.source "LogStatDefinition.java"


# static fields
.field public static final FILEMGR_BYTES_READ_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_BYTES_READ_FROM_WRITEQUEUE_DESC:Ljava/lang/String; = "Number of bytes read to fulfill file read operations by reading out of the pending write queue."

.field public static final FILEMGR_BYTES_READ_FROM_WRITEQUEUE_NAME:Ljava/lang/String; = "nBytesReadFromWriteQueue"

.field public static final FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE_DESC:Ljava/lang/String; = "Number of bytes written from the pending write queue."

.field public static final FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE_NAME:Ljava/lang/String; = "nBytesWrittenFromWriteQueue"

.field public static final FILEMGR_FILE_OPENS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_FILE_OPENS_DESC:Ljava/lang/String; = "Number of times a log file has been opened."

.field public static final FILEMGR_FILE_OPENS_NAME:Ljava/lang/String; = "nFileOpens"

.field public static final FILEMGR_FSYNC_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_FSYNC_95_MS_DESC:Ljava/lang/String; = "95th percentile of milliseconds used to perform fsyncs."

.field public static final FILEMGR_FSYNC_95_MS_NAME:Ljava/lang/String; = "fSync95Ms"

.field public static final FILEMGR_FSYNC_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_FSYNC_99_MS_DESC:Ljava/lang/String; = "99th percentile of milliseconds used to perform fsyncs."

.field public static final FILEMGR_FSYNC_99_MS_NAME:Ljava/lang/String; = "fSync99Ms"

.field public static final FILEMGR_FSYNC_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_FSYNC_AVG_MS_DESC:Ljava/lang/String; = "Average number of milliseconds used to perform fsyncs."

.field public static final FILEMGR_FSYNC_AVG_MS_NAME:Ljava/lang/String; = "fSyncAvgMs"

.field public static final FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_FSYNC_MAX_MS_DESC:Ljava/lang/String; = "Maximum number of milliseconds used to perform a single fsync."

.field public static final FILEMGR_FSYNC_MAX_MS_NAME:Ljava/lang/String; = "fSyncMaxMs"

.field public static final FILEMGR_GROUP_DESC:Ljava/lang/String; = "FileManager statistics"

.field public static final FILEMGR_GROUP_NAME:Ljava/lang/String; = "FileManager"

.field public static final FILEMGR_LOG_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_LOG_FSYNCS_DESC:Ljava/lang/String; = "Number of fsyncs of the JE log."

.field public static final FILEMGR_LOG_FSYNCS_NAME:Ljava/lang/String; = "nLogFSyncs"

.field public static final FILEMGR_OPEN_FILES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_OPEN_FILES_DESC:Ljava/lang/String; = "Number of files currently open in the file cache."

.field public static final FILEMGR_OPEN_FILES_NAME:Ljava/lang/String; = "nOpenFiles"

.field public static final FILEMGR_RANDOM_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_RANDOM_READS_DESC:Ljava/lang/String; = "Number of disk reads which required a seek of more than 1MB from the previous file position or were read from a different file."

.field public static final FILEMGR_RANDOM_READS_NAME:Ljava/lang/String; = "nRandomReads"

.field public static final FILEMGR_RANDOM_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_RANDOM_READ_BYTES_DESC:Ljava/lang/String; = "Number of bytes read which required a seek of more than 1MB from the previous file position or were read from a different file."

.field public static final FILEMGR_RANDOM_READ_BYTES_NAME:Ljava/lang/String; = "nRandomReadBytes"

.field public static final FILEMGR_RANDOM_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_RANDOM_WRITES_DESC:Ljava/lang/String; = "Number of disk writes which required a seek of more than 1MB from the previous file position or were read from a different file."

.field public static final FILEMGR_RANDOM_WRITES_NAME:Ljava/lang/String; = "nRandomWrites"

.field public static final FILEMGR_RANDOM_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_RANDOM_WRITE_BYTES_DESC:Ljava/lang/String; = "Number of bytes written which required a seek of more than 1MB from the previous file position or were read from a different file."

.field public static final FILEMGR_RANDOM_WRITE_BYTES_NAME:Ljava/lang/String; = "nRandomWriteBytes"

.field public static final FILEMGR_READS_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_READS_FROM_WRITEQUEUE_DESC:Ljava/lang/String; = "Number of file read operations which were fulfilled by reading out of the pending write queue."

.field public static final FILEMGR_READS_FROM_WRITEQUEUE_NAME:Ljava/lang/String; = "nReadsFromWriteQueue"

.field public static final FILEMGR_SEQUENTIAL_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_SEQUENTIAL_READS_DESC:Ljava/lang/String; = "Number of disk reads which did not require a seek of more than 1MB from the previous file position and were read from the same file."

.field public static final FILEMGR_SEQUENTIAL_READS_NAME:Ljava/lang/String; = "nSequentialReads"

.field public static final FILEMGR_SEQUENTIAL_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_SEQUENTIAL_READ_BYTES_DESC:Ljava/lang/String; = "Number of bytes read which did not require a seek of more than 1MB from the previous file position and were read from the same file."

.field public static final FILEMGR_SEQUENTIAL_READ_BYTES_NAME:Ljava/lang/String; = "nSequentialReadBytes"

.field public static final FILEMGR_SEQUENTIAL_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_SEQUENTIAL_WRITES_DESC:Ljava/lang/String; = "Number of disk writes which did not require a seek of more than 1MB from the previous file position and were read from the same file."

.field public static final FILEMGR_SEQUENTIAL_WRITES_NAME:Ljava/lang/String; = "nSequentialWrites"

.field public static final FILEMGR_SEQUENTIAL_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_SEQUENTIAL_WRITE_BYTES_DESC:Ljava/lang/String; = "Number of bytes written which did not require a seek of more than 1MB from the previous file position and were read from the same file."

.field public static final FILEMGR_SEQUENTIAL_WRITE_BYTES_NAME:Ljava/lang/String; = "nSequentialWriteBytes"

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW_DESC:Ljava/lang/String; = "Number of write operations which would overflow the write queue."

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES_DESC:Ljava/lang/String; = "Number of write operations which would overflow the write queue and could not be queued."

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES_NAME:Ljava/lang/String; = "nWriteQueueOverflowFailures"

.field public static final FILEMGR_WRITEQUEUE_OVERFLOW_NAME:Ljava/lang/String; = "nWriteQueueOverflow"

.field public static final FILEMGR_WRITES_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FILEMGR_WRITES_FROM_WRITEQUEUE_DESC:Ljava/lang/String; = "Number of file write operations executed from the pending write queue."

.field public static final FILEMGR_WRITES_FROM_WRITEQUEUE_NAME:Ljava/lang/String; = "nWritesFromWriteQueue"

.field public static final FSYNCMGR_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FSYNCMGR_FSYNCS_DESC:Ljava/lang/String; = "Number of group commit fsyncs completed."

.field public static final FSYNCMGR_FSYNCS_NAME:Ljava/lang/String; = "nFSyncs"

.field public static final FSYNCMGR_FSYNC_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FSYNCMGR_FSYNC_REQUESTS_DESC:Ljava/lang/String; = "Number of group commit requests that include an fsync request."

.field public static final FSYNCMGR_FSYNC_REQUESTS_NAME:Ljava/lang/String; = "nFSyncRequests"

.field public static final FSYNCMGR_GROUP_DESC:Ljava/lang/String; = "FSyncManager statistics"

.field public static final FSYNCMGR_GROUP_NAME:Ljava/lang/String; = "FSyncManager"

.field public static final FSYNCMGR_N_GROUP_COMMIT_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FSYNCMGR_N_GROUP_COMMIT_REQUESTS_DESC:Ljava/lang/String; = "Number of group commit requests."

.field public static final FSYNCMGR_N_GROUP_COMMIT_REQUESTS_NAME:Ljava/lang/String; = "nGroupCommitRequests"

.field public static final FSYNCMGR_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FSYNCMGR_TIMEOUTS_DESC:Ljava/lang/String; = "Number of group commit waiter threads that timed out."

.field public static final FSYNCMGR_TIMEOUTS_NAME:Ljava/lang/String; = "nGrpCommitTimeouts"

.field public static final GROUP_DESC:Ljava/lang/String; = "The file I/O component of the append-only storage system includes data file access, buffering and group commit."

.field public static final GROUP_NAME:Ljava/lang/String; = "I/O"

.field public static final LBFP_BUFFER_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LBFP_BUFFER_BYTES_DESC:Ljava/lang/String; = "Total memory currently consumed by all log buffers, in bytes."

.field public static final LBFP_BUFFER_BYTES_NAME:Ljava/lang/String; = "bufferBytes"

.field public static final LBFP_LOG_BUFFERS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LBFP_LOG_BUFFERS_DESC:Ljava/lang/String; = "Number of log buffers."

.field public static final LBFP_LOG_BUFFERS_NAME:Ljava/lang/String; = "nLogBuffers"

.field public static final LBFP_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LBFP_MISS_DESC:Ljava/lang/String; = "Number of requests to read log entries by LSN that were not present in the log buffers."

.field public static final LBFP_MISS_NAME:Ljava/lang/String; = "nCacheMiss"

.field public static final LBFP_NOT_RESIDENT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LBFP_NOT_RESIDENT_DESC:Ljava/lang/String; = "Number of requests to read log entries by LSN."

.field public static final LBFP_NOT_RESIDENT_NAME:Ljava/lang/String; = "nNotResident"

.field public static final LBFP_NO_FREE_BUFFER:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LBFP_NO_FREE_BUFFER_DESC:Ljava/lang/String; = "Number of writes that could not obtain a free buffer, forcing a write in the critical section."

.field public static final LBFP_NO_FREE_BUFFER_NAME:Ljava/lang/String; = "nNoFreeBuffer"

.field public static final LBF_GROUP_DESC:Ljava/lang/String; = "LogBufferPool statistics"

.field public static final LBF_GROUP_NAME:Ljava/lang/String; = "LogBufferPool"

.field public static final LOGMGR_END_OF_LOG:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOGMGR_END_OF_LOG_DESC:Ljava/lang/String; = "The LSN of the next entry to be written to the log."

.field public static final LOGMGR_END_OF_LOG_NAME:Ljava/lang/String; = "endOfLog"

.field public static final LOGMGR_REPEAT_FAULT_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOGMGR_REPEAT_FAULT_READS_DESC:Ljava/lang/String; = "Number of times a log entry size exceeded the log fault read size."

.field public static final LOGMGR_REPEAT_FAULT_READS_NAME:Ljava/lang/String; = "nRepeatFaultReads"

.field public static final LOGMGR_REPEAT_ITERATOR_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOGMGR_REPEAT_ITERATOR_READS_DESC:Ljava/lang/String; = "Number of times a log entry size exceeded the log iterator max size."

.field public static final LOGMGR_REPEAT_ITERATOR_READS_NAME:Ljava/lang/String; = "nRepeatIteratorReads"

.field public static final LOGMGR_TEMP_BUFFER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOGMGR_TEMP_BUFFER_WRITES_DESC:Ljava/lang/String; = "Number of writes for entries larger than the log buffer size, forcing a write in the critical section."

.field public static final LOGMGR_TEMP_BUFFER_WRITES_NAME:Ljava/lang/String; = "nTempBufferWrites"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRandomReads"

    const-string v2, "Number of disk reads which required a seek of more than 1MB from the previous file position or were read from a different file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 58
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRandomWrites"

    const-string v2, "Number of disk writes which required a seek of more than 1MB from the previous file position or were read from a different file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 69
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nSequentialReads"

    const-string v2, "Number of disk reads which did not require a seek of more than 1MB from the previous file position and were read from the same file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 80
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nSequentialWrites"

    const-string v2, "Number of disk writes which did not require a seek of more than 1MB from the previous file position and were read from the same file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 90
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRandomReadBytes"

    const-string v2, "Number of bytes read which required a seek of more than 1MB from the previous file position or were read from a different file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 101
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRandomWriteBytes"

    const-string v2, "Number of bytes written which required a seek of more than 1MB from the previous file position or were read from a different file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 112
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nSequentialReadBytes"

    const-string v2, "Number of bytes read which did not require a seek of more than 1MB from the previous file position and were read from the same file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 123
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nSequentialWriteBytes"

    const-string v2, "Number of bytes written which did not require a seek of more than 1MB from the previous file position and were read from the same file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 132
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFileOpens"

    const-string v2, "Number of times a log file has been opened."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FILE_OPENS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 141
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nOpenFiles"

    const-string v3, "Number of files currently open in the file cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_OPEN_FILES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 152
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBytesReadFromWriteQueue"

    const-string v2, "Number of bytes read to fulfill file read operations by reading out of the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_READ_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 161
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBytesWrittenFromWriteQueue"

    const-string v2, "Number of bytes written from the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 171
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nReadsFromWriteQueue"

    const-string v2, "Number of file read operations which were fulfilled by reading out of the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_READS_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 181
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWritesFromWriteQueue"

    const-string v2, "Number of file write operations executed from the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITES_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 190
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWriteQueueOverflow"

    const-string v2, "Number of write operations which would overflow the write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 200
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWriteQueueOverflowFailures"

    const-string v2, "Number of write operations which would overflow the write queue and could not be queued."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 210
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFSyncs"

    const-string v2, "Number of group commit fsyncs completed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 219
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGrpCommitTimeouts"

    const-string v2, "Number of group commit waiter threads that timed out."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 228
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLogFSyncs"

    const-string v2, "Number of fsyncs of the JE log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_LOG_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 237
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "fSyncAvgMs"

    const-string v2, "Average number of milliseconds used to perform fsyncs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 244
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "fSync95Ms"

    const-string v2, "95th percentile of milliseconds used to perform fsyncs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 251
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "fSync99Ms"

    const-string v2, "99th percentile of milliseconds used to perform fsyncs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 258
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "fSyncMaxMs"

    const-string v2, "Maximum number of milliseconds used to perform a single fsync."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 266
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupCommitRequests"

    const-string v2, "Number of group commit requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_N_GROUP_COMMIT_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 275
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFSyncRequests"

    const-string v2, "Number of group commit requests that include an fsync request."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNC_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 286
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRepeatFaultReads"

    const-string v2, "Number of times a log entry size exceeded the log fault read size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_FAULT_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 296
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRepeatIteratorReads"

    const-string v2, "Number of times a log entry size exceeded the log iterator max size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_ITERATOR_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 306
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nTempBufferWrites"

    const-string v2, "Number of writes for entries larger than the log buffer size, forcing a write in the critical section."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_TEMP_BUFFER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 315
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "endOfLog"

    const-string v3, "The LSN of the next entry to be written to the log."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_END_OF_LOG:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 326
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNoFreeBuffer"

    const-string v2, "Number of writes that could not obtain a free buffer, forcing a write in the critical section."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NO_FREE_BUFFER:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 336
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNotResident"

    const-string v2, "Number of requests to read log entries by LSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NOT_RESIDENT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 346
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCacheMiss"

    const-string v2, "Number of requests to read log entries by LSN that were not present in the log buffers."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 355
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nLogBuffers"

    const-string v3, "Number of log buffers."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_LOG_BUFFERS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 365
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "bufferBytes"

    const-string v3, "Total memory currently consumed by all log buffers, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_BUFFER_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
