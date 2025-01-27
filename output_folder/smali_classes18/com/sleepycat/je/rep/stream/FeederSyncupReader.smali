.class public Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
.super Lcom/sleepycat/je/rep/stream/VLSNReader;
.source "FeederSyncupReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JILcom/sleepycat/je/utilint/VLSN;J)V
    .locals 10
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "endOfLogLsn"    # J
    .param p5, "readBufferSize"    # I
    .param p6, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p7, "finishLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 54
    move-object v9, p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/stream/VLSNReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;ZJIJ)V

    .line 60
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;

    move-object v1, p2

    invoke-direct {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V

    iput-object v0, v9, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;

    .line 61
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->initScan(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 62
    return-void
.end method

.method private checkForPassingTarget(I)V
    .locals 2
    .param p1, "compareResult"    # I

    .line 139
    if-ltz p1, :cond_0

    .line 145
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "want to read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 143
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private initScan(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 5
    .param p1, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    move-object v0, p1

    .line 82
    .local v0, "startPoint":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->getStartingLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->startLsn:J

    .line 83
    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->startLsn:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 93
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->startLsn:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 94
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryPrevOffset:J

    .line 95
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryOffset:J

    .line 96
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 97
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    .end local v0    # "startPoint":Lcom/sleepycat/je/utilint/VLSN;
    :cond_1
    nop

    .line 78
    const-string v0, "FeederSyncupReader start can\'t be NULL_VLSN"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected isTargetEntry()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 151
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->nScanned:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->nScanned:J

    .line 154
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    return v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->entryIsReplicated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 163
    .local v0, "entryVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    .line 164
    .local v2, "compareResult":I
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->checkForPassingTarget(I)V

    .line 167
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 170
    .end local v0    # "entryVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v2    # "compareResult":I
    :cond_2
    return v1
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 181
    new-instance v1, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 185
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    const/4 v1, 0x1

    return v1
.end method

.method public scanBackwards(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 5
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 108
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 113
    return-object v2

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 123
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->getPreciseLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v3

    .line 124
    .local v3, "repositionLsn":J
    invoke-virtual {p0, v3, v4}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->setPosition(J)V

    .line 126
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->readNextEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    return-object v1

    .line 130
    :cond_1
    return-object v2
.end method
