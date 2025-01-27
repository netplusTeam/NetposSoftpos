.class public Lcom/sleepycat/je/EnvironmentStats;
.super Ljava/lang/Object;
.source "EnvironmentStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x675b7986L


# instance fields
.field private backupStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private incompStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private lockStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private logStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private throughputStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2567
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Node Compression"

    const-string v2, "Deleted records are removed from Btree internal nodes asynchronously and nodes are deleted when they become empty."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2570
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Cache"

    const-string v2, "The main cache resides in the Java heap and holds data, keys, Btree internal nodes, locks and JE metadata."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2572
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "OffHeap"

    const-string v2, "The optional off-heap cache resides outside the Java heap and serves as an overflow area for the main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2574
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Checkpoints"

    const-string v2, "Dirty Btree internal nodes are written to the data log periodically to bound recovery time."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2576
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Cleaning"

    const-string v2, "Log cleaning involves garbage collection of data files in the append-only storage system."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2578
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "I/O"

    const-string v2, "The file I/O component of the append-only storage system includes data file access, buffering and group commit."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2580
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Locks"

    const-string v2, "Record locking is used to provide transactional capabilities."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2582
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Environment"

    const-string v2, "Miscellaneous environment wide statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2584
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Backup"

    const-string v2, "Automatic backups statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2586
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BtreeOp"

    const-string v2, "Btree internal operation statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2590
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Op"

    const-string v2, "Throughput statistics for JE calls."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2594
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "TaskCoordinator"

    const-string v2, "Task coordination ensures that the execution of background  housekeeping tasks is coordinated, so they do not all execute  at once."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2598
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Eraser"

    const-string v2, "Obsolete data is erased during each erasure cycle."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2601
    return-void
.end method

