.class public Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;,
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;,
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;,
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;,
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;,
        Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACCUMULATED_MEM_LIMIT:I = 0x186a0

.field private static final BIN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

.field private static final BIN_OR_DELTA:[Lcom/sleepycat/je/log/LogEntryType;

.field private static final DELTA_MEM_SIZE:I = 0x600

.field private static final LN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

.field private static final SIZEOF_DeferredDeltaRef:I

.field private static final SIZEOF_DeferredLsnsBatch:I

.field private static final SIZEOF_JAVA_REF:I

.field private static final SIZEOF_OffHeapBinRef:I

.field private static final SIZEOF_WeakBinRef:I

.field private static final SUSPENSION_INTERVAL:I = 0x32


# instance fields
.field private accumulatedMemDelta:J

.field private final binDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final binsOnly:Z

.field private final countOnly:Z

.field private final dbid2dbidxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

.field private final debug:Z

.field private final deferredLsns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final dupDBs:Z

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private evictionHook:Lcom/sleepycat/je/utilint/TestHook;

.field private globalMemoryUsage:J

.field private final keysOnly:Z

.field private localMemoryUsage:J

.field private final lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

.field private final lsnBatchSize:J

.field private final memoryLimit:J

.field private volatile nIterations:I

.field private final numDBs:I

.field private numLsns:J

.field private final processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

.field private final scanSerial:Z

.field private testHook1:Lcom/sleepycat/je/utilint/TestHook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 158
    nop

    .line 509
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sleepycat/je/log/LogEntryType;

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->LN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

    .line 513
    new-array v1, v0, [Lcom/sleepycat/je/log/LogEntryType;

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    aput-object v2, v1, v3

    sput-object v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

    .line 517
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sleepycat/je/log/LogEntryType;

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    aput-object v2, v1, v0

    sput-object v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_OR_DELTA:[Lcom/sleepycat/je/log/LogEntryType;

    .line 523
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_ARRAY_ITEM_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    .line 526
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_WEAK_BINREF_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_WeakBinRef:I

    .line 529
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_OFFHEAP_BINREF_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_OffHeapBinRef:I

    .line 532
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_DELTAREF_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_DeferredDeltaRef:I

    .line 535
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_LSN_BATCH_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_DeferredLsnsBatch:I

    return-void
.end method

.method constructor <init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;ZZZZJJZ)V
    .locals 4
    .param p1, "dbImpls"    # [Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "processor"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;
    .param p3, "scanSerial"    # Z
    .param p4, "binsOnly"    # Z
    .param p5, "keysOnly"    # Z
    .param p6, "countOnly"    # Z
    .param p7, "lsnBatchSize"    # J
    .param p9, "memoryLimit"    # J
    .param p11, "dbg"    # Z

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    .line 574
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    .line 576
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    .line 578
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    .line 599
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    .line 601
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 603
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dupDBs:Z

    .line 605
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial:Z

    .line 607
    iput-boolean p6, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->countOnly:Z

    .line 608
    const/4 v2, 0x1

    if-nez p5, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->keysOnly:Z

    .line 609
    if-nez p4, :cond_2

    if-nez v1, :cond_2

    if-nez p5, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    .line 611
    iput-wide p7, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnBatchSize:J

    .line 612
    iput-wide p9, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->memoryLimit:J

    .line 614
    iput-boolean p11, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    .line 616
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    .line 618
    new-array v1, v0, [Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 620
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbid2dbidxMap:Ljava/util/Map;

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-ge v0, v1, :cond_4

    .line 624
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbid2dbidxMap:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    new-instance v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, p1, v0

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;-><init>(ILcom/sleepycat/je/dbi/DatabaseImpl;)V

    aput-object v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 629
    .end local v0    # "i":I
    :cond_4
    new-instance v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    .line 638
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v0, :cond_5

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    .line 640
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    goto :goto_3

    .line 642
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    .line 643
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    .line 645
    :goto_3
    return-void
.end method

.method private accLimitExceeded()Z
    .locals 4

    .line 688
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded(JJ)Z

    move-result v0

    return v0
.end method

.method private accLimitExceeded(JJ)Z
    .locals 2
    .param p1, "mem"    # J
    .param p3, "nLsns"    # J

    .line 692
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->memoryLimit:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnBatchSize:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic access$000()I
    .locals 1

    .line 158
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_DeferredLsnsBatch:I

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p1, "x1"    # J

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 158
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_DeferredDeltaRef:I

    return v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p1, "x1"    # J

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    return-void
.end method

.method private accumulateBINs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    .locals 23
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 1022
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v11

    .line 1024
    .local v11, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_0
    :goto_0
    iget v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    iget-object v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1027
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->skipParentSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    .line 1028
    iget v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v0, v12

    iput v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1029
    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    if-nez v0, :cond_3

    iget v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    if-lez v0, :cond_3

    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1045
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    iget-object v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1046
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    .line 1044
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_3

    .line 1048
    :cond_2
    iput-boolean v12, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    .line 1051
    :cond_3
    const/4 v13, 0x0

    .line 1052
    .local v13, "waitForConsumer":Z
    const/4 v14, 0x0

    .line 1053
    .local v14, "binNEntries":I
    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v7

    .line 1054
    .local v7, "binLsn":J
    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v15

    .line 1055
    .local v15, "ohBinId":I
    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v16

    .line 1057
    .local v16, "ohBinPri2":Z
    iput-wide v7, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    .line 1059
    iget-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1061
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v5, :cond_4

    .line 1062
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1066
    :cond_4
    if-nez v5, :cond_6

    if-ltz v15, :cond_5

    goto :goto_1

    :cond_5
    move-wide/from16 v21, v7

    goto/16 :goto_7

    .line 1069
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 1071
    .local v0, "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    if-eqz v5, :cond_7

    .line 1072
    :try_start_0
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v1

    .local v1, "isBinDelta":Z
    goto :goto_2

    .line 1184
    .end local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .end local v1    # "isBinDelta":Z
    :catchall_0
    move-exception v0

    move-wide v2, v7

    goto/16 :goto_b

    .line 1074
    .restart local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    :cond_7
    :try_start_1
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11, v1, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINInfo(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;

    move-result-object v1

    move-object v0, v1

    .line 1075
    iget-boolean v1, v0, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;->isBINDelta:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 v17, v1

    .line 1078
    .local v17, "isBinDelta":Z
    :goto_2
    if-eqz v17, :cond_f

    .line 1080
    if-eqz v5, :cond_a

    .line 1081
    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getDirty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    if-nez v1, :cond_8

    goto :goto_3

    .line 1084
    :cond_8
    invoke-virtual {v9, v10, v7, v8, v5}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addCleanDeltaRef(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JLcom/sleepycat/je/tree/BIN;)V

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    goto :goto_5

    .line 1082
    :cond_9
    :goto_3
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->cloneBINDelta()Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addDirtyDeltaRef(Lcom/sleepycat/je/tree/BIN;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    goto :goto_5

    .line 1088
    :cond_a
    :try_start_3
    iget-object v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    if-nez v1, :cond_b

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    goto :goto_4

    .line 1094
    :cond_b
    iget-wide v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;->fullBINLsn:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v18, v3

    move-wide v3, v7

    move-object/from16 v20, v5

    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v20, "bin":Lcom/sleepycat/je/tree/BIN;
    move-wide/from16 v5, v18

    move-wide/from16 v21, v7

    .end local v7    # "binLsn":J
    .local v21, "binLsn":J
    move v7, v15

    move/from16 v8, v16

    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addCleanDeltaOffHeapRef(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JJIZ)V

    goto :goto_5

    .line 1088
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v21    # "binLsn":J
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "binLsn":J
    :cond_c
    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    .line 1091
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "binLsn":J
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "binLsn":J
    :goto_4
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1092
    invoke-virtual {v11, v1, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    .line 1091
    invoke-virtual {v9, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addDirtyDeltaRef(Lcom/sleepycat/je/tree/BIN;)V

    .line 1100
    :goto_5
    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1101
    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_d

    .line 1184
    if-eqz v20, :cond_0

    .line 1185
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    goto/16 :goto_0

    .line 1184
    :cond_d
    if-eqz v20, :cond_e

    .line 1185
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1104
    :cond_e
    return-void

    .line 1184
    .end local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .end local v17    # "isBinDelta":Z
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v21    # "binLsn":J
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "binLsn":J
    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    move-wide v2, v7

    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "binLsn":J
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "binLsn":J
    goto/16 :goto_b

    .line 1108
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v21    # "binLsn":J
    .restart local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "binLsn":J
    .restart local v17    # "isBinDelta":Z
    :cond_f
    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "binLsn":J
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "binLsn":J
    if-nez v20, :cond_10

    .line 1109
    :try_start_5
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11, v1, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v1

    .line 1110
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_6
    iget-object v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 1184
    .end local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v17    # "isBinDelta":Z
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_2
    move-exception v0

    move-object/from16 v5, v20

    move-wide/from16 v2, v21

    goto/16 :goto_b

    .line 1108
    .restart local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .restart local v17    # "isBinDelta":Z
    :cond_10
    move-object/from16 v5, v20

    .line 1113
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v14, v1

    .line 1114
    if-nez v14, :cond_11

    .line 1115
    :try_start_8
    iget v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1184
    if-eqz v5, :cond_0

    .line 1185
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    goto/16 :goto_0

    .line 1125
    :cond_11
    :try_start_9
    iget-object v1, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v1, :cond_12

    .line 1126
    add-int/lit8 v1, v14, -0x1

    .line 1127
    :try_start_a
    invoke-virtual {v5, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v1

    iget-object v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v3, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1129
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 1126
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v1

    .line 1131
    .local v1, "cmp":I
    if-gtz v1, :cond_12

    .line 1132
    iget v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v2, v12

    iput v2, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1184
    if-eqz v5, :cond_0

    .line 1185
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    goto/16 :goto_0

    .line 1148
    .end local v0    # "ohInfo":Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .end local v1    # "cmp":I
    .end local v17    # "isBinDelta":Z
    :cond_12
    :goto_7
    const-string v0, "Phase 1."

    if-eqz v5, :cond_17

    :try_start_b
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->getCapacity()I

    move-result v1

    if-ge v1, v14, :cond_13

    goto/16 :goto_8

    .line 1161
    :cond_13
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v1, v14}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->canProcessWithoutBlocking(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1163
    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v1, :cond_14

    .line 1164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Processing bin: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1166
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1169
    :cond_14
    invoke-direct {v9, v10, v5, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V

    move-wide/from16 v2, v21

    goto :goto_9

    .line 1172
    :cond_15
    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v1, :cond_16

    .line 1173
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Producer must wait before it can process bin "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1176
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1179
    :cond_16
    const/4 v13, 0x1

    .line 1180
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v0

    iput-object v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-wide/from16 v2, v21

    goto :goto_9

    .line 1184
    :catchall_3
    move-exception v0

    move-wide/from16 v2, v21

    goto :goto_b

    .line 1150
    :cond_17
    :goto_8
    :try_start_c
    iget-object v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-wide/from16 v2, v21

    .end local v21    # "binLsn":J
    .local v2, "binLsn":J
    :try_start_d
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V

    .line 1151
    iget-wide v6, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    iput-wide v6, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    .line 1153
    const-wide/16 v6, 0x608

    invoke-direct {v9, v6, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    .line 1155
    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v1, :cond_18

    .line 1156
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": accumulated bin lsn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1184
    :cond_18
    :goto_9
    if-eqz v5, :cond_19

    .line 1185
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1189
    :cond_19
    if-eqz v13, :cond_1a

    .line 1190
    invoke-direct {v9, v10, v14}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->waitForConsumer(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;I)V

    goto :goto_a

    .line 1192
    :cond_1a
    iget v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v0, v12

    iput v0, v10, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1193
    iget-boolean v0, v9, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial:Z

    if-nez v0, :cond_1b

    .line 1194
    return-void

    .line 1197
    .end local v2    # "binLsn":J
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "waitForConsumer":Z
    .end local v14    # "binNEntries":I
    .end local v15    # "ohBinId":I
    .end local v16    # "ohBinPri2":Z
    :cond_1b
    :goto_a
    goto/16 :goto_0

    .line 1184
    .restart local v2    # "binLsn":J
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "waitForConsumer":Z
    .restart local v14    # "binNEntries":I
    .restart local v15    # "ohBinId":I
    .restart local v16    # "ohBinPri2":Z
    :catchall_4
    move-exception v0

    goto :goto_b

    .end local v2    # "binLsn":J
    .restart local v21    # "binLsn":J
    :catchall_5
    move-exception v0

    move-wide/from16 v2, v21

    .end local v21    # "binLsn":J
    .restart local v2    # "binLsn":J
    goto :goto_b

    .end local v2    # "binLsn":J
    .restart local v7    # "binLsn":J
    :catchall_6
    move-exception v0

    move-object/from16 v20, v5

    move-wide v2, v7

    .end local v7    # "binLsn":J
    .restart local v2    # "binLsn":J
    :goto_b
    if-eqz v5, :cond_1c

    .line 1185
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    :cond_1c
    throw v0

    .line 1198
    .end local v2    # "binLsn":J
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "waitForConsumer":Z
    .end local v14    # "binNEntries":I
    .end local v15    # "ohBinId":I
    .end local v16    # "ohBinPri2":Z
    :cond_1d
    return-void
.end method

.method private accumulateLNs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    .locals 20
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 1290
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v9

    .line 1291
    .local v9, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    iget-object v10, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1293
    .local v10, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1294
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    if-eqz v0, :cond_14

    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->reuseBin:Z

    .line 1299
    const/4 v2, 0x0

    move-object v12, v0

    .line 1301
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v2, "waitForConsumer":Z
    .local v12, "parent":Lcom/sleepycat/je/tree/IN;
    :goto_0
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v12}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 1304
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->skipParentSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1305
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v0, v13

    iput v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1306
    goto :goto_0

    .line 1309
    :cond_0
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v14

    .line 1317
    .local v14, "plsn":J
    iget-boolean v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->reuseBin:Z

    if-nez v0, :cond_1

    .line 1318
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 1321
    :cond_1
    if-nez v1, :cond_5

    .line 1323
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 1324
    .local v0, "ohBinId":I
    if-ltz v0, :cond_2

    .line 1325
    iget-object v3, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v9, v3, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    .local v3, "item":Ljava/lang/Object;
    goto :goto_1

    .line 1327
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2
    sget-object v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_OR_DELTA:[Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v7, v14, v15, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchItem(J[Lcom/sleepycat/je/log/LogEntryType;)Ljava/lang/Object;

    move-result-object v3

    .line 1330
    .restart local v3    # "item":Ljava/lang/Object;
    :goto_1
    instance-of v4, v3, Lcom/sleepycat/je/tree/BIN;

    if-eqz v4, :cond_4

    .line 1331
    move-object v1, v3

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 1332
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1333
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    goto :goto_2

    .line 1335
    :cond_3
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_2

    .line 1338
    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 1339
    .local v4, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v5

    sget-object v13, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v7, v5, v6, v13}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchItem(J[Lcom/sleepycat/je/log/LogEntryType;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 1340
    invoke-virtual {v4, v10, v1}, Lcom/sleepycat/je/tree/OldBINDelta;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;)V

    .line 1343
    .end local v4    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    :goto_2
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1345
    .end local v0    # "ohBinId":I
    .end local v3    # "item":Ljava/lang/Object;
    move-object v13, v1

    goto :goto_3

    .line 1347
    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU()V

    .line 1349
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1352
    :try_start_0
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    .local v0, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1355
    nop

    .line 1356
    move-object v1, v0

    .line 1357
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    move-object v13, v1

    goto :goto_3

    .line 1354
    .end local v0    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v3

    .line 1349
    :cond_6
    move-object v13, v1

    .line 1362
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v13, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_3
    const/4 v0, 0x0

    .line 1364
    .local v0, "bidx":I
    if-eqz v2, :cond_9

    .line 1365
    const/4 v2, 0x0

    .line 1366
    :try_start_1
    iput-boolean v11, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->reuseBin:Z

    .line 1368
    iget-object v1, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3, v11}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    .line 1370
    if-ltz v0, :cond_7

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v11

    .line 1373
    .local v1, "exact":Z
    :goto_4
    if-eqz v1, :cond_8

    .line 1374
    const v3, -0x10001

    and-int/2addr v0, v3

    move/from16 v16, v2

    goto :goto_5

    .line 1376
    :cond_8
    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v2

    goto :goto_5

    .line 1436
    .end local v0    # "bidx":I
    .end local v1    # "exact":Z
    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 1364
    .restart local v0    # "bidx":I
    :cond_9
    move/from16 v16, v2

    .line 1380
    .end local v2    # "waitForConsumer":Z
    .local v16, "waitForConsumer":Z
    :goto_5
    :try_start_2
    invoke-direct {v7, v8, v13}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->isBinProcessedBefore(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;)Z

    move-result v1

    move v6, v1

    .line 1382
    .local v6, "checkBinKeys":Z
    :goto_6
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1384
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v1

    iput-object v1, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    .line 1386
    invoke-direct {v7, v8, v13, v0, v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->skipSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1387
    move/from16 v19, v6

    goto/16 :goto_9

    .line 1390
    :cond_a
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/LN;

    .line 1395
    .local v1, "ln":Lcom/sleepycat/je/tree/LN;
    if-nez v1, :cond_d

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1397
    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v9, v13, v0, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    move-object v1, v2

    .line 1399
    if-nez v1, :cond_c

    .line 1401
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1402
    iget-object v2, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V

    .line 1403
    iget-wide v2, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    .line 1404
    const-wide/16 v2, 0x8

    invoke-direct {v7, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    move/from16 v19, v6

    goto :goto_9

    .line 1401
    :cond_b
    move/from16 v19, v6

    goto :goto_9

    .line 1399
    :cond_c
    move-object/from16 v17, v1

    goto :goto_7

    .line 1415
    :cond_d
    move-object/from16 v17, v1

    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v17, "ln":Lcom/sleepycat/je/tree/LN;
    :goto_7
    iget-object v1, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->canProcessWithoutBlocking(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1417
    if-eqz v17, :cond_e

    .line 1418
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v1

    goto :goto_8

    :cond_e
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v1

    :goto_8
    move-object v4, v1

    .line 1420
    .local v4, "data":[B
    iget-object v3, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    .line 1422
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v5

    .line 1423
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v18

    .line 1420
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v19, v6

    .end local v6    # "checkBinKeys":Z
    .local v19, "checkBinKeys":Z
    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processRecord(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B[BIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1424
    nop

    .line 1382
    .end local v4    # "data":[B
    .end local v17    # "ln":Lcom/sleepycat/je/tree/LN;
    :goto_9
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v19

    goto/16 :goto_6

    .line 1432
    .end local v19    # "checkBinKeys":Z
    .restart local v6    # "checkBinKeys":Z
    .restart local v17    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_f
    move/from16 v19, v6

    .end local v6    # "checkBinKeys":Z
    .restart local v19    # "checkBinKeys":Z
    const/4 v1, 0x1

    .line 1433
    .end local v16    # "waitForConsumer":Z
    .local v1, "waitForConsumer":Z
    move v2, v1

    goto :goto_a

    .line 1382
    .end local v1    # "waitForConsumer":Z
    .end local v17    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v19    # "checkBinKeys":Z
    .restart local v6    # "checkBinKeys":Z
    .restart local v16    # "waitForConsumer":Z
    :cond_10
    move/from16 v19, v6

    .end local v6    # "checkBinKeys":Z
    .restart local v19    # "checkBinKeys":Z
    move/from16 v2, v16

    .line 1436
    .end local v0    # "bidx":I
    .end local v16    # "waitForConsumer":Z
    .end local v19    # "checkBinKeys":Z
    .restart local v2    # "waitForConsumer":Z
    :goto_a
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1437
    nop

    .line 1439
    if-eqz v2, :cond_11

    .line 1440
    invoke-direct {v7, v8, v11}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->waitForConsumer(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;I)V

    .line 1441
    iget-object v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    move-object v12, v0

    .end local v12    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    goto :goto_b

    .line 1443
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "parent":Lcom/sleepycat/je/tree/IN;
    :cond_11
    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1444
    iget-boolean v0, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial:Z

    if-nez v0, :cond_12

    .line 1445
    return-void

    .line 1448
    .end local v14    # "plsn":J
    :cond_12
    :goto_b
    move-object v1, v13

    goto/16 :goto_0

    .line 1436
    .end local v2    # "waitForConsumer":Z
    .restart local v14    # "plsn":J
    .restart local v16    # "waitForConsumer":Z
    :catchall_2
    move-exception v0

    move/from16 v2, v16

    .end local v16    # "waitForConsumer":Z
    .restart local v2    # "waitForConsumer":Z
    :goto_c
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0

    .line 1449
    .end local v13    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v14    # "plsn":J
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_13
    return-void

    .line 1294
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "waitForConsumer":Z
    .end local v12    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private addDeferredLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;JI)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .locals 1
    .param p1, "batch"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .param p2, "lsn"    # J
    .param p4, "memSize"    # I

    .line 1902
    if-nez p1, :cond_0

    .line 1903
    new-instance v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    move-object p1, v0

    .line 1904
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1907
    :cond_0
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->addLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    new-instance v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    move-object p1, v0

    .line 1909
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1912
    :cond_1
    return-object p1
.end method

.method private addGlobalMemory(J)V
    .locals 6
    .param p1, "delta"    # J

    .line 665
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    .line 666
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 668
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    .line 669
    const-wide/32 v4, 0x186a0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-wide/32 v4, -0x186a0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateDOSMemoryUsage(J)V

    .line 673
    iput-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    .line 675
    :cond_1
    return-void

    .line 666
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addLocalMemory(J)V
    .locals 4
    .param p1, "delta"    # J

    .line 659
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    .line 660
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 661
    return-void

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private fetchAndProcessBINs()V
    .locals 28

    .line 1564
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getNTotalEntries()I

    move-result v2

    .line 1565
    .local v2, "nAccLsns":I
    const/4 v0, 0x0

    .line 1566
    .local v0, "nDeferredLsns":I
    const/4 v3, 0x0

    .line 1567
    .local v3, "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    const/4 v4, 0x0

    .line 1569
    .local v4, "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    iget-object v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1570
    iget-object v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    .line 1571
    iget-object v5, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v0

    move-object/from16 v27, v3

    move v3, v0

    move-object/from16 v0, v27

    goto :goto_0

    .line 1569
    :cond_0
    move-object/from16 v27, v3

    move v3, v0

    move-object/from16 v0, v27

    .line 1574
    .local v0, "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v3, "nDeferredLsns":I
    :goto_0
    add-int v5, v2, v3

    new-array v5, v5, [J

    .line 1576
    .local v5, "lsns":[J
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    invoke-direct {v1, v6, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1578
    iget-object v6, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getLSNs([JI)V

    .line 1580
    move v6, v2

    .line 1582
    .local v6, "nLsns":I
    const-string v8, "Phase 2."

    if-eqz v0, :cond_2

    .line 1584
    iget-object v9, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1586
    .local v10, "lsn":Ljava/lang/Long;
    iget-boolean v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v11, :cond_1

    .line 1587
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Found deferred LSN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1592
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v5, v6

    .line 1593
    nop

    .end local v10    # "lsn":Ljava/lang/Long;
    add-int/lit8 v6, v6, 0x1

    .line 1594
    goto :goto_1

    .line 1597
    :cond_2
    iget-boolean v9, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v9, :cond_3

    .line 1598
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Num LSNs to read during phase 2a: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1603
    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 1622
    iget-object v9, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1624
    .local v9, "nDeltas":I
    array-length v10, v5

    add-int/2addr v10, v9

    new-array v10, v10, [Ljava/lang/Object;

    .line 1626
    .local v10, "deltaArray":[Ljava/lang/Object;
    array-length v11, v10

    sget v12, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/2addr v11, v12

    int-to-long v11, v11

    invoke-direct {v1, v11, v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1628
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_4

    .line 1629
    iget-object v12, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1628
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1632
    .end local v11    # "i":I
    :cond_4
    iget-object v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1633
    iget-object v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 1634
    sget v11, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/2addr v11, v9

    neg-int v11, v11

    int-to-long v11, v11

    invoke-direct {v1, v11, v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1636
    array-length v11, v5

    move v12, v7

    :goto_3
    if-ge v12, v11, :cond_c

    aget-wide v13, v5, v12

    .line 1640
    .local v13, "lsn":J
    sget-object v15, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_OR_DELTA:[Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v1, v13, v14, v15}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchEntry(J[Lcom/sleepycat/je/log/LogEntryType;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v15

    .line 1641
    .local v15, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v15}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v7

    .line 1643
    .local v7, "item":Ljava/lang/Object;
    move/from16 v16, v2

    .end local v2    # "nAccLsns":I
    .local v16, "nAccLsns":I
    invoke-interface {v15}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    .line 1644
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move/from16 v17, v3

    .end local v3    # "nDeferredLsns":I
    .local v17, "nDeferredLsns":I
    invoke-direct {v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v3

    .line 1650
    .local v3, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    move-object/from16 v18, v2

    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v18, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    instance-of v2, v7, Lcom/sleepycat/je/tree/OldBINDelta;

    if-eqz v2, :cond_5

    .line 1651
    move-object v2, v7

    check-cast v2, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 1652
    .local v2, "o":Lcom/sleepycat/je/tree/OldBINDelta;
    aput-object v7, v10, v9

    .line 1653
    add-int/lit8 v9, v9, 0x1

    .line 1654
    move-object/from16 v19, v8

    move/from16 v20, v9

    .end local v9    # "nDeltas":I
    .local v20, "nDeltas":I
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/OldBINDelta;->getMemorySize()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1655
    move-object/from16 v21, v4

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v9, v20

    move/from16 v20, v6

    goto/16 :goto_8

    .line 1658
    .end local v2    # "o":Lcom/sleepycat/je/tree/OldBINDelta;
    .end local v20    # "nDeltas":I
    .restart local v9    # "nDeltas":I
    :cond_5
    move-object/from16 v19, v8

    move-object v2, v7

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 1659
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v8, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v8}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1661
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v20

    const-string v8, " fetched via LSN "

    move-object/from16 v21, v4

    .end local v4    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v21, "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    const-string v4, "Phase 2a."

    const/16 v22, 0x1

    if-eqz v20, :cond_9

    .line 1663
    move/from16 v20, v6

    move-object/from16 v23, v7

    .end local v6    # "nLsns":I
    .end local v7    # "item":Ljava/lang/Object;
    .local v20, "nLsns":I
    .local v23, "item":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1665
    const/16 v6, 0x600

    .line 1666
    .local v6, "memSize":I
    if-eqz v0, :cond_6

    .line 1667
    invoke-virtual {v0, v1, v13, v14, v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->removeLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/16 v22, 0x0

    :goto_4
    move/from16 v7, v22

    .line 1669
    .local v7, "isDeferred":Z
    move/from16 v24, v6

    .end local v6    # "memSize":I
    .local v24, "memSize":I
    iget-boolean v6, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v6, :cond_7

    .line 1670
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v25, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " Saving bin delta "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1672
    move/from16 v26, v12

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1670
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1669
    :cond_7
    move/from16 v25, v11

    move/from16 v26, v12

    .line 1675
    :goto_5
    if-eqz v7, :cond_8

    new-instance v4, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    invoke-direct {v4, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/tree/BIN;)V

    goto :goto_6

    :cond_8
    move-object v4, v2

    :goto_6
    aput-object v4, v10, v9

    .line 1678
    add-int/lit8 v9, v9, 0x1

    .line 1679
    goto :goto_8

    .line 1682
    .end local v20    # "nLsns":I
    .end local v23    # "item":Ljava/lang/Object;
    .end local v24    # "memSize":I
    .local v6, "nLsns":I
    .local v7, "item":Ljava/lang/Object;
    :cond_9
    move/from16 v20, v6

    move-object/from16 v23, v7

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v6    # "nLsns":I
    .end local v7    # "item":Ljava/lang/Object;
    .restart local v20    # "nLsns":I
    .restart local v23    # "item":Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 1683
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v13, v14, v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->removeLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    const/16 v22, 0x0

    :goto_7
    move/from16 v6, v22

    .line 1685
    .local v6, "isDeferred":Z
    iget-boolean v7, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v7, :cond_b

    .line 1686
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " Processing full bin "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1688
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1686
    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1692
    :cond_b
    invoke-direct {v1, v3, v2, v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1636
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v6    # "isDeferred":Z
    .end local v13    # "lsn":J
    .end local v15    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v23    # "item":Ljava/lang/Object;
    :goto_8
    add-int/lit8 v12, v26, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v8, v19

    move/from16 v6, v20

    move-object/from16 v4, v21

    move/from16 v11, v25

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1695
    .end local v16    # "nAccLsns":I
    .end local v17    # "nDeferredLsns":I
    .end local v20    # "nLsns":I
    .end local v21    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v2, "nAccLsns":I
    .local v3, "nDeferredLsns":I
    .restart local v4    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v6, "nLsns":I
    :cond_c
    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move/from16 v20, v6

    move-object/from16 v19, v8

    .end local v2    # "nAccLsns":I
    .end local v3    # "nDeferredLsns":I
    .end local v4    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .end local v6    # "nLsns":I
    .restart local v16    # "nAccLsns":I
    .restart local v17    # "nDeferredLsns":I
    .restart local v20    # "nLsns":I
    .restart local v21    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    array-length v2, v5

    mul-int/lit8 v2, v2, 0x8

    neg-int v2, v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1697
    const/4 v2, 0x0

    .line 1699
    .end local v5    # "lsns":[J
    .local v2, "lsns":[J
    if-eqz v0, :cond_d

    .line 1700
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->free(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    .line 1701
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_9

    .line 1699
    :cond_d
    move-object v3, v0

    .line 1704
    .end local v0    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v3, "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :goto_9
    iget-boolean v0, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_e

    .line 1705
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished Phase 2a."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " localMemoryUsage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " globalMemoryUsage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1711
    :cond_e
    if-nez v9, :cond_f

    .line 1712
    array-length v0, v10

    sget v4, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/2addr v0, v4

    neg-int v0, v0

    int-to-long v4, v0

    invoke-direct {v1, v4, v5}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1713
    return-void

    .line 1721
    :cond_f
    new-instance v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    const/4 v4, 0x0

    invoke-static {v10, v4, v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1747
    const/4 v0, 0x0

    move v4, v0

    move-object/from16 v5, v21

    .end local v21    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v4, "i":I
    .local v5, "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :goto_a
    if-ge v4, v9, :cond_1f

    .line 1749
    aget-object v6, v10, v4

    .line 1750
    .local v6, "o":Ljava/lang/Object;
    const/4 v0, 0x0

    aput-object v0, v10, v4

    .line 1752
    instance-of v0, v6, Lcom/sleepycat/je/tree/OldBINDelta;

    if-eqz v0, :cond_10

    .line 1754
    move-object v0, v6

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 1756
    .local v0, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v7

    .line 1758
    .local v7, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v11

    sget-object v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v1, v11, v12, v8}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchItem(J[Lcom/sleepycat/je/log/LogEntryType;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/tree/BIN;

    .line 1759
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v11, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v11, v8}, Lcom/sleepycat/je/tree/OldBINDelta;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;)V

    .line 1761
    const/4 v11, 0x0

    invoke-direct {v1, v7, v8, v11}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1763
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getMemorySize()J

    move-result-wide v11

    neg-long v11, v11

    invoke-direct {v1, v11, v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1765
    .end local v0    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    .end local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    move-object v12, v2

    move-object/from16 v18, v3

    move-object/from16 v13, v19

    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_10
    instance-of v0, v6, Lcom/sleepycat/je/tree/BIN;

    if-nez v0, :cond_1c

    instance-of v0, v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    if-eqz v0, :cond_11

    move-object v12, v2

    move-object/from16 v18, v3

    move-object/from16 v13, v19

    goto/16 :goto_11

    .line 1798
    :cond_11
    instance-of v0, v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    const-string v7, " delta mem: "

    if-eqz v0, :cond_15

    .line 1800
    move-object v8, v6

    check-cast v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    .line 1802
    .local v8, "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    iget-object v0, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    iget-object v11, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v12, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->ohBinId:I

    iget-wide v13, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadBINIfLsnMatches(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)Lcom/sleepycat/je/tree/BIN;

    move-result-object v11

    .line 1805
    .local v11, "bin":Lcom/sleepycat/je/tree/BIN;
    if-nez v11, :cond_13

    .line 1806
    iget-wide v12, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->memSize:I

    invoke-direct {v1, v5, v12, v13, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addDeferredLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;JI)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    move-result-object v5

    .line 1809
    iget-boolean v0, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_12

    .line 1810
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ": Found stale OffHeapBinRef - Deferring LSN: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v12, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    iget v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->memSize:I

    add-int/2addr v12, v14

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 1809
    :cond_12
    move-object/from16 v13, v19

    goto :goto_c

    .line 1820
    :cond_13
    move-object/from16 v13, v19

    :try_start_0
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v0

    .line 1824
    .local v0, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1825
    iget-object v7, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v11, v7}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v7

    .local v7, "fullBin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_b

    .line 1827
    .end local v7    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    :cond_14
    move-object v7, v11

    .line 1830
    .restart local v7    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    :goto_b
    const/4 v12, 0x0

    invoke-direct {v1, v0, v7, v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    .end local v0    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v7    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1833
    nop

    .line 1836
    :goto_c
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_OffHeapBinRef:I

    neg-int v0, v0

    int-to-long v14, v0

    invoke-direct {v1, v14, v15}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1838
    .end local v8    # "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    .end local v11    # "bin":Lcom/sleepycat/je/tree/BIN;
    move-object v12, v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    goto/16 :goto_13

    .line 1832
    .restart local v8    # "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    .restart local v11    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0

    .line 1839
    .end local v8    # "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    .end local v11    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_15
    move-object/from16 v13, v19

    instance-of v0, v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    if-eqz v0, :cond_1b

    .line 1841
    move-object v8, v6

    check-cast v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    .line 1842
    .local v8, "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sleepycat/je/tree/BIN;

    .line 1844
    .restart local v11    # "bin":Lcom/sleepycat/je/tree/BIN;
    if-nez v11, :cond_17

    .line 1845
    iget-wide v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    invoke-direct {v1, v5, v14, v15, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addDeferredLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;JI)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    move-result-object v0

    .line 1848
    .end local v5    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v0, "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    iget-boolean v5, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v5, :cond_16

    .line 1849
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ": Found cleared WeakBinRef - Deferring LSN: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v12, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    iget v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    add-int/2addr v12, v14

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1890
    :cond_16
    move-object v12, v2

    move-object/from16 v18, v3

    goto :goto_f

    .line 1858
    .end local v0    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v5    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :cond_17
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v7

    .line 1860
    .local v7, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v11, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1863
    :try_start_1
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v2

    move-object/from16 v18, v3

    .end local v2    # "lsns":[J
    .end local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v12, "lsns":[J
    .local v18, "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :try_start_2
    iget-wide v2, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->fullBinLsn:J

    cmp-long v0, v14, v2

    if-eqz v0, :cond_18

    .line 1864
    iget-wide v2, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    iget v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    invoke-direct {v1, v5, v2, v3, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addDeferredLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;JI)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    move-result-object v0

    move-object v5, v0

    .line 1867
    iget-boolean v0, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_1a

    .line 1868
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Found stale WeakBinRef - Deferring LSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v14, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1877
    :cond_18
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1878
    iget-object v0, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v11, v0}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .local v0, "fullBin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_d

    .line 1880
    .end local v0    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    :cond_19
    move-object v0, v11

    .line 1883
    .restart local v0    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    :goto_d
    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1886
    .end local v0    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    :cond_1a
    :goto_e
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1887
    move-object v0, v5

    .line 1890
    .end local v5    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .end local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .local v0, "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :goto_f
    sget v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_WeakBinRef:I

    neg-int v2, v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    move-object v5, v0

    const/4 v3, 0x0

    goto :goto_13

    .line 1886
    .end local v0    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v5    # "nextDeferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    :catchall_1
    move-exception v0

    goto :goto_10

    .end local v12    # "lsns":[J
    .end local v18    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v2    # "lsns":[J
    .restart local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :catchall_2
    move-exception v0

    move-object v12, v2

    move-object/from16 v18, v3

    .end local v2    # "lsns":[J
    .end local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v12    # "lsns":[J
    .restart local v18    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :goto_10
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0

    .line 1839
    .end local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v8    # "ref":Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;
    .end local v11    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v12    # "lsns":[J
    .end local v18    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v2    # "lsns":[J
    .restart local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1765
    :cond_1c
    move-object v12, v2

    move-object/from16 v18, v3

    move-object/from16 v13, v19

    .line 1779
    .end local v2    # "lsns":[J
    .end local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .restart local v12    # "lsns":[J
    .restart local v18    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :goto_11
    instance-of v0, v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    if-eqz v0, :cond_1d

    .line 1780
    move-object v0, v6

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    iget-object v0, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;->delta:Lcom/sleepycat/je/tree/BIN;

    .line 1781
    .local v0, "delta":Lcom/sleepycat/je/tree/BIN;
    const/4 v2, 0x1

    .line 1782
    .local v2, "isDeferred":Z
    move-object v3, v6

    check-cast v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;->free(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V

    goto :goto_12

    .line 1784
    .end local v0    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "isDeferred":Z
    :cond_1d
    move-object v0, v6

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 1785
    .restart local v0    # "delta":Lcom/sleepycat/je/tree/BIN;
    const/4 v2, 0x0

    .line 1788
    .restart local v2    # "isDeferred":Z
    :goto_12
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1790
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v7

    .line 1792
    .restart local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    iget-object v8, v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v8

    .line 1794
    .local v8, "fullBin":Lcom/sleepycat/je/tree/BIN;
    invoke-direct {v1, v7, v8, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1796
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v14

    neg-long v14, v14

    invoke-direct {v1, v14, v15}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1798
    .end local v0    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "isDeferred":Z
    .end local v7    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v8    # "fullBin":Lcom/sleepycat/je/tree/BIN;
    nop

    .line 1747
    .end local v6    # "o":Ljava/lang/Object;
    :goto_13
    add-int/lit8 v4, v4, 0x1

    move-object v2, v12

    move-object/from16 v19, v13

    move-object/from16 v3, v18

    goto/16 :goto_a

    .line 1788
    .restart local v0    # "delta":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "isDeferred":Z
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_1e
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1747
    .end local v0    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v12    # "lsns":[J
    .end local v18    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .local v2, "lsns":[J
    .restart local v3    # "deferredBatch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :cond_1f
    move-object v12, v2

    .line 1894
    .end local v2    # "lsns":[J
    .end local v4    # "i":I
    .restart local v12    # "lsns":[J
    array-length v0, v10

    sget v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/2addr v0, v2

    neg-int v0, v0

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1895
    return-void
.end method

.method private fetchAndProcessLNs()V
    .locals 14

    .line 1969
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getAndSortPendingLSNs()[J

    move-result-object v0

    .line 1971
    .local v0, "lsns":[J
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1973
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    .line 1975
    .local v3, "lsn":J
    sget-object v5, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->LN_ONLY:[Lcom/sleepycat/je/log/LogEntryType;

    .line 1976
    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchEntry(J[Lcom/sleepycat/je/log/LogEntryType;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1978
    .local v5, "entry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    move-result-object v6

    .line 1980
    .local v6, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    iget-object v7, v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1982
    invoke-virtual {v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getMainItem()Lcom/sleepycat/je/tree/LN;

    move-result-object v13

    .line 1983
    .local v13, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1984
    goto :goto_1

    .line 1987
    :cond_0
    nop

    .line 1988
    invoke-virtual {v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v9

    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v10

    .line 1989
    invoke-virtual {v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v11

    invoke-virtual {v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v12

    .line 1987
    move-object v7, p0

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processRecord(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B[BIZ)V

    .line 1973
    .end local v3    # "lsn":J
    .end local v5    # "entry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v6    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1992
    :cond_1
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    neg-int v1, v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1993
    return-void
.end method

.method private fetchEntry(J[Lcom/sleepycat/je/log/LogEntryType;)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "expectTypes"    # [Lcom/sleepycat/je/log/LogEntryType;

    .line 2065
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 2067
    .local v0, "logManager":Lcom/sleepycat/je/log/LogManager;
    nop

    .line 2068
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 2070
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v2

    .line 2072
    .local v2, "type":Lcom/sleepycat/je/log/LogEntryType;
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    .line 2073
    .local v5, "expectType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v5}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2074
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2075
    return-object v1

    .line 2078
    :cond_0
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2079
    return-object v1

    .line 2072
    .end local v5    # "expectType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2084
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2085
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LSN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2086
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2084
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private fetchItem(J[Lcom/sleepycat/je/log/LogEntryType;)Ljava/lang/Object;
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "expectTypes"    # [Lcom/sleepycat/je/log/LogEntryType;

    .line 2051
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchEntry(J[Lcom/sleepycat/je/log/LogEntryType;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getDbCtx(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .locals 2
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1996
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbid2dbidxMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1997
    .local v0, "dbIdx":I
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getFirstIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B)V
    .locals 19
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "searchKey"    # [B

    .line 2151
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v2

    .line 2153
    .local v2, "tree":Lcom/sleepycat/je/tree/Tree;
    const/4 v3, 0x0

    move v13, v3

    .local v13, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v13, v3, :cond_5

    .line 2157
    if-nez v1, :cond_0

    .line 2158
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/Tree;->getFirstNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    move-object v14, v3

    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_1

    .line 2160
    .end local v3    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_0
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    move-object v14, v3

    .line 2163
    .local v14, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_1
    const/4 v15, 0x1

    if-nez v14, :cond_1

    .line 2165
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 2166
    iput-boolean v15, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    .line 2167
    return-void

    .line 2174
    :cond_1
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v16

    .line 2175
    .local v16, "targetId":J
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v18

    .line 2177
    .local v18, "targetKey":[B
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2179
    iput-boolean v15, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 2181
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    sget-object v11, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v12, 0x0

    move-object v3, v2

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v3 .. v12}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(J[BIIZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v3

    .line 2187
    .local v3, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-object v4, v3, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 2189
    .local v4, "parent":Lcom/sleepycat/je/tree/IN;
    iget-boolean v5, v3, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 2190
    if-eqz v4, :cond_2

    .line 2191
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2193
    :cond_2
    iput-boolean v6, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 2194
    nop

    .line 2153
    .end local v3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v16    # "targetId":J
    .end local v18    # "targetKey":[B
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2197
    .restart local v3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v16    # "targetId":J
    .restart local v18    # "targetKey":[B
    :cond_3
    iput-object v4, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 2198
    iput v6, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 2200
    iget-object v5, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v5, :cond_4

    .line 2201
    iput-boolean v15, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    .line 2204
    :cond_4
    return-void

    .line 2207
    .end local v3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v13    # "i":I
    .end local v14    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v16    # "targetId":J
    .end local v18    # "targetKey":[B
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find BIN for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2209
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2207
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private getNextIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 2217
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sleepycat/je/tree/Tree;->getNextIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 2221
    const/4 v0, 0x0

    iput v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 2223
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_0

    .line 2224
    iput-boolean v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    .line 2226
    :cond_0
    return-void
.end method

.method private initNextIteration()V
    .locals 11

    .line 937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 939
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v1, v1, v0

    .line 941
    .local v1, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 942
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 943
    iput-boolean v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->checkLevel2Keys:Z

    .line 945
    iget-object v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    iput-object v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    .line 946
    iput-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    .line 953
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_3

    iget-wide v6, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3

    .line 955
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    .line 957
    .local v6, "batch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    iget-wide v7, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->containsLsn(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 959
    iget-wide v7, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    sget-object v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->BIN_OR_DELTA:[Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {p0, v7, v8, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchItem(J[Lcom/sleepycat/je/log/LogEntryType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 962
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    const/4 v7, 0x0

    .line 964
    .local v7, "memSize":I
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 965
    iget-object v8, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v8}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    .line 966
    const/16 v7, 0x600

    .line 969
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 971
    iget-wide v8, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    invoke-virtual {v6, p0, v8, v9, v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->undoLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)V

    .line 973
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    iget-object v8, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v9, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 975
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v9

    .line 973
    invoke-static {v3, v8, v9}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 978
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    iput-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    .line 980
    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v3, :cond_3

    .line 981
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LSN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for bin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 983
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was the last bin lsn seen during Phase 1."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and it got deferred during Phase 2."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Moved prevEndingKey forward"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 981
    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 973
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 992
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v6    # "batch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    .end local v7    # "memSize":I
    :cond_2
    goto/16 :goto_1

    .line 1000
    :cond_3
    :goto_2
    iput-wide v4, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    .line 937
    .end local v1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1003
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->lsnAcc:Lcom/sleepycat/je/dbi/LSNAccumulator;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getMemoryUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    .line 1004
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    .line 1006
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1007
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;

    .line 1008
    .local v0, "batch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    iget-object v1, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    .line 1009
    iget-wide v3, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    .line 1012
    .end local v0    # "batch":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
    :cond_5
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    .line 1013
    return-void
.end method

.method private isBinProcessedBefore(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 2100
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    if-lez v0, :cond_0

    .line 2101
    invoke-virtual {p2, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v0

    .line 2103
    .local v0, "firstKey":[B
    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2104
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 2103
    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2105
    const/4 v1, 0x1

    return v1

    .line 2109
    .end local v0    # "firstKey":[B
    :cond_0
    return v1
.end method

.method private processBIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "isDeferred"    # Z

    .line 1922
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1925
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1928
    nop

    .line 1929
    return-void

    .line 1927
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0
.end method

.method private processBINInternal(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;Z)V
    .locals 9
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "isDeferred"    # Z

    .line 1943
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->isBinProcessedBefore(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1945
    .local v0, "checkBinKeys":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1947
    invoke-virtual {p2, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    iput-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    .line 1949
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->skipSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1950
    goto :goto_3

    .line 1955
    :cond_1
    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    .line 1956
    .local v2, "key":[B
    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->keysOnly:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v1}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v3

    :goto_2
    move-object v6, v3

    .line 1958
    .local v6, "data":[B
    nop

    .line 1960
    invoke-virtual {p2, v1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v7

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v8

    .line 1958
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processRecord(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B[BIZ)V

    .line 1945
    .end local v2    # "key":[B
    .end local v6    # "data":[B
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1962
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private processRecord(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B[BIZ)V
    .locals 10
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "treeKey"    # [B
    .param p3, "treeData"    # [B
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z

    .line 2012
    if-eqz p2, :cond_8

    .line 2017
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dupDBs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->countOnly:Z

    if-nez v0, :cond_2

    .line 2019
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2020
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->keysOnly:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2023
    .local v2, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    array-length v3, p2

    invoke-static {p2, v3, v0, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->split([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 2024
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    .line 2026
    .local v3, "key":[B
    iget-boolean v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->keysOnly:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 2028
    .end local v2    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v0, "data":[B
    goto :goto_4

    .line 2029
    .end local v0    # "data":[B
    .end local v3    # "key":[B
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->countOnly:Z

    if-eqz v0, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, p2

    :goto_2
    move-object v3, v2

    .line 2030
    .restart local v3    # "key":[B
    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->keysOnly:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p3

    :cond_5
    :goto_3
    move-object v0, v1

    .line 2033
    .restart local v0    # "data":[B
    :goto_4
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    iget v5, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbIdx:I

    move-object v6, v3

    move-object v7, v0

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->process(I[B[BIZ)V

    .line 2036
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2038
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    .line 2037
    invoke-static {v1, p2, v2}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_7

    .line 2039
    :cond_6
    iput-object p2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    .line 2041
    :cond_7
    return-void

    .line 2012
    .end local v0    # "data":[B
    .end local v3    # "key":[B
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private scanInterleaved()V
    .locals 7

    .line 817
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 818
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 824
    .local v1, "overBudget":Z
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    const/4 v1, 0x1

    .line 826
    goto :goto_6

    .line 829
    :cond_1
    const/4 v2, 0x0

    .local v2, "dbidx":I
    :goto_1
    iget v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-ge v2, v3, :cond_a

    .line 831
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, v3, v2

    .line 833
    .local v3, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    iget-boolean v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    if-eqz v4, :cond_2

    .line 834
    goto :goto_4

    .line 837
    :cond_2
    iget-object v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 838
    iget-object v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getFirstIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B)V

    goto :goto_2

    .line 839
    :cond_3
    iget v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-le v4, v5, :cond_4

    .line 840
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->resumeParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 843
    :cond_4
    :goto_2
    iget-boolean v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    if-eqz v4, :cond_5

    .line 844
    goto :goto_4

    .line 847
    :cond_5
    const/4 v0, 0x0

    .line 849
    iget-boolean v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v4, :cond_6

    .line 850
    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulateBINs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    goto :goto_3

    .line 852
    :cond_6
    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulateLNs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 855
    :goto_3
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 856
    const/4 v1, 0x1

    .line 857
    goto :goto_5

    .line 860
    :cond_7
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->checkShutdown()V

    .line 862
    iget v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    iget-object v6, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v6

    if-lt v4, v6, :cond_8

    .line 863
    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getNextIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 864
    iget-boolean v4, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    if-eqz v4, :cond_8

    .line 865
    goto :goto_4

    .line 869
    :cond_8
    iget v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-le v4, v5, :cond_9

    .line 870
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->releaseParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    .end local v3    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 873
    .end local v2    # "dbidx":I
    :cond_a
    :goto_5
    if-nez v0, :cond_b

    if-eqz v1, :cond_0

    .line 876
    :cond_b
    :goto_6
    const/4 v2, 0x0

    .restart local v2    # "dbidx":I
    :goto_7
    iget v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-ge v2, v3, :cond_d

    .line 877
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    if-eqz v3, :cond_c

    .line 879
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 876
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 882
    .end local v2    # "dbidx":I
    :cond_d
    nop

    .line 884
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    const-string v3, " globalMemoryUsage = "

    if-eqz v2, :cond_f

    .line 885
    const-string v2, "Finished Phase 1."

    if-eqz v1, :cond_e

    .line 886
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " because DOS budget exceeded. localMemoryUsage = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 892
    :cond_e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " because no more records to scan. localMemoryUsage = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 900
    :cond_f
    :goto_8
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->evictionHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 906
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v2, :cond_10

    .line 907
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchAndProcessBINs()V

    goto :goto_9

    .line 909
    :cond_10
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchAndProcessLNs()V

    .line 912
    :goto_9
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v2, :cond_11

    .line 913
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished Phase 2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " localMemoryUsage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->localMemoryUsage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 922
    :cond_11
    if-eqz v0, :cond_14

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 923
    nop

    .line 929
    :cond_12
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v2, :cond_13

    .line 930
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Producer done in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iterations"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    :cond_13
    return-void

    .line 926
    :cond_14
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->initNextIteration()V

    goto/16 :goto_0

    .line 876
    .end local v0    # "done":Z
    .end local v1    # "overBudget":Z
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .local v1, "dbidx":I
    :goto_a
    iget v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-ge v1, v2, :cond_16

    .line 877
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    if-eqz v2, :cond_15

    .line 879
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 876
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "dbidx":I
    :cond_16
    throw v0
.end method

.method private scanSerial()V
    .locals 4

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "dbidx":I
    const/4 v1, 0x0

    .line 739
    .local v1, "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded()Z

    move-result v2

    .line 741
    .local v2, "overBudget":Z
    :cond_0
    :goto_1
    iget v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-ge v0, v3, :cond_7

    if-nez v2, :cond_7

    .line 743
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->dbs:[Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    aget-object v3, v3, v0

    move-object v1, v3

    .line 745
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v3, :cond_1

    .line 746
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    invoke-direct {p0, v1, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getFirstIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B)V

    .line 749
    :cond_1
    iget-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    if-eqz v3, :cond_3

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 751
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "dbidx":I
    .end local v1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    throw v3

    .line 755
    .restart local v0    # "dbidx":I
    .restart local v1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    :cond_3
    :goto_2
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v3, :cond_0

    .line 757
    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v3, :cond_4

    .line 758
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulateBINs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    goto :goto_3

    .line 760
    :cond_4
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulateLNs(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 763
    :goto_3
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accLimitExceeded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    const/4 v2, 0x1

    .line 765
    goto :goto_1

    .line 768
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->checkShutdown()V

    .line 770
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getNextIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 772
    iget-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    if-eqz v3, :cond_3

    .line 773
    add-int/lit8 v0, v0, 0x1

    .line 774
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "dbidx":I
    .end local v1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    .restart local v0    # "dbidx":I
    .restart local v1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    :cond_7
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v3, :cond_8

    iget-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    if-eqz v3, :cond_8

    .line 781
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 788
    :cond_8
    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v3, :cond_9

    .line 789
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchAndProcessBINs()V

    goto :goto_4

    .line 791
    :cond_9
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchAndProcessLNs()V

    .line 797
    :goto_4
    iget v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numDBs:I

    if-lt v0, v3, :cond_b

    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->deferredLsns:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 798
    nop

    .line 803
    :cond_a
    return-void

    .line 801
    :cond_b
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->initNextIteration()V

    goto/16 :goto_0

    .line 780
    .end local v2    # "overBudget":Z
    :catchall_0
    move-exception v2

    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v3, :cond_c

    iget-boolean v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    if-eqz v3, :cond_c

    .line 781
    iget-object v3, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    :cond_c
    throw v2
.end method

.method private skipSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;Lcom/sleepycat/je/tree/BIN;IZ)Z
    .locals 4
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "index"    # I
    .param p4, "checkBinKeys"    # Z

    .line 2122
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2123
    return v1

    .line 2127
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2131
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 2129
    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2127
    :goto_0
    return v1
.end method

.method private waitForConsumer(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;I)V
    .locals 6
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "binNEntries"    # I

    .line 1468
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->releaseParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 1471
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binsOnly:Z

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1472
    .local v0, "minFree":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->getCapacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1474
    .local v1, "free":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v2, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->canProcessWithoutBlocking(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1475
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1477
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->processor:Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;

    invoke-interface {v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;->checkShutdown()V

    .line 1478
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .end local p2    # "binNEntries":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 1486
    .end local v0    # "minFree":I
    .end local v1    # "free":I
    .restart local p1    # "ctx":Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .restart local p2    # "binNEntries":I
    :cond_1
    nop

    .line 1488
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->resumeParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V

    .line 1489
    return-void

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 1485
    throw v0

    .line 1480
    .end local v0    # "E":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1481
    .local v0, "IE":Ljava/lang/InterruptedException;
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 1482
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method addCleanDeltaOffHeapRef(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JJIZ)V
    .locals 12
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "binLsn"    # J
    .param p4, "fullBINLsn"    # J
    .param p6, "ohBinId"    # I
    .param p7, "ohBinPri2"    # Z

    .line 1234
    move-object v8, p0

    move/from16 v9, p6

    iget-object v10, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    new-instance v11, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JJI)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    iget-object v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 1247
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_OffHeapBinRef:I

    sget v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    sget v4, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    .line 1251
    add-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1253
    iget-boolean v0, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_0

    .line 1254
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phase 1."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": added off-heap bin ref for bin delta ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at LSN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v3, p2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_0
    move-wide v3, p2

    .line 1259
    :goto_0
    return-void
.end method

.method addCleanDeltaRef(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JLcom/sleepycat/je/tree/BIN;)V
    .locals 8
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p2, "binLsn"    # J
    .param p4, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 1202
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    new-instance v7, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JLcom/sleepycat/je/tree/BIN;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p4, v0}, Lcom/sleepycat/je/tree/BIN;->updateLRU(Lcom/sleepycat/je/CacheMode;)V

    .line 1214
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_WeakBinRef:I

    sget v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    sget v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    .line 1218
    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1220
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_0

    .line 1221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phase 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": added weak bin ref for bin delta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1224
    invoke-virtual {p4}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at LSN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    :cond_0
    return-void
.end method

.method addDirtyDeltaRef(Lcom/sleepycat/je/tree/BIN;)V
    .locals 5
    .param p1, "delta"    # Lcom/sleepycat/je/tree/BIN;

    .line 1263
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->SIZEOF_JAVA_REF:I

    mul-int/lit8 v3, v2, 0x2

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addLocalMemory(J)V

    .line 1273
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->addGlobalMemory(J)V

    .line 1275
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_0

    .line 1276
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phase 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": copied dirty or unsafe bin delta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1278
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1276
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1280
    :cond_0
    return-void
.end method

.method public evictBinRefs()V
    .locals 9

    .line 2243
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->debug:Z

    if-eqz v0, :cond_0

    .line 2244
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DOS EVICTION HOOK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->binDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2248
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    if-eqz v2, :cond_1

    .line 2250
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    .line 2252
    .local v2, "ohRef":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v5, v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->ohBinId:I

    iget-wide v6, v2, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBINIfLsnMatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)V

    .line 2255
    goto :goto_0

    .line 2258
    .end local v2    # "ohRef":Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
    :cond_1
    instance-of v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    if-nez v2, :cond_2

    .line 2259
    goto :goto_0

    .line 2262
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v2

    .line 2264
    .local v2, "evictor":Lcom/sleepycat/je/evictor/Evictor;
    move-object v3, v1

    check-cast v3, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    .line 2266
    .local v3, "binRef":Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    .line 2268
    .local v4, "bin":Lcom/sleepycat/je/tree/BIN;
    if-nez v4, :cond_3

    .line 2269
    goto :goto_0

    .line 2272
    :cond_3
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->clear()V

    .line 2274
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->latch()V

    .line 2276
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2277
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2278
    goto :goto_0

    .line 2281
    :cond_4
    sget-object v5, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 2282
    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/evictor/Evictor;->doTestEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    move-result-wide v5

    .line 2287
    .local v5, "freedBytes":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_5

    .line 2288
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->latch()V

    .line 2289
    sget-object v7, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {v2, v4, v7}, Lcom/sleepycat/je/evictor/Evictor;->doTestEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    .line 2291
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "evictor":Lcom/sleepycat/je/evictor/Evictor;
    .end local v3    # "binRef":Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;
    .end local v4    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v5    # "freedBytes":J
    :cond_5
    goto :goto_0

    .line 2292
    :cond_6
    return-void
.end method

.method getNIterations()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->nIterations:I

    return v0
.end method

.method getNumLsns()J
    .locals 2

    .line 655
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->numLsns:J

    return-wide v0
.end method

.method releaseParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 1493
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->plsn:J

    .line 1494
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v0

    iput-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pkey:[B

    .line 1496
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->pin()V

    .line 1497
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 1499
    return-void
.end method

.method resumeParent(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 1503
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->latchShared()V

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 1506
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 1512
    iget v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-wide v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->plsn:J

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v4, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1513
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1514
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1515
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1543
    :cond_0
    iget-wide v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->plsn:J

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v4, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1544
    iput-boolean v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->reuseBin:Z

    goto :goto_1

    .line 1517
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->testHook1:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 1519
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pkey:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v0

    iput v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1529
    iget v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    if-gtz v0, :cond_2

    .line 1530
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1531
    iput-boolean v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parentIsLatched:Z

    .line 1533
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->testHook1:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 1535
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->getFirstIN(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;[B)V

    .line 1541
    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget-object v1, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->binKey:[B

    invoke-virtual {v0, v1, v3, v3}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v0

    iput v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 1546
    :cond_2
    :goto_1
    return-void
.end method

.method scan(Ljava/lang/String;J)V
    .locals 7
    .param p1, "protectedFilesNamePrefix"    # Ljava/lang/String;
    .param p2, "protectedFilesId"    # J

    .line 703
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 704
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->protectActiveFiles(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    move-result-object v0

    .line 707
    .local v0, "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :try_start_0
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial:Z

    if-eqz v1, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanSerial()V

    goto :goto_0

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scanInterleaved()V

    .line 713
    :goto_0
    iget-wide v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 718
    iget-wide v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    sub-long/2addr v1, v3

    .line 719
    .local v1, "budgeted":J
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v3

    neg-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateDOSMemoryUsage(J)V

    .line 720
    .end local v1    # "budgeted":J
    nop

    .line 721
    return-void

    .line 713
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoryUsage is wrong at DOS end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .end local p1    # "protectedFilesNamePrefix":Ljava/lang/String;
    .end local p2    # "protectedFilesId":J
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .restart local v0    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .restart local p1    # "protectedFilesNamePrefix":Ljava/lang/String;
    .restart local p2    # "protectedFilesId":J
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 718
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->globalMemoryUsage:J

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->accumulatedMemDelta:J

    sub-long/2addr v2, v4

    .line 719
    .local v2, "budgeted":J
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v4

    neg-long v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateDOSMemoryUsage(J)V

    .line 720
    .end local v2    # "budgeted":J
    throw v1
.end method

.method public setEvictionHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2238
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->evictionHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2239
    return-void
.end method

.method public setTestHook1(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2234
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->testHook1:Lcom/sleepycat/je/utilint/TestHook;

    .line 2235
    return-void
.end method

.method skipParentSlot(Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;

    .line 1453
    iget-boolean v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->checkLevel2Keys:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1455
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    iget-object v2, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    iget v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    add-int/2addr v3, v1

    .line 1457
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v2

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1458
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 1456
    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1459
    return v1

    .line 1462
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->checkLevel2Keys:Z

    .line 1463
    return v0
.end method
