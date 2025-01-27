.class public Lcom/sleepycat/je/tree/IN;
.super Lcom/sleepycat/je/tree/Node;
.source "IN.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/sleepycat/je/latch/LatchContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/tree/Node;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/tree/IN;",
        ">;",
        "Lcom/sleepycat/je/latch/LatchContext;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static ACCUMULATED_LIMIT:I = 0x0

.field public static final ACCUMULATED_LIMIT_DEFAULT:I = 0x3e8

.field private static final BEGIN_TAG:Ljava/lang/String; = "<in>"

.field public static final BIN_LEVEL:I = 0x10001

.field private static final BYTES_PER_LSN_ENTRY:I = 0x4

.field public static final DBMAP_LEVEL:I = 0x20000

.field private static final EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

.field private static final END_TAG:Ljava/lang/String; = "</in>"

.field public static final EXACT_MATCH:I = 0x10000

.field public static final INSERT_SUCCESS:I = 0x20000

.field private static final IN_DELTA_BIT:I = 0x20

.field private static final IN_DIRTY_BIT:I = 0x1

.field private static final IN_EXPIRATION_IN_HOURS:I = 0x400

.field private static final IN_FETCHED_COLD_BIT:I = 0x40

.field private static final IN_FETCHED_COLD_OFFHEAP_BIT:I = 0x80

.field private static final IN_HAS_CACHED_CHILDREN_BIT:I = 0x8

.field private static final IN_IS_ROOT_BIT:I = 0x4

.field private static final IN_PRI2_LRU_BIT:I = 0x10

.field private static final IN_PROHIBIT_NEXT_DELTA_BIT:I = 0x200

.field private static final IN_RECALC_TOGGLE_BIT:I = 0x2

.field private static final IN_RESIDENT_BIT:I = 0x100

.field public static final LEVEL_MASK:I = 0xffff

.field public static final MAIN_LEVEL:I = 0x10000

.field public static final MAX_FILE_OFFSET:I = 0xfffffe

.field public static final MIN_LEVEL:I = -0x1

.field public static final NON_EVICTABLE_IN:J = 0x4000000000000000L

.field private static final THREE_BYTE_NEGATIVE_ONE:I = 0xffffff

.field private static final TRACE_DELETE:Ljava/lang/String; = "Delete:"

.field private static final TRACE_SPLIT:Ljava/lang/String; = "Split:"

.field public static disableCompactLsns:Z = false

.field private static final traceDeltas:Z = false

.field private static final traceLRU:Z = false

.field private static final traceLevel:Ljava/util/logging/Level;


# instance fields
.field private accumulatedDelta:I

.field baseFileNumber:J

.field databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

