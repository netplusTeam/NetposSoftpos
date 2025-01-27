.class public Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;
.super Lcom/sleepycat/je/rep/stream/VLSNReader;
.source "ReplicaSyncupReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static fileGapHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final abortLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private final ckptEndLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private final commitLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private final logger1:Ljava/util/logging/Logger;

.field private final searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

.field private syncableSearch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JILcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V
    .locals 10
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "endOfLogLsn"    # J
    .param p5, "readBufferSize"    # I
    .param p6, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p7, "finishLsn"    # J
    .param p9, "searchResults"    # Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 85
    move-object v9, p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/stream/VLSNReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;ZJIJ)V

    .line 53
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    .line 54
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->ckptEndLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 56
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    .line 57
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->commitLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 59
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    .line 60
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->abortLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 92
    move-wide v0, p3

    move-object/from16 v2, p6

    invoke-direct {p0, v2, p3, p4}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->initScan(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 93
    move-object/from16 v3, p9

    iput-object v3, v9, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, v9, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    .line 95
    return-void
.end method

.method private checkForPassingTarget(I)V
    .locals 2
    .param p1, "compareResult"    # I

    .line 196
    if-ltz p1, :cond_0

    .line 202
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "want to read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 200
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private initScan(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 4
    .param p1, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "endOfLogLsn"    # J

    .line 102
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iput-wide p2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->startLsn:J

    .line 108
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->startLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->startLsn:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 119
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryPrevOffset:J

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryOffset:J

    .line 121
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 122
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_1
    nop

    .line 104
    const-string v0, "ReplicaSyncupReader start can\'t be NULL_VLSN"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static setFileGapHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Long;>;"
    sput-object p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->fileGapHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 420
    return-void
.end method


# virtual methods
.method public findPrevSyncEntry(Z)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 5
    .param p1, "startAtPrev"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->syncableSearch:Z

    .line 158
    if-eqz p1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restart ReplicaSyncupReader at vlsn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    .line 168
    .local v1, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-gez v2, :cond_1

    .line 173
    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->readNextEntry()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    return-object v0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getEntryType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->isSyncPoint(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    return-object v0

    .line 184
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected log type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected handleGapInBackwardsScan(J)V
    .locals 7
    .param p1, "prevFileNum"    # J

    .line 387
    new-instance v6, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;

    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    move-object v0, v6

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;-><init>(JJLcom/sleepycat/je/utilint/VLSN;)V

    .line 390
    .local v0, "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 391
    sget-object v1, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->fileGapHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 392
    :cond_0
    throw v0
.end method

.method protected isTargetEntry()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isTargetEntry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->nScanned:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->nScanned:J

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    return v1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    .line 237
    .local v0, "currentType":B
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->entryIsReplicated()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 238
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->syncableSearch:Z

    if-eqz v2, :cond_3

    .line 239
    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->isSyncPoint(B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    return v3

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    .line 244
    :cond_3
    return v3

    .line 252
    :cond_4
    :goto_0
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    return v3

    .line 256
    :cond_5
    return v1
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 9
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 291
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " syncup reader saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    .line 302
    .local v0, "currentType":B
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->ckptEndLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v1, v3, v4, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 311
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " syncup reader read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->ckptEndLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->ckptEndLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 318
    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getCleanedFilesToDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->notePassedCheckpointEnd()V

    .line 322
    :cond_2
    return v2

    .line 330
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 331
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 332
    new-instance v3, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {v3, v4, v5, v1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 341
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    const-string/jumbo v4, "syncup reader read "

    if-eqz v3, :cond_5

    .line 343
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->commitLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v5, v6, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 344
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->commitLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/TxnCommit;

    .line 345
    .local v3, "commit":Lcom/sleepycat/je/txn/TxnCommit;
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 346
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    .line 347
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->getLastLsn()J

    move-result-wide v7

    .line 345
    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->notePassedCommits(Lcom/sleepycat/je/txn/TxnCommit;Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 349
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 350
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->commitLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 354
    .end local v3    # "commit":Lcom/sleepycat/je/txn/TxnCommit;
    :cond_4
    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 355
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->abortLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v5, v6, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 356
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->abortLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/TxnAbort;

    .line 358
    .local v3, "abort":Lcom/sleepycat/je/txn/TxnAbort;
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 359
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    .line 358
    invoke-virtual {v5, v3, v6}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->notePassedAborts(Lcom/sleepycat/je/txn/TxnAbort;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 360
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 361
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->logger1:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->abortLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 365
    .end local v3    # "abort":Lcom/sleepycat/je/txn/TxnAbort;
    :cond_6
    goto :goto_0

    .line 366
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 367
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 366
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    :goto_0
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->syncableSearch:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 371
    return v4

    .line 375
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    .line 376
    .local v3, "compareResult":I
    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->checkForPassingTarget(I)V

    .line 379
    if-nez v3, :cond_9

    move v2, v4

    :cond_9
    return v2
.end method

.method public scanBackwards(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->syncableSearch:Z

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 132
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 137
    return-object v2

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 142
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->readNextEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    return-object v1

    .line 146
    :cond_1
    return-object v2
.end method
