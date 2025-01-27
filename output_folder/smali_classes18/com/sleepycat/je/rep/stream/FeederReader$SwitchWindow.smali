.class Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;
.super Lcom/sleepycat/je/log/FileReader$ReadWindow;
.source "FeederReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/FeederReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchWindow"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final logManager:Lcom/sleepycat/je/log/LogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 361
    const-class v0, Lcom/sleepycat/je/rep/stream/FeederReader;

    return-void
.end method

.method constructor <init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "readBufferSize"    # I
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;-><init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 368
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 369
    return-void
.end method

.method private fillFromLogBuffer(JJ)Z
    .locals 17
    .param p1, "windowFileNum"    # J
    .param p3, "targetOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 404
    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    .line 407
    .local v4, "logBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :try_start_0
    invoke-static/range {p1 .. p4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    .line 408
    .local v5, "fileLocation":J
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/log/LogManager;->getReadBufferByLsn(J)Lcom/sleepycat/je/log/LogBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 409
    const/4 v0, 0x0

    if-nez v4, :cond_1

    .line 410
    nop

    .line 460
    if-eqz v4, :cond_0

    .line 461
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 410
    :cond_0
    return v0

    .line 432
    :cond_1
    nop

    .line 433
    :try_start_1
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogBuffer;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 434
    .local v7, "wholeContents":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    if-eqz v8, :cond_2

    .line 435
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 437
    :cond_2
    nop

    .line 438
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v8

    .line 439
    .local v8, "firstOffset":J
    sub-long v10, v2, v8

    long-to-int v10, v10

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 442
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 443
    .local v10, "startAtTarget":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 444
    .local v11, "data":[B
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    .line 445
    .local v12, "availableContentLen":I
    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    if-le v12, v13, :cond_3

    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    goto :goto_0

    :cond_3
    move v13, v12

    .line 449
    .local v13, "copyLength":I
    :goto_0
    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 450
    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    invoke-virtual {v14, v11, v15, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 451
    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 454
    const/16 v14, 0x11

    move-wide v15, v5

    move-wide/from16 v5, p1

    .end local v5    # "fileLocation":J
    .local v15, "fileLocation":J
    invoke-virtual {v1, v5, v6, v14}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->setFileNum(JI)V

    .line 455
    iput-wide v2, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->startOffset:J

    .line 456
    iget-wide v2, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->startOffset:J

    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    int-to-long v5, v14

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->endOffset:J

    .line 457
    iget-object v2, v1, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    const/4 v0, 0x1

    .line 460
    if-eqz v4, :cond_4

    .line 461
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 458
    :cond_4
    return v0

    .line 460
    .end local v7    # "wholeContents":Ljava/nio/ByteBuffer;
    .end local v8    # "firstOffset":J
    .end local v10    # "startAtTarget":Ljava/nio/ByteBuffer;
    .end local v11    # "data":[B
    .end local v12    # "availableContentLen":I
    .end local v13    # "copyLength":I
    .end local v15    # "fileLocation":J
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    .line 461
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    :cond_5
    throw v0
.end method


# virtual methods
.method protected fillNext(ZI)Z
    .locals 7
    .param p1, "singleFile"    # Z
    .param p2, "bytesNeeded"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;
        }
    .end annotation

    .line 488
    if-nez p1, :cond_a

    .line 490
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->adjustReadBufferSize(I)V

    .line 496
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->currentFileNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->endOffset:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fillFromLogBuffer(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 498
    return v1

    .line 510
    :cond_0
    const/4 v0, 0x0

    .line 514
    .local v0, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->currentFileNum()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v2

    move-object v0, v2

    .line 517
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->endOffset:J

    iput-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->startOffset:J

    .line 518
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->startOffset:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 523
    nop

    .line 580
    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 523
    :cond_1
    return v1

    .line 526
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 527
    const/4 v0, 0x0

    .line 530
    if-nez p1, :cond_8

    .line 538
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 539
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->currentFileNum()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v1

    .line 549
    .local v1, "nextFile":Ljava/lang/Long;
    if-nez v1, :cond_3

    .line 550
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->currentFileNum()J

    move-result-wide v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 553
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 554
    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v5

    int-to-long v5, v5

    .line 553
    invoke-direct {p0, v2, v3, v5, v6}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fillFromLogBuffer(JJ)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 559
    nop

    .line 580
    if-eqz v0, :cond_4

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 559
    :cond_4
    return v4

    .line 566
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v2

    move-object v0, v2

    .line 567
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->setFileNum(JI)V

    .line 568
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->startOffset:J

    .line 569
    invoke-virtual {p0, v0, v2, v3}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    .local v2, "moreData":Z
    if-eqz v2, :cond_7

    .line 572
    nop

    .line 580
    if-eqz v0, :cond_6

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 572
    :cond_6
    return v4

    .line 570
    :cond_7
    :try_start_3
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "FeederReader should find more data in next file"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "singleFile":Z
    .end local p2    # "bytesNeeded":I
    throw v3

    .line 531
    .end local v1    # "nextFile":Ljava/lang/Long;
    .end local v2    # "moreData":Z
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "singleFile":Z
    .restart local p2    # "bytesNeeded":I
    :cond_8
    new-instance v1, Lcom/sleepycat/je/log/FileReader$EOFException;

    invoke-direct {v1}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>()V

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "singleFile":Z
    .end local p2    # "bytesNeeded":I
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "singleFile":Z
    .restart local p2    # "bytesNeeded":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem in ReadWindow.fill, reading from  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->currentFileNum()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "singleFile":Z
    .end local p2    # "bytesNeeded":I
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 580
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "singleFile":Z
    .restart local p2    # "bytesNeeded":I
    :goto_0
    if-eqz v0, :cond_9

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    :cond_9
    throw v1

    .line 488
    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public slideAndFill(JJJZ)V
    .locals 1
    .param p1, "windowFileNum"    # J
    .param p3, "windowStartOffset"    # J
    .param p5, "targetOffset"    # J
    .param p7, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/sleepycat/je/rep/stream/FeederReader$SwitchWindow;->fillFromLogBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-super/range {p0 .. p7}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->slideAndFill(JJJZ)V

    .line 393
    :cond_0
    return-void
.end method