.field entryLsnByteArray:[B

.field entryLsnLongArray:[J

.field entryStates:[B

.field entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

.field private fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

.field flags:I

.field private identifierKey:[B

.field inMemorySize:J

.field keyPrefix:[B

.field lastFullVersion:J

.field private latch:Lcom/sleepycat/je/latch/SharedLatch;

.field private level:I

.field nEntries:I

.field private needDupKeyConversion:Z

.field private nextLRUNode:Lcom/sleepycat/je/tree/IN;

.field nodeId:J

.field private offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

.field private parent:Lcom/sleepycat/je/tree/IN;

.field private pinCount:I

.field private prevLRUNode:Lcom/sleepycat/je/tree/IN;

.field private provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 147
    nop

    .line 167
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;-><init>(IZ)V

    sput-object v0, Lcom/sleepycat/je/tree/IN;->EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 213
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lcom/sleepycat/je/tree/IN;->traceLevel:Ljava/util/logging/Level;

    .line 310
    const/16 v0, 0x3e8

    sput v0, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 398
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 292
    sget-object v0, Lcom/sleepycat/je/tree/IN;->EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->nextLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 319
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->prevLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 346
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/tree/IN;->lastFullVersion:J

    .line 387
    iput v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I

    .line 399
    sget-object v2, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/sleepycat/je/tree/IN;->init(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 400
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "identifierKey"    # [B
    .param p3, "capacity"    # I
    .param p4, "level"    # I

    .line 409
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 292
    sget-object v0, Lcom/sleepycat/je/tree/IN;->EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->nextLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 319
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->prevLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 346
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/IN;->lastFullVersion:J

    .line 387
    iput v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I

    .line 411
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextLocalNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/sleepycat/je/tree/IN;->generateLevel(Lcom/sleepycat/je/dbi/DatabaseId;I)I

    move-result v0

    .line 413
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/tree/IN;->init(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 416
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->initMemorySize()V

    .line 417
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 4
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 422
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 292
    sget-object v0, Lcom/sleepycat/je/tree/IN;->EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->nextLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 319
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->prevLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 346
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/tree/IN;->lastFullVersion:J

    .line 387
    iput v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I

    .line 428
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 429
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 430
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 431
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 432
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    .line 433
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    .line 435
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->DUMMY_LATCH_CONTEXT:Lcom/sleepycat/je/latch/LatchContext;

    .line 436
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isAlwaysLatchedExclusively()Z

    move-result v1

    .line 435
    invoke-static {v0, v1}, Lcom/sleepycat/je/latch/LatchFactory;->createSharedLatch(Lcom/sleepycat/je/latch/LatchContext;Z)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    .line 441
    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 442
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 444
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 445
    return-void
.end method

.method private addToMainCache()V
    .locals 1

    .line 2989
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 2991
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isDBIN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2992
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    .line 3001
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 3005
    :cond_0
    instance-of v0, p0, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;

    if-nez v0, :cond_1

    .line 3006
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;)V

    .line 3008
    :cond_1
    return-void
.end method

.method private adjustFileNumbers(J)Z
    .locals 13
    .param p1, "newBaseFileNumber"    # J

    .line 1860
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 1861
    .local v0, "oldBaseFileNumber":J
    const/4 v2, 0x0

    .line 1862
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 1864
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/IN;->getFileOffset(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1865
    goto :goto_3

    .line 1868
    :cond_0
    nop

    .line 1869
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/IN;->getFileNumberOffset(I)B

    move-result v3

    int-to-long v5, v3

    add-long/2addr v5, v0

    .line 1870
    .local v5, "curEntryFileNumber":J
    sub-long v7, v5, p1

    .line 1873
    .local v7, "newCurEntryFileNumberOffset":J
    const-wide/16 v9, 0x7f

    cmp-long v3, v7, v9

    if-lez v3, :cond_3

    .line 1874
    sub-long v9, v0, p1

    .line 1875
    .local v9, "undoOffset":J
    add-int/lit8 v3, v2, -0x4

    .line 1876
    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1878
    invoke-direct {p0, v3}, Lcom/sleepycat/je/tree/IN;->getFileOffset(I)I

    move-result v11

    if-ne v11, v4, :cond_1

    .line 1879
    goto :goto_2

    .line 1881
    :cond_1
    nop

    .line 1882
    invoke-direct {p0, v3}, Lcom/sleepycat/je/tree/IN;->getFileNumberOffset(I)B

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v11, v9

    long-to-int v11, v11

    int-to-byte v11, v11

    invoke-direct {p0, v3, v11}, Lcom/sleepycat/je/tree/IN;->setFileNumberOffset(IB)V

    .line 1877
    :goto_2
    add-int/lit8 v3, v3, -0x4

    goto :goto_1

    .line 1885
    .end local v3    # "j":I
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1887
    .end local v9    # "undoOffset":J
    :cond_3
    long-to-int v3, v7

    int-to-byte v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/tree/IN;->setFileNumberOffset(IB)V

    .line 1863
    .end local v5    # "curEntryFileNumber":J
    .end local v7    # "newCurEntryFileNumberOffset":J
    :goto_3
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 1891
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private assertPrintMemorySize()Z
    .locals 1

    .line 4919
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->printMemorySize()J

    .line 4920
    const/4 v0, 0x1

    return v0
.end method

.method private canDeleteExtinctSlot(I)Z
    .locals 3
    .param p1, "idx"    # I

    .line 5720
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5722
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 5730
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5731
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEntryKnownDeleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5732
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5730
    :goto_0
    return v1

    .line 5720
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private checkForNullLSN(I)Z
    .locals 7
    .param p1, "index"    # I

    .line 6015
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 6016
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    :cond_0
    move v1, v4

    :cond_1
    move v0, v1

    .local v0, "ok":Z
    goto :goto_0

    .line 6019
    .end local v0    # "ok":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    move v0, v1

    .line 6021
    .restart local v0    # "ok":Z
    :goto_0
    return v0
.end method

.method private clearEmbeddedLN(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1202
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x11

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1203
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1205
    return-void
.end method

.method private clearNoDataLN(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1233
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x21

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1234
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1236
    return-void
.end method

.method private commonInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2980
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2981
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->initMemorySize()V

    .line 2982
    return-void
.end method

.method private computeKeyPrefix(I)[B
    .locals 8
    .param p1, "excludeIdx"    # I

    .line 1627
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_4

    .line 1631
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1632
    .local v2, "firstIdx":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v3

    .line 1633
    .local v3, "curPrefixKey":[B
    array-length v4, v3

    .line 1643
    .local v4, "prefixLen":I
    const/4 v5, 0x0

    .line 1648
    .local v5, "byteOrdered":Z
    if-eqz v5, :cond_4

    .line 1649
    iget v6, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v6, v1

    .line 1650
    .local v6, "lastIdx":I
    if-ne v6, p1, :cond_2

    .line 1651
    add-int/lit8 v6, v6, -0x1

    .line 1653
    :cond_2
    if-le v6, v2, :cond_3

    .line 1654
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    .line 1655
    .local v1, "lastKey":[B
    invoke-static {v3, v4, v1}, Lcom/sleepycat/je/tree/Key;->getKeyPrefixLength([BI[B)I

    move-result v7

    .line 1658
    .local v7, "newPrefixLen":I
    if-ge v7, v4, :cond_3

    .line 1659
    move-object v3, v1

    .line 1660
    move v4, v7

    .line 1663
    .end local v1    # "lastKey":[B
    .end local v6    # "lastIdx":I
    .end local v7    # "newPrefixLen":I
    :cond_3
    goto :goto_3

    .line 1664
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v1, v6, :cond_7

    .line 1666
    if-ne v1, p1, :cond_5

    .line 1667
    goto :goto_2

    .line 1670
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v6

    .line 1672
    .local v6, "curKey":[B
    invoke-static {v3, v4, v6}, Lcom/sleepycat/je/tree/Key;->getKeyPrefixLength([BI[B)I

    move-result v7

    .line 1675
    .restart local v7    # "newPrefixLen":I
    if-ge v7, v4, :cond_6

    .line 1676
    move-object v3, v6

    .line 1677
    move v4, v7

    .line 1664
    .end local v6    # "curKey":[B
    .end local v7    # "newPrefixLen":I
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1682
    .end local v1    # "i":I
    :cond_7
    :goto_3
    new-array v1, v4, [B

    .line 1683
    .local v1, "ret":[B
    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    return-object v1

    .line 1628
    .end local v1    # "ret":[B
    .end local v2    # "firstIdx":I
    .end local v3    # "curPrefixKey":[B
    .end local v4    # "prefixLen":I
    .end local v5    # "byteOrdered":Z
    :cond_8
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static computeKeySuffix([B[B)[B
    .locals 4
    .param p0, "prefix"    # [B
    .param p1, "key"    # [B

    .line 1564
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    .line 1566
    .local v1, "prefixLen":I
    :goto_0
    if-nez v1, :cond_1

    .line 1567
    return-object p1

    .line 1570
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 1571
    .local v2, "suffixLen":I
    new-array v3, v2, [B

    .line 1572
    .local v3, "ret":[B
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1573
    return-object v3
.end method

.method private computeLsnOverhead()I
    .locals 2

    .line 4707
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    array-length v0, v0

    .line 4708
    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 4707
    :goto_0
    return v0
.end method

.method private convertDupKeys()V
    .locals 1

    .line 3020
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/IN;->needDupKeyConversion:Z

    if-nez v0, :cond_0

    .line 3021
    return-void

    .line 3023
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/IN;->needDupKeyConversion:Z

    .line 3024
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v0, p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertInKeys(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)V

    .line 3025
    return-void
.end method

.method private discardProvisionalObsolete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 5672
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v0, :cond_0

    .line 5673
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 5674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5676
    :cond_0
    return-void
.end method

.method private dumpSlotState(Ljava/lang/StringBuilder;ILcom/sleepycat/je/tree/BIN;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I
    .param p3, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 6446
    const-string v0, " kd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/tree/IN;->isEntryKnownDeleted(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6447
    const-string v0, "\" pd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/tree/IN;->isEntryPendingDeleted(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6448
    const-string v0, "\" dirty=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/tree/IN;->isDirty(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6449
    const-string v0, "\" embedded=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6450
    const-string v0, "\" noData=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/tree/IN;->isNoDataLN(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6451
    if-eqz p3, :cond_0

    .line 6452
    const-string v0, "\" logSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6453
    invoke-virtual {p3, p2}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSizeUnconditional(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6454
    invoke-virtual {p3, p2}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v0

    .line 6455
    .local v0, "vlsn":J
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6456
    const-string v2, "\" vlsn=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6459
    .end local v0    # "vlsn":J
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6460
    const-string v0, "\" expires=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6461
    nop

    .line 6462
    invoke-virtual {p3, p2}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v0

    invoke-virtual {p3}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v1

    .line 6461
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6464
    :cond_1
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6465
    return-void
.end method

.method private fetchINWithNoLatch(I[BLcom/sleepycat/je/tree/SearchResult;)Lcom/sleepycat/je/tree/IN;
    .locals 16
    .param p1, "idx"    # I
    .param p2, "searchKey"    # [B
    .param p3, "result"    # Lcom/sleepycat/je/tree/SearchResult;

    .line 2301
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2302
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    .line 2305
    .local v5, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v6

    .line 2307
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v7, 0x0

    .line 2308
    .local v7, "isMiss":Z
    const/4 v8, 0x0

    .line 2310
    .local v8, "success":Z
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sleepycat/je/tree/IN;

    .line 2312
    .local v9, "child":Lcom/sleepycat/je/tree/IN;
    if-nez v9, :cond_1b

    .line 2314
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v10

    .line 2316
    .local v10, "lsn":J
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1a

    .line 2326
    const/4 v0, 0x0

    .line 2328
    .local v0, "ohBytes":[B
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 2329
    invoke-virtual {v6, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 2328
    :cond_0
    move-object v12, v0

    .line 2332
    .end local v0    # "ohBytes":[B
    .local v12, "ohBytes":[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->pin()V

    .line 2334
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2336
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 2338
    if-eqz v12, :cond_1

    .line 2339
    invoke-virtual {v6, v5, v12}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    goto :goto_1

    .line 2341
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_1
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 2343
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v14

    .line 2342
    invoke-virtual {v0, v10, v11, v14}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisibleAtRecovery(JI)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    .line 2345
    .local v0, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v14

    .line 2347
    .local v14, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v15, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-interface {v14, v15}, Lcom/sleepycat/je/log/entry/LogEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sleepycat/je/tree/IN;

    move-object v9, v15

    .line 2349
    const/4 v7, 0x1

    .line 2352
    .end local v0    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v14    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :goto_1
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 2428
    iget v0, v1, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v2, v0, :cond_2

    .line 2429
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v14

    cmp-long v0, v14, v10

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2430
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2431
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    .line 2433
    :cond_2
    if-nez v3, :cond_5

    .line 2434
    nop

    .line 2548
    if-nez v8, :cond_4

    .line 2549
    if-eqz v9, :cond_3

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2434
    return-object v13

    .line 2437
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v0, v0}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    .line 2439
    .end local p1    # "idx":I
    .local v2, "idx":I
    if-eqz v2, :cond_6

    :try_start_2
    iget v0, v1, Lcom/sleepycat/je/tree/IN;->nEntries:I

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_9

    .line 2440
    :cond_6
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/IN;->isKeyInBounds([B)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_9

    .line 2441
    nop

    .line 2548
    if-nez v8, :cond_8

    .line 2549
    if-eqz v9, :cond_7

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2441
    return-object v13

    .line 2445
    :cond_9
    if-eqz v4, :cond_a

    .line 2446
    :try_start_3
    iput v2, v4, Lcom/sleepycat/je/tree/SearchResult;->index:I

    .line 2488
    :cond_a
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2489
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    move-object v9, v0

    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    goto :goto_3

    .line 2491
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_b
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v14
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v0, v14, v10

    if-eqz v0, :cond_e

    .line 2492
    nop

    .line 2548
    if-nez v8, :cond_d

    .line 2549
    if-eqz v9, :cond_c

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2492
    return-object v13

    .line 2494
    :cond_e
    if-eqz v12, :cond_11

    .line 2495
    :try_start_4
    invoke-virtual {v6, v1, v2, v12}, Lcom/sleepycat/je/evictor/OffHeapCache;->haveBINBytesChanged(Lcom/sleepycat/je/tree/IN;I[B)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_11

    .line 2496
    nop

    .line 2548
    if-nez v8, :cond_10

    .line 2549
    if-eqz v9, :cond_f

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2496
    return-object v13

    .line 2498
    :cond_11
    if-nez v12, :cond_14

    .line 2499
    :try_start_5
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ltz v0, :cond_14

    .line 2500
    nop

    .line 2548
    if-nez v8, :cond_13

    .line 2549
    if-eqz v9, :cond_12

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2500
    return-object v13

    .line 2503
    :cond_14
    :try_start_6
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v9, v0}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2505
    if-eqz v12, :cond_15

    .line 2506
    invoke-direct {v9, v1, v2}, Lcom/sleepycat/je/tree/IN;->postLoadInit(Lcom/sleepycat/je/tree/IN;I)V

    goto :goto_2

    .line 2508
    :cond_15
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v9, v0, v10, v11}, Lcom/sleepycat/je/tree/IN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2511
    :goto_2
    invoke-virtual {v1, v2, v9, v13}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    .line 2513
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2516
    :goto_3
    const/4 v8, 0x1

    .line 2548
    if-nez v8, :cond_17

    .line 2549
    if-eqz v9, :cond_16

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 2556
    goto :goto_9

    .line 2533
    :catch_0
    move-exception v0

    goto :goto_4

    .line 2529
    :catch_1
    move-exception v0

    goto :goto_5

    .line 2523
    :catch_2
    move-exception v0

    goto :goto_6

    .line 2518
    :catch_3
    move-exception v0

    goto :goto_7

    .line 2548
    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 2533
    :catch_4
    move-exception v0

    .line 2534
    .end local p1    # "idx":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "idx":I
    :goto_4
    :try_start_7
    new-instance v13, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v14, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2536
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v5, v14, v15, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "idx":I
    .end local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v7    # "isMiss":Z
    .end local v8    # "success":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "lsn":J
    .end local v12    # "ohBytes":[B
    .end local p2    # "searchKey":[B
    .end local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    throw v13

    .line 2529
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v7    # "isMiss":Z
    .restart local v8    # "success":Z
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "lsn":J
    .restart local v12    # "ohBytes":[B
    .restart local p1    # "idx":I
    .restart local p2    # "searchKey":[B
    .restart local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catch_5
    move-exception v0

    .line 2530
    .end local p1    # "idx":I
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    .restart local v2    # "idx":I
    :goto_5
    invoke-virtual {v1, v13, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 2531
    nop

    .end local v2    # "idx":I
    .end local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v7    # "isMiss":Z
    .end local v8    # "success":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "lsn":J
    .end local v12    # "ohBytes":[B
    .end local p2    # "searchKey":[B
    .end local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    throw v0

    .line 2523
    .end local v0    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    .restart local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v7    # "isMiss":Z
    .restart local v8    # "success":Z
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "lsn":J
    .restart local v12    # "ohBytes":[B
    .restart local p1    # "idx":I
    .restart local p2    # "searchKey":[B
    .restart local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catch_6
    move-exception v0

    .line 2524
    .end local p1    # "idx":I
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    .restart local v2    # "idx":I
    :goto_6
    new-instance v14, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v15, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IN is erased unexpectedly, implied corruption. "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2527
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v5, v15, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "idx":I
    .end local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v7    # "isMiss":Z
    .end local v8    # "success":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "lsn":J
    .end local v12    # "ohBytes":[B
    .end local p2    # "searchKey":[B
    .end local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    throw v14

    .line 2518
    .end local v0    # "e":Lcom/sleepycat/je/log/ErasedException;
    .restart local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v7    # "isMiss":Z
    .restart local v8    # "success":Z
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "lsn":J
    .restart local v12    # "ohBytes":[B
    .restart local p1    # "idx":I
    .restart local p2    # "searchKey":[B
    .restart local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catch_7
    move-exception v0

    .line 2519
    .end local p1    # "idx":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "idx":I
    :goto_7
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v13, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2521
    const/4 v14, 0x0

    invoke-virtual {v1, v14, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v5, v13, v14, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "idx":I
    .end local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v7    # "isMiss":Z
    .end local v8    # "success":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "lsn":J
    .end local v12    # "ohBytes":[B
    .end local p2    # "searchKey":[B
    .end local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2548
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "idx":I
    .restart local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v7    # "isMiss":Z
    .restart local v8    # "success":Z
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "lsn":J
    .restart local v12    # "ohBytes":[B
    .restart local p2    # "searchKey":[B
    .restart local p3    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catchall_1
    move-exception v0

    :goto_8
    if-nez v8, :cond_19

    .line 2549
    if-eqz v9, :cond_18

    .line 2550
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2552
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2555
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    throw v0

    .line 2317
    .end local v2    # "idx":I
    .end local v12    # "ohBytes":[B
    .restart local p1    # "idx":I
    :cond_1a
    const-string v0, "NULL_LSN in upper IN"

    invoke-virtual {v1, v0, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2559
    .end local v10    # "lsn":J
    .end local p1    # "idx":I
    .restart local v2    # "idx":I
    :cond_1b
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v3

    if-ne v0, v3, :cond_1c

    .line 2561
    invoke-virtual {v9, v5, v7}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2563
    return-object v9

    .line 2559
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2302
    .end local v2    # "idx":I
    .end local v5    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v7    # "isMiss":Z
    .end local v8    # "success":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "idx":I
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2301
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private fetchLN(ILcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/Node;
    .locals 16
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p3, "dupConvert"    # Z

    .line 2760
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2762
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2766
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->isEntryKnownDeleted(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2767
    return-object v4

    .line 2770
    :cond_0
    move-object v5, v1

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 2771
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    .line 2772
    .local v6, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v7

    .line 2773
    .local v7, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v8, 0x0

    .line 2775
    .local v8, "isMiss":Z
    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sleepycat/je/tree/Node;

    .line 2778
    .local v9, "child":Lcom/sleepycat/je/tree/Node;
    if-nez v9, :cond_9

    .line 2780
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v10

    .line 2782
    .local v10, "lsn":J
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_8

    .line 2791
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2792
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_7

    .line 2797
    :cond_1
    const/4 v0, 0x0

    .line 2799
    .local v0, "lnSlotKey":[B
    :try_start_0
    invoke-virtual {v7, v5, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v12

    move-object v9, v12

    .line 2801
    if-nez v9, :cond_3

    .line 2802
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v12

    .line 2804
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v13

    .line 2803
    invoke-virtual {v12, v10, v11, v13}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisibleAtRecovery(JI)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v12

    .line 2807
    .local v12, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    nop

    .line 2808
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v13

    .line 2807
    invoke-virtual {v1, v2, v13}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 2810
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v13

    .line 2812
    .local v13, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    instance-of v14, v13, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v14, :cond_2

    .line 2814
    nop

    .line 2815
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v14

    check-cast v14, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 2817
    .local v14, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    iget-object v15, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v14, v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2819
    invoke-virtual {v14}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v15

    move-object v0, v15

    .line 2821
    sget-object v15, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v15, :cond_2

    sget-object v15, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v15, :cond_2

    sget-object v15, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v15, :cond_2

    sget-object v15, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v15, :cond_2

    .line 2825
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri1LRU(Lcom/sleepycat/je/tree/IN;)V

    .line 2829
    .end local v14    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    :cond_2
    iget-object v14, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-interface {v13, v14}, Lcom/sleepycat/je/log/entry/LogEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sleepycat/je/tree/Node;

    move-object v9, v14

    .line 2831
    const/4 v8, 0x1

    .line 2834
    .end local v12    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v13    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :cond_3
    iget-object v12, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v9, v12, v10, v11}, Lcom/sleepycat/je/tree/Node;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2835
    invoke-virtual {v1, v2, v9, v0}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2879
    .end local v0    # "lnSlotKey":[B
    goto/16 :goto_1

    .line 2875
    :catch_0
    move-exception v0

    .line 2876
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v12, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2878
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v6, v12, v13, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2871
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2872
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    invoke-virtual {v1, v4, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 2873
    throw v0

    .line 2856
    .end local v0    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :catch_2
    move-exception v0

    .line 2861
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    iget-object v12, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2862
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v13

    .line 2861
    invoke-virtual {v6, v12, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v12

    sget-object v13, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v12, v13, :cond_4

    .line 2869
    return-object v4

    .line 2864
    :cond_4
    new-instance v12, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v13, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LN is erased unexpectedly, implied corruption. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2867
    invoke-virtual {v1, v4, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v6, v13, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2837
    .end local v0    # "e":Lcom/sleepycat/je/log/ErasedException;
    :catch_3
    move-exception v0

    .line 2845
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2846
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->isProbablyExpired(I)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2848
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v13

    .line 2847
    invoke-virtual {v6, v12, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v12

    sget-object v13, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v12, v13, :cond_5

    goto :goto_0

    .line 2850
    :cond_5
    new-instance v12, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v13, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2852
    invoke-virtual {v1, v4, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v6, v13, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2854
    :cond_6
    :goto_0
    return-object v4

    .line 2793
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    const-string v0, "May not fetch immediately obsolete LN"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2783
    :cond_8
    const-string v0, "NULL_LSN without KnownDeleted"

    invoke-virtual {v1, v0, v10, v11, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2882
    .end local v10    # "lsn":J
    :cond_9
    :goto_1
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2883
    move-object v0, v9

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 2885
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    sget-object v4, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v4, :cond_a

    sget-object v4, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    if-eq v3, v4, :cond_a

    .line 2887
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/tree/LN;->setFetchedCold(Z)V

    .line 2890
    :cond_a
    invoke-virtual {v7, v5, v2, v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeRedundantLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;)V

    .line 2893
    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_b
    invoke-virtual {v9, v6, v8}, Lcom/sleepycat/je/tree/Node;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2895
    return-object v9

    .line 2763
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v6    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v7    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "isMiss":Z
    .end local v9    # "child":Lcom/sleepycat/je/tree/Node;
    :cond_c
    const-string v0, "EX-latch not held before fetch"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2760
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static generateLevel(Lcom/sleepycat/je/dbi/DatabaseId;I)I
    .locals 1
    .param p0, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p1, "newLevel"    # I

    .line 814
    sget-object v0, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/high16 v0, 0x20000

    or-int/2addr v0, p1

    return v0

    .line 817
    :cond_0
    const/high16 v0, 0x10000

    or-int/2addr v0, p1

    return v0
.end method

.method private get3ByteInt(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 1917
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1918
    .local p1, "ret":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    .line 1919
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    .line 1920
    const v0, 0xffffff

    if-ne p1, v0, :cond_0

    .line 1921
    const/4 p1, -0x1

    .line 1924
    :cond_0
    return p1
.end method

.method private getEntryInMemorySize(I)J
    .locals 5
    .param p1, "idx"    # I

    .line 4720
    const-wide/16 v0, 0x0

    .line 4726
    .local v0, "ret":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INKeyRep;->accountsForKeyByteMemUsage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4732
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 4733
    .local v2, "key":[B
    if-eqz v2, :cond_0

    .line 4734
    array-length v3, v2

    invoke-static {v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 4738
    .end local v2    # "key":[B
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/Node;

    .line 4739
    .local v2, "target":Lcom/sleepycat/je/tree/Node;
    if-eqz v2, :cond_1

    .line 4740
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 4742
    :cond_1
    return-wide v0
.end method

.method private getFileNumberOffset(I)B
    .locals 1
    .param p1, "offset"    # I

    .line 1899
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private getFileOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1907
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->get3ByteInt(I)I

    move-result v0

    return v0
.end method

.method private getNEntriesToWrite(Z)I
    .locals 3
    .param p1, "deltasOnly"    # Z

    .line 5695
    if-eqz p1, :cond_0

    .line 5696
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNDeltas()I

    move-result v0

    return v0

    .line 5698
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5699
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    return v0

    .line 5701
    :cond_1
    const/4 v0, 0x0

    .line 5702
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v1, v2, :cond_3

    .line 5703
    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/IN;->canDeleteExtinctSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5704
    goto :goto_1

    .line 5706
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 5702
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5708
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method private idKeyIsSlotKey()Z
    .locals 1

    .line 1435
    const/4 v0, 0x1

    return v0
.end method

.method private initMemorySize()V
    .locals 2

    .line 4656
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/tree/INKeyRep;->compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4657
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    .line 4658
    return-void
.end method

.method private insertKey(I[B[B)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B

    .line 1423
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    invoke-virtual {p0, p2, v1}, Lcom/sleepycat/je/tree/IN;->setIdentifierKey([BZ)V

    .line 1427
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sleepycat/je/tree/IN;->setKey(I[B[BZ)Z

    move-result v0

    return v0
.end method

.method public static isEmbeddedLN(B)Z
    .locals 1
    .param p0, "state"    # B

    .line 1184
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNoDataLN(B)Z
    .locals 1
    .param p0, "state"    # B

    .line 1215
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isStateKnownDeleted(B)Z
    .locals 1
    .param p0, "state"    # B

    .line 1166
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isStatePendingDeleted(B)Z
    .locals 1
    .param p0, "state"    # B

    .line 1173
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logEntry(Lcom/sleepycat/je/log/entry/INLogEntry;Lcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J
    .locals 7
    .param p1, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p2, "backgroundIO"    # Z
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "Lcom/sleepycat/je/tree/BIN;",
            ">;",
            "Lcom/sleepycat/je/log/Provisional;",
            "Z",
            "Lcom/sleepycat/je/tree/IN;",
            ")J"
        }
    .end annotation

    .line 5414
    .local p0, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J
    .locals 22
    .param p0, "node"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "allowDeltas"    # Z
    .param p3, "allowCompress"    # Z
    .param p4, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p5, "backgroundIO"    # Z
    .param p6, "parent"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "*>;ZZ",
            "Lcom/sleepycat/je/log/Provisional;",
            "Z",
            "Lcom/sleepycat/je/tree/IN;",
            ")J"
        }
    .end annotation

    .line 5442
    .local p1, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5443
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5444
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5445
    :cond_5
    :goto_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_3
    if-nez p1, :cond_7

    move v6, v3

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    if-eq v5, v6, :cond_23

    .line 5447
    if-eqz v0, :cond_8

    .line 5448
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    goto :goto_5

    :cond_8
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    .line 5450
    .local v5, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :goto_5
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    .line 5452
    .local v6, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    sget-object v7, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    if-ne v1, v7, :cond_a

    .line 5453
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    move v7, v4

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v3

    .line 5455
    .local v7, "countObsoleteNow":Z
    :goto_7
    if-eqz v0, :cond_b

    .line 5456
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v8

    goto :goto_8

    :cond_b
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    move v8, v3

    goto :goto_8

    :cond_c
    move v8, v4

    .line 5458
    .local v8, "isBin":Z
    :goto_8
    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    move-object v10, v0

    check-cast v10, Lcom/sleepycat/je/tree/BIN;

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    .line 5462
    .local v10, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_9
    if-eqz v8, :cond_17

    .line 5463
    if-eqz p1, :cond_e

    .line 5468
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v3

    move-object/from16 v11, p1

    .local v3, "isDelta":Z
    goto :goto_e

    .line 5471
    .end local v3    # "isDelta":Z
    :cond_e
    if-eqz p3, :cond_f

    .line 5472
    invoke-virtual {v6, v10, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 5475
    :cond_f
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz p2, :cond_10

    .line 5476
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_a

    :cond_10
    move v11, v4

    goto :goto_b

    :cond_11
    :goto_a
    move v11, v3

    .line 5479
    .local v11, "isDelta":Z
    :goto_b
    if-eqz v11, :cond_13

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->isDeltaProhibited()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    :cond_12
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5482
    :cond_13
    :goto_c
    if-eqz p3, :cond_14

    if-nez v11, :cond_14

    .line 5483
    invoke-virtual {v6, v10, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 5490
    :cond_14
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5491
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->logDirtyChildren()V

    .line 5494
    :cond_15
    if-eqz v11, :cond_16

    new-instance v3, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    invoke-direct {v3, v10}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;-><init>(Lcom/sleepycat/je/tree/BIN;)V

    goto :goto_d

    :cond_16
    new-instance v3, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-direct {v3, v10}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Lcom/sleepycat/je/tree/IN;)V

    :goto_d
    move/from16 v21, v11

    move-object v11, v3

    move/from16 v3, v21

    .end local p1    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .local v3, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    goto :goto_e

    .line 5499
    .end local v3    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .end local v11    # "isDelta":Z
    .restart local p1    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    :cond_17
    if-eqz v0, :cond_22

    .line 5501
    const/4 v3, 0x0

    .line 5502
    .local v3, "isDelta":Z
    new-instance v11, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-direct {v11, v0}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Lcom/sleepycat/je/tree/IN;)V

    .line 5505
    .end local p1    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .local v11, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    :goto_e
    new-instance v12, Lcom/sleepycat/je/log/LogParams;

    invoke-direct {v12}, Lcom/sleepycat/je/log/LogParams;-><init>()V

    .line 5506
    .local v12, "params":Lcom/sleepycat/je/log/LogParams;
    iput-object v11, v12, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 5507
    iput-object v1, v12, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 5508
    sget-object v13, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    iput-object v13, v12, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 5509
    iput-object v5, v12, Lcom/sleepycat/je/log/LogParams;->nodeDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5510
    move/from16 v13, p5

    iput-boolean v13, v12, Lcom/sleepycat/je/log/LogParams;->backgroundIO:Z

    .line 5523
    if-eqz v3, :cond_18

    const-wide/16 v16, -0x1

    goto :goto_f

    .line 5524
    :cond_18
    invoke-virtual {v11}, Lcom/sleepycat/je/log/entry/INLogEntry;->getPrevFullLsn()J

    move-result-wide v16

    :goto_f
    move-wide/from16 v18, v16

    .line 5526
    .local v18, "oldLsn":J
    invoke-virtual {v11}, Lcom/sleepycat/je/log/entry/INLogEntry;->getPrevDeltaLsn()J

    move-result-wide v14

    .line 5541
    .local v14, "auxOldLsn":J
    if-eqz v7, :cond_1a

    .line 5542
    move-object/from16 v20, v10

    move-wide/from16 v9, v18

    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v18    # "oldLsn":J
    .local v9, "oldLsn":J
    .local v20, "bin":Lcom/sleepycat/je/tree/BIN;
    iput-wide v9, v12, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    .line 5543
    iput-wide v14, v12, Lcom/sleepycat/je/log/LogParams;->auxOldLsn:J

    .line 5544
    if-eqz v0, :cond_19

    iget-object v4, v0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    :goto_10
    iput-object v4, v12, Lcom/sleepycat/je/log/LogParams;->packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    goto :goto_11

    .line 5541
    .end local v9    # "oldLsn":J
    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v18    # "oldLsn":J
    :cond_1a
    move-object/from16 v20, v10

    move-wide/from16 v9, v18

    .line 5549
    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v18    # "oldLsn":J
    .restart local v9    # "oldLsn":J
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_11
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v4

    .line 5551
    .local v4, "item":Lcom/sleepycat/je/log/LogItem;
    if-eqz v0, :cond_1b

    .line 5552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 5555
    :cond_1b
    if-eqz v7, :cond_1c

    .line 5556
    if-eqz v0, :cond_1d

    .line 5557
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->discardProvisionalObsolete()V

    goto :goto_12

    .line 5559
    :cond_1c
    if-eqz v2, :cond_1d

    .line 5560
    invoke-virtual {v2, v0, v9, v10}, Lcom/sleepycat/je/tree/IN;->trackProvisionalObsolete(Lcom/sleepycat/je/tree/IN;J)V

    .line 5561
    invoke-virtual {v2, v0, v14, v15}, Lcom/sleepycat/je/tree/IN;->trackProvisionalObsolete(Lcom/sleepycat/je/tree/IN;J)V

    .line 5569
    :cond_1d
    :goto_12
    if-eqz v20, :cond_1f

    .line 5574
    if-eqz v3, :cond_1e

    .line 5575
    iget-wide v1, v4, Lcom/sleepycat/je/log/LogItem;->lsn:J

    move/from16 p1, v3

    move-object/from16 v3, v20

    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    .local p1, "isDelta":Z
    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastDeltaLsn(J)V

    goto :goto_13

    .line 5577
    .end local p1    # "isDelta":Z
    .local v3, "isDelta":Z
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_1e
    move/from16 p1, v3

    move-object/from16 v3, v20

    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "isDelta":Z
    iget-wide v1, v4, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastFullLsn(J)V

    .line 5578
    const-wide/16 v1, -0x1

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastDeltaLsn(J)V

    .line 5581
    :goto_13
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/tree/BIN;->setProhibitNextDelta(Z)V

    goto :goto_14

    .line 5583
    .end local p1    # "isDelta":Z
    .local v3, "isDelta":Z
    .restart local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_1f
    move/from16 p1, v3

    move-object/from16 v3, v20

    .end local v20    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "isDelta":Z
    if-eqz v0, :cond_20

    .line 5584
    iget-wide v1, v4, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/IN;->setLastFullLsn(J)V

    .line 5587
    :cond_20
    :goto_14
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    .line 5589
    .local v1, "evictor":Lcom/sleepycat/je/evictor/Evictor;
    if-eqz v0, :cond_21

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor;->getUseDirtyLRUSet()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5610
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri1LRU(Lcom/sleepycat/je/tree/IN;)V

    .line 5613
    :cond_21
    move-object v2, v1

    .end local v1    # "evictor":Lcom/sleepycat/je/evictor/Evictor;
    .local v2, "evictor":Lcom/sleepycat/je/evictor/Evictor;
    iget-wide v0, v4, Lcom/sleepycat/je/log/LogItem;->lsn:J

    return-wide v0

    .line 5499
    .end local v2    # "evictor":Lcom/sleepycat/je/evictor/Evictor;
    .end local v3    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v4    # "item":Lcom/sleepycat/je/log/LogItem;
    .end local v9    # "oldLsn":J
    .end local v11    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .end local v12    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v14    # "auxOldLsn":J
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local p1, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5445
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v7    # "countObsoleteNow":Z
    .end local v8    # "isBin":Z
    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_23
    move/from16 v13, p5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static makeFetchErrorMsg(Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JBJ)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "lsn"    # J
    .param p4, "state"    # B
    .param p5, "expirationTime"    # J

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3080
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 3081
    const-string v1, "fetchRoot of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3082
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3083
    const-string v1, "fetchLN of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3085
    :cond_1
    const-string v1, "fetchIN of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    :goto_0
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 3089
    const-string v1, "null lsn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3091
    :cond_2
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    :goto_1
    if-eqz p1, :cond_3

    .line 3095
    const-string v1, " parent IN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3096
    const-string v1, " IN class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    const-string v1, " lastFullLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    const-string v1, " lastLoggedLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const-string v1, " parent.getDirty()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3104
    :cond_3
    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3106
    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-eqz v1, :cond_4

    .line 3109
    invoke-static {p5, p6}, Lcom/sleepycat/je/dbi/TTL;->formatExpirationTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3111
    :cond_4
    const-string v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    :goto_2
    if-eqz p0, :cond_5

    .line 3115
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private mutateToLongArray(IJ)V
    .locals 5
    .param p1, "idx"    # I
    .param p2, "value"    # J

    .line 1928
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x2

    .line 1929
    .local v0, "nElts":I
    new-array v1, v0, [J

    .line 1930
    .local v1, "newArr":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1931
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1933
    .end local v2    # "i":I
    :cond_0
    aput-wide p2, v1, p1

    .line 1934
    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    .line 1935
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 1936
    return-void
.end method

.method private optionalLogProvisional(Lcom/sleepycat/je/tree/IN;Z)J
    .locals 9
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "allowCompress"    # Z

    .line 5399
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5400
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v0

    return-wide v0

    .line 5402
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p2

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method private postLoadInit(Lcom/sleepycat/je/tree/IN;I)V
    .locals 2
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "idx"    # I

    .line 2955
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2957
    iget-object v0, p1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->commonInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2958
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->addToMainCache()V

    .line 2960
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2961
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setFetchedCold(Z)V

    .line 2962
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setFetchedColdOffHeap(Z)V

    .line 2965
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->postBINLoad(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/BIN;)V

    .line 2966
    return-void

    .line 2955
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private put3ByteInt(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 1911
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    int-to-byte v2, p2

    aput-byte v2, v0, p1

    .line 1912
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1913
    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1914
    return-void
.end method

.method private recalcSuffixes([B[B[BI)V
    .locals 5
    .param p1, "newPrefix"    # [B
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "idx"    # I

    .line 1589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v0, v1, :cond_3

    .line 1591
    if-ne v0, p4, :cond_0

    move-object v1, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    .line 1593
    .local v1, "curKey":[B
    :goto_1
    const/4 v2, 0x0

    .line 1595
    .local v2, "curData":[B
    if-ne v0, p4, :cond_1

    .line 1596
    move-object v2, p3

    goto :goto_2

    .line 1597
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1598
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/tree/INKeyRep;->getData(I)[B

    move-result-object v2

    .line 1601
    :cond_2
    :goto_2
    invoke-static {p1, v1}, Lcom/sleepycat/je/tree/IN;->computeKeySuffix([B[B)[B

    move-result-object v3

    .line 1603
    .local v3, "suffix":[B
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v4, v0, v3, v2, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1589
    .end local v1    # "curKey":[B
    .end local v2    # "curData":[B
    .end local v3    # "suffix":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1606
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setKeyPrefix([B)V

    .line 1607
    return-void
.end method

.method private setEmbeddedLN(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1192
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1193
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1195
    return-void
.end method

.method private setFileNumberOffset(IB)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "fileNumberOffset"    # B

    .line 1895
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    aput-byte p2, v0, p1

    .line 1896
    return-void
.end method

.method private setFileOffset(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "fileOffset"    # I

    .line 1903
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/tree/IN;->put3ByteInt(II)V

    .line 1904
    return-void
.end method

.method private setHasCachedChildrenFlag(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 977
    if-eqz p1, :cond_0

    .line 978
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 980
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 982
    :goto_0
    return-void
.end method

.method private setIsRootFlag(Z)V
    .locals 1
    .param p1, "isRoot"    # Z

    .line 965
    if-eqz p1, :cond_0

    .line 966
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 968
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 970
    :goto_0
    return-void
.end method

.method private setLsn(IJZ)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "lsn"    # J
    .param p4, "check"    # Z

    .line 1786
    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sleepycat/je/tree/IN;->shouldUpdateLsn(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v0

    .line 1791
    .local v0, "oldSize":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 1793
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 1794
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v2, v1, p1

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 1795
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1797
    .end local v0    # "oldSize":I
    :cond_1
    return-void
.end method

.method private setOffHeapBINDirty(IZ)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "val"    # Z

    .line 2141
    if-eqz p2, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    goto :goto_0

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 2146
    :goto_0
    return-void
.end method

.method private setOffHeapBINPri2(IZ)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "val"    # Z

    .line 2153
    if-eqz p2, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    goto :goto_0

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x41

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 2158
    :goto_0
    return-void
.end method

.method private shiftEntriesLeft(I)V
    .locals 2
    .param p1, "byHowMuch"    # I

    .line 4601
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/je/tree/IN;->copyEntries(III)V

    .line 4602
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v0, v1, :cond_0

    .line 4603
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->clearEntry(I)V

    .line 4602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4605
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4606
    return-void
.end method

.method private shiftEntriesRight(I)V
    .locals 2
    .param p1, "index"    # I

    .line 4585
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/IN;->copyEntries(III)V

    .line 4586
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearEntry(I)V

    .line 4587
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 4588
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4589
    return-void
.end method

.method private final shouldUpdateLsn(JJ)Z
    .locals 5
    .param p1, "oldLsn"    # J
    .param p3, "newLsn"    # J

    .line 1966
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 1967
    const/4 v0, 0x0

    return v0

    .line 1970
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1971
    return v3

    .line 1974
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v2

    const-string v4, " newLsn = "

    if-eqz v2, :cond_3

    .line 1975
    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1976
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeferredWrite LSN update not allowed oldLsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1978
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1979
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1976
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1982
    :cond_3
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1989
    :cond_4
    :goto_0
    return v3

    .line 1983
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LSN update not allowed oldLsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1985
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1986
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private traceDelete(Ljava/util/logging/Level;I)V
    .locals 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "index"    # I

    .line 6564
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 6565
    .local v0, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6567
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6568
    const-string v2, " in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6569
    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6570
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6571
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 6572
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 6574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6571
    invoke-static {v0, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6576
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private traceSplit(Ljava/util/logging/Level;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;JJJIII)V
    .locals 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "newSibling"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "parentLsn"    # J
    .param p6, "myNewLsn"    # J
    .param p8, "newSiblingLsn"    # J
    .param p10, "splitIndex"    # I
    .param p11, "idKeyIndex"    # I
    .param p12, "childIndex"    # I

    .line 6529
    move-object v0, p1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    .line 6530
    .local v1, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6532
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Split:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6533
    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6534
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6535
    const-string v3, " child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6536
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6537
    const-string v3, " newSibling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6538
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6539
    const-string v3, " parentLsn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6540
    invoke-static {p4, p5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6541
    const-string v3, " childLsn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6542
    invoke-static/range {p6 .. p7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6543
    const-string v3, " newSiblingLsn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6544
    invoke-static/range {p8 .. p9}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6545
    const-string v3, " splitIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6546
    move/from16 v3, p10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6547
    const-string v4, " idKeyIdx="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6548
    move/from16 v4, p11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6549
    const-string v5, " childIdx="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6550
    move/from16 v5, p12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6551
    move-object v6, p0

    iget-object v7, v6, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 6552
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    .line 6554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6551
    invoke-static {v1, v7, p1, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 6530
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move-object v6, p0

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    .line 6556
    :goto_0
    return-void
.end method

.method private updateKey(I[B[B)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B

    .line 1464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/tree/IN;->setKey(I[B[BZ)Z

    move-result v0

    return v0
.end method

.method private updateLNSlotKey(I[B[B)Z
    .locals 5
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B

    .line 1342
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1344
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v0

    .line 1346
    .local v0, "haveEmbeddedData":Z
    if-nez p3, :cond_0

    .line 1347
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1348
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearEmbeddedLN(I)V

    .line 1349
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearNoDataLN(I)V

    goto :goto_0

    .line 1352
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1353
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->setEmbeddedLN(I)V

    .line 1355
    :cond_1
    array-length v1, p3

    if-nez v1, :cond_2

    .line 1356
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setNoDataLN(I)V

    goto :goto_0

    .line 1358
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearNoDataLN(I)V

    .line 1368
    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1369
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowsKeyUpdates()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1370
    invoke-static {v3}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->needsConversion(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1371
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1373
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1374
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sleepycat/je/tree/IN;->setKey(I[B[BZ)Z

    move-result v1

    return v1

    .line 1376
    :cond_5
    if-eqz v0, :cond_7

    .line 1384
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1385
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v4, v3, p1

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    .line 1387
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INKeyRep$Type;

    .line 1388
    .local v3, "oldRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v4, p1, p3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->setData(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1389
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 1391
    .end local v3    # "oldRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    :cond_7
    if-eqz p3, :cond_9

    array-length v3, p3

    if-eqz v3, :cond_9

    .line 1397
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1398
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v4, v3, p1

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    .line 1400
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3, p1, v1}, Lcom/sleepycat/je/tree/INKeyRep;->getKey(IZ)[B

    move-result-object p2

    .line 1401
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INKeyRep$Type;

    .line 1402
    .restart local v3    # "oldRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v4, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1403
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 1406
    .end local v3    # "oldRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    :cond_9
    return v1

    .line 1342
    .end local v0    # "haveEmbeddedData":Z
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private updateSplitSlot(ILcom/sleepycat/je/tree/IN;J[B)V
    .locals 8
    .param p1, "idx"    # I
    .param p2, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "lsn"    # J
    .param p5, "key"    # [B

    .line 4544
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4546
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v0

    .line 4548
    .local v0, "oldSize":J
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 4549
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 4551
    if-nez p1, :cond_2

    .line 4552
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 4553
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v6

    .line 4554
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v7

    .line 4552
    move-object v3, p5

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/tree/INKeyRep;->compareKeys([B[BIZLjava/util/Comparator;)I

    move-result v2

    .line 4556
    .local v2, "s":I
    const/4 v3, 0x0

    .line 4557
    .local v3, "multiSlotChange":Z
    if-gez v2, :cond_0

    .line 4558
    const/4 v4, 0x0

    invoke-direct {p0, p1, p5, v4}, Lcom/sleepycat/je/tree/IN;->updateKey(I[B[B)Z

    move-result v3

    .line 4561
    :cond_0
    if-eqz v3, :cond_1

    .line 4562
    iget-wide v4, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_0

    .line 4564
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v4

    .line 4565
    .local v4, "newSize":J
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4567
    .end local v2    # "s":I
    .end local v3    # "multiSlotChange":Z
    .end local v4    # "newSize":J
    :goto_0
    goto :goto_1

    .line 4568
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v2

    .line 4569
    .local v2, "newSize":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4572
    .end local v2    # "newSize":J
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4574
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 4575
    return-void

    .line 4574
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 4544
    .end local v0    # "oldSize":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    .locals 2
    .param p1, "acc"    # Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    .line 5208
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->processIN(Lcom/sleepycat/je/tree/IN;Ljava/lang/Long;I)V

    .line 5209
    return-void
.end method

.method adjustCursors(Lcom/sleepycat/je/tree/IN;II)V
    .locals 0
    .param p1, "newSibling"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "newSiblingLow"    # I
    .param p3, "newSiblingHigh"    # I

    .line 4613
    return-void
.end method

.method adjustCursorsForInsert(I)V
    .locals 0
    .param p1, "insertIndex"    # I

    .line 4617
    return-void
.end method

.method appendEntryFromOtherNode(Lcom/sleepycat/je/tree/IN;I)V
    .locals 19
    .param p1, "from"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "fromIdx"    # I

    .line 4465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4467
    iget-object v3, v1, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/Node;

    .line 4468
    .local v3, "target":Lcom/sleepycat/je/tree/Node;
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v4

    .line 4469
    .local v4, "ohBinId":I
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v5

    .line 4470
    .local v5, "ohBinPri2":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v6

    .line 4471
    .local v6, "ohBinDirty":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v7

    .line 4472
    .local v7, "lsn":J
    iget-object v9, v1, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v9, v9, v2

    .line 4473
    .local v9, "state":B
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v10

    .line 4474
    .local v10, "key":[B
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4475
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getData(I)[B

    move-result-object v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 4477
    .local v11, "data":[B
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v12

    int-to-long v12, v12

    .line 4479
    .local v12, "oldSize":J
    iget v14, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 4481
    sub-int/2addr v14, v15

    .line 4487
    .local v14, "idx":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 4488
    move-object v15, v3

    check-cast v15, Lcom/sleepycat/je/tree/IN;

    .line 4489
    .local v15, "in":Lcom/sleepycat/je/tree/IN;
    iget-object v1, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v15, v1}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 4490
    invoke-virtual {v0, v14, v3}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 4491
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 4492
    .end local v15    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_1

    .line 4493
    :cond_1
    invoke-virtual {v0, v14, v3}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 4496
    :goto_1
    invoke-direct {v0, v14, v10, v11}, Lcom/sleepycat/je/tree/IN;->insertKey(I[B[B)Z

    move-result v1

    .line 4499
    .local v1, "multiSlotChange":Z
    invoke-virtual {v0, v14, v7, v8}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 4501
    iget-object v15, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aput-byte v9, v15, v14

    .line 4503
    if-ltz v4, :cond_2

    .line 4504
    invoke-virtual {v0, v14, v4, v5, v6}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V

    .line 4505
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v15

    invoke-virtual {v15, v4, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->setOwner(ILcom/sleepycat/je/tree/IN;)V

    .line 4508
    :cond_2
    if-eqz v1, :cond_3

    .line 4509
    move v15, v1

    .end local v1    # "multiSlotChange":Z
    .local v15, "multiSlotChange":Z
    iget-wide v1, v0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "target":Lcom/sleepycat/je/tree/Node;
    .end local v4    # "ohBinId":I
    .local v17, "target":Lcom/sleepycat/je/tree/Node;
    .local v18, "ohBinId":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_2

    .line 4511
    .end local v15    # "multiSlotChange":Z
    .end local v17    # "target":Lcom/sleepycat/je/tree/Node;
    .end local v18    # "ohBinId":I
    .restart local v1    # "multiSlotChange":Z
    .restart local v3    # "target":Lcom/sleepycat/je/tree/Node;
    .restart local v4    # "ohBinId":I
    :cond_3
    move v15, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v1    # "multiSlotChange":Z
    .end local v3    # "target":Lcom/sleepycat/je/tree/Node;
    .end local v4    # "ohBinId":I
    .restart local v15    # "multiSlotChange":Z
    .restart local v17    # "target":Lcom/sleepycat/je/tree/Node;
    .restart local v18    # "ohBinId":I
    invoke-direct {v0, v14}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v1

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 4512
    .local v1, "newSize":J
    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4515
    .end local v1    # "newSize":J
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4516
    return-void

    .line 4465
    .end local v5    # "ohBinPri2":Z
    .end local v6    # "ohBinDirty":Z
    .end local v7    # "lsn":J
    .end local v9    # "state":B
    .end local v10    # "key":[B
    .end local v11    # "data":[B
    .end local v12    # "oldSize":J
    .end local v14    # "idx":I
    .end local v15    # "multiSlotChange":Z
    .end local v17    # "target":Lcom/sleepycat/je/tree/Node;
    .end local v18    # "ohBinId":I
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method final applyDeltaSlot(ILcom/sleepycat/je/tree/Node;JIB[B[B)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "lsn"    # J
    .param p5, "lastLoggedSize"    # I
    .param p6, "state"    # B
    .param p7, "key"    # [B
    .param p8, "data"    # [B

    .line 3605
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3606
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3607
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3609
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-nez p8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3610
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3612
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 3614
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/sleepycat/je/tree/IN;->setLsn(IJZ)V

    .line 3615
    invoke-virtual {p0, p1, p5}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3616
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3618
    invoke-direct {p0, p1, p7, p8}, Lcom/sleepycat/je/tree/IN;->updateLNSlotKey(I[B[B)Z

    .line 3620
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v0

    invoke-static {p6}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(B)Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 3621
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isNoDataLN(I)Z

    move-result v0

    invoke-static {p6}, Lcom/sleepycat/je/tree/IN;->isNoDataLN(B)Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 3623
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aput-byte p6, v0, p1

    .line 3625
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3626
    return-void

    .line 3621
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3620
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3610
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3606
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3605
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final attachNode(ILcom/sleepycat/je/tree/Node;[B)V
    .locals 7
    .param p1, "idx"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "newKey"    # [B

    .line 4020
    instance-of v0, p2, Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4022
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v0

    .line 4025
    .local v0, "oldSlotSize":J
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    if-nez v2, :cond_7

    .line 4027
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 4029
    const/4 v2, 0x0

    .line 4031
    .local v2, "multiSlotChange":Z
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 4032
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4033
    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v3}, Lcom/sleepycat/je/tree/IN;->updateLNSlotKey(I[B[B)Z

    move-result v2

    goto :goto_1

    .line 4032
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4036
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 4037
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_2

    .line 4039
    :cond_4
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 4040
    .local v3, "newSlotSize":J
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4043
    .end local v3    # "newSlotSize":J
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4044
    :cond_6
    :goto_3
    return-void

    .line 4025
    .end local v2    # "multiSlotChange":Z
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 6320
    const-string v0, "<in>"

    return-object v0
.end method

.method clearEntry(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 3547
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 3548
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 3549
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 3550
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 3551
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 3552
    return-void
.end method

.method final clearKnownDeleted(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1149
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1152
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1154
    return-void

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clearLastLoggedSize(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 2067
    return-void
.end method

.method public clearOffHeapBINId(I)V
    .locals 6
    .param p1, "idx"    # I

    .line 2107
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINPri2(IZ)V

    .line 2110
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINDirty(IZ)V

    .line 2112
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v2

    .line 2114
    .local v2, "oldVal":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2115
    return-void

    .line 2118
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, v4, v5, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2120
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2122
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2124
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri1LRU(Lcom/sleepycat/je/tree/IN;)V

    .line 2126
    :cond_1
    return-void

    .line 2107
    .end local v2    # "oldVal":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final clearPendingDeleted(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1099
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1100
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1102
    return-void
.end method

.method public compactMemory()J
    .locals 7

    .line 4757
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    .line 4758
    .local v0, "oldSize":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4760
    .local v2, "oldKeyRep":Lcom/sleepycat/je/tree/INKeyRep;
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v3, p0}, Lcom/sleepycat/je/tree/INTargetRep;->compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 4761
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4762
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    sget-object v4, Lcom/sleepycat/je/tree/IN;->EMPTY_OFFHEAP_BIN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    invoke-virtual {v3, p0, v4}, Lcom/sleepycat/je/tree/INLongRep;->compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 4775
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    if-eq v3, v2, :cond_0

    .line 4776
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4779
    :cond_0
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    sub-long v3, v0, v3

    return-wide v3
.end method

.method public final compareTo(Lcom/sleepycat/je/tree/IN;)I
    .locals 5
    .param p1, "argIN"    # Lcom/sleepycat/je/tree/IN;

    .line 857
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    .line 858
    .local v0, "argNodeId":J
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    .line 860
    .local v2, "myNodeId":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 861
    const/4 v4, -0x1

    return v4

    .line 862
    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 863
    const/4 v4, 0x1

    return v4

    .line 865
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 147
    check-cast p1, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->compareTo(Lcom/sleepycat/je/tree/IN;)I

    move-result p1

    return p1
.end method

.method public computeMemorySize()J
    .locals 5

    .line 4668
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getFixedMemoryOverhead()J

    move-result-wide v0

    .line 4670
    .local v0, "calcMemorySize":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4672
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v2, v3, :cond_0

    .line 4675
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 4674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4678
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v2, :cond_1

    .line 4679
    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4682
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v2, :cond_2

    .line 4683
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4686
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INTargetRep;->calculateMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4687
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INKeyRep;->calculateMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4689
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    if-eqz v2, :cond_3

    .line 4690
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4693
    :cond_3
    return-wide v0
.end method

.method public final convertKey(I[B)V
    .locals 7
    .param p1, "idx"    # I
    .param p2, "newKey"    # [B

    .line 4082
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v0

    .line 4084
    .local v0, "oldSlotSize":J
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/sleepycat/je/tree/IN;->updateKey(I[B[B)Z

    move-result v2

    .line 4086
    .local v2, "multiSlotChange":Z
    if-eqz v2, :cond_0

    .line 4087
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_0

    .line 4089
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 4090
    .local v3, "newSlotSize":J
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4093
    .end local v3    # "newSlotSize":J
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4095
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4096
    :cond_2
    :goto_1
    return-void
.end method

.method copyEntries(III)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I

    .line 4100
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INTargetRep;->copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 4101
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4102
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 4104
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4106
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v0, :cond_0

    .line 4107
    shl-int/lit8 v0, p1, 0x2

    .line 4108
    .local v0, "fromOff":I
    shl-int/lit8 v1, p2, 0x2

    .line 4109
    .local v1, "toOff":I
    shl-int/lit8 v2, p3, 0x2

    .line 4110
    .local v2, "nBytes":I
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4112
    .end local v0    # "fromOff":I
    .end local v1    # "toOff":I
    .end local v2    # "nBytes":I
    goto :goto_0

    .line 4113
    :cond_0
    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4117
    :goto_0
    return-void
.end method

.method createNewInstance([BII)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "identifierKey"    # [B
    .param p2, "maxEntries"    # I
    .param p3, "level"    # I

    .line 455
    new-instance v0, Lcom/sleepycat/je/tree/IN;

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    return-object v0
.end method

.method public deleteEntry(I)V
    .locals 1
    .param p1, "index"    # I

    .line 3472
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/sleepycat/je/tree/IN;->deleteEntry(IZZ)V

    .line 3473
    return-void
.end method

.method deleteEntry(IZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "makeDirty"    # Z
    .param p3, "validate"    # Z

    .line 3485
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3486
    if-ltz p1, :cond_9

    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge p1, v0, :cond_9

    .line 3487
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->validateSubtreeBeforeDelete(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3489
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 3490
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3493
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isDirty(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3494
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setProhibitNextDelta(Z)V

    .line 3497
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    .line 3499
    .local v1, "child":Lcom/sleepycat/je/tree/Node;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    .line 3500
    .local v2, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v3

    .line 3501
    .local v3, "level":I
    if-ne v3, v0, :cond_4

    .line 3502
    move-object v4, p0

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2, v4, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    goto :goto_1

    .line 3503
    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 3504
    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2, v4, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J

    .line 3507
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3508
    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/tree/IN;

    .line 3509
    .local v4, "childIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/INList;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 3512
    .end local v4    # "childIN":Lcom/sleepycat/je/tree/IN;
    :cond_6
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3513
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v4

    .line 3520
    .local v4, "oldLSNArraySize":I
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3521
    add-int/lit8 v5, p1, 0x1

    iget v6, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v6, p1

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, p1, v6}, Lcom/sleepycat/je/tree/IN;->copyEntries(III)V

    .line 3522
    iget v5, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 3525
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/tree/IN;->clearEntry(I)V

    .line 3528
    int-to-long v5, v4

    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3530
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v5

    if-ne v0, v5, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3536
    :cond_8
    :goto_2
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/tree/IN;->traceDelete(Ljava/util/logging/Level;I)V

    .line 3537
    return-void

    .line 3486
    .end local v1    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v2    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v3    # "level":I
    .end local v4    # "oldLSNArraySize":I
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3485
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final deleteRecord(IJJJI)V
    .locals 4
    .param p1, "idx"    # I
    .param p2, "oldMemSize"    # J
    .param p4, "newLSN"    # J
    .param p6, "newVLSN"    # J
    .param p8, "newSize"    # I

    .line 3800
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3802
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 3804
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 3806
    invoke-virtual {p0, p1, p4, p5}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3808
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3809
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearLastLoggedSize(I)V

    .line 3810
    invoke-virtual {v0, p1, p6, p7}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    goto :goto_0

    .line 3812
    :cond_0
    invoke-virtual {p0, p1, p8}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3815
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    .line 3817
    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    .line 3818
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/Node;

    .line 3819
    .local v1, "newLN":Lcom/sleepycat/je/tree/Node;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v2

    .line 3820
    .local v2, "newMemSize":J
    invoke-virtual {p0, p2, p3, v2, v3}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3821
    .end local v1    # "newLN":Lcom/sleepycat/je/tree/Node;
    .end local v2    # "newMemSize":J
    goto :goto_1

    .line 3817
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3822
    :cond_2
    cmp-long v1, p2, v2

    if-nez v1, :cond_3

    .line 3825
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setPendingDeleted(I)V

    .line 3826
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3827
    return-void

    .line 3822
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3800
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final detachNode(IZJ)V
    .locals 7
    .param p1, "idx"    # I
    .param p2, "updateLsn"    # Z
    .param p3, "newLsn"    # J

    .line 4055
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v0

    .line 4057
    .local v0, "oldSlotSize":J
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    .line 4059
    .local v2, "child":Lcom/sleepycat/je/tree/Node;
    if-eqz p2, :cond_0

    .line 4060
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 4061
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4063
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 4065
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 4066
    .local v3, "newSlotSize":J
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4068
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4069
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/INList;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 4072
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 4073
    :cond_3
    :goto_0
    return-void
.end method

.method public final dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 6235
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->beginTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6237
    const-string v0, "<nodeId val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6238
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6239
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6241
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    const-string v2, "idKey"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6244
    const-string v1, "<isRoot val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6245
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6246
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6249
    const-string v1, "<level val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6250
    iget v1, p0, Lcom/sleepycat/je/tree/IN;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6251
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6253
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v0, :cond_0

    .line 6254
    const-string v1, "keyPrefix"

    invoke-static {v0, v1, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6258
    :cond_0
    const-string v0, "<entries numEntries=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6259
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6261
    const-string v0, "\" length=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6262
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6264
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6266
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6267
    const-string v1, "\" numFullBinEntries=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6268
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinNEntries()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6269
    const-string v1, "\" maxFullBinEntries=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6270
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinMaxEntries()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6273
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 6274
    .local v1, "compactLsnsRep":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 6275
    const-string v2, "\" baseFileNumber=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6276
    iget-wide v4, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6278
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getExpirationBase()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 6279
    const-string v2, "\" baseExpiration=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6280
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getExpirationBase()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6282
    :cond_5
    const-string v2, "\">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6284
    if-eqz p2, :cond_7

    .line 6285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v4, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v2, v4, :cond_7

    .line 6286
    const-string v4, "<ref"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6287
    invoke-direct {p0, p1, v2, v0}, Lcom/sleepycat/je/tree/IN;->dumpSlotState(Ljava/lang/StringBuilder;ILcom/sleepycat/je/tree/BIN;)V

    .line 6288
    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6289
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6290
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6291
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getData(I)[B

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6293
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6294
    const-string v4, "</ref>"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6285
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6298
    .end local v2    # "i":I
    :cond_7
    const-string v2, "</entries>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6300
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6301
    iget-object v2, v0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-eqz v2, :cond_8

    .line 6302
    iget-object v2, v0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    invoke-static {v2, p1, p2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->dumpLog([BLjava/lang/StringBuilder;Z)V

    .line 6307
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->dumpLogAdditional(Ljava/lang/StringBuilder;)V

    .line 6309
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->endTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6310
    return-void
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 6317
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 10
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 6333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6334
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    if-eqz p2, :cond_0

    .line 6335
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6336
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->beginTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6340
    :cond_0
    const-string v2, "\"/>"

    if-eqz p2, :cond_1

    .line 6341
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6342
    const-string v3, "<nodeId val=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6343
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6346
    :cond_1
    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6348
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6350
    const/4 v3, 0x0

    .line 6351
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6352
    move-object v3, p0

    check-cast v3, Lcom/sleepycat/je/tree/BIN;

    .line 6355
    :cond_2
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6356
    const-string v4, "<idkey>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6357
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    const-string v5, ""

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    .line 6359
    :cond_3
    invoke-static {v4, v6}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v4

    .line 6357
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6360
    const-string v4, "</idkey>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6362
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6363
    const-string v4, "<prefix>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6364
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v4, v6}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6365
    const-string v4, "</prefix>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6366
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6367
    const-string v4, "<dirty val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6369
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6370
    const-string v4, "<level val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6371
    iget v4, p0, Lcom/sleepycat/je/tree/IN;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6373
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6374
    const-string v4, "<isRoot val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6376
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6377
    const-string v4, "<isBINDelta val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6378
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6379
    const-string v4, "<prohibitNextDelta val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6381
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getProhibitNextDelta()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6382
    if-eqz v3, :cond_5

    .line 6383
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6384
    const-string v4, "<cursors val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6385
    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6386
    const-string v4, "<deltas val=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6388
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6390
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6391
    const-string v2, "<entries nEntries=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6392
    iget v2, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6393
    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v4, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v2, v4, :cond_b

    .line 6397
    add-int/lit8 v4, p1, 0x4

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6398
    const-string v4, "<entry id=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6399
    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/je/tree/IN;->dumpSlotState(Ljava/lang/StringBuilder;ILcom/sleepycat/je/tree/BIN;)V

    .line 6400
    const-string v4, ">\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6401
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 6402
    add-int/lit8 v6, p1, 0x6

    invoke-static {v6}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6403
    const-string v6, "<lsn/>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6405
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v6

    add-int/lit8 v8, p1, 0x6

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->dumpString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6407
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6408
    iget-object v6, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 6409
    add-int/lit8 v6, p1, 0x6

    invoke-static {v6}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6410
    const-string v6, "<key/>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 6412
    :cond_7
    iget-object v6, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    add-int/lit8 v7, p1, 0x6

    invoke-static {v6, v7}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6414
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6415
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    if-ltz v6, :cond_8

    .line 6416
    const-string v6, "<ohBIN id=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6417
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6419
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 6420
    const-string v6, "<ohLN id=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6421
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6423
    :cond_9
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    .line 6424
    add-int/lit8 v4, p1, 0x6

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6425
    const-string v4, "<target/>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 6427
    :cond_a
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/Node;

    add-int/lit8 v5, p1, 0x6

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/tree/Node;->dumpString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6429
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6430
    add-int/lit8 v4, p1, 0x4

    invoke-static {v4}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6431
    const-string v4, "</entry>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6396
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 6435
    .end local v2    # "i":I
    :cond_b
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6436
    const-string v2, "</entries>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6438
    if-eqz p2, :cond_c

    .line 6439
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6440
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->endTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6442
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 6324
    const-string v0, "</in>"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 846
    instance-of v0, p1, Lcom/sleepycat/je/tree/IN;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 847
    return v1

    .line 849
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 850
    .local v0, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 12
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2578
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2579
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2583
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2584
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v1

    .line 2585
    .local v1, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v2, 0x0

    .line 2587
    .local v2, "isMiss":Z
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 2589
    .local v3, "child":Lcom/sleepycat/je/tree/IN;
    if-nez v3, :cond_4

    .line 2591
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v4

    .line 2593
    .local v4, "lsn":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 2599
    const/4 v6, 0x0

    .line 2601
    .local v6, "ohBytes":[B
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 2602
    invoke-virtual {v1, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v8

    move-object v6, v8

    .line 2603
    if-eqz v6, :cond_0

    .line 2604
    invoke-virtual {v1, v0, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v8

    move-object v3, v8

    .line 2608
    :cond_0
    if-nez v3, :cond_1

    .line 2609
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v8

    .line 2611
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v9

    .line 2610
    invoke-virtual {v8, v4, v5, v9}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisibleAtRecovery(JI)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v8

    .line 2613
    .local v8, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {v8}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v9

    .line 2614
    .local v9, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v10, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-interface {v9, v10}, Lcom/sleepycat/je/log/entry/LogEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/tree/IN;

    move-object v3, v10

    .line 2616
    const/4 v2, 0x1

    .line 2619
    .end local v8    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v9    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :cond_1
    iget-object v8, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3, v8}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2621
    if-eqz v6, :cond_2

    .line 2622
    invoke-direct {v3, p0, p1}, Lcom/sleepycat/je/tree/IN;->postLoadInit(Lcom/sleepycat/je/tree/IN;I)V

    goto :goto_0

    .line 2624
    :cond_2
    iget-object v8, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3, v8, v4, v5}, Lcom/sleepycat/je/tree/IN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2627
    :goto_0
    invoke-virtual {p0, p1, v3, v7}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    .line 2629
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    .end local v6    # "ohBytes":[B
    goto :goto_1

    .line 2646
    :catch_0
    move-exception v6

    .line 2647
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2649
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v8, v9, v6}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 2642
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 2643
    .local v6, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    invoke-virtual {p0, v7, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 2644
    throw v6

    .line 2636
    .end local v6    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :catch_2
    move-exception v6

    .line 2637
    .local v6, "e":Lcom/sleepycat/je/log/ErasedException;
    new-instance v8, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IN is erased unexpectedly, implied corruption. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2640
    invoke-virtual {p0, v7, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, v9, v7, v6}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2631
    .end local v6    # "e":Lcom/sleepycat/je/log/ErasedException;
    :catch_3
    move-exception v6

    .line 2632
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v8, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2634
    invoke-virtual {p0, v7, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, v9, v7, v6}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2594
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    nop

    .line 2595
    const-string v6, "NULL_LSN in upper IN"

    invoke-virtual {p0, v6, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v6

    .line 2594
    invoke-static {v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    throw v6

    .line 2653
    .end local v4    # "lsn":J
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v4

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2655
    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/je/tree/IN;->incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    .line 2657
    return-object v3

    .line 2653
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2580
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v2    # "isMiss":Z
    .end local v3    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_6
    const-string v0, "EX-latch not held before fetch"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2578
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final fetchINWithNoLatch(I[B)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "searchKey"    # [B

    .line 2277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/tree/IN;->fetchINWithNoLatch(I[BLcom/sleepycat/je/tree/SearchResult;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method final fetchINWithNoLatch(Lcom/sleepycat/je/tree/SearchResult;[B)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "result"    # Lcom/sleepycat/je/tree/SearchResult;
    .param p2, "searchKey"    # [B

    .line 2290
    iget v0, p1, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-direct {p0, v0, p2, p1}, Lcom/sleepycat/je/tree/IN;->fetchINWithNoLatch(I[BLcom/sleepycat/je/tree/SearchResult;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public final fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2743
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/tree/IN;->fetchLN(ILcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    return-object v0
.end method

.method public final fetchLNOrDIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/Node;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2752
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/tree/IN;->fetchLN(ILcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    return-object v0
.end method

.method public final findEntry([BZZ)I
    .locals 1
    .param p1, "key"    # [B
    .param p2, "indicateIfDuplicate"    # Z
    .param p3, "exact"    # Z

    .line 3126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public final findEntry([BZZLjava/util/Comparator;)I
    .locals 11
    .param p1, "key"    # [B
    .param p2, "indicateIfDuplicate"    # Z
    .param p3, "exact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZZ",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 3160
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->idKeyIsSlotKey()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3162
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3163
    .local v0, "high":I
    const/4 v2, 0x0

    .line 3164
    .local v2, "low":I
    const/4 v3, 0x0

    .line 3166
    .local v3, "middle":I
    if-nez p4, :cond_0

    .line 3167
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object p4

    .line 3195
    :cond_0
    nop

    .line 3196
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3198
    .local v1, "entryZeroSpecialCompare":Z
    :goto_0
    iget v4, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ltz v4, :cond_9

    .line 3200
    :goto_1
    const/4 v10, -0x1

    if-gt v2, v0, :cond_7

    .line 3202
    add-int v4, v0, v2

    div-int/lit8 v3, v4, 0x2

    .line 3205
    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 3206
    const/4 v4, 0x1

    .local v4, "s":I
    goto :goto_2

    .line 3208
    .end local v4    # "s":I
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iget-object v6, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 3210
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v8

    .line 3208
    move-object v5, p1

    move v7, v3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/sleepycat/je/tree/INKeyRep;->compareKeys([B[BIZLjava/util/Comparator;)I

    move-result v4

    .line 3213
    .restart local v4    # "s":I
    :goto_2
    if-gez v4, :cond_3

    .line 3214
    add-int/lit8 v0, v3, -0x1

    goto :goto_3

    .line 3215
    :cond_3
    if-lez v4, :cond_4

    .line 3216
    add-int/lit8 v2, v3, 0x1

    .line 3231
    .end local v4    # "s":I
    :goto_3
    goto :goto_1

    .line 3219
    .restart local v4    # "s":I
    :cond_4
    if-eqz p2, :cond_5

    .line 3220
    const/high16 v5, 0x10000

    or-int/2addr v5, v3

    .local v5, "ret":I
    goto :goto_4

    .line 3222
    .end local v5    # "ret":I
    :cond_5
    move v5, v3

    .line 3225
    .restart local v5    # "ret":I
    :goto_4
    if-ltz v5, :cond_6

    if-eqz p3, :cond_6

    const v6, 0xffff

    and-int/2addr v6, v5

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/tree/IN;->isEntryKnownDeleted(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3226
    return v10

    .line 3228
    :cond_6
    return v5

    .line 3237
    .end local v4    # "s":I
    .end local v5    # "ret":I
    :cond_7
    if-eqz p3, :cond_8

    .line 3238
    return v10

    .line 3240
    :cond_8
    return v0

    .line 3198
    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3160
    .end local v0    # "high":I
    .end local v1    # "entryZeroSpecialCompare":Z
    .end local v2    # "low":I
    .end local v3    # "middle":I
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBudgetedMemorySize()J
    .locals 4

    .line 4786
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    iget v2, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCompactMaxKeyLength()I
    .locals 1

    .line 4955
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCompactMaxKeyLength()I

    move-result v0

    return v0
.end method

.method public final getData(I)[B
    .locals 1
    .param p1, "idx"    # I

    .line 1304
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INKeyRep;->getData(I)[B

    move-result-object v0

    return-object v0

    .line 1308
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isNoDataLN(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    sget-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v0

    .line 1312
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public final getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public final getDirty()Z
    .locals 2

    .line 870
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final getEntryLsnByteArray()[B
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    return-object v0
.end method

.method final getEntryLsnLongArray()[J
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    return-object v0
.end method

.method public final getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method final getEvictor()Lcom/sleepycat/je/evictor/Evictor;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    return-object v0
.end method

.method public final getFetchedCold()Z
    .locals 1

    .line 917
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFetchedColdOffHeap()Z
    .locals 1

    .line 931
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getFixedMemoryOverhead()J
    .locals 2

    .line 4700
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->IN_FIXED_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 5751
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifierKey()[B
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    return-object v0
.end method

.method public getInListResident()Z
    .locals 1

    .line 4986
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInMemorySize()J
    .locals 2

    .line 4648
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    return-wide v0
.end method

.method public final getKey(I)[B
    .locals 3
    .param p1, "idx"    # I

    .line 1292
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge p1, v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 1295
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v2

    .line 1294
    invoke-virtual {v0, v1, p1, v2}, Lcom/sleepycat/je/tree/INKeyRep;->getFullKey([BIZ)[B

    move-result-object v0

    .line 1297
    .local v0, "key":[B
    if-eqz v0, :cond_0

    .line 1299
    return-object v0

    .line 1297
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1292
    .end local v0    # "key":[B
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyPrefix()[B
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    return-object v0
.end method

.method public final getKeyVals()Lcom/sleepycat/je/tree/INKeyRep;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    return-object v0
.end method

.method public getKnownChildIndex(Lcom/sleepycat/je/tree/Node;)I
    .locals 2
    .param p1, "child"    # Lcom/sleepycat/je/tree/Node;

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v0, v1, :cond_1

    .line 734
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 735
    return v0

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public final getLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;
    .locals 3
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2904
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2906
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 2908
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    if-nez v0, :cond_0

    .line 2909
    const/4 v1, 0x0

    return-object v1

    .line 2912
    :cond_0
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    if-eq p2, v1, :cond_1

    .line 2914
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/LN;->setFetchedCold(Z)V

    .line 2917
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v1

    .line 2919
    .local v1, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2920
    move-object v2, p0

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeRedundantLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;)V

    .line 2923
    :cond_2
    return-object v0

    .line 2904
    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v1    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLastDeltaLsn()J
    .locals 2

    .line 5269
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getLastFullLsn()J
    .locals 2

    .line 5260
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->lastFullVersion:J

    return-wide v0
.end method

.method public final getLastLoggedLsn()J
    .locals 4

    .line 5240
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5241
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastDeltaLsn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5242
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastDeltaLsn()J

    move-result-wide v0

    goto :goto_0

    .line 5243
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v0

    .line 5241
    :goto_0
    return-wide v0

    .line 5246
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastLoggedSize(I)I
    .locals 1
    .param p1, "idx"    # I

    .line 2079
    const/4 v0, 0x0

    return v0
.end method

.method public final getLatchNWaiters()I
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->getNWaiters()I

    move-result v0

    return v0
.end method

.method public final getLatchName()Ljava/lang/String;
    .locals 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->shortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
    .locals 1

    .line 519
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    return-object v0
.end method

.method public final getLatchTimeoutMs()I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLatchTimeoutMs()I

    move-result v0

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .line 806
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->level:I

    return v0
.end method

.method public getLogSize()I
    .locals 1

    .line 5768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->getLogSize(Z)I

    move-result v0

    return v0
.end method

.method public final getLogSize(Z)I
    .locals 11
    .param p1, "deltasOnly"    # Z

    .line 5773
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5775
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isVLSNCachingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 5777
    .local v3, "haveVLSNCache":Z
    :goto_1
    const/4 v4, 0x0

    .line 5779
    .local v4, "size":I
    const/4 v5, 0x0

    .line 5781
    .local v5, "haveExpiration":Z
    if-eqz v0, :cond_3

    .line 5782
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getExpirationBase()I

    move-result v6

    .line 5783
    .local v6, "base":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    move v5, v7

    .line 5784
    invoke-static {v6}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 5787
    .end local v6    # "base":I
    :cond_3
    iget-wide v6, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v6

    add-int/2addr v4, v6

    .line 5788
    iget-object v6, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    invoke-static {v6}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v6

    add-int/2addr v4, v6

    .line 5790
    iget-object v6, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v6, :cond_4

    .line 5791
    invoke-static {v6}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v6

    add-int/2addr v4, v6

    .line 5794
    :cond_4
    add-int/2addr v4, v2

    .line 5796
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getNEntriesToWrite(Z)I

    move-result v6

    .line 5798
    .local v6, "nEntriesToWrite":I
    if-nez p1, :cond_5

    .line 5800
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v7

    goto :goto_3

    .line 5801
    :cond_5
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/tree/BIN;->getDeltaCapacity(I)I

    move-result v7

    :goto_3
    nop

    .line 5803
    .local v7, "maxEntriesToWrite":I
    invoke-static {v6}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 5804
    iget v8, p0, Lcom/sleepycat/je/tree/IN;->level:I

    invoke-static {v8}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 5805
    invoke-static {v7}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 5807
    iget-object v8, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v8, :cond_6

    move v1, v2

    .line 5808
    .local v1, "compactLsnsRep":Z
    :cond_6
    invoke-static {}, Lcom/sleepycat/je/log/LogUtils;->getBooleanLogSize()I

    move-result v8

    add-int/2addr v4, v8

    .line 5809
    if-eqz v1, :cond_7

    .line 5810
    add-int/lit8 v4, v4, 0x4

    .line 5813
    :cond_7
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget v9, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v8, v9, :cond_e

    .line 5816
    if-eqz p1, :cond_8

    .line 5817
    invoke-virtual {p0, v8}, Lcom/sleepycat/je/tree/IN;->isDirty(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 5818
    goto :goto_6

    .line 5821
    :cond_8
    if-eqz v0, :cond_9

    invoke-direct {p0, v8}, Lcom/sleepycat/je/tree/IN;->canDeleteExtinctSlot(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5822
    goto :goto_6

    .line 5826
    :cond_9
    iget-object v9, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v9, v8}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v9

    if-eqz v1, :cond_a

    const/4 v10, 0x4

    goto :goto_5

    .line 5828
    :cond_a
    invoke-static {}, Lcom/sleepycat/je/log/LogUtils;->getLongLogSize()I

    move-result v10

    :goto_5
    add-int/2addr v9, v10

    add-int/2addr v9, v2

    add-int/2addr v4, v9

    .line 5831
    invoke-virtual {p0, v8}, Lcom/sleepycat/je/tree/IN;->isLastLoggedSizeStored(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 5832
    invoke-virtual {p0, v8}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v9

    invoke-static {v9}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v9

    add-int/2addr v4, v9

    .line 5835
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {p0, v8}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 5836
    invoke-virtual {v0, v8}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v9

    add-int/2addr v4, v9

    .line 5839
    :cond_c
    if-eqz v5, :cond_d

    .line 5840
    nop

    .line 5841
    invoke-virtual {v0, v8}, Lcom/sleepycat/je/tree/BIN;->getExpirationOffset(I)I

    move-result v9

    invoke-static {v9}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v9

    add-int/2addr v4, v9

    .line 5813
    :cond_d
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5845
    .end local v8    # "i":I
    :cond_e
    if-eqz p1, :cond_f

    .line 5846
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinNEntries()I

    move-result v2

    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v2

    add-int/2addr v4, v2

    .line 5847
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinMaxEntries()I

    move-result v2

    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v2

    add-int/2addr v4, v2

    .line 5849
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getBloomFilterLogSize()I

    move-result v2

    add-int/2addr v4, v2

    .line 5852
    :cond_f
    return v4
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 5758
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public final getLsn(I)J
    .locals 6
    .param p1, "idx"    # I

    .line 1756
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v0, :cond_1

    .line 1757
    shl-int/lit8 v0, p1, 0x2

    .line 1758
    .local v0, "offset":I
    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->getFileOffset(I)I

    move-result v1

    .line 1759
    .local v1, "fileOffset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1760
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1762
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 1763
    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->getFileNumberOffset(I)B

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1762
    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v2

    return-wide v2

    .line 1767
    .end local v0    # "offset":I
    .end local v1    # "fileOffset":I
    :cond_1
    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getMaxEntries()I
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    array-length v0, v0

    return v0
.end method

.method public final getNDeltas()I
    .locals 3

    .line 5736
    const/4 v0, 0x0

    .line 5737
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v1, v2, :cond_1

    .line 5738
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->isDirty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5739
    goto :goto_1

    .line 5741
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 5737
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5743
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public final getNEntries()I
    .locals 1

    .line 1053
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    return v0
.end method

.method public getNextLRUNode()Lcom/sleepycat/je/tree/IN;
    .locals 1

    .line 4998
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->nextLRUNode:Lcom/sleepycat/je/tree/IN;

    return-object v0
.end method

.method public final getNodeId()J
    .locals 2

    .line 822
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    return-wide v0
.end method

.method public final getNormalizedLevel()I
    .locals 2

    .line 810
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->level:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getNumEmbeddedLNs()I
    .locals 3

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "res":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1249
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    add-int/lit8 v0, v0, 0x1

    .line 1248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getOffHeapBINId(I)I
    .locals 2
    .param p1, "idx"    # I

    .line 2129
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getOffHeapBINIdsMemorySize()J
    .locals 2

    .line 2137
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method final getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/sleepycat/je/tree/IN;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->parent:Lcom/sleepycat/je/tree/IN;

    return-object v0
.end method

.method public getPrevLRUNode()Lcom/sleepycat/je/tree/IN;
    .locals 1

    .line 4990
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->prevLRUNode:Lcom/sleepycat/je/tree/IN;

    return-object v0
.end method

.method public getProhibitNextDelta()Z
    .locals 1

    .line 5052
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getRecalcToggle()Z
    .locals 1

    .line 944
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getState(I)B
    .locals 1
    .param p1, "idx"    # I

    .line 1066
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method getStoredKeySize(I)I
    .locals 1
    .param p1, "idx"    # I

    .line 1320
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INKeyRep;->size(I)I

    move-result v0

    return v0
.end method

.method public final getTarget(I)Lcom/sleepycat/je/tree/Node;
    .locals 1
    .param p1, "idx"    # I

    .line 2252
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/Node;

    return-object v0
.end method

.method public final getTargets()Lcom/sleepycat/je/tree/INTargetRep;
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    return-object v0
.end method

.method public hasCachedChildren()Z
    .locals 2

    .line 5022
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5024
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5025
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5026
    const/4 v1, 0x1

    return v1

    .line 5024
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5030
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 5022
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final hasCachedChildrenFlag()Z
    .locals 1

    .line 973
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasKeyPrefix()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOffHeapBINIds()Z
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    not-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public final haveEmbeddedData(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 1242
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isNoDataLN(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "isMiss"    # Z

    .line 3032
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    .line 3033
    .local v0, "e":Lcom/sleepycat/je/evictor/Evictor;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3034
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sleepycat/je/evictor/Evictor;->incBINFetchStats(ZZ)V

    goto :goto_0

    .line 3036
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/evictor/Evictor;->incUINFetchStats(Z)V

    .line 3038
    :goto_0
    return-void
.end method

.method protected init(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "identifierKey"    # [B
    .param p3, "initialCapacity"    # I
    .param p4, "level"    # I

    .line 469
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 470
    nop

    .line 471
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isAlwaysLatchedExclusively()Z

    move-result v0

    .line 470
    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchFactory;->createSharedLatch(Lcom/sleepycat/je/latch/LatchContext;Z)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 473
    iput v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 474
    iput-object p2, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    .line 475
    sget-object v0, Lcom/sleepycat/je/tree/INTargetRep;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 476
    new-instance v0, Lcom/sleepycat/je/tree/INKeyRep$Default;

    invoke-direct {v0, p3}, Lcom/sleepycat/je/tree/INKeyRep$Default;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 478
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 485
    sget-boolean v1, Lcom/sleepycat/je/tree/IN;->disableCompactLsns:Z

    if-eqz v1, :cond_0

    .line 486
    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 487
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    goto :goto_0

    .line 489
    :cond_0
    shl-int/lit8 v1, p3, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 490
    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    .line 493
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    .line 494
    iput p4, p0, Lcom/sleepycat/je/tree/IN;->level:I

    .line 495
    return-void
.end method

.method final initEntryLsn(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 2004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    .line 2005
    shl-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 2006
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 2007
    return-void
.end method

.method public final insertEntry(Lcom/sleepycat/je/tree/Node;[BJ)Z
    .locals 9
    .param p1, "child"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "childLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3262
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3264
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/tree/IN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJBZ)I

    move-result v0

    .line 3267
    .local v0, "res":I
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3262
    .end local v0    # "res":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJBZ)I
    .locals 16
    .param p1, "child"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "childLsn"    # J
    .param p6, "state"    # B
    .param p7, "blindInsertion"    # Z

    .line 3333
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v5

    .line 3335
    .local v5, "index":I
    const v6, -0x10001

    const/high16 v7, 0x10000

    if-ltz v5, :cond_0

    and-int v8, v5, v7

    if-eqz v8, :cond_0

    .line 3341
    and-int v3, v5, v6

    return v3

    .line 3351
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3353
    move-object v8, v0

    check-cast v8, Lcom/sleepycat/je/tree/BIN;

    .line 3355
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    iget v9, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v10

    if-ge v9, v10, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v4

    .line 3357
    .local v9, "doBlindInsertion":Z
    :goto_0
    if-eqz v9, :cond_2

    if-nez p7, :cond_2

    .line 3359
    invoke-virtual {v8, v1}, Lcom/sleepycat/je/tree/BIN;->mayHaveKeyInFullBin([B)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3361
    const/4 v9, 0x0

    .line 3364
    :cond_2
    if-nez v9, :cond_3

    .line 3366
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 3368
    invoke-virtual {v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v5

    .line 3370
    if-ltz v5, :cond_4

    and-int v4, v5, v7

    if-eqz v4, :cond_4

    .line 3371
    and-int v3, v5, v6

    return v3

    .line 3374
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/evictor/Evictor;->incBinDeltaBlindOps()V

    .line 3396
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v9    # "doBlindInsertion":Z
    :cond_4
    iget v4, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 3407
    add-int/2addr v5, v3

    .line 3410
    iget v4, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v5, v4, :cond_5

    .line 3411
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v4

    .line 3414
    .local v4, "oldSize":I
    invoke-direct {v0, v5}, Lcom/sleepycat/je/tree/IN;->shiftEntriesRight(I)V

    .line 3416
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 3417
    .end local v4    # "oldSize":I
    goto :goto_1

    .line 3418
    :cond_5
    add-int/2addr v4, v3

    iput v4, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 3421
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3422
    move-object v4, v0

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->incFullBinNEntries()V

    .line 3425
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v4

    .line 3427
    .restart local v4    # "oldSize":I
    if-eqz v2, :cond_8

    iget-object v6, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v6, p1

    goto :goto_3

    .line 3428
    :cond_8
    :goto_2
    move-object/from16 v6, p1

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3431
    :goto_3
    move-wide/from16 v7, p4

    invoke-virtual {v0, v5, v7, v8}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 3433
    invoke-direct {v0, v5, v1, v2}, Lcom/sleepycat/je/tree/IN;->insertKey(I[B[B)Z

    move-result v9

    .line 3439
    .local v9, "multiSlotChange":Z
    iget-object v10, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aput-byte p6, v10, v5

    .line 3441
    if-eqz v2, :cond_9

    .line 3442
    invoke-direct {v0, v5}, Lcom/sleepycat/je/tree/IN;->setEmbeddedLN(I)V

    .line 3443
    array-length v10, v2

    if-nez v10, :cond_9

    .line 3444
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/tree/IN;->setNoDataLN(I)V

    .line 3448
    :cond_9
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/tree/IN;->adjustCursorsForInsert(I)V

    .line 3450
    int-to-long v10, v4

    .line 3451
    invoke-direct {v0, v5}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v12

    .line 3452
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 3450
    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3454
    if-eqz v9, :cond_a

    .line 3455
    iget-wide v10, v0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v12

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3458
    :cond_a
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3460
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v10

    if-ne v3, v10, :cond_b

    goto :goto_4

    :cond_b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3462
    :cond_c
    :goto_4
    const/high16 v3, 0x20000

    or-int/2addr v3, v5

    return v3

    .line 3397
    .end local v4    # "oldSize":I
    .end local v9    # "multiSlotChange":Z
    :cond_d
    move-object/from16 v6, p1

    move-wide/from16 v7, p4

    .line 3398
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3399
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " should have been split before calling insertEntry is BIN-delta: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " num entries: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " max entries: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3403
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3397
    invoke-static {v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method public final insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJZ)I
    .locals 8
    .param p1, "child"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "childLsn"    # J
    .param p6, "blindInsertion"    # Z

    .line 3294
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/je/tree/IN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJBZ)I

    move-result v0

    return v0
.end method

.method public final insertRecord(ILcom/sleepycat/je/tree/LN;JI[B[BIZ)V
    .locals 16
    .param p1, "idx"    # I
    .param p2, "newLN"    # Lcom/sleepycat/je/tree/LN;
    .param p3, "newLSN"    # J
    .param p5, "newSize"    # I
    .param p6, "newKey"    # [B
    .param p7, "newData"    # [B
    .param p8, "expiration"    # I
    .param p9, "expirationInHours"    # Z

    .line 3657
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3659
    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 3661
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 3663
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 3665
    .local v3, "oldSlotSize":J
    move-wide/from16 v5, p3

    invoke-virtual {v0, v1, v5, v6}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3667
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct {v0, v1, v7, v8}, Lcom/sleepycat/je/tree/IN;->updateLNSlotKey(I[B[B)Z

    move-result v9

    .line 3669
    .local v9, "multiSlotChange":Z
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3671
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearLastLoggedSize(I)V

    .line 3673
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    .line 3675
    iget-object v10, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3676
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    move/from16 v10, p5

    goto :goto_0

    .line 3675
    :cond_0
    move/from16 v10, p5

    goto :goto_0

    .line 3679
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3680
    move/from16 v10, p5

    invoke-virtual {v0, v1, v10}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3683
    :goto_0
    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v2, v1, v11, v12}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 3685
    if-eqz v9, :cond_2

    .line 3686
    iget-wide v13, v0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    move-object v15, v2

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v15, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v1

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_1

    .line 3688
    .end local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_2
    move-object v15, v2

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v1

    .line 3689
    .local v1, "newSlotSize":J
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3692
    .end local v1    # "newSlotSize":J
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearKnownDeleted(I)V

    .line 3693
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearPendingDeleted(I)V

    .line 3694
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3696
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3697
    :cond_4
    :goto_2
    return-void

    .line 3657
    .end local v3    # "oldSlotSize":J
    .end local v9    # "multiSlotChange":Z
    .end local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_5
    move-wide/from16 v5, p3

    move/from16 v10, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    move/from16 v12, p9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method isAlwaysLatchedExclusively()Z
    .locals 1

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public final isBINDelta()Z
    .locals 1

    .line 883
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 884
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isBINDelta(Z)Z
    .locals 1
    .param p1, "checkLatched"    # Z

    .line 895
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 896
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isDirty(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 1073
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmbeddedLN(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 1180
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEntryKnownDeleted(I)Z
    .locals 2
    .param p1, "idx"    # I

    .line 1109
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isEntryPendingDeleted(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 1081
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpirationInHours()Z
    .locals 1

    .line 998
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIN()Z
    .locals 1

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public final isInPri2LRU()Z
    .locals 1

    .line 985
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isKeyInBounds([B)Z
    .locals 11
    .param p1, "key"    # [B

    .line 1724
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1726
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1727
    return v2

    .line 1730
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1734
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iget-object v5, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    const/4 v6, 0x0

    .line 1735
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v7

    .line 1734
    move-object v4, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/tree/INKeyRep;->compareKeys([B[BIZLjava/util/Comparator;)I

    move-result v1

    .line 1737
    .local v1, "cmp":I
    if-gez v1, :cond_1

    .line 1738
    return v2

    .line 1742
    :cond_1
    iget v3, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x1

    .line 1743
    .local v10, "idx":I
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iget-object v5, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 1744
    invoke-virtual {p0, v10}, Lcom/sleepycat/je/tree/IN;->haveEmbeddedData(I)Z

    move-result v7

    .line 1743
    move-object v4, p1

    move v6, v10

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/tree/INKeyRep;->compareKeys([B[BIZLjava/util/Comparator;)I

    move-result v1

    .line 1746
    if-gtz v1, :cond_2

    move v2, v9

    :cond_2
    return v2

    .line 1724
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .end local v1    # "cmp":I
    .end local v10    # "idx":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isLastLoggedSizeStored(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 2050
    const/4 v0, 0x0

    return v0
.end method

.method public final isLatchExclusiveOwner()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    return v0
.end method

.method public final isLatchOwner()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isOwner()Z

    move-result v0

    return v0
.end method

.method public final isNoDataLN(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 1211
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOffHeapBINDirty(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 2149
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOffHeapBINPri2(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 2161
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized isPinned()Z
    .locals 1

    monitor-enter p0

    .line 754
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    .line 756
    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 755
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 754
    .end local p0    # "this":Lcom/sleepycat/je/tree/IN;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 956
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUpperIN()Z
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isValidForDelete()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 5111
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5117
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 5118
    return v1

    .line 5120
    :cond_0
    if-ne v0, v2, :cond_6

    .line 5121
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 5122
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v3

    xor-int/2addr v2, v3

    .line 5123
    .local v2, "needToLatch":Z
    if-eqz v2, :cond_1

    .line 5124
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 5127
    :cond_1
    const/4 v3, 0x0

    .line 5129
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 5130
    nop

    .line 5136
    if-eqz v2, :cond_2

    .line 5137
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 5130
    :cond_2
    return v1

    .line 5133
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isValidForDelete()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5136
    .end local v3    # "ret":Z
    .local v1, "ret":Z
    if-eqz v2, :cond_4

    .line 5137
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 5140
    :cond_4
    return v1

    .line 5136
    .end local v1    # "ret":Z
    .restart local v3    # "ret":Z
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_5

    .line 5137
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_5
    throw v1

    .line 5142
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "needToLatch":Z
    .end local v3    # "ret":Z
    :cond_6
    return v2

    .line 5111
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final latch()V
    .locals 1

    .line 555
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 556
    return-void
.end method

.method public latch(Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 547
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 548
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->updateLRU(Lcom/sleepycat/je/CacheMode;)V

    .line 549
    return-void
.end method

.method public final latchNoUpdateLRU()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 596
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 583
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_0

    .line 584
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 587
    return-void
.end method

.method public final latchNoWait(Lcom/sleepycat/je/CacheMode;)Z
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 536
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusiveNoWait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    return v0

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->updateLRU(Lcom/sleepycat/je/CacheMode;)V

    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public final latchParent()Lcom/sleepycat/je/tree/IN;
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 701
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getParent()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 704
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getParent()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 706
    .local v0, "p":Lcom/sleepycat/je/tree/IN;
    iget-object v1, v0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusiveNoWait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    return-object v0

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->pin()V

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 713
    iget-object v1, v0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 714
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    .line 717
    nop

    .line 719
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getParent()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 720
    return-object v0

    .line 723
    :cond_1
    iget-object v1, v0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 724
    .end local v0    # "p":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 716
    .restart local v0    # "p":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->unpin()V

    throw v1

    .line 701
    .end local v0    # "p":Lcom/sleepycat/je/tree/IN;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 700
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 699
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final latchShared()V
    .locals 1

    .line 572
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 573
    return-void
.end method

.method public latchShared(Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 563
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 564
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->updateLRU(Lcom/sleepycat/je/CacheMode;)V

    .line 565
    return-void
.end method

.method public loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 9
    .param p1, "idx"    # I
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2676
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2677
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2681
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 2683
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    if-eqz v0, :cond_0

    .line 2684
    return-object v0

    .line 2687
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2688
    return-object v3

    .line 2691
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 2692
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    .line 2694
    .local v2, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v4

    .line 2697
    .local v4, "lsn":J
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v6

    .line 2698
    .local v6, "ohBytes":[B
    if-nez v6, :cond_2

    .line 2699
    return-object v3

    .line 2702
    :cond_2
    invoke-virtual {v2, v1, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v7

    move-object v0, v7

    .line 2703
    iget-object v7, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2704
    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/tree/IN;->postLoadInit(Lcom/sleepycat/je/tree/IN;I)V

    .line 2705
    invoke-virtual {p0, p1, v0, v3}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    .line 2706
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2708
    return-object v0

    .line 2710
    .end local v6    # "ohBytes":[B
    :catch_0
    move-exception v3

    .line 2711
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v6, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2713
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v5, p1}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2678
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "lsn":J
    :cond_3
    const-string v0, "EX-latch not held before load"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2676
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final log()J
    .locals 7

    .line 5350
    sget-object v4, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final log(ZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J
    .locals 7
    .param p1, "allowDeltas"    # Z
    .param p2, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p3, "backgroundIO"    # Z
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 5373
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final log(ZZZLcom/sleepycat/je/tree/IN;)J
    .locals 8
    .param p1, "allowDeltas"    # Z
    .param p2, "isProvisional"    # Z
    .param p3, "backgroundIO"    # Z
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 5361
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    :goto_0
    move-object v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method public logDirtyChildren()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 5317
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5319
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 5322
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5324
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sleepycat/je/tree/IN;

    .line 5326
    .local v9, "child":Lcom/sleepycat/je/tree/IN;
    if-eqz v9, :cond_1

    .line 5327
    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v9, v2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 5329
    :try_start_0
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5331
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->logDirtyChildren()V

    .line 5332
    const/4 v2, 0x0

    .line 5333
    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3, v3, p0}, Lcom/sleepycat/je/tree/IN;->log(ZZZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v4

    .line 5338
    .local v4, "childLsn":J
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/tree/IN;->updateEntry(IJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5343
    .end local v4    # "childLsn":J
    :cond_0
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 5344
    goto :goto_1

    .line 5343
    :catchall_0
    move-exception v2

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v2

    .line 5322
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5347
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 5317
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 6227
    const/4 v0, 0x0

    return v0
.end method

.method public makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lsn"    # J
    .param p4, "idx"    # I

    .line 3045
    if-ltz p4, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v0, v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 3049
    .local v5, "state":B
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p4, :cond_1

    .line 3051
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 3053
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    nop

    .line 3054
    invoke-virtual {v0, p4}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isExpirationInHours()Z

    move-result v2

    .line 3053
    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    .line 3056
    .local v0, "expirationTime":J
    move-wide v8, v0

    goto :goto_1

    .line 3057
    .end local v0    # "expirationTime":J
    :cond_1
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 3060
    .local v8, "expirationTime":J
    :goto_1
    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JBJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final materialize(Ljava/nio/ByteBuffer;IZZ)V
    .locals 25
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I
    .param p3, "deltasOnly"    # Z
    .param p4, "clearDirtyBits"    # Z

    .line 6075
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 6077
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/tree/BIN;

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 6079
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_1
    const/4 v5, 0x6

    const/4 v7, 0x1

    if-ge v2, v5, :cond_3

    move v5, v7

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 6081
    .local v5, "unpacked":Z
    :goto_2
    const/4 v8, 0x0

    .line 6083
    .local v8, "haveExpiration":Z
    if-eqz v3, :cond_5

    const/16 v9, 0xc

    if-lt v2, v9, :cond_5

    .line 6084
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 6085
    .local v9, "base":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    move v10, v7

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    move v8, v10

    .line 6086
    invoke-virtual {v3, v9}, Lcom/sleepycat/je/tree/BIN;->setExpirationBase(I)V

    .line 6089
    .end local v9    # "base":I
    :cond_5
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    .line 6090
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v9

    iput-object v9, v0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    .line 6092
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 6094
    .local v9, "booleans":B
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    invoke-direct {v0, v10}, Lcom/sleepycat/je/tree/IN;->setIsRootFlag(Z)V

    .line 6096
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_7

    .line 6097
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v10

    iput-object v10, v0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 6100
    :cond_7
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_8

    move v10, v7

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    .line 6101
    .local v10, "mayHaveLastLoggedSize":Z
    :goto_5
    const/16 v11, 0x9

    if-eqz v10, :cond_a

    if-lt v2, v11, :cond_9

    goto :goto_6

    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 6103
    :cond_a
    :goto_6
    and-int/lit8 v12, v9, 0x8

    if-eqz v12, :cond_b

    move v12, v7

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    .line 6104
    .local v12, "hasBloomFilter":Z
    :goto_7
    const/16 v13, 0xa

    if-eqz v12, :cond_d

    if-lt v2, v13, :cond_c

    if-eqz p3, :cond_c

    goto :goto_8

    :cond_c
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 6106
    :cond_d
    :goto_8
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_e

    move v14, v7

    goto :goto_9

    :cond_e
    const/4 v14, 0x0

    .line 6107
    .local v14, "haveVLSNCache":Z
    :goto_9
    if-eqz v14, :cond_10

    const/16 v15, 0xb

    if-lt v2, v15, :cond_f

    goto :goto_a

    :cond_f
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 6109
    :cond_10
    :goto_a
    and-int/lit8 v15, v9, 0x20

    if-eqz v15, :cond_11

    move v15, v7

    goto :goto_b

    :cond_11
    const/4 v15, 0x0

    :goto_b
    invoke-virtual {v0, v15}, Lcom/sleepycat/je/tree/IN;->setExpirationInHours(Z)V

    .line 6111
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v15

    iput v15, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 6112
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v15

    iput v15, v0, Lcom/sleepycat/je/tree/IN;->level:I

    .line 6113
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v15

    .line 6115
    .local v15, "length":I
    sget-object v6, Lcom/sleepycat/je/tree/INTargetRep;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    iput-object v6, v0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 6116
    new-instance v6, Lcom/sleepycat/je/tree/INKeyRep$Default;

    invoke-direct {v6, v15}, Lcom/sleepycat/je/tree/INKeyRep$Default;-><init>(I)V

    iput-object v6, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 6117
    move v6, v14

    .end local v14    # "haveVLSNCache":Z
    .local v6, "haveVLSNCache":Z
    const-wide/16 v13, -0x1

    iput-wide v13, v0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 6118
    const-wide/16 v16, -0x1

    .line 6119
    .local v16, "storedBaseFileNumber":J
    sget-boolean v18, Lcom/sleepycat/je/tree/IN;->disableCompactLsns:Z

    if-eqz v18, :cond_12

    .line 6120
    iput-object v4, v0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 6121
    new-array v4, v15, [J

    iput-object v4, v0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    goto :goto_c

    .line 6123
    :cond_12
    shl-int/lit8 v13, v15, 0x2

    new-array v13, v13, [B

    iput-object v13, v0, Lcom/sleepycat/je/tree/IN;->entryLsnByteArray:[B

    .line 6124
    iput-object v4, v0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    .line 6126
    :goto_c
    new-array v4, v15, [B

    iput-object v4, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    .line 6127
    const/4 v4, 0x0

    .line 6129
    .local v4, "compactLsnsRep":Z
    if-le v2, v7, :cond_13

    .line 6130
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v4

    .line 6131
    if-eqz v4, :cond_13

    .line 6132
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 6133
    iget-wide v13, v0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    move-wide/from16 v16, v13

    .line 6137
    :cond_13
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_d
    iget v14, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/16 v7, 0x8

    if-ge v13, v14, :cond_1d

    .line 6139
    iget-object v14, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 6140
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v11

    .line 6139
    invoke-virtual {v14, v13, v11, v0}, Lcom/sleepycat/je/tree/INKeyRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v11, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 6143
    if-eqz v4, :cond_15

    .line 6145
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 6146
    .local v11, "fileNumberOffset":B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    .line 6147
    .local v14, "fileOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v7

    or-int/2addr v1, v14

    .line 6148
    .end local v14    # "fileOffset":I
    .local v1, "fileOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v1, v7

    .line 6149
    const v7, 0xffffff

    if-ne v1, v7, :cond_14

    .line 6150
    const-wide/16 v21, -0x1

    move v14, v5

    move-wide/from16 v23, v21

    move/from16 v21, v4

    move-wide/from16 v4, v23

    .local v21, "lsn":J
    goto :goto_e

    .line 6152
    .end local v21    # "lsn":J
    :cond_14
    move/from16 v21, v4

    move v14, v5

    .end local v4    # "compactLsnsRep":Z
    .end local v5    # "unpacked":Z
    .local v14, "unpacked":Z
    .local v21, "compactLsnsRep":Z
    int-to-long v4, v11

    add-long v4, v16, v4

    .line 6153
    invoke-static {v4, v5, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v4

    .line 6155
    .end local v1    # "fileOffset":I
    .end local v11    # "fileNumberOffset":B
    .local v4, "lsn":J
    :goto_e
    goto :goto_f

    .line 6157
    .end local v14    # "unpacked":Z
    .end local v21    # "compactLsnsRep":Z
    .local v4, "compactLsnsRep":Z
    .restart local v5    # "unpacked":Z
    :cond_15
    move/from16 v21, v4

    move v14, v5

    .end local v4    # "compactLsnsRep":Z
    .end local v5    # "unpacked":Z
    .restart local v14    # "unpacked":Z
    .restart local v21    # "compactLsnsRep":Z
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 6160
    .local v4, "lsn":J
    :goto_f
    invoke-virtual {v0, v13, v4, v5}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 6162
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 6164
    .local v1, "entryState":B
    if-eqz p4, :cond_16

    .line 6165
    and-int/lit8 v7, v1, -0x3

    int-to-byte v1, v7

    .line 6172
    :cond_16
    const/16 v11, 0x9

    if-ge v2, v11, :cond_17

    .line 6173
    and-int/lit8 v7, v1, -0x45

    int-to-byte v1, v7

    .line 6182
    :cond_17
    if-ge v2, v11, :cond_18

    const-wide/16 v18, -0x1

    cmp-long v7, v4, v18

    if-nez v7, :cond_19

    .line 6183
    or-int/lit8 v7, v1, 0x1

    int-to-byte v1, v7

    goto :goto_10

    .line 6182
    :cond_18
    const-wide/16 v18, -0x1

    .line 6186
    :cond_19
    :goto_10
    iget-object v7, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aput-byte v1, v7, v13

    .line 6188
    if-eqz v10, :cond_1a

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 6189
    nop

    .line 6190
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 6189
    invoke-virtual {v0, v13, v7}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSizeUnconditional(II)V

    .line 6193
    :cond_1a
    if-eqz v6, :cond_1b

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 6194
    nop

    .line 6195
    move/from16 v20, v12

    .end local v12    # "hasBloomFilter":Z
    .local v20, "hasBloomFilter":Z
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    .line 6194
    invoke-virtual {v3, v13, v11, v12}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    goto :goto_11

    .line 6193
    .end local v20    # "hasBloomFilter":Z
    .restart local v12    # "hasBloomFilter":Z
    :cond_1b
    move/from16 v20, v12

    .line 6198
    .end local v12    # "hasBloomFilter":Z
    .restart local v20    # "hasBloomFilter":Z
    :goto_11
    if-eqz v8, :cond_1c

    .line 6199
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v7

    invoke-virtual {v3, v13, v7}, Lcom/sleepycat/je/tree/BIN;->setExpirationOffset(II)V

    .line 6137
    .end local v1    # "entryState":B
    .end local v4    # "lsn":J
    :cond_1c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move v5, v14

    move/from16 v12, v20

    move/from16 v4, v21

    const/4 v7, 0x1

    const/16 v11, 0x9

    goto/16 :goto_d

    .end local v14    # "unpacked":Z
    .end local v20    # "hasBloomFilter":Z
    .end local v21    # "compactLsnsRep":Z
    .local v4, "compactLsnsRep":Z
    .restart local v5    # "unpacked":Z
    .restart local v12    # "hasBloomFilter":Z
    :cond_1d
    move/from16 v21, v4

    move v14, v5

    move/from16 v20, v12

    .line 6203
    .end local v4    # "compactLsnsRep":Z
    .end local v5    # "unpacked":Z
    .end local v12    # "hasBloomFilter":Z
    .end local v13    # "i":I
    .restart local v14    # "unpacked":Z
    .restart local v20    # "hasBloomFilter":Z
    .restart local v21    # "compactLsnsRep":Z
    if-eqz p3, :cond_1e

    .line 6204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setBINDelta(Z)V

    .line 6206
    const/16 v4, 0xa

    if-lt v2, v4, :cond_1f

    .line 6207
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/BIN;->setFullBinNEntries(I)V

    .line 6208
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/BIN;->setFullBinMaxEntries(I)V

    .line 6210
    if-eqz v20, :cond_1f

    .line 6211
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->readFromLog(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    goto :goto_12

    .line 6203
    :cond_1e
    const/4 v1, 0x1

    .line 6218
    :cond_1f
    :goto_12
    if-ge v2, v7, :cond_20

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, v0, Lcom/sleepycat/je/tree/IN;->needDupKeyConversion:Z

    .line 6219
    return-void
.end method

.method public mayHaveExpirationValues(Ljava/nio/ByteBuffer;I)Z
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 6032
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 6036
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 6037
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 6038
    .local v0, "expirationBase":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 6040
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 6033
    .end local v0    # "expirationBase":I
    :cond_2
    :goto_0
    return v1
.end method

.method mayHaveLastLoggedSizeStored()Z
    .locals 1

    .line 2054
    const/4 v0, 0x0

    return v0
.end method

.method public mutateToFullBIN(Z)V
    .locals 0
    .param p1, "leaveFreeSlot"    # Z

    .line 5682
    return-void
.end method

.method public final needsSplitting()Z
    .locals 6

    .line 4125
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4126
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 4127
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinNEntries()I

    move-result v3

    .line 4128
    .local v3, "fullBinNEntries":I
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getFullBinMaxEntries()I

    move-result v4

    .line 4130
    .local v4, "fullBinMaxEntries":I
    if-gez v3, :cond_0

    .line 4132
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    goto :goto_0

    .line 4134
    :cond_0
    if-lez v3, :cond_2

    .line 4135
    sub-int v5, v4, v3

    if-ge v5, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 4134
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4139
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "fullBinNEntries":I
    .end local v4    # "fullBinMaxEntries":I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v0

    iget v3, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method final optionalLog()J
    .locals 9

    .line 5380
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5381
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v0

    return-wide v0

    .line 5383
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v6, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/tree/IN;->logInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/log/entry/INLogEntry;ZZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v0

    return-wide v0
.end method

.method optionalLogProvisional(Lcom/sleepycat/je/tree/IN;)J
    .locals 2
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 5390
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisional(Lcom/sleepycat/je/tree/IN;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method optionalLogProvisionalNoCompress(Lcom/sleepycat/je/tree/IN;)J
    .locals 2
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 5394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisional(Lcom/sleepycat/je/tree/IN;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public partialEviction()J
    .locals 2

    .line 5015
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final declared-synchronized pin()V
    .locals 1

    monitor-enter p0

    .line 743
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I

    if-ltz v0, :cond_0

    .line 745
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 744
    .end local p0    # "this":Lcom/sleepycat/je/tree/IN;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 743
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "fetchedLsn"    # J

    .line 2931
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2933
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->commonInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2934
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/tree/IN;->setLastLoggedLsn(J)V

    .line 2935
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->convertDupKeys()V

    .line 2936
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->addToMainCache()V

    .line 2938
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2939
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setFetchedCold(Z)V

    .line 2943
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 2946
    :cond_1
    return-void

    .line 2931
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final postRecoveryInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "lastLoggedLsn"    # J

    .line 2972
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->commonInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2973
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/tree/IN;->setLastLoggedLsn(J)V

    .line 2974
    return-void
.end method

.method public prepareForSlotReuse(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 4634
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4635
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/tree/IN;->setLsn(IJZ)V

    .line 4638
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    .line 4639
    .local v0, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4640
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J

    .line 4642
    :cond_1
    return-void
.end method

.method protected printMemorySize()J
    .locals 23

    .line 4873
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getFixedMemoryOverhead()J

    move-result-wide v1

    .line 4875
    .local v1, "inOverhead":J
    iget-object v3, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    array-length v3, v3

    .line 4876
    invoke-static {v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v3

    int-to-long v3, v3

    .line 4878
    .local v3, "statesOverhead":J
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeLsnOverhead()I

    move-result v5

    .line 4880
    .local v5, "lsnOverhead":I
    const/4 v6, 0x0

    .line 4881
    .local v6, "entryOverhead":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v8, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v7, v8, :cond_0

    .line 4882
    int-to-long v8, v6

    invoke-direct {v0, v7}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v6, v8

    .line 4881
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4885
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    array-length v7, v7

    .line 4886
    invoke-static {v7}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v8

    .line 4888
    .local v7, "keyPrefixOverhead":I
    :goto_1
    iget-object v9, v0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v9, :cond_2

    .line 4889
    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v8

    goto :goto_2

    :cond_2
    nop

    .line 4891
    .local v8, "provisionalOverhead":I
    :goto_2
    iget-object v9, v0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/INTargetRep;->calculateMemorySize()J

    move-result-wide v9

    .line 4892
    .local v9, "targetRepOverhead":J
    iget-object v11, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/INKeyRep;->calculateMemorySize()J

    move-result-wide v11

    .line 4893
    .local v11, "keyRepOverhead":J
    add-long v13, v1, v3

    move-wide v15, v3

    .end local v3    # "statesOverhead":J
    .local v15, "statesOverhead":J
    int-to-long v3, v5

    add-long/2addr v13, v3

    int-to-long v3, v6

    add-long/2addr v13, v3

    int-to-long v3, v7

    add-long/2addr v13, v3

    int-to-long v3, v8

    add-long/2addr v13, v3

    add-long/2addr v13, v9

    add-long/2addr v13, v11

    .line 4897
    .local v13, "total":J
    iget-object v3, v0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v3

    .line 4899
    .local v3, "offHeapBINIdOverhead":J
    move-wide/from16 v17, v15

    .end local v15    # "statesOverhead":J
    .local v17, "statesOverhead":J
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v16, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v13

    .end local v13    # "total":J
    .local v19, "total":J
    const-string v13, " nEntries:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " states: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v14, v17

    .end local v17    # "statesOverhead":J
    .local v14, "statesOverhead":J
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v17, v1

    .end local v1    # "inOverhead":J
    .local v17, "inOverhead":J
    const-string v1, " entry: "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lsn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provisional: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetRep("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 4907
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INTargetRep;->getType()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, " keyRep("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v13, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4909
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offHeapBINIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v21, v3

    move-wide/from16 v2, v19

    .end local v3    # "offHeapBINIdOverhead":J
    .end local v19    # "total":J
    .local v2, "total":J
    .local v21, "offHeapBINIdOverhead":J
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " inMemorySize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v13, v5

    .end local v5    # "lsnOverhead":I
    .local v13, "lsnOverhead":I
    iget-wide v4, v0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4899
    move-object/from16 v4, v16

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4914
    return-wide v2
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 6048
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/tree/IN;->materialize(Ljava/nio/ByteBuffer;IZZ)V

    .line 6051
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I
    .param p3, "deltasOnly"    # Z

    .line 6058
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/tree/IN;->materialize(Ljava/nio/ByteBuffer;IZZ)V

    .line 6061
    return-void
.end method

.method final rebuildINList(Lcom/sleepycat/je/dbi/INList;)V
    .locals 4
    .param p1, "inList"    # Lcom/sleepycat/je/dbi/INList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 5158
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->initMemorySize()V

    .line 5160
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 5162
    const/4 v0, 0x0

    .line 5168
    .local v0, "hasCachedChildren":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v1, v2, :cond_2

    .line 5169
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    .line 5170
    .local v2, "n":Lcom/sleepycat/je/tree/Node;
    if-eqz v2, :cond_0

    .line 5171
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/tree/Node;->rebuildINList(Lcom/sleepycat/je/dbi/INList;)V

    .line 5172
    const/4 v0, 0x1

    .line 5174
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 5175
    const/4 v0, 0x1

    .line 5168
    .end local v2    # "n":Lcom/sleepycat/je/tree/Node;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5179
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5180
    if-eqz v0, :cond_3

    .line 5181
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/IN;->setHasCachedChildrenFlag(Z)V

    goto :goto_1

    .line 5183
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/IN;->setHasCachedChildrenFlag(Z)V

    .line 5184
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5196
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_1

    .line 5199
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isDBIN()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5200
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 5202
    :cond_5
    :goto_1
    return-void
.end method

.method public final recalcKeyPrefix()V
    .locals 3

    .line 1615
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->computeKeyPrefix(I)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/sleepycat/je/tree/IN;->recalcSuffixes([B[B[BI)V

    .line 1618
    return-void

    .line 1615
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final recoverIN(ILcom/sleepycat/je/tree/Node;JI)V
    .locals 7
    .param p1, "idx"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "lsn"    # J
    .param p5, "lastLoggedSize"    # I

    .line 3982
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v0

    .line 3989
    .local v0, "oldSlotSize":J
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    .line 3990
    .local v2, "child":Lcom/sleepycat/je/tree/Node;
    if-eqz v2, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 3991
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 3990
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3994
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3995
    invoke-virtual {p0, p1, p5}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3996
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3998
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 3999
    .local v3, "newSlotSize":J
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4001
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4003
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 4004
    :cond_3
    :goto_1
    return-void
.end method

.method public final recoverRecord(IJZZ[B[BJIIZ)V
    .locals 16
    .param p1, "idx"    # I
    .param p2, "lsn"    # J
    .param p4, "knownDeleted"    # Z
    .param p5, "pendingDeleted"    # Z
    .param p6, "key"    # [B
    .param p7, "data"    # [B
    .param p8, "vlsn"    # J
    .param p10, "logrecSize"    # I
    .param p11, "expiration"    # I
    .param p12, "expirationInHours"    # Z

    .line 3876
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3878
    move-object v5, v1

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 3880
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 3882
    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    if-nez v0, :cond_0

    .line 3893
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->setKnownDeletedAndEvictLN(I)V

    .line 3895
    invoke-virtual {v1, v2, v6, v7}, Lcom/sleepycat/je/tree/IN;->setLsnInternal(IJ)V

    .line 3897
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    .line 3899
    return-void

    .line 3902
    :cond_0
    const/4 v6, 0x0

    if-nez p6, :cond_1

    iget-object v0, v1, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3903
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowsKeyUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 3907
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 3909
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v7

    .line 3908
    invoke-virtual {v0, v3, v4, v7}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisibleAtRecovery(JI)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    .line 3911
    .local v0, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 3912
    .local v7, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3914
    invoke-virtual {v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3915
    .end local p6    # "key":[B
    .local v8, "key":[B
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v9

    .line 3927
    .end local v7    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p10    # "logrecSize":I
    .local v0, "logrecSize":I
    goto :goto_2

    .line 3922
    .end local v0    # "logrecSize":I
    .restart local p10    # "logrecSize":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3917
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3922
    .end local v8    # "key":[B
    .restart local p6    # "key":[B
    :catch_2
    move-exception v0

    move-object/from16 v8, p6

    .line 3923
    .end local p6    # "key":[B
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    .restart local v8    # "key":[B
    :goto_0
    new-instance v7, Lcom/sleepycat/je/EnvironmentFailureException;

    .line 3924
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LN is erased unexpectedly, implied corruption. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3926
    invoke-virtual {v1, v6, v3, v4, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v9, v10, v6, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 3917
    .end local v0    # "e":Lcom/sleepycat/je/log/ErasedException;
    .end local v8    # "key":[B
    .restart local p6    # "key":[B
    :catch_3
    move-exception v0

    move-object/from16 v8, p6

    .line 3918
    .end local p6    # "key":[B
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "key":[B
    :goto_1
    new-instance v7, Lcom/sleepycat/je/EnvironmentFailureException;

    .line 3919
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 3920
    invoke-virtual {v1, v6, v3, v4, v2}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v9, v10, v6, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 3930
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "key":[B
    .restart local p6    # "key":[B
    :cond_1
    move-object/from16 v8, p6

    move/from16 v0, p10

    .end local p6    # "key":[B
    .end local p10    # "logrecSize":I
    .local v0, "logrecSize":I
    .restart local v8    # "key":[B
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v9

    .line 3932
    .local v9, "oldSlotSize":J
    invoke-virtual/range {p0 .. p3}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3933
    invoke-virtual {v1, v2, v6}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 3935
    move-object/from16 v6, p7

    invoke-direct {v1, v2, v8, v6}, Lcom/sleepycat/je/tree/IN;->updateLNSlotKey(I[B[B)Z

    move-result v7

    .line 3937
    .local v7, "multiSlotChange":Z
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3938
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearLastLoggedSize(I)V

    .line 3939
    move-wide/from16 v11, p8

    invoke-virtual {v5, v2, v11, v12}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    goto :goto_3

    .line 3941
    :cond_2
    move-wide/from16 v11, p8

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3944
    :goto_3
    if-eqz p4, :cond_4

    .line 3945
    if-nez p5, :cond_3

    .line 3946
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->setKnownDeleted(I)V

    .line 3947
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    goto :goto_4

    .line 3945
    :cond_3
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 3949
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearKnownDeleted(I)V

    .line 3950
    if-eqz p5, :cond_5

    .line 3951
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->setPendingDeleted(I)V

    .line 3952
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    goto :goto_4

    .line 3954
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearPendingDeleted(I)V

    .line 3958
    :goto_4
    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual {v5, v2, v13, v14}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 3960
    if-eqz v7, :cond_6

    .line 3961
    iget-wide v2, v1, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    move-object v15, v5

    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v15, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    goto :goto_5

    .line 3963
    .end local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_6
    move-object v15, v5

    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v2

    .line 3964
    .local v2, "newSlotSize":J
    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3967
    .end local v2    # "newSlotSize":J
    :goto_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3968
    return-void

    .line 3876
    .end local v0    # "logrecSize":I
    .end local v7    # "multiSlotChange":Z
    .end local v8    # "key":[B
    .end local v9    # "oldSlotSize":J
    .end local v15    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p6    # "key":[B
    .restart local p10    # "logrecSize":I
    :cond_7
    move-object/from16 v6, p7

    move-wide/from16 v11, p8

    move/from16 v13, p11

    move/from16 v14, p12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final releaseLatch()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 604
    return-void
.end method

.method public final releaseLatchIfOwner()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->latch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->releaseIfOwner()V

    .line 611
    return-void
.end method

.method public resetAndGetMemorySize()J
    .locals 2

    .line 4794
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 4795
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    return-wide v0
.end method

.method public final serialize(Ljava/nio/ByteBuffer;ZZ)V
    .locals 18
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "deltasOnly"    # Z
    .param p3, "clearDirtyBits"    # Z

    .line 5878
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5880
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/tree/BIN;

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 5882
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->createBloomFilter()[B

    move-result-object v4

    .line 5884
    .local v4, "bloomFilter":[B
    :cond_3
    const/4 v5, 0x0

    .line 5886
    .local v5, "haveExpiration":Z
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 5887
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getExpirationBase()I

    move-result v8

    .line 5888
    .local v8, "base":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v7

    :goto_2
    move v5, v9

    .line 5889
    invoke-static {v1, v8}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5892
    .end local v8    # "base":I
    :cond_5
    iget-wide v8, v0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    invoke-static {v1, v8, v9}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 5894
    iget-object v8, v0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    invoke-static {v1, v8}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 5896
    iget-object v8, v0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_3

    :cond_6
    move v8, v7

    .line 5897
    .local v8, "hasKeyPrefix":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->mayHaveLastLoggedSizeStored()Z

    move-result v9

    .line 5898
    .local v9, "mayHaveLastLoggedSize":Z
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->isVLSNCachingEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v6

    goto :goto_4

    :cond_7
    move v10, v7

    .line 5900
    .local v10, "haveVLSNCache":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v11

    int-to-byte v11, v11

    .line 5901
    .local v11, "booleans":B
    if-eqz v8, :cond_8

    const/4 v12, 0x2

    goto :goto_5

    :cond_8
    move v12, v7

    :goto_5
    or-int/2addr v12, v11

    int-to-byte v11, v12

    .line 5902
    if-eqz v9, :cond_9

    const/4 v12, 0x4

    goto :goto_6

    :cond_9
    move v12, v7

    :goto_6
    or-int/2addr v12, v11

    int-to-byte v11, v12

    .line 5903
    if-eqz v4, :cond_a

    const/16 v12, 0x8

    goto :goto_7

    :cond_a
    move v12, v7

    :goto_7
    or-int/2addr v12, v11

    int-to-byte v11, v12

    .line 5904
    if-eqz v10, :cond_b

    const/16 v12, 0x10

    goto :goto_8

    :cond_b
    move v12, v7

    :goto_8
    or-int/2addr v12, v11

    int-to-byte v11, v12

    .line 5905
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isExpirationInHours()Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x20

    goto :goto_9

    :cond_c
    move v12, v7

    :goto_9
    or-int/2addr v12, v11

    int-to-byte v11, v12

    .line 5907
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5909
    if-eqz v8, :cond_d

    .line 5910
    iget-object v12, v0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    invoke-static {v1, v12}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 5913
    :cond_d
    invoke-direct {v0, v2}, Lcom/sleepycat/je/tree/IN;->getNEntriesToWrite(Z)I

    move-result v12

    .line 5915
    .local v12, "nEntriesToWrite":I
    if-nez v2, :cond_e

    .line 5917
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v13

    goto :goto_a

    .line 5918
    :cond_e
    invoke-virtual {v3, v12}, Lcom/sleepycat/je/tree/BIN;->getDeltaCapacity(I)I

    move-result v13

    :goto_a
    nop

    .line 5931
    .local v13, "maxEntriesToWrite":I
    invoke-static {v1, v12}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5932
    iget v14, v0, Lcom/sleepycat/je/tree/IN;->level:I

    invoke-static {v1, v14}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5933
    invoke-static {v1, v13}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5936
    iget-object v14, v0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-nez v14, :cond_f

    goto :goto_b

    :cond_f
    move v6, v7

    .line 5937
    .local v6, "compactLsnsRep":Z
    :goto_b
    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->writeBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 5938
    if-eqz v6, :cond_10

    .line 5939
    iget-wide v14, v0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    long-to-int v7, v14

    invoke-static {v1, v7}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 5942
    :cond_10
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    iget v14, v0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    if-ge v7, v14, :cond_19

    .line 5945
    if-eqz v2, :cond_11

    .line 5946
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/IN;->isDirty(I)Z

    move-result v14

    if-nez v14, :cond_12

    .line 5947
    move/from16 v16, v6

    goto/16 :goto_e

    .line 5950
    :cond_11
    if-eqz v3, :cond_12

    invoke-direct {v0, v7}, Lcom/sleepycat/je/tree/IN;->canDeleteExtinctSlot(I)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 5951
    move/from16 v16, v6

    goto/16 :goto_e

    .line 5955
    :cond_12
    iget-object v14, v0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v14, v7}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-static {v1, v14}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 5962
    invoke-direct {v0, v7}, Lcom/sleepycat/je/tree/IN;->checkForNullLSN(I)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 5968
    if-eqz v6, :cond_13

    .line 5969
    shl-int/lit8 v14, v7, 0x2

    .line 5970
    .local v14, "offset":I
    invoke-direct {v0, v14}, Lcom/sleepycat/je/tree/IN;->getFileOffset(I)I

    move-result v15

    .line 5971
    .local v15, "fileOffset":I
    move/from16 v16, v6

    .end local v6    # "compactLsnsRep":Z
    .local v16, "compactLsnsRep":Z
    invoke-direct {v0, v14}, Lcom/sleepycat/je/tree/IN;->getFileNumberOffset(I)B

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5972
    and-int/lit16 v6, v15, 0xff

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5973
    ushr-int/lit8 v6, v15, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5974
    ushr-int/lit8 v6, v15, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5975
    .end local v14    # "offset":I
    .end local v15    # "fileOffset":I
    goto :goto_d

    .line 5976
    .end local v16    # "compactLsnsRep":Z
    .restart local v6    # "compactLsnsRep":Z
    :cond_13
    move/from16 v16, v6

    .end local v6    # "compactLsnsRep":Z
    .restart local v16    # "compactLsnsRep":Z
    iget-object v6, v0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    aget-wide v14, v6, v7

    invoke-static {v1, v14, v15}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 5979
    :goto_d
    iget-object v6, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, -0x45

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5982
    if-eqz p3, :cond_14

    .line 5983
    iget-object v6, v0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v14, v6, v7

    and-int/lit8 v14, v14, -0x3

    int-to-byte v14, v14

    aput-byte v14, v6, v7

    .line 5986
    :cond_14
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/IN;->isLastLoggedSizeStored(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 5987
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v6

    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5990
    :cond_15
    if-eqz v10, :cond_16

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5991
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v14

    invoke-static {v1, v14, v15}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 5994
    :cond_16
    if-eqz v5, :cond_17

    .line 5995
    nop

    .line 5996
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/tree/BIN;->getExpirationOffset(I)I

    move-result v6

    .line 5995
    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 5942
    :cond_17
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v16

    goto/16 :goto_c

    .line 5962
    .end local v16    # "compactLsnsRep":Z
    .restart local v6    # "compactLsnsRep":Z
    :cond_18
    move/from16 v16, v6

    .end local v6    # "compactLsnsRep":Z
    .restart local v16    # "compactLsnsRep":Z
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "logging IN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5963
    move/from16 v17, v7

    move v15, v8

    .end local v7    # "i":I
    .end local v8    # "hasKeyPrefix":Z
    .local v15, "hasKeyPrefix":Z
    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with null lsn child  db="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5964
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDeferredWriteMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5965
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isTemporary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5966
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 5942
    .end local v15    # "hasKeyPrefix":Z
    .end local v16    # "compactLsnsRep":Z
    .end local v17    # "i":I
    .restart local v6    # "compactLsnsRep":Z
    .restart local v7    # "i":I
    .restart local v8    # "hasKeyPrefix":Z
    :cond_19
    move/from16 v16, v6

    move/from16 v17, v7

    move v15, v8

    .line 6000
    .end local v6    # "compactLsnsRep":Z
    .end local v7    # "i":I
    .end local v8    # "hasKeyPrefix":Z
    .restart local v15    # "hasKeyPrefix":Z
    .restart local v16    # "compactLsnsRep":Z
    if-eqz v2, :cond_1a

    .line 6001
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getFullBinNEntries()I

    move-result v6

    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 6002
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getFullBinMaxEntries()I

    move-result v6

    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 6004
    if-eqz v4, :cond_1a

    .line 6005
    invoke-static {v4, v1}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->writeToLog([BLjava/nio/ByteBuffer;)V

    .line 6008
    :cond_1a
    return-void
.end method

.method final setBINDelta(Z)V
    .locals 1
    .param p1, "delta"    # Z

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 903
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 905
    :goto_0
    return-void
.end method

.method public final setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 770
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 771
    return-void
.end method

.method public final setDirty(Z)V
    .locals 1
    .param p1, "dirty"    # Z

    .line 874
    if-eqz p1, :cond_0

    .line 875
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 877
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 879
    :goto_0
    return-void
.end method

.method setExpirationInHours(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 1005
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 1007
    :goto_0
    return-void
.end method

.method public final setFetchINHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 6579
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 6580
    return-void
.end method

.method public final setFetchedCold(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 922
    if-eqz p1, :cond_0

    .line 923
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 925
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 927
    :goto_0
    return-void
.end method

.method public final setFetchedColdOffHeap(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 939
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 941
    :goto_0
    return-void
.end method

.method public final setIdentifierKey([BZ)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "makeDirty"    # Z

    .line 1026
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    .line 1044
    if-eqz p2, :cond_0

    .line 1045
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1047
    :cond_0
    return-void

    .line 1026
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setInListResident(Z)V
    .locals 2
    .param p1, "resident"    # Z

    .line 4963
    if-nez p1, :cond_0

    .line 4965
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/je/tree/INTargetRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4966
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/je/tree/INKeyRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4969
    :cond_0
    if-eqz p1, :cond_1

    .line 4970
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 4972
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 4975
    :goto_0
    if-eqz p1, :cond_2

    .line 4977
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/je/tree/INTargetRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4978
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/je/tree/INKeyRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4980
    :cond_2
    return-void
.end method

.method public final setInPri2LRU(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 990
    if-eqz p1, :cond_0

    .line 991
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 993
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 995
    :goto_0
    return-void
.end method

.method final setIsRoot(Z)V
    .locals 1
    .param p1, "isRoot"    # Z

    .line 960
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->setIsRootFlag(Z)V

    .line 961
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 962
    return-void
.end method

.method public setKey(I[B[BZ)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "isInsertion"    # Z

    .line 1501
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1508
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v1, :cond_4

    .line 1510
    array-length v3, v1

    invoke-static {v1, v3, p2}, Lcom/sleepycat/je/tree/Key;->getKeyPrefixLength([BI[B)I

    move-result v1

    .line 1513
    .local v1, "newPrefixLen":I
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1519
    if-eqz p4, :cond_0

    .line 1520
    invoke-static {v3, p2}, Lcom/sleepycat/je/tree/Key;->createKeyPrefix([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 1521
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;->computeKeyPrefix(I)[B

    move-result-object v2

    :goto_0
    nop

    .line 1523
    .local v2, "newPrefix":[B
    if-eqz v2, :cond_1

    .line 1525
    invoke-static {v2, p2}, Lcom/sleepycat/je/tree/Key;->createKeyPrefix([B[B)[B

    move-result-object v2

    .line 1528
    :cond_1
    invoke-direct {p0, v2, p2, p3, p1}, Lcom/sleepycat/je/tree/IN;->recalcSuffixes([B[B[BI)V

    .line 1529
    return v0

    .line 1533
    .end local v2    # "newPrefix":[B
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INKeyRep$Type;

    .line 1535
    .local v3, "prevRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    invoke-static {v4, p2}, Lcom/sleepycat/je/tree/IN;->computeKeySuffix([B[B)[B

    move-result-object v4

    .line 1536
    .local v4, "suffix":[B
    iget-object v5, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v5, p1, v4, p3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1538
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 1541
    .end local v1    # "newPrefixLen":I
    .end local v3    # "prevRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    .end local v4    # "suffix":[B
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    if-eqz v1, :cond_5

    .line 1547
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, p3, p1}, Lcom/sleepycat/je/tree/IN;->recalcSuffixes([B[B[BI)V

    .line 1548
    return v0

    .line 1551
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/INKeyRep$Type;

    .line 1552
    .local v1, "oldRepType":Lcom/sleepycat/je/tree/INKeyRep$Type;
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1553
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INKeyRep;->getType()Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    return v0
.end method

.method final setKeyPrefix([B)V
    .locals 6
    .param p1, "keyPrefix"    # [B

    .line 1276
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 1279
    .local v0, "prevLength":I
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    .line 1281
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p1

    .line 1282
    .local v1, "currLength":I
    :goto_1
    int-to-long v2, v0

    int-to-long v4, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 1283
    return-void

    .line 1276
    .end local v0    # "prevLength":I
    .end local v1    # "currLength":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final setKnownDeleted(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 1118
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1121
    and-int/lit8 v1, v1, -0x9

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1122
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1123
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1124
    return-void

    .line 1118
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final setKnownDeletedAndEvictLN(I)V
    .locals 2
    .param p1, "index"    # I

    .line 1133
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->setKnownDeleted(I)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 1138
    .local v0, "oldLN":Lcom/sleepycat/je/tree/LN;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(Lcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/Node;)V

    .line 1141
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 1142
    return-void

    .line 1133
    .end local v0    # "oldLN":Lcom/sleepycat/je/tree/LN;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final setLastFullLsn(J)V
    .locals 0
    .param p1, "lsn"    # J

    .line 5253
    iput-wide p1, p0, Lcom/sleepycat/je/tree/IN;->lastFullVersion:J

    .line 5254
    return-void
.end method

.method public setLastLoggedLsn(J)V
    .locals 4
    .param p1, "lsn"    # J

    .line 5224
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5225
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5226
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setLastFullLsn(J)V

    goto :goto_0

    .line 5228
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/tree/BIN;->setLastDeltaLsn(J)V

    goto :goto_0

    .line 5231
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setLastFullLsn(J)V

    .line 5233
    :goto_0
    return-void
.end method

.method public setLastLoggedSize(II)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "lastLoggedSize"    # I

    .line 2061
    return-void
.end method

.method setLastLoggedSizeUnconditional(II)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "lastLoggedSize"    # I

    .line 2073
    return-void
.end method

.method public setLsn(IJ)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "lsn"    # J

    .line 1776
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/tree/IN;->setLsn(IJZ)V

    .line 1777
    return-void
.end method

.method final setLsnInternal(IJ)V
    .locals 9
    .param p1, "idx"    # I
    .param p2, "value"    # J

    .line 1807
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryLsnLongArray:[J

    if-eqz v0, :cond_0

    .line 1808
    aput-wide p2, v0, p1

    .line 1809
    return-void

    .line 1812
    :cond_0
    shl-int/lit8 v0, p1, 0x2

    .line 1814
    .local v0, "offset":I
    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1815
    invoke-direct {p0, v0, v4}, Lcom/sleepycat/je/tree/IN;->setFileNumberOffset(IB)V

    .line 1816
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->setFileOffset(II)V

    .line 1817
    return-void

    .line 1820
    :cond_1
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v5

    .line 1822
    .local v5, "thisFileNumber":J
    iget-wide v7, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    cmp-long v1, v7, v1

    if-nez v1, :cond_2

    .line 1824
    iput-wide v5, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 1825
    invoke-direct {p0, v0, v4}, Lcom/sleepycat/je/tree/IN;->setFileNumberOffset(IB)V

    goto :goto_0

    .line 1829
    :cond_2
    cmp-long v1, v5, v7

    if-gez v1, :cond_4

    .line 1830
    invoke-direct {p0, v5, v6}, Lcom/sleepycat/je/tree/IN;->adjustFileNumbers(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1831
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->mutateToLongArray(IJ)V

    .line 1832
    return-void

    .line 1834
    :cond_3
    iput-wide v5, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    .line 1837
    :cond_4
    iget-wide v1, p0, Lcom/sleepycat/je/tree/IN;->baseFileNumber:J

    sub-long v3, v5, v1

    .line 1838
    .local v3, "fileNumberDifference":J
    const-wide/16 v7, 0x7f

    cmp-long v7, v3, v7

    if-lez v7, :cond_5

    .line 1839
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->mutateToLongArray(IJ)V

    .line 1840
    return-void

    .line 1843
    :cond_5
    sub-long v1, v5, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->setFileNumberOffset(IB)V

    .line 1848
    .end local v3    # "fileNumberDifference":J
    :goto_0
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1849
    .local v1, "fileOffset":I
    const v2, 0xfffffe

    if-le v1, v2, :cond_6

    .line 1850
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->mutateToLongArray(IJ)V

    .line 1851
    return-void

    .line 1854
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->setFileOffset(II)V

    .line 1856
    return-void
.end method

.method public setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V
    .locals 0
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 5002
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->nextLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 5003
    return-void
.end method

.method setNoDataLN(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1223
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1224
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1226
    return-void
.end method

.method final setNodeId(J)V
    .locals 0
    .param p1, "nid"    # J

    .line 827
    iput-wide p1, p0, Lcom/sleepycat/je/tree/IN;->nodeId:J

    .line 828
    return-void
.end method

.method public setOffHeapBINId(IIZZ)V
    .locals 6
    .param p1, "idx"    # I
    .param p2, "val"    # I
    .param p3, "pri2"    # Z
    .param p4, "dirty"    # Z

    .line 2087
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2088
    if-ltz p2, :cond_2

    .line 2090
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINPri2(IZ)V

    .line 2091
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINDirty(IZ)V

    .line 2093
    add-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    .line 2094
    .local v0, "newVal":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v2

    .line 2096
    .local v2, "oldVal":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 2097
    return-void

    .line 2100
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 2102
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v4, p1, v0, v1, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/IN;->offHeapBINIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2103
    return-void

    .line 2100
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2088
    .end local v0    # "newVal":J
    .end local v2    # "oldVal":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2087
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setParent(Lcom/sleepycat/je/tree/IN;)V
    .locals 1
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 666
    if-eqz p1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 677
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->parent:Lcom/sleepycat/je/tree/IN;

    .line 678
    return-void

    .line 666
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final setPendingDeleted(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 1089
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryStates:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1090
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1092
    return-void
.end method

.method public setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V
    .locals 0
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 4994
    iput-object p1, p0, Lcom/sleepycat/je/tree/IN;->prevLRUNode:Lcom/sleepycat/je/tree/IN;

    .line 4995
    return-void
.end method

.method public setProhibitNextDelta(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 5040
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5041
    return-void

    .line 5044
    :cond_0
    if-eqz p1, :cond_1

    .line 5045
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 5047
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 5049
    :goto_0
    return-void
.end method

.method public final setRecalcToggle(Z)V
    .locals 1
    .param p1, "toggle"    # Z

    .line 948
    if-eqz p1, :cond_0

    .line 949
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    goto :goto_0

    .line 951
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    .line 953
    :goto_0
    return-void
.end method

.method setTarget(ILcom/sleepycat/je/tree/Node;)V
    .locals 4
    .param p1, "idx"    # I
    .param p2, "target"    # Lcom/sleepycat/je/tree/Node;

    .line 2177
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2181
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/Node;

    .line 2183
    .local v0, "curChild":Lcom/sleepycat/je/tree/Node;
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v1, p1, p2, p0}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2185
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2186
    move-object v1, p2

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/tree/IN;->setParent(Lcom/sleepycat/je/tree/IN;)V

    .line 2189
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2190
    if-nez p2, :cond_1

    .line 2197
    if-eqz v0, :cond_2

    .line 2198
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2199
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2201
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/IN;->setHasCachedChildrenFlag(Z)V

    .line 2203
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2215
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 2219
    :cond_1
    if-nez v0, :cond_2

    .line 2220
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2222
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/IN;->setHasCachedChildrenFlag(Z)V

    .line 2235
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/Evictor;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 2239
    :cond_2
    :goto_0
    return-void

    .line 2177
    .end local v0    # "curChild":Lcom/sleepycat/je/tree/Node;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not latched for write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2179
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public shortClassName()Ljava/lang/String;
    .locals 1

    .line 6512
    const-string v0, "IN"

    return-object v0
.end method

.method public final split(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/tree/IN;
    .locals 6
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "childIndex"    # I
    .param p3, "grandParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "maxEntries"    # I

    .line 4154
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/IN;->splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method final splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;
    .locals 38
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "childIndex"    # I
    .param p3, "grandParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "maxEntries"    # I
    .param p5, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 4196
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4202
    iget-object v0, v14, Lcom/sleepycat/je/tree/IN;->identifierKey:[B

    if-eqz v0, :cond_19

    .line 4206
    const/4 v7, 0x0

    invoke-virtual {v14, v0, v7, v7}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v13

    .line 4208
    .local v13, "idKeyIndex":I
    if-gez p5, :cond_0

    .line 4209
    iget v0, v14, Lcom/sleepycat/je/tree/IN;->nEntries:I

    div-int/lit8 v0, v0, 0x2

    move v12, v0

    .end local p5    # "splitIndex":I
    .local v0, "splitIndex":I
    goto :goto_0

    .line 4208
    .end local v0    # "splitIndex":I
    .restart local p5    # "splitIndex":I
    :cond_0
    move/from16 v12, p5

    .line 4215
    .end local p5    # "splitIndex":I
    .local v12, "splitIndex":I
    :goto_0
    if-ge v13, v12, :cond_1

    .line 4221
    move v0, v12

    .line 4222
    .local v0, "low":I
    iget v1, v14, Lcom/sleepycat/je/tree/IN;->nEntries:I

    move v11, v0

    move v9, v1

    .local v1, "high":I
    goto :goto_1

    .line 4229
    .end local v0    # "low":I
    .end local v1    # "high":I
    :cond_1
    const/4 v0, 0x0

    .line 4230
    .restart local v0    # "low":I
    move v1, v12

    move v11, v0

    move v9, v1

    .line 4233
    .end local v0    # "low":I
    .local v9, "high":I
    .local v11, "low":I
    :goto_1
    invoke-virtual {v14, v11}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v10

    .line 4243
    .local v10, "newIdKey":[B
    sub-int v0, v9, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4245
    move/from16 v8, p4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v14, Lcom/sleepycat/je/tree/IN;->level:I

    .line 4243
    invoke-virtual {v14, v10, v0, v2}, Lcom/sleepycat/je/tree/IN;->createNewInstance([BII)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    .line 4248
    .local v6, "newSibling":Lcom/sleepycat/je/tree/IN;
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 4251
    const/4 v0, 0x0

    .line 4252
    .local v0, "addedNewSiblingToCompressorQueue":Z
    sub-int v4, v9, v11

    .line 4253
    .local v4, "newSiblingNEntries":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v2

    move v5, v2

    .line 4255
    .local v5, "haveCachedChildren":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v2, :cond_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v2

    if-ne v5, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4257
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "splitIndex":I
    .restart local v13    # "idKeyIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v2, :cond_4

    :try_start_3
    move-object v2, v14

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    goto :goto_3

    .line 4454
    .end local v0    # "addedNewSiblingToCompressorQueue":Z
    .end local v4    # "newSiblingNEntries":I
    .end local v5    # "haveCachedChildren":Z
    :catchall_0
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move/from16 v19, v12

    move/from16 v18, v13

    goto/16 :goto_a

    .line 4257
    .restart local v0    # "addedNewSiblingToCompressorQueue":Z
    .restart local v4    # "newSiblingNEntries":I
    .restart local v5    # "haveCachedChildren":Z
    :cond_4
    const/4 v2, 0x0

    .line 4262
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_3
    move/from16 v16, v11

    move/from16 v7, v16

    .local v7, "i":I
    :goto_4
    if-ge v7, v9, :cond_6

    .line 4264
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 4266
    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 4268
    const/4 v0, 0x1

    .line 4269
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    move-object v1, v6

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 4272
    :cond_5
    invoke-virtual {v6, v14, v7}, Lcom/sleepycat/je/tree/IN;->appendEntryFromOtherNode(Lcom/sleepycat/je/tree/IN;I)V

    .line 4273
    invoke-virtual {v14, v7}, Lcom/sleepycat/je/tree/IN;->clearEntry(I)V

    .line 4262
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    goto :goto_4

    .line 4276
    .end local v7    # "i":I
    :cond_6
    if-nez v11, :cond_7

    .line 4277
    invoke-direct {v14, v4}, Lcom/sleepycat/je/tree/IN;->shiftEntriesLeft(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4280
    :cond_7
    :try_start_4
    iget v1, v14, Lcom/sleepycat/je/tree/IN;->nEntries:I

    sub-int/2addr v1, v4

    iput v1, v14, Lcom/sleepycat/je/tree/IN;->nEntries:I

    .line 4281
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 4283
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 4284
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v1

    invoke-direct {v14, v1}, Lcom/sleepycat/je/tree/IN;->setHasCachedChildrenFlag(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4287
    :cond_8
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v1, :cond_a

    .line 4288
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v3

    if-ne v1, v3, :cond_9

    goto :goto_5

    .line 4287
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4289
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "splitIndex":I
    .restart local v13    # "idKeyIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :cond_a
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v1, :cond_c

    .line 4290
    :try_start_9
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    .line 4291
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v3

    if-ne v1, v3, :cond_b

    goto :goto_6

    .line 4289
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4293
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "splitIndex":I
    .restart local v13    # "idKeyIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :cond_c
    :goto_6
    :try_start_a
    invoke-virtual {v14, v6, v11, v9}, Lcom/sleepycat/je/tree/IN;->adjustCursors(Lcom/sleepycat/je/tree/IN;II)V

    .line 4300
    const/4 v1, -0x1

    invoke-direct {v14, v1}, Lcom/sleepycat/je/tree/IN;->computeKeyPrefix(I)[B

    move-result-object v3

    move-object v7, v3

    .line 4301
    .local v7, "newKeyPrefix":[B
    const/4 v3, 0x0

    invoke-direct {v14, v7, v3, v3, v1}, Lcom/sleepycat/je/tree/IN;->recalcSuffixes([B[B[BI)V

    .line 4304
    iget-object v3, v14, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v3, v14}, Lcom/sleepycat/je/tree/INKeyRep;->compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v3, v14, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 4307
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v1, 0x1

    if-le v3, v1, :cond_d

    .line 4308
    const/4 v1, -0x1

    :try_start_b
    invoke-direct {v6, v1}, Lcom/sleepycat/je/tree/IN;->computeKeyPrefix(I)[B

    move-result-object v3

    .line 4309
    .local v3, "newSiblingPrefix":[B
    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "addedNewSiblingToCompressorQueue":Z
    .local v17, "addedNewSiblingToCompressorQueue":Z
    invoke-direct {v6, v3, v0, v0, v1}, Lcom/sleepycat/je/tree/IN;->recalcSuffixes([B[B[BI)V

    .line 4311
    invoke-direct {v6}, Lcom/sleepycat/je/tree/IN;->initMemorySize()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 4307
    .end local v3    # "newSiblingPrefix":[B
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .restart local v0    # "addedNewSiblingToCompressorQueue":Z
    :cond_d
    move/from16 v17, v0

    .line 4314
    .end local v0    # "addedNewSiblingToCompressorQueue":Z
    .restart local v17    # "addedNewSiblingToCompressorQueue":Z
    :goto_7
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->idKeyIsSlotKey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4315
    invoke-direct {v6}, Lcom/sleepycat/je/tree/IN;->idKeyIsSlotKey()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 4327
    .local v0, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v1

    move-object v3, v1

    .line 4328
    .local v3, "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    move-object/from16 p5, v2

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local p5, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-wide v1, v14, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    .line 4329
    .local v1, "oldMemorySize":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-wide/from16 v20, v18

    .line 4330
    .local v20, "newSize":J
    move/from16 v19, v12

    move/from16 v18, v13

    move-wide/from16 v12, v20

    .end local v13    # "idKeyIndex":I
    .end local v20    # "newSize":J
    .local v12, "newSize":J
    .local v18, "idKeyIndex":I
    .local v19, "splitIndex":I
    :try_start_d
    invoke-virtual {v14, v1, v2, v12, v13}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 4354
    nop

    .line 4355
    invoke-virtual {v6, v15}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisionalNoCompress(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 4357
    .local v22, "newSiblingLsn":J
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisionalNoCompress(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v20

    move-wide/from16 v24, v20

    .line 4359
    .local v24, "myNewLsn":J
    move-wide/from16 v20, v1

    .end local v1    # "oldMemorySize":J
    .local v20, "oldMemorySize":J
    iget v1, v14, Lcom/sleepycat/je/tree/IN;->nEntries:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-lez v1, :cond_16

    .line 4370
    if-nez v11, :cond_f

    .line 4377
    :try_start_e
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->prepareForSlotReuse(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4379
    move-object/from16 v1, p1

    move-object/from16 v26, p5

    .end local p5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v26, "bin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v2, p2

    move-wide/from16 v27, v12

    move-object v13, v3

    .end local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v12    # "newSize":J
    .local v13, "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .local v27, "newSize":J
    move-object v3, v6

    move/from16 v29, v4

    move/from16 v30, v5

    .end local v4    # "newSiblingNEntries":I
    .end local v5    # "haveCachedChildren":Z
    .local v29, "newSiblingNEntries":I
    .local v30, "haveCachedChildren":Z
    move-wide/from16 v4, v22

    move-object v12, v6

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .local v12, "newSibling":Lcom/sleepycat/je/tree/IN;
    move-object v6, v10

    :try_start_f
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/tree/IN;->updateSplitSlot(ILcom/sleepycat/je/tree/IN;J[B)V

    .line 4382
    nop

    .line 4383
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    .line 4382
    move-wide/from16 v4, v24

    .end local v24    # "myNewLsn":J
    .local v4, "myNewLsn":J
    invoke-virtual {v15, v14, v1, v4, v5}, Lcom/sleepycat/je/tree/IN;->insertEntry(Lcom/sleepycat/je/tree/Node;[BJ)Z

    move-result v1

    .line 4384
    .local v1, "inserted":Z
    if-eqz v1, :cond_e

    .line 4385
    .end local v1    # "inserted":Z
    move-wide/from16 v24, v4

    move-wide/from16 v5, v22

    goto :goto_8

    .line 4384
    .restart local v1    # "inserted":Z
    :cond_e
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 4454
    .end local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "inserted":Z
    .end local v4    # "myNewLsn":J
    .end local v7    # "newKeyPrefix":[B
    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .end local v20    # "oldMemorySize":J
    .end local v22    # "newSiblingLsn":J
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v27    # "newSize":J
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :catchall_1
    move-exception v0

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move-object/from16 v27, v12

    goto/16 :goto_a

    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    :catchall_2
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_a

    .line 4391
    .restart local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .local v4, "newSiblingNEntries":I
    .restart local v5    # "haveCachedChildren":Z
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "newKeyPrefix":[B
    .local v12, "newSize":J
    .restart local v17    # "addedNewSiblingToCompressorQueue":Z
    .restart local v20    # "oldMemorySize":J
    .restart local v22    # "newSiblingLsn":J
    .restart local v24    # "myNewLsn":J
    .restart local p5    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_f
    move-object/from16 v26, p5

    move/from16 v29, v4

    move/from16 v30, v5

    move-wide/from16 v27, v12

    move-wide/from16 v4, v24

    move-object v13, v3

    move-object v12, v6

    .end local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v5    # "haveCachedChildren":Z
    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v24    # "myNewLsn":J
    .end local p5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v4, "myNewLsn":J
    .local v12, "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v27    # "newSize":J
    .restart local v29    # "newSiblingNEntries":I
    .restart local v30    # "haveCachedChildren":Z
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {v14, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p0

    move-wide/from16 v24, v4

    .end local v4    # "myNewLsn":J
    .restart local v24    # "myNewLsn":J
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/tree/IN;->updateSplitSlot(ILcom/sleepycat/je/tree/IN;J[B)V

    .line 4393
    move-wide/from16 v5, v22

    .end local v22    # "newSiblingLsn":J
    .local v5, "newSiblingLsn":J
    invoke-virtual {v15, v12, v10, v5, v6}, Lcom/sleepycat/je/tree/IN;->insertEntry(Lcom/sleepycat/je/tree/Node;[BJ)Z

    move-result v1

    .line 4395
    .restart local v1    # "inserted":Z
    if-eqz v1, :cond_15

    .line 4398
    .end local v1    # "inserted":Z
    :goto_8
    invoke-virtual {v13, v12}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 4405
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_10

    .line 4406
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->optionalLog()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v4, p3

    move-wide/from16 v22, v1

    .local v1, "parentLsn":J
    goto :goto_9

    .line 4408
    .end local v1    # "parentLsn":J
    :cond_10
    move-object/from16 v4, p3

    :try_start_12
    invoke-virtual {v15, v4}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisional(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v1

    move-wide/from16 v22, v1

    .line 4412
    .local v22, "parentLsn":J
    :goto_9
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/sleepycat/je/recovery/Checkpointer;->coordinateSplitWithCheckpoint(Lcom/sleepycat/je/tree/IN;)V

    .line 4418
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isDBIN()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4420
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-nez v1, :cond_11

    :try_start_13
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-nez v1, :cond_12

    .line 4421
    :cond_11
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    .line 4431
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 4434
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v1, :cond_13

    if-eqz v30, :cond_13

    .line 4436
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4446
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 4450
    :cond_13
    :try_start_16
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move-wide/from16 v31, v5

    .end local v5    # "newSiblingLsn":J
    .local v31, "newSiblingLsn":J
    move-wide/from16 v5, v22

    move-object/from16 v16, v7

    .end local v7    # "newKeyPrefix":[B
    .local v16, "newKeyPrefix":[B
    move-wide/from16 v7, v24

    move/from16 v34, v9

    move-object/from16 v33, v10

    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .local v33, "newIdKey":[B
    .local v34, "high":I
    move-wide/from16 v9, v31

    move/from16 v35, v11

    .end local v11    # "low":I
    .local v35, "low":I
    move/from16 v11, v19

    move-wide/from16 v36, v27

    move-object/from16 v27, v12

    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .local v27, "newSibling":Lcom/sleepycat/je/tree/IN;
    .local v36, "newSize":J
    move/from16 v12, v18

    move-object/from16 v28, v13

    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .local v28, "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    move/from16 v13, p2

    :try_start_17
    invoke-direct/range {v1 .. v13}, Lcom/sleepycat/je/tree/IN;->traceSplit(Ljava/util/logging/Level;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;JJJIII)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 4454
    .end local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "newKeyPrefix":[B
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .end local v20    # "oldMemorySize":J
    .end local v24    # "myNewLsn":J
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .end local v31    # "newSiblingLsn":J
    .end local v36    # "newSize":J
    invoke-virtual/range {v27 .. v27}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 4455
    nop

    .line 4457
    return-object v27

    .line 4418
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .restart local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v5    # "newSiblingLsn":J
    .restart local v7    # "newKeyPrefix":[B
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v17    # "addedNewSiblingToCompressorQueue":Z
    .restart local v20    # "oldMemorySize":J
    .restart local v24    # "myNewLsn":J
    .restart local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v27, "newSize":J
    .restart local v29    # "newSiblingNEntries":I
    .restart local v30    # "haveCachedChildren":Z
    :cond_14
    move-wide/from16 v31, v5

    move-object/from16 v16, v7

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move-wide/from16 v36, v27

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .end local v5    # "newSiblingLsn":J
    .end local v7    # "newKeyPrefix":[B
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v16    # "newKeyPrefix":[B
    .local v27, "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v31    # "newSiblingLsn":J
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    .restart local v36    # "newSize":J
    :try_start_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v1

    .line 4395
    .end local v16    # "newKeyPrefix":[B
    .end local v22    # "parentLsn":J
    .end local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v31    # "newSiblingLsn":J
    .end local v36    # "newSize":J
    .local v1, "inserted":Z
    .restart local v5    # "newSiblingLsn":J
    .restart local v7    # "newKeyPrefix":[B
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .local v27, "newSize":J
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :cond_15
    move-wide/from16 v31, v5

    move-object/from16 v16, v7

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move-wide/from16 v36, v27

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .end local v5    # "newSiblingLsn":J
    .end local v7    # "newKeyPrefix":[B
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v16    # "newKeyPrefix":[B
    .local v27, "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v31    # "newSiblingLsn":J
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    .restart local v36    # "newSize":J
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v2

    .line 4454
    .end local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "inserted":Z
    .end local v16    # "newKeyPrefix":[B
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .end local v20    # "oldMemorySize":J
    .end local v24    # "myNewLsn":J
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .end local v31    # "newSiblingLsn":J
    .end local v36    # "newSize":J
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :catchall_3
    move-exception v0

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move-object/from16 v27, v12

    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    goto/16 :goto_a

    .line 4359
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .restart local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .local v4, "newSiblingNEntries":I
    .local v5, "haveCachedChildren":Z
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "newKeyPrefix":[B
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .local v12, "newSize":J
    .restart local v17    # "addedNewSiblingToCompressorQueue":Z
    .restart local v20    # "oldMemorySize":J
    .local v22, "newSiblingLsn":J
    .restart local v24    # "myNewLsn":J
    .restart local p5    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_16
    move-object/from16 v26, p5

    move-object/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v27, v6

    move-object/from16 v16, v7

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move-wide/from16 v36, v12

    move-wide/from16 v31, v22

    .end local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v4    # "newSiblingNEntries":I
    .end local v5    # "haveCachedChildren":Z
    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "newKeyPrefix":[B
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "newSize":J
    .end local v22    # "newSiblingLsn":J
    .end local p5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v16    # "newKeyPrefix":[B
    .restart local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v29    # "newSiblingNEntries":I
    .restart local v30    # "haveCachedChildren":Z
    .restart local v31    # "newSiblingLsn":J
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    .restart local v36    # "newSize":J
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v1

    .line 4454
    .end local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "newKeyPrefix":[B
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .end local v20    # "oldMemorySize":J
    .end local v24    # "myNewLsn":J
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v28    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .end local v31    # "newSiblingLsn":J
    .end local v36    # "newSize":J
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :catchall_4
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    goto :goto_a

    .line 4315
    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v4    # "newSiblingNEntries":I
    .restart local v5    # "haveCachedChildren":Z
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "newKeyPrefix":[B
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .local v12, "splitIndex":I
    .local v13, "idKeyIndex":I
    .restart local v17    # "addedNewSiblingToCompressorQueue":Z
    :cond_17
    move-object/from16 v26, v2

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v27, v6

    move-object/from16 v16, v7

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move/from16 v19, v12

    move/from16 v18, v13

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v4    # "newSiblingNEntries":I
    .end local v5    # "haveCachedChildren":Z
    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "newKeyPrefix":[B
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .restart local v16    # "newKeyPrefix":[B
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "newSiblingNEntries":I
    .restart local v30    # "haveCachedChildren":Z
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v0

    .line 4314
    .end local v16    # "newKeyPrefix":[B
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v4    # "newSiblingNEntries":I
    .restart local v5    # "haveCachedChildren":Z
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "newKeyPrefix":[B
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "splitIndex":I
    .restart local v13    # "idKeyIndex":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :cond_18
    move-object/from16 v26, v2

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v27, v6

    move-object/from16 v16, v7

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move/from16 v19, v12

    move/from16 v18, v13

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v4    # "newSiblingNEntries":I
    .end local v5    # "haveCachedChildren":Z
    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "newKeyPrefix":[B
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .restart local v16    # "newKeyPrefix":[B
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "newSiblingNEntries":I
    .restart local v30    # "haveCachedChildren":Z
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "childIndex":I
    .end local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "maxEntries":I
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 4454
    .end local v16    # "newKeyPrefix":[B
    .end local v17    # "addedNewSiblingToCompressorQueue":Z
    .end local v26    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "newSiblingNEntries":I
    .end local v30    # "haveCachedChildren":Z
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "childIndex":I
    .restart local p3    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "maxEntries":I
    :catchall_5
    move-exception v0

    goto :goto_a

    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .restart local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "high":I
    .restart local v10    # "newIdKey":[B
    .restart local v11    # "low":I
    .restart local v12    # "splitIndex":I
    .restart local v13    # "idKeyIndex":I
    :catchall_6
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v35, v11

    move/from16 v19, v12

    move/from16 v18, v13

    .end local v6    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "high":I
    .end local v10    # "newIdKey":[B
    .end local v11    # "low":I
    .end local v12    # "splitIndex":I
    .end local v13    # "idKeyIndex":I
    .restart local v18    # "idKeyIndex":I
    .restart local v19    # "splitIndex":I
    .restart local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .restart local v33    # "newIdKey":[B
    .restart local v34    # "high":I
    .restart local v35    # "low":I
    :goto_a
    invoke-virtual/range {v27 .. v27}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0

    .line 4203
    .end local v18    # "idKeyIndex":I
    .end local v19    # "splitIndex":I
    .end local v27    # "newSibling":Lcom/sleepycat/je/tree/IN;
    .end local v33    # "newIdKey":[B
    .end local v34    # "high":I
    .end local v35    # "low":I
    .local p5, "splitIndex":I
    :cond_19
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 4196
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method splitSpecial(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I[BZ)Lcom/sleepycat/je/tree/IN;
    .locals 9
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "parentIndex"    # I
    .param p3, "grandParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "maxEntriesPerNode"    # I
    .param p5, "key"    # [B
    .param p6, "leftSide"    # Z

    .line 4171
    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0, v0}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v0

    .line 4173
    .local v0, "index":I
    if-eqz p6, :cond_0

    if-nez v0, :cond_0

    .line 4174
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/tree/IN;->splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    return-object v1

    .line 4177
    :cond_0
    if-nez p6, :cond_1

    iget v1, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1

    .line 4178
    add-int/lit8 v8, v1, -0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/tree/IN;->splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    return-object v1

    .line 4183
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/IN;->split(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    return-object v1
.end method

.method public varargs toSafeString([I)Ljava/lang/String;
    .locals 9
    .param p1, "slotIndexes"    # [I

    .line 6473
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6474
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6476
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "IN nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6477
    const-string v2, " lastLoggedLSN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6478
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6479
    const-string v2, " lastFulLSN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6480
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6481
    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6482
    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/tree/IN;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6483
    const-string v2, " isBINDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6484
    const-string v2, " nSlots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6486
    if-eqz p1, :cond_2

    .line 6487
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    .line 6488
    .local v4, "i":I
    const-string v5, " slot-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6489
    const-string v5, "lsn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6490
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6491
    const-string v5, " offset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6492
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6493
    if-eqz v0, :cond_1

    .line 6494
    const-string v5, " offset+logSize="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6495
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v5

    .line 6496
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSizeUnconditional(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 6495
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6498
    :cond_1
    invoke-direct {p0, v1, v4, v0}, Lcom/sleepycat/je/tree/IN;->dumpSlotState(Ljava/lang/StringBuilder;ILcom/sleepycat/je/tree/BIN;)V

    .line 6499
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6487
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6503
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6508
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trackProvisionalObsolete(Lcom/sleepycat/je/tree/IN;J)V
    .locals 8
    .param p1, "childIN"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "obsoleteLsn"    # J

    .line 5625
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5628
    .local v2, "moveChildInfo":Z
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5630
    .local v0, "addChildLsn":Z
    :goto_1
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 5631
    return-void

    .line 5634
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v3, :cond_3

    .line 5635
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 5637
    .local v3, "oldMemSize":I
    :goto_2
    if-eqz v2, :cond_5

    .line 5638
    iget-object v4, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v4, :cond_4

    .line 5640
    iget-object v5, p1, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5641
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->copyObsoleteInfo(Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;)V

    goto :goto_3

    .line 5644
    :cond_4
    iget-object v4, p1, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    iput-object v4, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5646
    :goto_3
    iget-object v4, p1, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5647
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 5646
    invoke-virtual {p1, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 5648
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5651
    :cond_5
    if-eqz v0, :cond_7

    .line 5652
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-nez v1, :cond_6

    .line 5653
    new-instance v1, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 5655
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->addObsoleteInfo(J)V

    .line 5658
    :cond_7
    int-to-long v4, v3

    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->provisionalObsolete:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    if-eqz v1, :cond_8

    .line 5660
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getMemorySize()I

    move-result v1

    int-to-long v6, v1

    goto :goto_4

    :cond_8
    const-wide/16 v6, 0x0

    .line 5658
    :goto_4
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 5662
    return-void
.end method

.method public final declared-synchronized unpin()V
    .locals 1

    monitor-enter p0

    .line 749
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I

    if-lez v0, :cond_0

    .line 750
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->pinCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    monitor-exit p0

    return-void

    .line 749
    .end local p0    # "this":Lcom/sleepycat/je/tree/IN;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateEntry(IJJI)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "newLSN"    # J
    .param p4, "newVLSN"    # J
    .param p6, "newSize"    # I

    .line 3572
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3574
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3575
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3576
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p1, p4, p5}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    goto :goto_0

    .line 3578
    :cond_0
    invoke-virtual {p0, p1, p6}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3582
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3583
    return-void
.end method

.method public final updateLRU(Lcom/sleepycat/je/CacheMode;)V
    .locals 2
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 631
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    return-void

    .line 635
    :cond_0
    sget-object v0, Lcom/sleepycat/je/tree/IN$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    goto :goto_2

    .line 643
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setFetchedCold(Z)V

    .line 644
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/IN;->setFetchedColdOffHeap(Z)V

    .line 646
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 648
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/evictor/Evictor;->moveBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_1

    .line 638
    :pswitch_1
    nop

    .line 654
    :cond_4
    :goto_1
    return-void

    .line 652
    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateMemoryBudget()V
    .locals 4

    .line 4862
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 4863
    .local v0, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/sleepycat/je/dbi/INList;->memRecalcUpdate(Lcom/sleepycat/je/tree/IN;J)V

    .line 4864
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTreeMemoryUsage(J)V

    .line 4865
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 4866
    return-void
.end method

.method updateMemorySize(J)V
    .locals 4
    .param p1, "delta"    # J

    .line 4828
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 4829
    return-void

    .line 4832
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    .line 4834
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4842
    iget-wide v0, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    .line 4843
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getFixedMemoryOverhead()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 4844
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4842
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4846
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getFixedMemoryOverhead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " computed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4847
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4848
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;->assertPrintMemorySize()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4850
    :cond_2
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/je/tree/IN;->accumulatedDelta:I

    .line 4851
    sget v1, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    if-gt v0, v1, :cond_3

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 4853
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->updateMemoryBudget()V

    .line 4856
    :cond_4
    return-void
.end method

.method protected updateMemorySize(JJ)V
    .locals 2
    .param p1, "oldSize"    # J
    .param p3, "newSize"    # J

    .line 4799
    sub-long v0, p3, p1

    .line 4800
    .local v0, "delta":J
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 4801
    return-void
.end method

.method updateMemorySize(Lcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/Node;)V
    .locals 4
    .param p1, "oldNode"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "newNode"    # Lcom/sleepycat/je/tree/Node;

    .line 4807
    const-wide/16 v0, 0x0

    .line 4808
    .local v0, "delta":J
    if-eqz p2, :cond_0

    .line 4809
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v0

    .line 4812
    :cond_0
    if-eqz p1, :cond_1

    .line 4813
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4815
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 4816
    return-void
.end method

.method public final updateRecord(IJJJI[B[BIZ)V
    .locals 19
    .param p1, "idx"    # I
    .param p2, "oldMemSize"    # J
    .param p4, "newLSN"    # J
    .param p6, "newVLSN"    # J
    .param p8, "newSize"    # I
    .param p9, "newKey"    # [B
    .param p10, "newData"    # [B
    .param p11, "expiration"    # I
    .param p12, "expirationInHours"    # Z

    .line 3737
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3739
    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 3741
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 3743
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v3

    .line 3745
    .local v3, "oldSlotSize":J
    move-wide/from16 v5, p4

    invoke-virtual {v0, v1, v5, v6}, Lcom/sleepycat/je/tree/IN;->setLsn(IJ)V

    .line 3747
    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct {v0, v1, v7, v8}, Lcom/sleepycat/je/tree/IN;->updateLNSlotKey(I[B[B)Z

    move-result v9

    .line 3749
    .local v9, "multiSlotChange":Z
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3750
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->clearLastLoggedSize(I)V

    .line 3751
    move-object v10, v0

    check-cast v10, Lcom/sleepycat/je/tree/BIN;

    move-wide/from16 v11, p6

    invoke-virtual {v10, v1, v11, v12}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    move/from16 v10, p8

    goto :goto_0

    .line 3753
    :cond_0
    move-wide/from16 v11, p6

    move/from16 v10, p8

    invoke-virtual {v0, v1, v10}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V

    .line 3756
    :goto_0
    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual {v2, v1, v13, v14}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 3758
    if-eqz v9, :cond_1

    .line 3759
    iget-wide v5, v0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    move-object v8, v2

    move-wide v15, v3

    move-wide/from16 v1, p2

    goto :goto_2

    .line 3762
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/tree/IN;->getEntryInMemorySize(I)J

    move-result-wide v5

    .line 3763
    .local v5, "newSlotSize":J
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3766
    iget-object v7, v0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v7, v1}, Lcom/sleepycat/je/tree/INTargetRep;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/Node;

    .line 3767
    .local v7, "newLN":Lcom/sleepycat/je/tree/Node;
    if-eqz v7, :cond_2

    .line 3768
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v15

    goto :goto_1

    :cond_2
    const-wide/16 v15, 0x0

    :goto_1
    move-wide/from16 v17, v15

    .line 3769
    .local v17, "newMemSize":J
    move-object v8, v2

    move-wide v15, v3

    move-wide/from16 v3, v17

    move-wide/from16 v1, p2

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v17    # "newMemSize":J
    .local v3, "newMemSize":J
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    .local v15, "oldSlotSize":J
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 3772
    .end local v3    # "newMemSize":J
    .end local v5    # "newSlotSize":J
    .end local v7    # "newLN":Lcom/sleepycat/je/tree/Node;
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 3773
    return-void

    .line 3737
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v9    # "multiSlotChange":Z
    .end local v15    # "oldSlotSize":J
    :cond_3
    move-wide/from16 v1, p2

    move-wide/from16 v11, p6

    move/from16 v10, p8

    move/from16 v13, p11

    move/from16 v14, p12

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method protected updateRepCacheStats(Z)V
    .locals 1
    .param p1, "increment"    # Z

    .line 4949
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4950
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/je/tree/INKeyRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4951
    iget-object v0, p0, Lcom/sleepycat/je/tree/IN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/je/tree/INTargetRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 4952
    return-void

    .line 4949
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method validateSubtreeBeforeDelete(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 5073
    iget v0, p0, Lcom/sleepycat/je/tree/IN;->nEntries:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 5078
    return v1

    .line 5080
    :cond_0
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 5082
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v2

    xor-int/2addr v1, v2

    .line 5085
    .local v1, "needToLatch":Z
    if-eqz v1, :cond_1

    .line 5086
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 5088
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isValidForDelete()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5090
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5091
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 5088
    :cond_2
    return v2

    .line 5090
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5091
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_3
    throw v2
.end method

.method final verifyKeyPrefix()Z
    .locals 7

    .line 1693
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/IN;->computeKeyPrefix(I)[B

    move-result-object v0

    .line 1694
    .local v0, "computedKeyPrefix":[B
    iget-object v1, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1695
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1698
    :cond_1
    const-string v4, "VerifyKeyPrefix failed"

    if-eqz v0, :cond_5

    array-length v5, v0

    array-length v1, v1

    if-ge v5, v1, :cond_2

    goto :goto_2

    .line 1704
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sleepycat/je/tree/IN;->keyPrefix:[B

    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 1705
    aget-byte v5, v5, v1

    aget-byte v6, v0, v1

    if-eq v5, v6, :cond_3

    .line 1706
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1707
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3, v3}, Lcom/sleepycat/je/tree/IN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1708
    return v3

    .line 1704
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1711
    .end local v1    # "i":I
    :cond_4
    return v2

    .line 1700
    :cond_5
    :goto_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1701
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3, v3}, Lcom/sleepycat/je/tree/IN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1702
    return v3
.end method

.method public verifyMemorySize()Z
    .locals 5

    .line 4925
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v0

    .line 4926
    .local v0, "calcMemorySize":J
    iget-wide v2, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Warning: Out of sync. Should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/tree/IN;->inMemorySize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4930
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4931
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 4933
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/IN;->printMemorySize()J

    .line 4936
    const/4 v3, 0x0

    return v3

    .line 4938
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 5861
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/IN;->serialize(Ljava/nio/ByteBuffer;ZZ)V

    .line 5862
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "deltasOnly"    # Z

    .line 5866
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/tree/IN;->serialize(Ljava/nio/ByteBuffer;ZZ)V

    .line 5867
    return-void
.end method
