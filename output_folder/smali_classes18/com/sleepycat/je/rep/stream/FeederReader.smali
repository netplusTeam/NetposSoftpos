.class public Lcom/sleepycat/je/rep/stream/FeederReader;
.super Lcom/sleepycat/je/rep/stream/VLSNReader;
.source "FeederReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bypassCache:Z

.field private initDone:Z

.field private prevCacheHits:J

.field private final scanThresholdMs:J

.field private final scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JIZ)V
    .locals 9
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "startLsn"    # J
    .param p5, "readBufferSize"    # I
    .param p6, "bypassCache"    # Z

    .line 95
    const/4 v3, 0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/stream/VLSNReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;ZJIJ)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->initDone:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    .line 102
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;

    invoke-direct {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;

    .line 103
    iput-boolean p6, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->bypassCache:Z

    .line 105
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 106
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x5a

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JI)V
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "startLsn"    # J
    .param p5, "readBufferSize"    # I

    .line 83
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/stream/FeederReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JIZ)V

    .line 85
    return-void
.end method

.method private checkForPassingTarget(I)V
    .locals 2
    .param p1, "compareResult"    # I

    .line 325
    if-gtz p1, :cond_0

    .line 331
    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "want to read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 329
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method dumpState()Ljava/lang/String;
    .locals 3

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevCacheHits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastFile(Lcom/sleepycat/je/rep/stream/OutputWireRecord;)J
    .locals 4
    .param p1, "record"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 168
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getLogItemLSN()J

    move-result-wide v0

    .line 169
    .local v0, "lsn":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 170
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    return-wide v2

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    return-wide v2
.end method

