.class public Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
.super Ljava/lang/Object;
.source "DiskOrderedCursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;,
        Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    }
.end annotation


# instance fields
.field private final END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

.field private final SHUTDOWN_REQUESTED_EXCEPTION:Ljava/lang/RuntimeException;

.field private closed:Z

.field private currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final keysOnly:Z

.field private offerTimeout:I

.field private final processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

.field private final producer:Ljava/lang/Thread;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:I

.field private final scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;


# direct methods
.method public constructor <init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V
    .locals 16
    .param p1, "dbImpls"    # [Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "config"    # Lcom/sleepycat/je/DiskOrderedCursorConfig;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    .line 135
    new-instance v1, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Producer Thread shutdown requested"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->SHUTDOWN_REQUESTED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z

    .line 143
    iput-object v2, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 149
    aget-object v1, v13, v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 151
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v14

    .line 153
    .local v14, "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->DOS_PRODUCER_QUEUE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v14, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->offerTimeout:I

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getKeysOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->keysOnly:Z

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getQueueSize()I

    move-result v3

    iput v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    .line 159
    if-eqz v1, :cond_1

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v13

    if-ge v1, v3, :cond_1

    .line 161
    iget v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    aget-object v4, v13, v1

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 162
    aget-object v3, v13, v1

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v3

    iput v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_1
    new-instance v3, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    invoke-direct {v3, v0, v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V

    iput-object v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    .line 169
    new-instance v15, Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getSerialDBScan()Z

    move-result v4

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getBINsOnly()Z

    move-result v5

    iget-boolean v6, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->keysOnly:Z

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getCountOnly()Z

    move-result v7

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getLSNBatchSize()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getInternalMemoryLimit()J

    move-result-wide v10

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->getDebug()Z

    move-result v12

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;ZZZZJJZ)V

    iput-object v15, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 176
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 178
    new-instance v1, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->producer:Ljava/lang/Thread;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskOrderedCursor Producer Thread for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queueSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->SHUTDOWN_REQUESTED_EXCEPTION:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 52
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->offerTimeout:I

    return v0
.end method

.method private setData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 344
    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->access$1200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 347
    :cond_0
    if-eqz p2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->access$1300(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->access$1400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/DbInternal;->makeResult(J)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkEnv()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 338
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 327
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->access$1100(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 325
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method freeQueueSlots()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public getCurrDb()I
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v0, -0x1

    return v0

    .line 378
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->access$1500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)I

    move-result v0

    return v0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;

    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 362
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 365
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->setData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNScannerIterations()I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getNIterations()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 5
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z

    if-nez v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 394
    monitor-exit p0

    return-object v2

    .line 406
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->access$1600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    nop

    .line 417
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->access$1600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_2

    .line 423
    monitor-exit p0

    return-object v2

    .line 426
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->setData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 418
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    :cond_3
    :try_start_4
    new-instance v0, Lcom/sleepycat/je/DiskOrderedCursorProducerException;

    const-string v1, "Producer Thread Failure"

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    .line 419
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->access$1600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/DiskOrderedCursorProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "IE":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->END_OF_QUEUE:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->currentNode:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 414
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 386
    .end local v0    # "IE":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 384
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getNumLsns()J
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getNumLsns()J

    move-result-wide v0

    return-wide v0
.end method

.method getScanner()Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->scanner:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 322
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isProcessorClosed()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->processor:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    iget-boolean v0, v0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->isClosed:Z

    return v0
.end method
