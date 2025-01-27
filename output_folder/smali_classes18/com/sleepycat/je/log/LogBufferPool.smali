.class Lcom/sleepycat/je/log/LogBufferPool;
.super Ljava/lang/Object;
.source "LogBufferPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG_NAME:Ljava/lang/String;


# instance fields
.field private bufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sleepycat/je/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

.field private currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

.field private currentWriteBufferIndex:I

.field private dirtyEnd:I

.field private dirtyStart:I

.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private logBufferSize:I

.field private final logBuffers:Lcom/sleepycat/je/utilint/IntStat;

.field private volatile minBufferLsn:J

.field private final nBufferBytes:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCacheMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private nLogBuffers:I

.field private final nNoFreeBuffer:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNotResident:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final runInMemory:Z

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    nop

    .line 79
    const-class v0, Lcom/sleepycat/je/log/LogBufferPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogBufferPool;->DEBUG_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    .line 92
    iput v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyEnd:I

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->minBufferLsn:J

    .line 150
    iput-object p1, p0, Lcom/sleepycat/je/log/LogBufferPool;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 151
    iput-object p2, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sleepycat/je/log/LogBufferPool;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FullLatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/je/latch/LatchFactory;->createExclusiveLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/Latch;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    .line 156
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 157
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    .line 158
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/LogBufferPool;->reset(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 161
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/LogBuffer;

    iput-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    .line 164
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "LogBufferPool"

    const-string v3, "LogBufferPool statistics"

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 166
    new-instance v2, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NOT_RESIDENT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->nNotResident:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 167
    new-instance v2, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->nCacheMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 168
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_LOG_BUFFERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBuffers:Lcom/sleepycat/je/utilint/IntStat;

    .line 169
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_BUFFER_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->nBufferBytes:Lcom/sleepycat/je/utilint/LongStat;

    .line 170
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NO_FREE_BUFFER:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->nNoFreeBuffer:Lcom/sleepycat/je/utilint/LongStat;

    .line 171
    return-void
.end method

.method private getNextSlot(I)I
    .locals 1
    .param p1, "slotNumber"    # I

    .line 386
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private updateMinBufferLsn(Lcom/sleepycat/je/log/LogBuffer;)V
    .locals 4
    .param p1, "newInitialBuffer"    # Lcom/sleepycat/je/log/LogBuffer;

    .line 590
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v0

    .line 591
    .local v0, "newMinLsn":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 592
    iput-wide v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->minBufferLsn:J

    .line 594
    :cond_0
    return-void
.end method

.method private writeBufferToFile(Lcom/sleepycat/je/log/LogBuffer;Z)V
    .locals 7
    .param p1, "latchedBuffer"    # Lcom/sleepycat/je/log/LogBuffer;
    .param p2, "flushWriteQueue"    # Z

    .line 449
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    if-eqz v0, :cond_0

    .line 450
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 462
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 463
    .local v0, "currentByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 464
    .local v1, "savePosition":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 465
    .local v2, "saveLimit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/je/log/FileManager;->writeLogBuffer(Lcom/sleepycat/je/log/LogBuffer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    nop

    .line 507
    .end local v0    # "currentByteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "savePosition":I
    .end local v2    # "saveLimit":I
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 508
    nop

    .line 509
    return-void

    .line 473
    .restart local v0    # "currentByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "savePosition":I
    .restart local v2    # "saveLimit":I
    :catchall_0
    move-exception v3

    .line 474
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 482
    instance-of v4, v3, Lcom/sleepycat/je/EnvironmentFailureException;

    if-eqz v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 490
    move-object v4, v3

    check-cast v4, Lcom/sleepycat/je/EnvironmentFailureException;

    .end local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v4

    .line 493
    .restart local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v5, v3

    check-cast v5, Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v4

    .line 495
    .restart local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :cond_2
    instance-of v4, v3, Ljava/lang/Error;

    if-nez v4, :cond_4

    .line 498
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_3

    .line 499
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v5, v3

    check-cast v5, Ljava/lang/Exception;

    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v4

    .line 502
    .restart local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 503
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 502
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v4

    .line 496
    .restart local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :cond_4
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 497
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 507
    .end local v0    # "currentByteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "savePosition":I
    .end local v2    # "saveLimit":I
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local p1    # "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    throw v0
.end method


# virtual methods
.method bumpAndWriteDirty(IZ)V
    .locals 2
    .param p1, "sizeNeeded"    # I
    .param p2, "flushWriteQueue"    # Z

    .line 346
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/LogBufferPool;->bumpCurrent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/log/LogBufferPool;->writeDirty(Z)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/LogBufferPool;->bumpCurrent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/log/LogBufferPool;->writeDirty(Z)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v1, "No free log buffers."

    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 373
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/log/LogBufferPool;->writeDirty(Z)V

    .line 375
    :goto_0
    return-void
.end method

.method bumpCurrent(I)Z
    .locals 5
    .param p1, "sizeNeeded"    # I

    .line 527
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 528
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->latchForWrite()V

    .line 530
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 536
    .local v0, "latchedBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 537
    nop

    .line 575
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 576
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 537
    return v2

    .line 540
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    if-eqz v1, :cond_2

    .line 541
    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBufferSize:I

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 545
    .local v1, "bufferSize":I
    :goto_0
    new-instance v3, Lcom/sleepycat/je/log/LogBuffer;

    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v3, v1, v4}, Lcom/sleepycat/je/log/LogBuffer;-><init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 546
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    nop

    .line 575
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 576
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v3}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 548
    return v2

    .line 551
    .end local v1    # "bufferSize":I
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    if-gez v1, :cond_3

    .line 552
    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    goto :goto_1

    .line 555
    :cond_3
    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    invoke-direct {p0, v1}, Lcom/sleepycat/je/log/LogBufferPool;->getNextSlot(I)I

    move-result v1

    iget v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    if-ne v1, v3, :cond_4

    .line 556
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->nNoFreeBuffer:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    const/4 v1, 0x0

    .line 575
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 576
    iget-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 557
    return v1

    .line 561
    :cond_4
    :goto_1
    :try_start_3
    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyEnd:I

    .line 562
    invoke-direct {p0, v1}, Lcom/sleepycat/je/log/LogBufferPool;->getNextSlot(I)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    .line 563
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/LogBuffer;

    .line 564
    .local v1, "nextToUse":Lcom/sleepycat/je/log/LogBuffer;
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    iget v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    .line 565
    invoke-direct {p0, v4}, Lcom/sleepycat/je/log/LogBufferPool;->getNextSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/LogBuffer;

    .line 566
    .local v3, "newInitialBuffer":Lcom/sleepycat/je/log/LogBuffer;
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogBuffer;->reinit()V

    .line 569
    iput-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 572
    invoke-direct {p0, v3}, Lcom/sleepycat/je/log/LogBufferPool;->updateMinBufferLsn(Lcom/sleepycat/je/log/LogBuffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    nop

    .line 575
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 576
    iget-object v4, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v4}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 573
    return v2

    .line 575
    .end local v1    # "nextToUse":Lcom/sleepycat/je/log/LogBuffer;
    .end local v3    # "newInitialBuffer":Lcom/sleepycat/je/log/LogBuffer;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 576
    iget-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    throw v1
