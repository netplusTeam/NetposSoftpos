.class public Lcom/sleepycat/je/cleaner/UtilizationProfile;
.super Ljava/lang/Object;
.source "UtilizationProfile.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_RUNNABLE:Ljava/lang/Runnable;

.field private static incompleteReactivateHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachePopulated:Z

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private fileSummaryMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    nop

    .line 98
    new-instance v0, Lcom/sleepycat/je/cleaner/UtilizationProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/UtilizationTracker;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 116
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->logger:Ljava/util/logging/Logger;

    .line 120
    return-void
.end method

.method private declared-synchronized addFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;Ljava/lang/Long;I)V
    .locals 4
    .param p1, "ln"    # Lcom/sleepycat/je/tree/FileSummaryLN;
    .param p2, "fileNum"    # Ljava/lang/Long;
    .param p3, "sequence"    # I

    monitor-enter p0

    .line 550
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->insertFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;JI)Z

    .line 553
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/FileSummaryLN;->getBaseSummary()Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v0

    .line 555
    .local v0, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v1, p2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    .line 557
    .local v1, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    .end local v1    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    monitor-exit p0

    return-void

    .line 549
    .end local v0    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p1    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local p2    # "fileNum":Ljava/lang/Long;
    .end local p3    # "sequence":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addReactivatedFileSummary(Ljava/lang/Long;)J
    .locals 6
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 581
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteFileSummary(Ljava/lang/Long;)V

    .line 583
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 584
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "fileObj":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 587
    .local v1, "size":I
    new-instance v2, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v2}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    .line 588
    .local v2, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    const/4 v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 589
    iput v1, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 590
    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 591
    iput v1, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    .line 592
    iput v1, v2, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    .line 593
    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    .line 594
    iput v1, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 595
    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    .line 597
    new-instance v3, Lcom/sleepycat/je/tree/FileSummaryLN;

    invoke-direct {v3, v2}, Lcom/sleepycat/je/tree/FileSummaryLN;-><init>(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 598
    .local v3, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->addFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    int-to-long v4, v1

    monitor-exit p0

    return-wide v4

    .line 580
    .end local v0    # "fileObj":Ljava/io/File;
    .end local v1    # "size":I
    .end local v2    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized clearCache()V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    mul-int/2addr v0, v1

    .line 277
    .local v0, "memorySize":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    .line 278
    .local v1, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    rsub-int/lit8 v2, v0, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 280
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    .line 281
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 274
    .end local v0    # "memorySize":I
    .end local v1    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteFileSummary(Ljava/lang/Long;)V
    .locals 18
    .param p1, "fileNum"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 407
    move-object/from16 v8, p0

    const/4 v1, 0x0

    .line 408
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 410
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v9, v0

    .line 411
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v9, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, v9}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v15, v0

    .line 413
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v15, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v15, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 415
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 416
    .local v5, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v14, v1

    .line 419
    .local v14, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v14, v3, v3, v0}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 422
    const/4 v10, 0x0

    .line 423
    .local v10, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v7, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    .line 423
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFirstFSLN(Lcom/sleepycat/je/dbi/CursorImpl;JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 425
    :try_start_3
    sget-object v1, Lcom/sleepycat/je/DbInternal;->DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v1

    goto :goto_0

    .line 448
    .end local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v0

    move-object v1, v9

    move-object v2, v15

    goto/16 :goto_2

    .line 423
    .restart local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_0
    move-object v1, v10

    .line 429
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    if-eqz v1, :cond_2

    .line 430
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 431
    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 434
    iget-object v2, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 440
    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v15, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 442
    sget-object v13, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move-object v11, v5

    move-object v12, v14

    move-object v4, v14

    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    move v14, v2

    move-object v2, v15

    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move v15, v3

    :try_start_5
    invoke-virtual/range {v10 .. v17}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v3

    move-object v15, v2

    move-object v14, v4

    goto :goto_0

    .line 431
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v4    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_1
    move-object v4, v14

    move-object v2, v15

    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_1

    .line 429
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v4    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_2
    move-object v4, v14

    move-object v2, v15

    .line 448
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_1
    nop

    .line 449
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 451
    if-eqz v9, :cond_3

    .line 452
    invoke-virtual {v9}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 457
    :cond_3
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFile(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v0

    .line 458
    .local v0, "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-eqz v0, :cond_4

    .line 459
    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogManager;->removeTrackedFile(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 461
    :cond_4
    return-void

    .line 448
    .end local v0    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_1
    move-exception v0

    move-object v2, v15

    move-object v1, v9

    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_2

    .end local v9    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_3
    move-exception v0

    :goto_2
    if-eqz v2, :cond_5

    .line 449
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 451
    :cond_5
    if-eqz v1, :cond_6

    .line 452
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    :cond_6
    throw v0
.end method

.method private getFirstFSLN(Lcom/sleepycat/je/dbi/CursorImpl;JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 14
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "fileNum"    # J
    .param p4, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1226
    move-object/from16 v9, p4

    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/tree/FileSummaryLN;->makePartialKey(J)[B

    move-result-object v10

    .line 1227
    .local v10, "keyBytes":[B
    invoke-virtual {v9, v10}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1229
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->reset()V

    .line 1232
    const/4 v0, 0x0

    move-object v11, p1

    :try_start_0
    invoke-virtual {p1, v9, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->searchRange(Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    .line 1235
    nop

    .line 1247
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1235
    return v12

    .line 1238
    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v12

    :goto_0
    move v8, v1

    .line 1240
    .local v8, "exactKeyMatch":Z
    if-eqz v8, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1241
    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 1244
    nop

    .line 1247
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1244
    return v13

    .line 1247
    .end local v0    # "result":I
    .end local v8    # "exactKeyMatch":Z
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1248
    nop

    .line 1251
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN()V

    .line 1253
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1257
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_3

    move v12, v13

    :cond_3
    return v12

    .line 1247
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method private getObsoleteDetailInternal(Ljava/lang/Long;ZLjava/lang/Runnable;)[J
    .locals 25
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "logUpdate"    # Z
    .param p3, "beforeWork"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 701
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z

    if-eqz v0, :cond_c

    .line 703
    if-nez p3, :cond_0

    .line 704
    sget-object v0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    move-object v9, v0

    .end local p3    # "beforeWork":Ljava/lang/Runnable;
    .local v0, "beforeWork":Ljava/lang/Runnable;
    goto :goto_0

    .line 703
    .end local v0    # "beforeWork":Ljava/lang/Runnable;
    .restart local p3    # "beforeWork":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v9, p3

    .line 707
    .end local p3    # "beforeWork":Ljava/lang/Runnable;
    .local v9, "beforeWork":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 708
    .local v10, "fileNumVal":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 714
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<[J>;"
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 715
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sleepycat/je/log/LogManager;->getUnflushableTrackedSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v13

    .line 718
    .local v13, "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    const/4 v14, 0x1

    :try_start_0
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 719
    const/4 v15, 0x0

    invoke-static {v0, v15}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    move-object v7, v0

    .line 720
    .local v7, "locker":Lcom/sleepycat/je/txn/Locker;
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, v0

    .line 723
    .local v3, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_1
    invoke-virtual {v3, v14}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 725
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 726
    .local v5, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 728
    .local v6, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    sget-object v16, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v15, v3

    .end local v3    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v15, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move-wide v3, v10

    move-object/from16 v24, v7

    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v24, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v7, v16

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFirstFSLN(Lcom/sleepycat/je/dbi/CursorImpl;JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    sget-object v1, Lcom/sleepycat/je/DbInternal;->DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;

    move-object v0, v1

    .line 738
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 741
    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 743
    sget-object v1, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    .line 744
    invoke-virtual {v15, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/FileSummaryLN;

    .line 746
    .local v1, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    if-eqz v1, :cond_4

    .line 748
    nop

    .line 749
    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2

    .line 750
    goto :goto_2

    .line 753
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/FileSummaryLN;->getObsoleteOffsets()Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v2

    .line 754
    .local v2, "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    if-eqz v2, :cond_3

    .line 755
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedOffsets;->toArray()[J

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_3
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN()V

    .line 762
    .end local v2    # "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :cond_4
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 764
    sget-object v19, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v15

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 768
    .end local v1    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    goto :goto_1

    .line 770
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 771
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 772
    nop

    .line 774
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 780
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 781
    if-eqz p2, :cond_7

    .line 782
    invoke-direct {v8, v13}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->putFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v0

    .line 783
    .local v0, "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    if-eqz v0, :cond_6

    .line 784
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->toArray()[J

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v0    # "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :cond_6
    goto :goto_3

    .line 787
    :cond_7
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getObsoleteOffsets()[J

    move-result-object v0

    .line 788
    .local v0, "offsetList":[J
    if-eqz v0, :cond_8

    .line 789
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 795
    .end local v0    # "offsetList":[J
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_8
    :goto_3
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->setAllowFlush(Z)V

    .line 796
    nop

    .line 798
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "size":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 803
    .local v2, "a":[J
    array-length v3, v2

    add-int/2addr v0, v3

    .line 804
    .end local v2    # "a":[J
    goto :goto_4

    .line 805
    :cond_9
    new-array v1, v0, [J

    .line 806
    .local v1, "offsets":[J
    const/4 v2, 0x0

    .line 807
    .local v2, "index":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 808
    .local v4, "a":[J
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    array-length v5, v4

    add-int/2addr v2, v5

    .line 810
    .end local v4    # "a":[J
    goto :goto_5

    .line 811
    :cond_a
    array-length v3, v1

    if-ne v2, v3, :cond_b

    .line 812
    return-object v1

    .line 811
    :cond_b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 770
    .end local v0    # "size":I
    .end local v1    # "offsets":[J
    .end local v2    # "index":I
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_1
    move-exception v0

    move-object v15, v3

    move-object/from16 v24, v7

    .end local v3    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_6
    :try_start_4
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 771
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local v9    # "beforeWork":Ljava/lang/Runnable;
    .end local v10    # "fileNumVal":J
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<[J>;"
    .end local v13    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "logUpdate":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 795
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v9    # "beforeWork":Ljava/lang/Runnable;
    .restart local v10    # "fileNumVal":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<[J>;"
    .restart local v13    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "logUpdate":Z
    :catchall_2
    move-exception v0

    invoke-virtual {v13, v14}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->setAllowFlush(Z)V

    throw v0

    .line 701
    .end local v9    # "beforeWork":Ljava/lang/Runnable;
    .end local v10    # "fileNumVal":J
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<[J>;"
    .end local v13    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .restart local p3    # "beforeWork":Ljava/lang/Runnable;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 98
    return-void
.end method

.method private openFileSummaryDatabase()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1289
    return v1

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1293
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/dbi/DbType;->UTILIZATION:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->openNonRepInternalDB(Lcom/sleepycat/je/dbi/DbType;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1295
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openReservedFilesDatabase()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1270
    return v1

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1274
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/dbi/DbType;->RESERVED_FILES:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->openNonRepInternalDB(Lcom/sleepycat/je/dbi/DbType;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1276
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private declared-synchronized putFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)Lcom/sleepycat/je/cleaner/PackedOffsets;
    .locals 8
    .param p1, "tfs"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    monitor-exit p0

    return-object v1

    .line 491
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 493
    monitor-exit p0

    return-object v1

    .line 496
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v2

    .line 497
    .local v2, "fileNum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 500
    .local v0, "fileNumLong":Ljava/lang/Long;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 501
    .local v4, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    if-nez v4, :cond_3

    .line 509
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->isActiveOrNewFile(Ljava/lang/Long;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sleepycat/je/log/LogManager;->removeTrackedFile(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    monitor-exit p0

    return-object v1

    .line 521
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_2
    :try_start_3
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    move-object v4, v1

    .line 529
    :cond_3
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    .line 530
    .local v1, "tmp":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/cleaner/FileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 531
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/cleaner/FileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 532
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileSummary;->getEntriesCounted()I

    move-result v5

    .line 535
    .local v5, "sequence":I
    new-instance v6, Lcom/sleepycat/je/tree/FileSummaryLN;

    invoke-direct {v6, v4}, Lcom/sleepycat/je/tree/FileSummaryLN;-><init>(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 536
    .local v6, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    invoke-virtual {v6, p1}, Lcom/sleepycat/je/tree/FileSummaryLN;->setTrackedSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 537
    invoke-direct {p0, v6, v0, v5}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->addFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;Ljava/lang/Long;I)V

    .line 539
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/FileSummaryLN;->getObsoleteOffsets()Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v7

    .line 483
    .end local v0    # "fileNumLong":Ljava/lang/Long;
    .end local v1    # "tmp":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v2    # "fileNum":J
    .end local v4    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v5    # "sequence":I
    .end local v6    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    :cond_4
    :try_start_4
    const-string v0, "Cannot write file summary in a read-only environment"

    .line 484
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    .end local p1    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private putReservedFileRecord(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "fsInfo"    # Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 317
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 318
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, v0}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->keyToEntry(Ljava/lang/Long;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 320
    new-instance v1, Lcom/sleepycat/je/cleaner/ReservedFileInfo;

    iget-object v2, p2, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->firstVlsn:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p2, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v4, p2, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Ljava/util/Set;)V

    .line 323
    .local v1, "rfInfo":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 324
    .local v2, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->objectToEntry(Lcom/sleepycat/je/cleaner/ReservedFileInfo;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 326
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 327
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v3

    .line 330
    .local v3, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 333
    .local v4, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    sget-object v5, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    invoke-virtual {v4, v0, v2, v5, v6}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 336
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 337
    nop

    .line 338
    return-void

    .line 330
    .restart local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v5

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "rfInfo":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .end local v2    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 334
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "rfInfo":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .restart local v2    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "file":Ljava/lang/Long;
    .restart local p2    # "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "rfInfo":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .end local v2    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :cond_1
    :goto_0
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 336
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "rfInfo":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .restart local v2    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "file":Ljava/lang/Long;
    .restart local p2    # "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :catchall_3
    move-exception v4

    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v4
.end method

.method public static setIncompleteReactivateHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p0, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 1514
    sput-object p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->incompleteReactivateHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1515
    return-void
.end method

.method private verifyLsnIsObsolete(J)Z
    .locals 13
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 1436
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1437
    return v2

    .line 1439
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1442
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    .line 1443
    .local v3, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 1448
    .local v4, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v5, 0x0

    .line 1455
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v4, :cond_c

    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_0

    .line 1459
    :cond_1
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 1460
    nop

    .line 1497
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_2

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1460
    :cond_2
    return v2

    .line 1463
    :cond_3
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1465
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v7

    .line 1466
    .local v7, "tree":Lcom/sleepycat/je/tree/Tree;
    new-instance v6, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v6}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 1467
    .local v6, "location":Lcom/sleepycat/je/tree/TreeLocation;
    nop

    .line 1468
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    .line 1467
    move-object v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v8

    .line 1471
    .local v8, "parentFound":Z
    iget-object v9, v6, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object v5, v9

    .line 1472
    iget v9, v6, Lcom/sleepycat/je/tree/TreeLocation;->index:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    .local v9, "index":I
    if-nez v8, :cond_5

    .line 1476
    nop

    .line 1497
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_4

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1476
    :cond_4
    return v2

    .line 1483
    :cond_5
    :try_start_2
    invoke-virtual {v5, v9}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_7

    .line 1484
    nop

    .line 1497
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_6

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1484
    :cond_6
    return v2

    .line 1487
    :cond_7
    :try_start_3
    invoke-virtual {v5, v9}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v10, v10, p1

    if-eqz v10, :cond_9

    .line 1488
    nop

    .line 1497
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_8

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1488
    :cond_8
    return v2

    .line 1493
    :cond_9
    :try_start_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lsn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was found in tree."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1495
    const/4 v2, 0x0

    .line 1497
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_a

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1495
    :cond_a
    return v2

    .line 1497
    .end local v6    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v8    # "parentFound":Z
    .end local v9    # "index":I
    :catchall_0
    move-exception v2

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_b

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    :cond_b
    throw v2

    .line 1456
    :cond_c
    :goto_0
    nop

    .line 1497
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1498
    if-eqz v5, :cond_d

    .line 1499
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1456
    :cond_d
    return v2
.end method


# virtual methods
.method close()V
    .locals 0

    .line 1509
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->clearCache()V

    .line 1510
    return-void
.end method

.method deleteReservedFileRecord(Ljava/lang/Long;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/Long;

    .line 346
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 347
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, v0}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->keyToEntry(Ljava/lang/Long;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 349
    new-instance v1, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v1}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sget-object v2, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 350
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 352
    .local v1, "readOptions":Lcom/sleepycat/je/ReadOptions;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 353
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2

    .line 355
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 356
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 355
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 358
    :try_start_1
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 361
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Cursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 365
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 366
    nop

    .line 367
    return-void

    .line 355
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v4

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "file":Ljava/lang/Long;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "file":Ljava/lang/Long;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "file":Ljava/lang/Long;
    :cond_2
    :goto_0
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 365
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "file":Ljava/lang/Long;
    :catchall_3
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v3
.end method

.method flushFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    .locals 1
    .param p1, "tfs"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 470
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getAllowFlush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->putFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 473
    :cond_0
    return-void
.end method

.method public flushFileUtilization(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/cleaner/TrackedFileSummary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 172
    .local p1, "activeFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/cleaner/TrackedFileSummary;>;"
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 173
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getCheckpointUP(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 178
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 179
    .local v1, "activeFile":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v2

    .line 180
    .local v2, "fileNum":J
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFile(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v4

    .line 181
    .local v4, "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 184
    .end local v1    # "activeFile":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v2    # "fileNum":J
    .end local v4    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    :cond_1
    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method public flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    .locals 1
    .param p1, "localTracker"    # Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogManager;->transferToUtilizationTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V

    .line 161
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushFileUtilization(Ljava/util/Collection;)V

    .line 162
    return-void
.end method

.method public declared-synchronized getFileSize(Ljava/lang/Long;)I
    .locals 2
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummary(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .local v0, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    if-nez v0, :cond_0

    .line 231
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 233
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 228
    .end local v0    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFileSizeSummaryMap()Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 248
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 249
    .local v2, "fileNum":Ljava/lang/Long;
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSize(Ljava/lang/Long;)I

    move-result v3

    .line 250
    .local v3, "totalSize":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    nop

    .end local v2    # "fileNum":Ljava/lang/Long;
    .end local v3    # "totalSize":I
    goto :goto_0

    .line 254
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 255
    .local v2, "trackedSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 256
    .local v3, "fileNum":Ljava/lang/Long;
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    iget v4, v2, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->totalSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v2    # "trackedSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v3    # "fileNum":Ljava/lang/Long;
    :cond_1
    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 263
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_3
    monitor-exit p0

    return-object v0

    .line 245
    .end local v0    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileSummary(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/FileSummary;
    .locals 4
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 133
    .local v0, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFile(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v1

    .line 134
    .local v1, "trackedSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-eqz v1, :cond_1

    .line 135
    new-instance v2, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v2}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    .line 136
    .local v2, "totals":Lcom/sleepycat/je/cleaner/FileSummary;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/cleaner/FileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 139
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/cleaner/FileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    move-object v0, v2

    .line 143
    .end local v2    # "totals":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 129
    .end local v0    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v1    # "trackedSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFileSummaryDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public declared-synchronized getFileSummaryMap(Z)Ljava/util/SortedMap;
    .locals 5
    .param p1, "includeTrackedFiles"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z

    if-eqz v0, :cond_4

    .line 198
    if-eqz p1, :cond_3

    .line 204
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 205
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 206
    .local v2, "file":Ljava/lang/Long;
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummary(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v3

    .line 207
    .local v3, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    nop

    .end local v2    # "file":Ljava/lang/Long;
    .end local v3    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    goto :goto_0

    .line 211
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 212
    .local v2, "summary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 213
    .local v3, "fileNum":Ljava/lang/Long;
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v2    # "summary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v3    # "fileNum":Ljava/lang/Long;
    :cond_1
    goto :goto_1

    .line 217
    :cond_2
    monitor-exit p0

    return-object v0

    .line 219
    .end local v0    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .end local p1    # "includeTrackedFiles":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getObsoleteDetailPacked(Ljava/lang/Long;ZLjava/lang/Runnable;)Lcom/sleepycat/je/cleaner/PackedOffsets;
    .locals 2
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "logUpdate"    # Z
    .param p3, "beforeWork"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    .line 667
    .local v0, "packedOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sleepycat/je/cleaner/Cleaner;->trackDetail:Z

    if-nez v1, :cond_0

    .line 668
    return-object v0

    .line 671
    :cond_0
    nop

    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailInternal(Ljava/lang/Long;ZLjava/lang/Runnable;)[J

    move-result-object v1

    .line 671
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->pack([J)V

    .line 674
    return-object v0
.end method

.method public getObsoleteDetailSorted(Ljava/lang/Long;)[J
    .locals 3
    .param p1, "fileNum"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 686
    .local v1, "sortedOffsets":[J
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->trackDetail:Z

    if-nez v2, :cond_0

    .line 687
    return-object v1

    .line 690
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailInternal(Ljava/lang/Long;ZLjava/lang/Runnable;)[J

    move-result-object v0

    .line 691
    .end local v1    # "sortedOffsets":[J
    .local v0, "sortedOffsets":[J
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 692
    return-object v0
.end method

.method public hasFileSummaryLN(J)Z
    .locals 11
    .param p1, "fileNum"    # J

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    .line 1193
    .local v1, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2

    move-object v0, v2

    .line 1194
    new-instance v5, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v5, v2, v0}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1196
    .end local v1    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_1
    new-instance v8, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v8}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1197
    .local v8, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1200
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v3, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1203
    sget-object v10, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    move-object v4, p0

    move-wide v6, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFirstFSLN(Lcom/sleepycat/je/dbi/CursorImpl;JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    invoke-virtual {v8}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, p1, v6

    if-nez v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    nop

    .line 1207
    :goto_0
    nop

    .line 1208
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1210
    if-eqz v0, :cond_1

    .line 1211
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1203
    :cond_1
    return v3

    .line 1207
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v1

    goto :goto_1

    .end local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v1, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    .end local v1    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_1
    if-eqz v5, :cond_2

    .line 1208
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1210
    :cond_2
    if-eqz v0, :cond_3

    .line 1211
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    :cond_3
    throw v1
.end method

.method public hasReservedFileLN(J)Z
    .locals 7
    .param p1, "fileNum"    # J

    .line 1163
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1164
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    .line 1166
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v2}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sget-object v3, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 1167
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v2

    .line 1169
    .local v2, "options":Lcom/sleepycat/je/ReadOptions;
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1173
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1174
    .local v5, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->keyToEntry(Ljava/lang/Long;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1176
    sget-object v6, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v5, v4, v6, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1178
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1180
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1176
    return v1

    .line 1169
    .end local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v1

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "fileNum":J
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1178
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "fileNum":J
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "fileNum":J
    :cond_2
    :goto_0
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1180
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "fileNum":J
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v1
.end method

.method declared-synchronized insertFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;JI)Z
    .locals 11
    .param p1, "ln"    # Lcom/sleepycat/je/tree/FileSummaryLN;
    .param p2, "fileNum"    # J
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1315
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/sleepycat/je/tree/FileSummaryLN;->makeFullKey(JI)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1317
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    .line 1318
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 1320
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v3

    move-object v1, v3

    .line 1321
    new-instance v3, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v3, v5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v2, v3

    .line 1324
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v2, v0, p1, v4, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->insertRecord([BLcom/sleepycat/je/tree/LN;ZLcom/sleepycat/je/log/ReplicationContext;)Z

    move-result v3

    .line 1328
    .local v3, "inserted":Z
    if-nez v3, :cond_1

    .line 1329
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaner duplicate key sequence file=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1332
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sequence=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v9, p4

    .line 1333
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1330
    invoke-static {v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    nop

    .line 1341
    nop

    .line 1342
    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1344
    if-eqz v1, :cond_0

    .line 1345
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1334
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    monitor-exit p0

    return v4

    .line 1338
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1339
    const/4 v4, 0x1

    .line 1341
    nop

    .line 1342
    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1344
    if-eqz v1, :cond_2

    .line 1345
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1339
    :cond_2
    monitor-exit p0

    return v4

    .line 1341
    .end local v3    # "inserted":Z
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 1342
    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1344
    :cond_3
    if-eqz v1, :cond_4

    .line 1345
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1314
    .end local v0    # "keyBytes":[B
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p1    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local p2    # "fileNum":J
    .end local p4    # "sequence":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public populateCache(Lcom/sleepycat/je/dbi/StartupTracker$Counter;Lcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 26
    .param p1, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .param p2, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 882
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-boolean v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z

    if-nez v0, :cond_18

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->openFileSummaryDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 890
    :cond_0
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v10

    .line 891
    .local v10, "existingFiles":[Ljava/lang/Long;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v15, v0

    .line 892
    .local v15, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v14, v0

    .line 893
    .local v14, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v13

    .line 900
    .local v13, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->openReservedFilesDatabase()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_7

    .line 908
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 909
    invoke-static {v0, v12}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1

    .line 911
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sget-object v2, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 912
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    move-object v2, v0

    .line 914
    .local v2, "options":Lcom/sleepycat/je/ReadOptions;
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reservedFilesDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v12}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 918
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v15, v14, v0, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 921
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 922
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 924
    nop

    .line 925
    invoke-static {v15}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->entryToKey(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;

    move-result-object v0

    .line 927
    .local v0, "file":Ljava/lang/Long;
    nop

    .line 928
    invoke-static {v14}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/cleaner/ReservedFileInfo;

    move-result-object v4

    .line 930
    .local v4, "info":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 933
    iget-object v5, v4, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v13, v0, v5}, Lcom/sleepycat/je/cleaner/FileProtector;->reserveFile(Ljava/lang/Long;Lcom/sleepycat/je/utilint/VLSN;)V

    goto :goto_1

    .line 936
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V

    .line 938
    iget-object v5, v4, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v5

    if-nez v5, :cond_2

    .line 939
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileNumber:J

    .line 940
    iget-object v5, v4, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v5, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 944
    :cond_2
    iget-object v5, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 945
    goto :goto_0

    .line 948
    :cond_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .end local v0    # "file":Ljava/lang/Long;
    .end local v4    # "info":Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    :goto_1
    goto :goto_0

    .line 951
    :cond_4
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 953
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 954
    goto :goto_3

    .line 914
    .restart local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v10    # "existingFiles":[Ljava/lang/Long;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "recoveryInfo":Lcom/sleepycat/je/recovery/RecoveryInfo;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 951
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "existingFiles":[Ljava/lang/Long;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "recoveryInfo":Lcom/sleepycat/je/recovery/RecoveryInfo;
    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v10    # "existingFiles":[Ljava/lang/Long;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "recoveryInfo":Lcom/sleepycat/je/recovery/RecoveryInfo;
    :cond_6
    :goto_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 953
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v10    # "existingFiles":[Ljava/lang/Long;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "recoveryInfo":Lcom/sleepycat/je/recovery/RecoveryInfo;
    :catchall_3
    move-exception v0

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v0

    .line 957
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_7
    :goto_3
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    mul-int v19, v0, v1

    .line 965
    .local v19, "oldMemorySize":I
    const/4 v1, 0x0

    .line 966
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 968
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_6
    iget-object v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v12}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move-object v11, v0

    .line 970
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_7
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, v11, v12, v12}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    move-object v7, v0

    .line 975
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v7, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {v7, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 977
    invoke-virtual {v7, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->positionFirstOrLast(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 980
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x1

    move-object v1, v7

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v20, v7

    .end local v7    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v20, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move/from16 v7, v16

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 985
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_8

    .line 987
    :try_start_a
    sget-object v2, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v3, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v11

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v21, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v11, v20

    move v7, v12

    move-object v12, v15

    move-object v6, v13

    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .local v6, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    move-object v13, v14

    move-object/from16 v22, v14

    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v22, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    move-object v14, v2

    move-object/from16 v23, v15

    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v23, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    move v15, v3

    :try_start_b
    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v1, v2

    move-object/from16 v24, v1

    goto :goto_4

    .line 1101
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_4
    move-exception v0

    move-object v12, v6

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_b

    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v12, v13

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_b

    .line 985
    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_8
    move-object/from16 v21, v11

    move v7, v12

    move-object v6, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v24, v1

    .line 993
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .local v24, "result":Lcom/sleepycat/je/OperationResult;
    :goto_4
    if-eqz v24, :cond_10

    .line 994
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 1001
    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 1003
    sget-object v1, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 1004
    move-object/from16 v5, v20

    .end local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_d
    invoke-virtual {v5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/FileSummaryLN;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v3, v1

    .line 1006
    .local v3, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    if-nez v3, :cond_9

    .line 1008
    :try_start_e
    sget-object v14, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v5

    move-object/from16 v12, v23

    move-object/from16 v13, v22

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v24, v1

    .line 1013
    move-object/from16 v20, v5

    goto :goto_4

    .line 1101
    .end local v3    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v24    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_6
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object/from16 v1, v21

    goto/16 :goto_b

    .line 1016
    .restart local v3    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .restart local v24    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_9
    :try_start_f
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    move-object/from16 v20, v1

    .line 1017
    .local v20, "keyBytes":[B
    nop

    .line 1018
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/tree/FileSummaryLN;->hasStringKey([B)Z

    move-result v1

    move/from16 v25, v1

    .line 1019
    .local v25, "isOldVersion":Z
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v1

    .line 1020
    .local v1, "fileNum":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1022
    .local v4, "fileNumLong":Ljava/lang/Long;
    invoke-virtual {v6, v4}, Lcom/sleepycat/je/cleaner/FileProtector;->isReservedFile(Ljava/lang/Long;)Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-nez v11, :cond_b

    .line 1023
    :try_start_10
    invoke-static {v10, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_b

    .line 1025
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 1028
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/FileSummaryLN;->getBaseSummary()Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v11

    .line 1029
    .local v11, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    iget-object v12, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v12, v4, v11}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    if-eqz v25, :cond_a

    iget-object v12, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1038
    invoke-virtual {v8, v3, v1, v2, v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->insertFileSummary(Lcom/sleepycat/je/tree/FileSummaryLN;JI)Z

    .line 1039
    sget-object v12, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v5, v12}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    goto :goto_5

    .line 1043
    :cond_a
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1045
    .end local v11    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    :goto_5
    goto :goto_6

    .line 1056
    :cond_b
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V

    .line 1058
    iget-object v11, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v11, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v11, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-nez v11, :cond_d

    .line 1061
    if-eqz v25, :cond_c

    .line 1062
    :try_start_12
    sget-object v11, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v5, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    goto :goto_6

    .line 1065
    :cond_c
    invoke-direct {v8, v4}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteFileSummary(Ljava/lang/Long;)V

    .line 1076
    :cond_d
    :goto_6
    if-eqz v25, :cond_e

    .line 1079
    sget-object v14, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v5

    move-object/from16 v12, v23

    move-object/from16 v13, v22

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v12, v6

    move/from16 v18, v7

    move-object/from16 v24, v11

    move-object v11, v5

    .end local v24    # "result":Lcom/sleepycat/je/OperationResult;
    .local v11, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_7

    .line 1090
    .end local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v24    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_e
    const-wide/16 v11, 0x1

    add-long/2addr v11, v1

    :try_start_13
    sget-object v13, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1091
    move-wide v14, v1

    .end local v1    # "fileNum":J
    .local v14, "fileNum":J
    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v4    # "fileNumLong":Ljava/lang/Long;
    .local v16, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .local v17, "fileNumLong":Ljava/lang/Long;
    move-wide v3, v11

    move-object v11, v5

    .end local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v5, v23

    move-object v12, v6

    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .local v12, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    move-object/from16 v6, v22

    move/from16 v18, v7

    move-object v7, v13

    :try_start_14
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFirstFSLN(Lcom/sleepycat/je/dbi/CursorImpl;JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-nez v1, :cond_f

    .line 1095
    const/4 v1, 0x0

    move-object/from16 v24, v1

    .line 1098
    .end local v14    # "fileNum":J
    .end local v16    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v17    # "fileNumLong":Ljava/lang/Long;
    .end local v20    # "keyBytes":[B
    .end local v25    # "isOldVersion":Z
    :cond_f
    :goto_7
    move-object/from16 v20, v11

    move-object v6, v12

    move/from16 v7, v18

    goto/16 :goto_4

    .line 1101
    .end local v24    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_7
    move-exception v0

    move-object v2, v11

    move-object/from16 v1, v21

    goto/16 :goto_b

    .end local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    :catchall_8
    move-exception v0

    move-object v11, v5

    move-object v12, v6

    move-object v2, v11

    move-object/from16 v1, v21

    .end local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    goto/16 :goto_b

    .end local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .local v20, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_9
    move-exception v0

    move-object v12, v6

    move-object/from16 v11, v20

    move-object v2, v11

    move-object/from16 v1, v21

    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    goto/16 :goto_b

    .line 993
    .end local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_10
    move-object v12, v6

    move/from16 v18, v7

    move-object/from16 v11, v20

    .end local v6    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v11    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    goto :goto_8

    .line 1101
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "result":Lcom/sleepycat/je/OperationResult;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .local v14, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_a
    move-exception v0

    move-object/from16 v21, v11

    move-object v12, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v11, v20

    move-object v2, v11

    move-object/from16 v1, v21

    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_b

    .line 977
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_11
    move-object/from16 v21, v11

    move/from16 v18, v12

    move-object v12, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v11, v7

    .line 1101
    .end local v7    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v11, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_8
    nop

    .line 1103
    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1105
    if-eqz v21, :cond_12

    .line 1106
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1109
    :cond_12
    iget-object v1, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    mul-int/2addr v1, v2

    .line 1111
    .local v1, "newMemorySize":I
    iget-object v2, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    .line 1112
    .local v2, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    sub-int v3, v1, v19

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1113
    .end local v1    # "newMemorySize":I
    .end local v2    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    nop

    .line 1136
    iget-wide v1, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    iget-wide v1, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 1138
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    goto :goto_9

    :cond_13
    const-wide/16 v1, 0x0

    .line 1140
    .local v1, "firstActiveFile":J
    :goto_9
    array-length v3, v10

    move/from16 v4, v18

    :goto_a
    if-ge v4, v3, :cond_15

    aget-object v5, v10, v4

    .line 1141
    .local v5, "file":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gez v6, :cond_14

    .line 1142
    invoke-virtual {v12, v5}, Lcom/sleepycat/je/cleaner/FileProtector;->isReservedFile(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    .line 1143
    invoke-interface {v6, v5}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1145
    invoke-direct {v8, v5}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->addReactivatedFileSummary(Ljava/lang/Long;)J

    .line 1147
    iget-object v6, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->logger:Ljava/util/logging/Logger;

    iget-object v7, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reactivated file during recovery: 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1150
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1147
    invoke-static {v6, v7, v13}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1140
    .end local v5    # "file":Ljava/lang/Long;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1154
    :cond_15
    iput-boolean v0, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z

    .line 1155
    return-void

    .line 1101
    .end local v1    # "firstActiveFile":J
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_b
    move-exception v0

    move-object/from16 v21, v11

    move-object v12, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v11, v7

    move-object v2, v11

    move-object/from16 v1, v21

    .end local v7    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v11, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_b

    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_c
    move-exception v0

    move-object/from16 v21, v11

    move-object v12, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v1, v21

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_b

    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v21    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_d
    move-exception v0

    move-object v12, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .end local v13    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v14    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_b
    if-eqz v2, :cond_16

    .line 1103
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1105
    :cond_16
    if-eqz v1, :cond_17

    .line 1106
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1109
    :cond_17
    iget-object v3, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    sget v4, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    mul-int/2addr v3, v4

    .line 1111
    .local v3, "newMemorySize":I
    iget-object v4, v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v4

    .line 1112
    .local v4, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    sub-int v5, v3, v19

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1113
    .end local v3    # "newMemorySize":I
    .end local v4    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    throw v0

    .line 882
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v10    # "existingFiles":[Ljava/lang/Long;
    .end local v12    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v19    # "oldMemorySize":I
    .end local v22    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method reactivateReservedFile(Ljava/lang/Long;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/Long;

    .line 634
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteReservedFileRecord(Ljava/lang/Long;)V

    .line 635
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->flushLog(Z)V

    .line 637
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reactivated reserved file: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 639
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->incompleteReactivateHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_0

    .line 642
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-interface {v0, v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    .line 645
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->addReactivatedFileSummary(Ljava/lang/Long;)J

    move-result-wide v0

    .line 646
    .local v0, "size":J
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->reactivateReservedFile(Ljava/lang/Long;J)V

    .line 647
    return-void
.end method

.method removeDeletedFile(Ljava/lang/Long;)V
    .locals 1
    .param p1, "fileNum"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 376
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->removeFileSummaries(Ljava/util/Set;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteFileSummary(Ljava/lang/Long;)V

    .line 378
    return-void
.end method

.method declared-synchronized removeFileSummaries(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .local p1, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 388
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->cachePopulated:Z

    if-eqz v0, :cond_2

    .line 390
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 391
    .local v1, "fileNum":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryMap:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 392
    .local v2, "oldSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    if-eqz v2, :cond_0

    .line 393
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v3

    .line 394
    .local v3, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    sget v4, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-long v4, v4

    .line 395
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v1    # "fileNum":Ljava/lang/Long;
    .end local v2    # "oldSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    monitor-exit p0

    return-void

    .line 387
    .end local p1    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 388
    .restart local p1    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    .end local p1    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method reserveFiles(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "reservedFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 299
    .local v2, "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->putReservedFileRecord(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)V

    .line 300
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    .end local v2    # "fsInfo":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 304
    .local v0, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 305
    .local v2, "file":Ljava/lang/Long;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteFileSummary(Ljava/lang/Long;)V

    .line 306
    .end local v2    # "file":Ljava/lang/Long;
    goto :goto_1

    .line 307
    :cond_1
    return-void
.end method

.method verifyFileSummaryDatabase()Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1360
    move-object/from16 v1, p0

    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1361
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1363
    .local v4, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->openFileSummaryDatabase()Z

    .line 1364
    const/4 v2, 0x0

    .line 1365
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v5, 0x0

    .line 1366
    .local v5, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v9, 0x1

    .line 1369
    .local v9, "ok":Z
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v11, v0

    .line 1370
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/UtilizationProfile;->fileSummaryDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v2, v11}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v15, v0

    .line 1371
    .end local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v15, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v15, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 1373
    invoke-virtual {v15, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->positionFirstOrLast(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1375
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v15

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v2

    .line 1380
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    if-eqz v2, :cond_4

    .line 1383
    iget-object v5, v1, Lcom/sleepycat/je/cleaner/UtilizationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 1385
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    .line 1386
    invoke-virtual {v15, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/FileSummaryLN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1388
    .local v5, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    if-eqz v5, :cond_3

    .line 1389
    nop

    .line 1390
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v6

    .line 1391
    .local v6, "fileNumVal":J
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/FileSummaryLN;->getObsoleteOffsets()Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v8

    .line 1397
    .local v8, "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    if-eqz v8, :cond_2

    .line 1398
    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/PackedOffsets;->toArray()[J

    move-result-object v12

    .line 1399
    .local v12, "vals":[J
    array-length v13, v12

    move v14, v10

    :goto_1
    if-ge v14, v13, :cond_1

    aget-wide v16, v12, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v18, v16

    .line 1400
    .local v18, "val":J
    move-object/from16 v20, v11

    move-wide/from16 v10, v18

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "val":J
    .local v10, "val":J
    .local v20, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_4
    invoke-static {v6, v7, v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1401
    .local v18, "lsn":J
    move-object/from16 v21, v5

    move-wide/from16 v16, v6

    move-wide/from16 v5, v18

    .end local v6    # "fileNumVal":J
    .end local v18    # "lsn":J
    .local v5, "lsn":J
    .local v16, "fileNumVal":J
    .local v21, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    invoke-direct {v1, v5, v6}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->verifyLsnIsObsolete(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1402
    const/4 v9, 0x0

    .line 1399
    .end local v5    # "lsn":J
    .end local v10    # "val":J
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v6, v16

    move-object/from16 v11, v20

    move-object/from16 v5, v21

    const/4 v10, 0x0

    goto :goto_1

    .end local v16    # "fileNumVal":J
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .local v5, "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .restart local v6    # "fileNumVal":J
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    move-object/from16 v21, v5

    move-wide/from16 v16, v6

    move-object/from16 v20, v11

    .end local v5    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v6    # "fileNumVal":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v16    # "fileNumVal":J
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    goto :goto_2

    .line 1397
    .end local v12    # "vals":[J
    .end local v16    # "fileNumVal":J
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .restart local v5    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .restart local v6    # "fileNumVal":J
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_2
    move-object/from16 v21, v5

    move-wide/from16 v16, v6

    move-object/from16 v20, v11

    .line 1407
    .end local v5    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v6    # "fileNumVal":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v16    # "fileNumVal":J
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    :goto_2
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1417
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v8    # "offsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v16    # "fileNumVal":J
    .end local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    :catchall_0
    move-exception v0

    move-object v5, v15

    move-object/from16 v2, v20

    goto/16 :goto_5

    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v11

    move-object v5, v15

    move-object/from16 v2, v20

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_5

    .line 1388
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v5    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_3
    move-object/from16 v21, v5

    move-object/from16 v20, v11

    .line 1410
    .end local v5    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v15

    move-object v13, v3

    move-object v14, v4

    move-object v6, v15

    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v6, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object v15, v5

    :try_start_6
    invoke-virtual/range {v12 .. v19}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v5

    .line 1414
    .end local v21    # "ln":Lcom/sleepycat/je/tree/FileSummaryLN;
    move-object v15, v6

    move-object/from16 v11, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1417
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_2
    move-exception v0

    move-object v5, v6

    move-object/from16 v2, v20

    goto :goto_5

    .end local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_3
    move-exception v0

    move-object v6, v15

    move-object v5, v6

    move-object/from16 v2, v20

    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_5

    .line 1380
    .end local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_4
    move-object/from16 v20, v11

    move-object v6, v15

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_4

    .line 1373
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_5
    move-object/from16 v20, v11

    move-object v6, v15

    .line 1417
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_4
    nop

    .line 1418
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1420
    if-eqz v20, :cond_6

    .line 1421
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1425
    :cond_6
    return v9

    .line 1417
    .end local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_4
    move-exception v0

    move-object/from16 v20, v11

    move-object v6, v15

    move-object v5, v6

    move-object/from16 v2, v20

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_5

    .end local v6    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v5, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_5
    move-exception v0

    move-object/from16 v20, v11

    move-object/from16 v2, v20

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_5

    .end local v20    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_6
    move-exception v0

    :goto_5
    if-eqz v5, :cond_7

    .line 1418
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1420
    :cond_7
    if-eqz v2, :cond_8

    .line 1421
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    :cond_8
    throw v0
.end method