.method public static getStatGroupTitles()[Ljava/lang/String;
    .locals 4

    .line 2710
    new-instance v0, Lcom/sleepycat/je/EnvironmentStats;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentStats;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v0

    .line 2711
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2712
    .local v1, "titles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2713
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2715
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getActiveLogSize()J
    .locals 2

    .line 3685
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ACTIVE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdminBytes()J
    .locals 2

    .line 5479
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_ADMIN_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getApplicationPermits()J
    .locals 2

    .line 6716
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->APPLICATION_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAvailableLogSize()J
    .locals 2

    .line 3895
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_AVAILABLE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvgBatchCacheMode()J
    .locals 2

    .line 5353
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAvgBatchCritical()J
    .locals 2

    .line 5361
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAvgBatchDaemon()J
    .locals 2

    .line 5369
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAvgBatchEvictorThread()J
    .locals 2

    .line 5337
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAvgBatchManual()J
    .locals 2

    .line 5345
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBackupCopyFilesCount()I
    .locals 2

    .line 6734
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getBackupCopyFilesMs()J
    .locals 2

    .line 6751
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferBytes()J
    .locals 2

    .line 4351
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_BUFFER_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheDataBytes()J
    .locals 4

    .line 5508
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getCacheTotalBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getBufferBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCacheTotalBytes()J
    .locals 2

    .line 5417
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCleanerBacklog()I
    .locals 1

    .line 3061
    const/4 v0, 0x0

    return v0
.end method

.method public getCorrectedAvgLNSize()F
    .locals 1

    .line 3158
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getCurrentMaxUtilization()I
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getCurrentMinUtilization()I
    .locals 2

    .line 3086
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getCursorsBins()J
    .locals 2

    .line 2853
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_CURSORS_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDOSBytes()J
    .locals 2

    .line 5461
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DOS_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataAdminBytes()J
    .locals 2

    .line 5442
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDataBytes()J
    .locals 2

    .line 5435
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DATA_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDbClosedBins()J
    .locals 2

    .line 2868
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_DBCLOSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeficitPermits()J
    .locals 2

    .line 6694
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->DEFICIT_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDirtyLRUSize()J
    .locals 2

    .line 5108
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI2_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndOfLog()J
    .locals 2

    .line 3947
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_END_OF_LOG:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnvironmentCreationTime()J
    .locals 2

    .line 2836
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->ENV_CREATION_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEstimatedAvgLNSize()F
    .locals 1

    .line 3166
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getFSync95Ms()J
    .locals 2

    .line 4041
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFSync99Ms()J
    .locals 2

    .line 4058
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFSyncAvgMs()J
    .locals 2

    .line 4024
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFSyncMaxMs()J
    .locals 2

    .line 4075
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFSyncMaxTime()J
    .locals 2

    .line 4007
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFSyncTime()J
    .locals 2

    .line 4000
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFileDeletionBacklog()I
    .locals 1

    .line 3070
    const/4 v0, 0x0

    return v0
.end method

.method public getInCompQueueSize()J
    .locals 2

    .line 2883
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLNSizeCorrectionFactor()F
    .locals 1

    .line 3150
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLastCheckpointEnd()J
    .locals 2

    .line 3050
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_END:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCheckpointId()J
    .locals 2

    .line 2945
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPTID:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCheckpointInterval()J
    .locals 2

    .line 3020
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_INTERVAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCheckpointStart()J
    .locals 2

    .line 3035
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_START:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastKnownUtilization()I
    .locals 1

    .line 3142
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getCurrentMinUtilization()I

    move-result v0

    return v0
.end method

.method public getLockBytes()J
    .locals 2

    .line 5498
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_LOCK_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMixedLRUSize()J
    .locals 2

    .line 5124
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI1_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNAcquiresNoWaitSuccessful()I
    .locals 1

    .line 6233
    const/4 v0, 0x0

    return v0
.end method

.method public getNAcquiresNoWaitUnSuccessful()I
    .locals 1

    .line 6240
    const/4 v0, 0x0

    return v0
.end method

.method public getNAcquiresNoWaiters()I
    .locals 1

    .line 6212
    const/4 v0, 0x0

    return v0
.end method

.method public getNAcquiresSelfOwned()I
    .locals 1

    .line 6219
    const/4 v0, 0x0

    return v0
.end method

.method public getNAcquiresWithContention()I
    .locals 1

    .line 6226
    const/4 v0, 0x0

    return v0
.end method

.method public getNBINDeltaBlindOps()J
    .locals 2

    .line 4981
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINDeltasCleaned()J
    .locals 2

    .line 3399
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINDeltasDead()J
    .locals 2

    .line 3415
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINDeltasFetchMiss()J
    .locals 2

    .line 4907
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINDeltasMigrated()J
    .locals 2

    .line 3431
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINDeltasObsolete()J
    .locals 2

    .line 3383
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINsEvictedCacheMode()J
    .locals 2

    .line 5156
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBINsEvictedCritical()J
    .locals 2

    .line 5148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBINsEvictedDaemon()J
    .locals 2

    .line 5164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBINsEvictedEvictorThread()J
    .locals 2

    .line 5132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBINsEvictedManual()J
    .locals 2

    .line 5140
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBINsFetch()J
    .locals 2

    .line 4822
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINsFetchMiss()J
    .locals 2

    .line 4889
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINsFetchMissRatio()F
    .locals 2

    .line 4961
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS_RATIO:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getFloat(Lcom/sleepycat/je/utilint/StatDefinition;)F

    move-result v0

    return v0
.end method

.method public getNBINsMutated()J
    .locals 2

    .line 4516
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBINsStripped()J
    .locals 2

    .line 4509
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBatchesCacheMode()J
    .locals 2

    .line 5228
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBatchesCritical()J
    .locals 2

    .line 5236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBatchesDaemon()J
    .locals 2

    .line 5244
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBatchesEvictorThread()J
    .locals 2

    .line 5212
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBatchesManual()J
    .locals 2

    .line 5220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNBinDeltaDeleteOps()J
    .locals 2

    .line 6088
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_DELETES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBinDeltaGetOps()J
    .locals 2

    .line 6043
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBinDeltaInsertOps()J
    .locals 2

    .line 6058
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_INSERTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBinDeltaUpdateOps()J
    .locals 2

    .line 6073
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_UPDATES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesEvictedCacheMode()J
    .locals 2

    .line 5294
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 5295
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    .line 5294
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesEvictedCritical()J
    .locals 2

    .line 5311
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 5312
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    .line 5311
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesEvictedDeamon()J
    .locals 2

    .line 5328
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 5329
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    .line 5328
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesEvictedEvictorThread()J
    .locals 2

    .line 5260
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 5261
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    .line 5260
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesEvictedManual()J
    .locals 2

    .line 5277
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 5278
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    .line 5277
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesReadFromWriteQueue()J
    .locals 2

    .line 4258
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_READ_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNBytesWrittenFromWriteQueue()J
    .locals 2

    .line 4273
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCacheMiss()J
    .locals 2

    .line 3928
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCachedBINDeltas()J
    .locals 2

    .line 5032
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCachedBINs()J
    .locals 2

    .line 5015
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCachedUpperINs()J
    .locals 2

    .line 4998
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_UPPER_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCheckpoints()J
    .locals 2

    .line 2960
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_CHECKPOINTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerDeletions()J
    .locals 2

    .line 3239
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DELETIONS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerDiskRead()J
    .locals 2

    .line 3286
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DISK_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerEntriesRead()J
    .locals 2

    .line 3303
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ENTRIES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerProbeRuns()J
    .locals 2

    .line 3223
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNCleanerRevisalRuns()J
    .locals 2

    .line 3216
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_REVISAL_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerRuns()J
    .locals 2

    .line 3184
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCleanerTwoPassRuns()J
    .locals 2

    .line 3200
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TWO_PASS_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNClusterLNsProcessed()J
    .locals 2

    .line 3665
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNDeltaINFlush()J
    .locals 2

    .line 3005
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_DELTA_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNDirtyNodesEvicted()J
    .locals 2

    .line 4620
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNEvictPasses()J
    .locals 2

    .line 4488
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNEvictionRuns()J
    .locals 2

    .line 4537
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFSyncRequests()J
    .locals 2

    .line 3977
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNC_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFSyncTimeouts()J
    .locals 2

    .line 3992
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFSyncs()J
    .locals 2

    .line 3962
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFileOpens()I
    .locals 2

    .line 4449
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FILE_OPENS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNFullBINFlush()J
    .locals 2

    .line 2990
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_BIN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFullBINsMiss()J
    .locals 2

    .line 4926
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->FULL_BIN_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNFullINFlush()J
    .locals 2

    .line 2975
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNGroupCommitRequests()J
    .locals 2

    .line 4093
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_N_GROUP_COMMIT_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINCompactKeyIN()J
    .locals 2

    .line 5092
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_COMPACT_KEY:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINNoTarget()J
    .locals 2

    .line 5074
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_NO_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINSparseTarget()J
    .locals 2

    .line 5053
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_SPARSE_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINsCleaned()J
    .locals 2

    .line 3335
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINsDead()J
    .locals 2

    .line 3351
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINsMigrated()J
    .locals 2

    .line 3367
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNINsObsolete()J
    .locals 2

    .line 3319
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNQueueHits()J
    .locals 2

    .line 3580
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNQUEUE_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsCleaned()J
    .locals 2

    .line 3500
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsDead()J
    .locals 2

    .line 3516
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsEvicted()J
    .locals 2

    .line 4643
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsExpired()J
    .locals 2

    .line 3465
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXPIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsExtinct()J
    .locals 2

    .line 3484
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXTINCT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsFetch()J
    .locals 2

    .line 4807
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsFetchMiss()J
    .locals 2

    .line 4856
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsLocked()J
    .locals 2

    .line 3532
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsMarked()J
    .locals 2

    .line 3564
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MARKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsMigrated()J
    .locals 2

    .line 3548
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLNsObsolete()J
    .locals 2

    .line 3447
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNLogBuffers()I
    .locals 2

    .line 4123
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_LOG_BUFFERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNLogFSyncs()J
    .locals 2

    .line 4108
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_LOG_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNMarkedLNsProcessed()J
    .locals 2

    .line 3651
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNNoFreeBuffer()J
    .locals 2

    .line 4434
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NO_FREE_BUFFER:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesEvicted()J
    .locals 2

    .line 4578
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesExplicitlyEvicted()J
    .locals 2

    .line 4502
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesMovedToDirtyLRU()J
    .locals 2

    .line 4730
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MOVED_TO_PRI2_LRU:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesMutated()J
    .locals 2

    .line 4684
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesPutBack()J
    .locals 2

    .line 4709
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_PUT_BACK:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesScanned()J
    .locals 2

    .line 4481
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNNodesSelected()J
    .locals 2

    .line 4495
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesSkipped()J
    .locals 2

    .line 4755
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesStripped()J
    .locals 2

    .line 4662
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNodesTargeted()J
    .locals 2

    .line 4557
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNNotResident()J
    .locals 2

    .line 4366
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NOT_RESIDENT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNOpenFiles()I
    .locals 2

    .line 4464
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_OPEN_FILES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNOwners()I
    .locals 2

    .line 6107
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_OWNERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNPendingDBsIncomplete()J
    .locals 2

    .line 3644
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_INCOMPLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNPendingDBsProcessed()J
    .locals 2

    .line 3628
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNPendingLNsLocked()J
    .locals 2

    .line 3612
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNPendingLNsProcessed()J
    .locals 2

    .line 3596
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRandomReadBytes()J
    .locals 2

    .line 4153
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRandomReads()J
    .locals 2

    .line 4138
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRandomWriteBytes()J
    .locals 2

    .line 4183
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRandomWrites()J
    .locals 2

    .line 4168
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReadLocks()I
    .locals 2

    .line 6141
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNReadsFromWriteQueue()J
    .locals 2

    .line 4288
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_READS_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReleases()I
    .locals 1

    .line 6247
    const/4 v0, 0x0

    return v0
.end method

.method public getNRepeatFaultReads()J
    .locals 2

    .line 4381
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_FAULT_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRepeatIteratorReads()J
    .locals 2

    .line 4401
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_ITERATOR_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRequests()J
    .locals 2

    .line 6190
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNRootNodesEvicted()J
    .locals 2

    .line 4598
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_ROOT_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNSequentialReadBytes()J
    .locals 2

    .line 4213
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNSequentialReads()J
    .locals 2

    .line 4198
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNSequentialWriteBytes()J
    .locals 2

    .line 4243
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNSequentialWrites()J
    .locals 2

    .line 4228
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNSharedCacheEnvironments()I
    .locals 2

    .line 4788
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_SHARED_CACHE_ENVS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNTempBufferWrites()J
    .locals 2

    .line 4416
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_TEMP_BUFFER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNThreadUnavailable()J
    .locals 2

    .line 4771
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNToBeCleanedLNsProcessed()J
    .locals 2

    .line 3658
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNTotalLocks()I
    .locals 2

    .line 6124
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNUpperINsEvictedCacheMode()J
    .locals 2

    .line 5196
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNUpperINsEvictedCritical()J
    .locals 2

    .line 5188
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNUpperINsEvictedDaemon()J
    .locals 2

    .line 5204
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNUpperINsEvictedEvictorThread()J
    .locals 2

    .line 5172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNUpperINsEvictedManual()J
    .locals 2

    .line 5180
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNUpperINsFetch()J
    .locals 2

    .line 4837
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNUpperINsFetchMiss()J
    .locals 2

    .line 4941
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNWaiters()I
    .locals 2

    .line 6175
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNWaits()J
    .locals 2

    .line 6205
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNWriteLocks()I
    .locals 2

    .line 6158
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNWriteQueueOverflow()J
    .locals 2

    .line 4318
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNWriteQueueOverflowFailures()J
    .locals 2

    .line 4333
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNWritesFromWriteQueue()J
    .locals 2

    .line 4303
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITES_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonEmptyBins()J
    .locals 2

    .line 2898
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_NON_EMPTY_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapAllocFailures()J
    .locals 2

    .line 5536
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_FAILURE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapAllocOverflows()J
    .locals 2

    .line 5560
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapBINsLoaded()J
    .locals 2

    .line 5844
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapBINsStored()J
    .locals 2

    .line 5867
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapCachedBINDeltas()I
    .locals 2

    .line 5921
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getOffHeapCachedBINs()I
    .locals 2

    .line 5903
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getOffHeapCachedLNs()I
    .locals 2

    .line 5885
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getOffHeapCriticalNodesTargeted()J
    .locals 2

    .line 5627
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CRITICAL_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapDirtyNodesEvicted()J
    .locals 2

    .line 5670
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLNsEvicted()J
    .locals 2

    .line 5779
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLNsLoaded()J
    .locals 2

    .line 5800
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLNsStored()J
    .locals 2

    .line 5823
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLRUSize()J
    .locals 2

    .line 5996
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getOffHeapNodesEvicted()J
    .locals 2

    .line 5650
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapNodesMutated()J
    .locals 2

    .line 5734
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapNodesSkipped()J
    .locals 2

    .line 5761
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapNodesStripped()J
    .locals 2

    .line 5709
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapNodesTargeted()J
    .locals 2

    .line 5608
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapThreadUnavailable()J
    .locals 2

    .line 5579
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapTotalBlocks()J
    .locals 2

    .line 5967
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BLOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getOffHeapTotalBytes()J
    .locals 2

    .line 5945
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPendingDBQueueSize()I
    .locals 2

    .line 3271
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DB_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getPendingLNQueueSize()I
    .locals 2

    .line 3255
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LN_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getPredictedMaxUtilization()I
    .locals 2

    .line 3134
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getPredictedMinUtilization()I
    .locals 2

    .line 3118
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getPriDeleteFailOps()J
    .locals 2

    .line 6601
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriDeleteOps()J
    .locals 2

    .line 6579
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriInsertFailOps()J
    .locals 2

    .line 6470
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriInsertOps()J
    .locals 2

    .line 6448
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriPositionOps()J
    .locals 2

    .line 6388
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriSearchFailOps()J
    .locals 2

    .line 6308
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriSearchOps()J
    .locals 2

    .line 6286
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriUpdateOps()J
    .locals 2

    .line 6529
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessedBins()J
    .locals 2

    .line 2913
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_PROCESSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtectedLogSize()J
    .locals 2

    .line 3747
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtectedLogSizeMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3856
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getMap(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getRealPermits()J
    .locals 2

    .line 6668
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->REAL_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRelatchesRequired()J
    .locals 2

    .line 6013
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_RELATCHES_REQUIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredEvictBytes()J
    .locals 2

    .line 4473
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReservedLogSize()J
    .locals 2

    .line 3727
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RESERVED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRootSplits()J
    .locals 2

    .line 6028
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_ROOT_SPLITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecDeleteOps()J
    .locals 2

    .line 6645
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecInsertOps()J
    .locals 2

    .line 6500
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecPositionOps()J
    .locals 2

    .line 6418
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecSearchFailOps()J
    .locals 2

    .line 6366
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecSearchOps()J
    .locals 2

    .line 6337
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecUpdateOps()J
    .locals 2

    .line 6557
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedCacheTotalBytes()J
    .locals 2

    .line 5393
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_SHARED_CACHE_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplitBins()J
    .locals 2

    .line 2928
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_SPLIT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatGroups()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 2612
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    .line 2613
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Eraser"

    const-string v2, "Obsolete data is erased during each erasure cycle."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2617
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_1

    .line 2618
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "TaskCoordinator"

    const-string v2, "Task coordination ensures that the execution of background  housekeeping tasks is coordinated, so they do not all execute  at once."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2622
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_2

    .line 2623
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BtreeOp"

    const-string v2, "Btree internal operation statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2628
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_3

    .line 2629
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Backup"

    const-string v2, "Automatic backups statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2634
    :cond_3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatGroupsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 2645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2646
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 2647
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 2649
    :cond_0
    return-object v0
.end method

.method public getTips()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6785
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6786
    .local v0, "tipsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 6787
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/utilint/StatGroup;->addToTipMap(Ljava/util/Map;)V

    .line 6788
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 6789
    :cond_0
    return-object v0
.end method

.method public getTotalLogSize()J
    .locals 2

    .line 3911
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TOTAL_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setBackupStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2813
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2814
    return-void
.end method

.method public setBtreeOpStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2821
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2822
    return-void
.end method

.method public setCkptStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2755
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2756
    return-void
.end method

.method public setCleanerStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2763
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2764
    return-void
.end method

.method public setEnvStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2805
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2806
    return-void
.end method

.method public setEraserStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2747
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2748
    return-void
.end method

.method public setINCompStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2731
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2732
    return-void
.end method

.method public setLockStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2797
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2798
    return-void
.end method

.method public setLogStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2771
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2772
    return-void
.end method

.method public setMBAndEvictorStats(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "clonedMBStats"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "clonedEvictorStats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2780
    iput-object p2, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2781
    invoke-virtual {p2, p1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2782
    return-void
.end method

.method public setOffHeapStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2789
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2790
    return-void
.end method

.method public setStatGroup(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 2
    .param p1, "sg"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2658
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Eraser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "Backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "BtreeOp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "Environment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "TaskCoordinator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_5
    const-string v1, "Cleaning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "OffHeap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "Locks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v1, "Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "I/O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v1, "Op"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v1, "Checkpoints"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_c
    const-string v1, "Node Compression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stat group name in setStatGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2700
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2699
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2696
    :pswitch_0
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->eraserStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2697
    goto :goto_2

    .line 2693
    :pswitch_1
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2694
    goto :goto_2

    .line 2690
    :pswitch_2
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2691
    goto :goto_2

    .line 2687
    :pswitch_3
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2688
    goto :goto_2

    .line 2684
    :pswitch_4
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->envImplStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2685
    goto :goto_2

    .line 2681
    :pswitch_5
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2682
    goto :goto_2

    .line 2678
    :pswitch_6
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->lockStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2679
    goto :goto_2

    .line 2675
    :pswitch_7
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->logStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2676
    goto :goto_2

    .line 2672
    :pswitch_8
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->cleanerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2673
    goto :goto_2

    .line 2669
    :pswitch_9
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->ckptStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2670
    goto :goto_2

    .line 2666
    :pswitch_a
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->offHeapStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2667
    goto :goto_2

    .line 2663
    :pswitch_b
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->cacheStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2664
    goto :goto_2

    .line 2660
    :pswitch_c
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->incompStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2661
    nop

    .line 2702
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c1e53b8 -> :sswitch_c
        -0x3d93fc35 -> :sswitch_b
        0xa01 -> :sswitch_a
        0x11809 -> :sswitch_9
        0x3ddbf62 -> :sswitch_8
        0x462f088 -> :sswitch_7
        0x6da37db -> :sswitch_6
        0x32f3b519 -> :sswitch_5
        0x4021304b -> :sswitch_4
        0x5e4ad9f3 -> :sswitch_3
        0x6fc354e1 -> :sswitch_2
        0x762561e2 -> :sswitch_1
        0x7c32aeac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTaskCoordinatorStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2739
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->taskCoordinatorStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2740
    return-void
.end method

.method public setThroughputStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 2723
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentStats;->throughputStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2724
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 6760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6761
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 6762
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6763
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 6764
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 4

    .line 6772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6773
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 6774
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6775
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 6776
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