.end method

.method public getBufferPoolLatchStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->getStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method final getLogBufferSize()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBufferSize:I

    return v0
.end method

.method public getNCacheMiss()J
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nCacheMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getReadBufferByLsn(J)Lcom/sleepycat/je/log/LogBuffer;
    .locals 4
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nNotResident:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 610
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->minBufferLsn:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nCacheMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 612
    return-object v1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/LogBuffer;

    .line 624
    .local v2, "l":Lcom/sleepycat/je/log/LogBuffer;
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/log/LogBuffer;->containsLsn(J)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 625
    nop

    .line 632
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 625
    return-object v2

    .line 627
    .end local v2    # "l":Lcom/sleepycat/je/log/LogBuffer;
    :cond_1
    goto :goto_0

    .line 629
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nCacheMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    nop

    .line 632
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 630
    return-object v1

    .line 632
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    throw v0
.end method

.method getWriteBuffer(IZ)Lcom/sleepycat/je/log/LogBuffer;
    .locals 1
    .param p1, "sizeNeeded"    # I
    .param p2, "flippedFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 290
    if-eqz p2, :cond_0

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/log/LogBufferPool;->bumpAndWriteDirty(IZ)V

    .line 301
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->syncLogEndAndFinishFile()V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogBuffer;->hasRoom(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/LogBufferPool;->bumpCurrent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 312
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogBuffer;->hasRoom(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/log/LogBufferPool;->bumpAndWriteDirty(IZ)V

    .line 324
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    return-object v0
.end method

.method loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBuffers:Lcom/sleepycat/je/utilint/IntStat;

    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->nLogBuffers:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 641
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nBufferBytes:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->nLogBuffers:I

    int-to-long v1, v1

    iget v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBufferSize:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method reset(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 11
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 191
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/log/LogBufferPool;->bumpAndWriteDirty(IZ)V

    .line 206
    :cond_1
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->NUM_LOG_BUFFERS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 207
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 208
    .local v0, "numBuffers":I
    iget-object v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLogBufferBudget()J

    move-result-wide v2

    .line 210
    .local v2, "logBufferBudget":J
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    .line 211
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v4

    .line 213
    .local v4, "logFileSize":J
    long-to-int v6, v2

    div-int/2addr v6, v0

    .line 215
    .local v6, "newBufferSize":I
    long-to-int v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 217
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 223
    .local v7, "newPool":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sleepycat/je/log/LogBuffer;>;"
    iget-boolean v8, p0, Lcom/sleepycat/je/log/LogBufferPool;->runInMemory:Z

    if-eqz v8, :cond_2

    .line 224
    const/4 v0, 0x1

    .line 227
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_3

    .line 228
    new-instance v9, Lcom/sleepycat/je/log/LogBuffer;

    iget-object v10, p0, Lcom/sleepycat/je/log/LogBufferPool;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v9, v6, v10}, Lcom/sleepycat/je/log/LogBuffer;-><init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 244
    .end local v8    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v8}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 245
    iput-object v7, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    .line 246
    iput v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->nLogBuffers:I

    .line 247
    iput v6, p0, Lcom/sleepycat/je/log/LogBufferPool;->logBufferSize:I

    .line 249
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/log/LogBuffer;

    iput-object v8, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBuffer:Lcom/sleepycat/je/log/LogBuffer;

    .line 250
    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->currentWriteBufferIndex:I

    .line 251
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 252
    return-void
.end method

.method writeDirty(Z)V
    .locals 4
    .param p1, "flushWriteQueue"    # Z

    .line 409
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 411
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 412
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x1

    .line 416
    .local v0, "process":Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPool:Ljava/util/LinkedList;

    iget v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/LogBuffer;

    .line 417
    .local v1, "lb":Lcom/sleepycat/je/log/LogBuffer;
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogBuffer;->waitForZeroAndLatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/sleepycat/je/log/LogBufferPool;->writeBufferToFile(Lcom/sleepycat/je/log/LogBuffer;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .line 422
    nop

    .line 423
    iget v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    iget v3, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyEnd:I

    if-ne v2, v3, :cond_2

    .line 424
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_2
    invoke-direct {p0, v2}, Lcom/sleepycat/je/log/LogBufferPool;->getNextSlot(I)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    .line 428
    .end local v1    # "lb":Lcom/sleepycat/je/log/LogBuffer;
    :goto_0
    if-nez v0, :cond_1

    .line 429
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyStart:I

    .line 430
    iput v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->dirtyEnd:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 432
    .end local v0    # "process":Z
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 433
    nop

    .line 434
    return-void

    .line 421
    .restart local v0    # "process":Z
    .restart local v1    # "lb":Lcom/sleepycat/je/log/LogBuffer;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogBuffer;->release()V

    .end local p1    # "flushWriteQueue":Z
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 432
    .end local v0    # "process":Z
    .end local v1    # "lb":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p1    # "flushWriteQueue":Z
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/LogBufferPool;->bufferPoolLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    throw v0
.end method