.method public initScan(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 6
    .param p1, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 140
    .local v0, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    move-object v1, p1

    .line 141
    .local v1, "startPoint":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-gez v2, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->getStartingLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->startLsn:J

    .line 150
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->startLsn:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-wide v3, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->startLsn:J

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 153
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->nextEntryOffset:J

    .line 154
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->initDone:Z

    .line 157
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->startLsn:J

    return-wide v2

    .line 150
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 135
    .end local v0    # "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v1    # "startPoint":Lcom/sleepycat/je/utilint/VLSN;
    :cond_2
    nop

    .line 136
    const-string/jumbo v0, "startVLSN can\'t be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method protected isTargetEntry()Z
    .locals 4

    .line 338
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->nScanned:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->nScanned:J

    .line 340
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 341
    return v1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->entryIsReplicated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 347
    .local v0, "entryVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    .line 348
    .local v2, "compareResult":I
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/stream/FeederReader;->checkForPassingTarget(I)V

    .line 351
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 354
    .end local v0    # "entryVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v2    # "compareResult":I
    :cond_2
    return v1
.end method

.method protected makeWindow(I)Lcom/sleepycat/je/log/FileReader$ReadWindow;
    .locals 2
    .param p1, "readBufferSize"    # I

    .line 117
    new-instance v0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;-><init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method public scanForwards(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 25
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "waitTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 201
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, " prevWindow="

    const-string v4, "Feeder scan time for next record(vlsn=%,d last lsn=%s lsn=%s) %,d ms exceeded the expected threshold %,d ms. readNextEntry() time:%,d ms"

    iget-boolean v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->initDone:Z

    if-eqz v0, :cond_8

    .line 203
    const/4 v5, 0x0

    .line 206
    .local v5, "logItem":Lcom/sleepycat/je/log/LogItem;
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->waitForVLSN(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 210
    nop

    .line 212
    iput-object v2, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 214
    if-eqz v5, :cond_1

    iget-boolean v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->bypassCache:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, v5, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-wide v3, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    .line 219
    new-instance v0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v3, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogItem;)V

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 245
    .local v7, "startMs":J
    iget-wide v9, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    .line 246
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->getApproximateLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v9

    .line 259
    .local v9, "repositionLsn":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v13

    invoke-static {v13, v14, v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 260
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 263
    .end local v9    # "repositionLsn":J
    :cond_2
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanner:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->getPreciseLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v9

    .line 270
    .restart local v9    # "repositionLsn":J
    :cond_3
    :goto_0
    iput-wide v11, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->prevCacheHits:J

    .line 273
    :try_start_1
    invoke-virtual {v1, v9, v10}, Lcom/sleepycat/je/rep/stream/FeederReader;->setPosition(J)V
    :try_end_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    nop

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 291
    .local v11, "readStartNs":J
    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v3, 0x6

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->readNextEntry()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->currentFeedRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 296
    .local v18, "endMs":J
    sub-long v20, v18, v7

    .line 297
    .local v20, "elapsedMs":J
    iget-wide v13, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    cmp-long v13, v20, v13

    if-lez v13, :cond_4

    .line 298
    sub-long v13, v18, v11

    .line 299
    .local v13, "readMs":J
    new-array v3, v3, [Ljava/lang/Object;

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v3, v17

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v16

    .line 306
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v15

    .line 307
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v3, v16

    move-object/from16 v22, v5

    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .local v22, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-wide v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v3, v6

    .line 309
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    .line 300
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v3    # "msg":Ljava/lang/String;
    .end local v13    # "readMs":J
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :cond_4
    move-object/from16 v22, v5

    .line 292
    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v18    # "endMs":J
    .end local v20    # "elapsedMs":J
    .restart local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :goto_1
    return-object v0

    .line 295
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :cond_5
    move-object/from16 v22, v5

    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 296
    .local v5, "endMs":J
    sub-long v13, v5, v7

    .line 297
    .local v13, "elapsedMs":J
    move-object/from16 v19, v4

    iget-wide v3, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    cmp-long v0, v13, v3

    if-lez v0, :cond_6

    .line 298
    sub-long v3, v5, v11

    .line 299
    .local v3, "readMs":J
    const/4 v15, 0x6

    new-array v0, v15, [Ljava/lang/Object;

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v0, v17

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v16

    .line 306
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v0, v16

    .line 307
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v0, v16

    move-wide/from16 v20, v5

    .end local v5    # "endMs":J
    .local v20, "endMs":J
    iget-wide v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    .line 309
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    .line 300
    move-object/from16 v5, v19

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "msg":Ljava/lang/String;
    iget-object v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_2

    .line 297
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "readMs":J
    .end local v20    # "endMs":J
    .restart local v5    # "endMs":J
    :cond_6
    move-wide/from16 v20, v5

    .line 313
    .end local v5    # "endMs":J
    .end local v13    # "elapsedMs":J
    :goto_2
    nop

    .line 315
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VLSN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " repositionLsn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {v0, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 295
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .local v5, "logItem":Lcom/sleepycat/je/log/LogItem;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v5

    move-object v5, v4

    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 296
    .local v3, "endMs":J
    sub-long v13, v3, v7

    .line 297
    .restart local v13    # "elapsedMs":J
    move-wide/from16 v23, v7

    .end local v7    # "startMs":J
    .local v23, "startMs":J
    iget-wide v6, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    cmp-long v6, v13, v6

    if-lez v6, :cond_7

    .line 298
    sub-long v6, v3, v11

    .line 299
    .local v6, "readMs":J
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v8, v17

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v16

    .line 306
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v8, v16

    .line 307
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v8, v16

    move-wide v15, v3

    .end local v3    # "endMs":J
    .local v15, "endMs":J
    iget-wide v3, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->scanThresholdMs:J

    .line 308
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v8, v4

    .line 309
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v8, v4

    .line 300
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_3

    .line 297
    .end local v6    # "readMs":J
    .end local v15    # "endMs":J
    .local v3, "endMs":J
    :cond_7
    move-wide v15, v3

    .line 313
    .end local v3    # "endMs":J
    .end local v13    # "elapsedMs":J
    :goto_3
    throw v0

    .line 281
    .end local v11    # "readStartNs":J
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v23    # "startMs":J
    .restart local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v7    # "startMs":J
    :catch_0
    move-exception v0

    move-object/from16 v22, v5

    move-wide/from16 v23, v7

    move-object v4, v0

    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v7    # "startMs":J
    .restart local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v23    # "startMs":J
    move-object v0, v4

    .line 282
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to reposition FeederReader to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 285
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for vlsn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 274
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v23    # "startMs":J
    .restart local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v7    # "startMs":J
    :catch_1
    move-exception v0

    move-object/from16 v22, v5

    move-wide/from16 v23, v7

    move-object v4, v0

    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v7    # "startMs":J
    .restart local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v23    # "startMs":J
    move-object v0, v4

    .line 275
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trying to reposition FeederReader to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 279
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/sleepycat/je/rep/stream/FeederReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 207
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .end local v9    # "repositionLsn":J
    .end local v22    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v23    # "startMs":J
    .restart local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
    const/4 v3, 0x0

    return-object v3

    .line 201
    .end local v0    # "e":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
    .end local v5    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
