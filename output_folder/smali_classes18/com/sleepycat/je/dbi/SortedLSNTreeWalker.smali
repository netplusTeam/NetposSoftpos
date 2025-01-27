.class public Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;,
        Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;,
        Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;,
        Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;,
        Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field accumulateDupLNs:Z

.field public accumulateLNs:Z

.field private final callback:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;

.field final dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

.field private internalMemoryLimit:J

.field private internalMemoryUsage:J

.field private final lnKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private lsnBatchSize:J

.field private final lsnINMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;",
            ">;"
        }
    .end annotation
.end field

.field preloadIntoOffHeapCache:Z

.field private final rootLsns:[J

.field private final savedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/DatabaseException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 73
    return-void
.end method

.method public constructor <init>([Lcom/sleepycat/je/dbi/DatabaseImpl;[JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Ljava/util/List;Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;)V
    .locals 5
    .param p1, "dbImpls"    # [Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "rootLsns"    # [J
    .param p3, "callback"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
    .param p5, "excPredicate"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "[J",
            "Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/DatabaseException;",
            ">;",
            "Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;",
            ")V"
        }
    .end annotation

    .line 272
    .local p4, "savedExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/DatabaseException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryLimit:J

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateLNs:Z

    .line 127
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->preloadIntoOffHeapCache:Z

    .line 134
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateDupLNs:Z

    .line 148
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnBatchSize:J

    .line 151
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lnKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnINMap:Ljava/util/Map;

    .line 274
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 280
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 281
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 283
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 284
    .local v1, "di":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 285
    .local v3, "ei":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v3, :cond_1

    .line 291
    iget-object v4, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-ne v3, v4, :cond_0

    .line 283
    .end local v1    # "di":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "ei":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .restart local v1    # "di":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "ei":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Environment.preload() must be called with Databases which are all in the same Environment. ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "environmentImpl is null for target db "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 299
    .end local v1    # "di":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "ei":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_2
    iput-object p2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->rootLsns:[J

    .line 300
    iput-object p3, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callback:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;

    .line 301
    iput-object p4, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->savedExceptions:Ljava/util/List;

    .line 302
    iput-object p5, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

    .line 303
    return-void

    .line 275
    :cond_3
    nop

    .line 276
    const-string v0, "DatabaseImpls array is null or 0-length for SortedLSNTreeWalker"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$000(Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .param p1, "x1"    # J

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->incInternalMemoryUsage(J)V

    return-void
.end method

.method private accumulateLSNs(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    .locals 36
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;
    .param p3, "ohBinParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "ohBinIndex"    # I

    .line 387
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v0, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v15

    .line 390
    .local v15, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v16

    .line 402
    .local v16, "dups":Z
    const/4 v0, 0x0

    const/16 v17, 0x1

    if-eqz v16, :cond_2

    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDupsConverted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->containsDuplicates()Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v1, v17

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move/from16 v18, v1

    .local v1, "allChildrenAreLNs":Z
    goto :goto_2

    .line 403
    .end local v1    # "allChildrenAreLNs":Z
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    move/from16 v18, v1

    .line 412
    .local v18, "allChildrenAreLNs":Z
    :goto_2
    if-eqz v18, :cond_5

    if-eqz v16, :cond_3

    iget-boolean v1, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateDupLNs:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_3
    iget-boolean v1, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateLNs:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v1, v17

    :goto_4
    move/from16 v19, v1

    .line 415
    .local v19, "accumulateChildren":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    const/16 v20, 0x0

    if-eqz v1, :cond_6

    move-object v1, v12

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    goto :goto_5

    :cond_6
    move-object/from16 v1, v20

    :goto_5
    move-object v10, v1

    .line 416
    .local v10, "parentBin":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v9

    .line 422
    .local v9, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v8, v1, :cond_24

    .line 424
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v6

    .line 425
    .local v6, "lsn":J
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v5

    .line 426
    .local v5, "child":Lcom/sleepycat/je/tree/Node;
    if-eqz v5, :cond_7

    move/from16 v1, v17

    goto :goto_7

    :cond_7
    move v1, v0

    :goto_7
    move/from16 v21, v1

    .line 427
    .local v21, "childCached":Z
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v22

    .line 429
    .local v22, "isEmbedded":Z
    if-nez v18, :cond_9

    if-eqz v21, :cond_8

    .line 430
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    .line 431
    :cond_8
    move-object/from16 v1, v20

    goto :goto_9

    :cond_9
    :goto_8
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    :goto_9
    move-object v4, v1

    .line 433
    .local v4, "lnKey":[B
    if-eqz v10, :cond_a

    invoke-virtual {v10, v8}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 436
    invoke-direct {v11, v5, v6, v7, v4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processDirtyLN(Lcom/sleepycat/je/tree/Node;J[B)V

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v32, v6

    move v14, v8

    move-object/from16 v26, v9

    move-object/from16 v24, v10

    goto/16 :goto_11

    .line 439
    :cond_a
    if-nez v21, :cond_e

    if-eqz v10, :cond_e

    .line 441
    invoke-virtual {v10, v8}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v1

    const-wide/16 v23, 0x0

    cmp-long v1, v1, v23

    if-eqz v1, :cond_d

    .line 444
    if-nez v22, :cond_c

    .line 446
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v9, v10, v8, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v23

    .line 447
    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .local v23, "child":Lcom/sleepycat/je/tree/Node;
    if-eqz v23, :cond_b

    .line 449
    nop

    .line 450
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    .line 449
    move-object/from16 v1, p0

    move-wide v2, v6

    move-object/from16 v28, v4

    .end local v4    # "lnKey":[B
    .local v28, "lnKey":[B
    move-object/from16 v4, v23

    move-object/from16 v5, v28

    move-wide/from16 v29, v6

    .end local v6    # "lsn":J
    .local v29, "lsn":J
    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v31, v8

    .end local v8    # "i":I
    .local v31, "i":I
    move-object/from16 v8, p2

    move-object/from16 v32, v9

    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v32, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    move-object/from16 v9, v26

    move-object/from16 v24, v10

    .end local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .local v24, "parentBin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v10, v27

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V

    move-object/from16 v5, v23

    move/from16 v14, v31

    move-object/from16 v26, v32

    move-wide/from16 v32, v29

    goto/16 :goto_12

    .line 447
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v28    # "lnKey":[B
    .end local v29    # "lsn":J
    .end local v31    # "i":I
    .end local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v4    # "lnKey":[B
    .restart local v6    # "lsn":J
    .restart local v8    # "i":I
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 444
    .end local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v5    # "child":Lcom/sleepycat/je/tree/Node;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 441
    :cond_d
    move-object/from16 v28, v4

    move-wide/from16 v29, v6

    move/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v24, v10

    .end local v4    # "lnKey":[B
    .end local v6    # "lsn":J
    .end local v8    # "i":I
    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v28    # "lnKey":[B
    .restart local v29    # "lsn":J
    .restart local v31    # "i":I
    .restart local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    goto :goto_a

    .line 439
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v28    # "lnKey":[B
    .end local v29    # "lsn":J
    .end local v31    # "i":I
    .end local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v4    # "lnKey":[B
    .restart local v6    # "lsn":J
    .restart local v8    # "i":I
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    :cond_e
    move-object/from16 v28, v4

    move-wide/from16 v29, v6

    move/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v24, v10

    .line 453
    .end local v4    # "lnKey":[B
    .end local v6    # "lsn":J
    .end local v8    # "i":I
    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v28    # "lnKey":[B
    .restart local v29    # "lsn":J
    .restart local v31    # "i":I
    .restart local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :goto_a
    const-wide/16 v1, -0x1

    if-nez v21, :cond_16

    move/from16 v10, v31

    .end local v31    # "i":I
    .local v10, "i":I
    invoke-virtual {v12, v10}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v3

    if-ltz v3, :cond_15

    .line 456
    if-nez v22, :cond_14

    .line 458
    iget-object v3, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 459
    move-object/from16 v9, v32

    .end local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v9, v12, v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v4

    .line 458
    invoke-virtual {v9, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v23

    .line 461
    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v23    # "child":Lcom/sleepycat/je/tree/Node;
    move-object/from16 v7, v23

    check-cast v7, Lcom/sleepycat/je/tree/BIN;

    .line 462
    .local v7, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v7, v15}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 463
    const/16 v25, 0x1

    .line 466
    .local v25, "isLatched":Z
    :try_start_0
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_11

    .line 469
    move-wide/from16 v5, v29

    .end local v29    # "lsn":J
    .local v5, "lsn":J
    cmp-long v3, v5, v1

    if-eqz v3, :cond_10

    .line 476
    :try_start_1
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v3

    .line 477
    .local v3, "fullLsn":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_f

    .line 478
    invoke-virtual {v13, v3, v4}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    move-object/from16 v1, p0

    move-wide/from16 v26, v3

    .end local v3    # "fullLsn":J
    .local v26, "fullLsn":J
    move-wide/from16 v2, v26

    move-object/from16 v4, p1

    move-wide/from16 v29, v5

    .end local v5    # "lsn":J
    .restart local v29    # "lsn":J
    move v5, v10

    move-object v6, v7

    move-object/from16 v31, v7

    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v31, "bin":Lcom/sleepycat/je/tree/BIN;
    move-wide/from16 v7, v29

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V

    .line 481
    .end local v26    # "fullLsn":J
    move-object/from16 v26, v9

    move/from16 v27, v10

    goto :goto_b

    .line 477
    .end local v29    # "lsn":J
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "fullLsn":J
    .restart local v5    # "lsn":J
    .restart local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_f
    move-wide/from16 v26, v3

    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    .end local v3    # "fullLsn":J
    .end local v5    # "lsn":J
    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v26    # "fullLsn":J
    .restart local v29    # "lsn":J
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "i":I
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "dups":Z
    .end local v18    # "allChildrenAreLNs":Z
    .end local v19    # "accumulateChildren":Z
    .end local v21    # "childCached":Z
    .end local v22    # "isEmbedded":Z
    .end local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "isLatched":Z
    .end local v28    # "lnKey":[B
    .end local v29    # "lsn":J
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .end local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "ohBinIndex":I
    throw v0

    .line 491
    .end local v26    # "fullLsn":J
    .restart local v5    # "lsn":J
    .restart local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "i":I
    .restart local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "dups":Z
    .restart local v18    # "allChildrenAreLNs":Z
    .restart local v19    # "accumulateChildren":Z
    .restart local v21    # "childCached":Z
    .restart local v22    # "isEmbedded":Z
    .restart local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "isLatched":Z
    .restart local v28    # "lnKey":[B
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .restart local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "ohBinIndex":I
    :catchall_0
    move-exception v0

    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    move-object/from16 v26, v9

    move/from16 v27, v10

    .end local v5    # "lsn":J
    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "lsn":J
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_c

    .line 469
    .end local v29    # "lsn":J
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "lsn":J
    .restart local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_10
    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    .end local v5    # "lsn":J
    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "lsn":J
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "i":I
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "dups":Z
    .end local v18    # "allChildrenAreLNs":Z
    .end local v19    # "accumulateChildren":Z
    .end local v21    # "childCached":Z
    .end local v22    # "isEmbedded":Z
    .end local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "isLatched":Z
    .end local v28    # "lnKey":[B
    .end local v29    # "lsn":J
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .end local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "ohBinIndex":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "i":I
    .restart local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "dups":Z
    .restart local v18    # "allChildrenAreLNs":Z
    .restart local v19    # "accumulateChildren":Z
    .restart local v21    # "childCached":Z
    .restart local v22    # "isEmbedded":Z
    .restart local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "isLatched":Z
    .restart local v28    # "lnKey":[B
    .restart local v29    # "lsn":J
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .restart local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "ohBinIndex":I
    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v27, v10

    goto :goto_c

    .line 483
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_11
    move-object/from16 v31, v7

    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 484
    const/16 v25, 0x0

    .line 486
    nop

    .line 487
    invoke-virtual {v12, v10}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v7, 0x0

    .line 486
    move-object/from16 v1, p0

    move-wide/from16 v2, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v28

    move-object/from16 v8, p2

    move-object/from16 v26, v9

    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v26, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    move-object/from16 v9, p1

    move/from16 v27, v10

    .end local v10    # "i":I
    .local v27, "i":I
    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 491
    :goto_b
    if-eqz v25, :cond_12

    .line 492
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 496
    .end local v25    # "isLatched":Z
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_12
    move-object/from16 v5, v23

    move/from16 v14, v27

    move-wide/from16 v32, v29

    goto/16 :goto_12

    .line 491
    .restart local v25    # "isLatched":Z
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_2
    move-exception v0

    goto :goto_c

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "i":I
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "i":I
    :catchall_3
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v27, v10

    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "i":I
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "i":I
    goto :goto_c

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "i":I
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "i":I
    :catchall_4
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v26, v9

    move/from16 v27, v10

    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "i":I
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "i":I
    .restart local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_c
    if-eqz v25, :cond_13

    .line 492
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    :cond_13
    throw v0

    .line 456
    .end local v23    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v25    # "isLatched":Z
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "i":I
    .end local v31    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v5, "child":Lcom/sleepycat/je/tree/Node;
    .restart local v10    # "i":I
    .restart local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 453
    :cond_15
    move/from16 v27, v10

    move-object/from16 v26, v32

    .end local v10    # "i":I
    .end local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "i":I
    goto :goto_d

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "i":I
    .local v31, "i":I
    .restart local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_16
    move/from16 v27, v31

    move-object/from16 v26, v32

    .line 496
    .end local v31    # "i":I
    .end local v32    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "i":I
    :goto_d
    if-eqz v19, :cond_1a

    if-nez v21, :cond_1a

    move-wide/from16 v9, v29

    .end local v29    # "lsn":J
    .local v9, "lsn":J
    cmp-long v3, v9, v1

    if-eqz v3, :cond_19

    .line 505
    if-nez v22, :cond_18

    .line 506
    invoke-virtual {v13, v9, v10}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V

    .line 507
    if-eqz v14, :cond_17

    .line 508
    move/from16 v8, p4

    invoke-direct {v11, v9, v10, v14, v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;I)V

    move-object/from16 v29, v5

    move-wide/from16 v32, v9

    move/from16 v14, v27

    goto/16 :goto_11

    .line 510
    :cond_17
    move/from16 v8, p4

    move/from16 v7, v27

    .end local v27    # "i":I
    .local v7, "i":I
    invoke-direct {v11, v9, v10, v12, v7}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;I)V

    move-object/from16 v29, v5

    move v14, v7

    move-wide/from16 v32, v9

    goto/16 :goto_11

    .line 513
    .end local v7    # "i":I
    .restart local v27    # "i":I
    :cond_18
    move/from16 v8, p4

    move/from16 v7, v27

    .end local v27    # "i":I
    .restart local v7    # "i":I
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x1

    const/16 v25, 0x0

    const/16 v27, -0x1

    move-object/from16 v1, p0

    move-object/from16 v29, v5

    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .local v29, "child":Lcom/sleepycat/je/tree/Node;
    move-object/from16 v5, v28

    move/from16 v31, v7

    .end local v7    # "i":I
    .restart local v31    # "i":I
    move/from16 v7, v23

    move-object/from16 v8, p2

    move-wide/from16 v32, v9

    .end local v9    # "lsn":J
    .local v32, "lsn":J
    move-object/from16 v9, v25

    move/from16 v10, v27

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V

    move/from16 v14, v31

    goto/16 :goto_11

    .line 496
    .end local v29    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v31    # "i":I
    .end local v32    # "lsn":J
    .restart local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v9    # "lsn":J
    .restart local v27    # "i":I
    :cond_19
    move-object/from16 v29, v5

    move-wide/from16 v32, v9

    move/from16 v31, v27

    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v9    # "lsn":J
    .end local v27    # "i":I
    .restart local v29    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v31    # "i":I
    .restart local v32    # "lsn":J
    goto :goto_e

    .end local v31    # "i":I
    .end local v32    # "lsn":J
    .restart local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v27    # "i":I
    .local v29, "lsn":J
    :cond_1a
    move/from16 v31, v27

    move-wide/from16 v32, v29

    move-object/from16 v29, v5

    .line 519
    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v27    # "i":I
    .local v29, "child":Lcom/sleepycat/je/tree/Node;
    .restart local v31    # "i":I
    .restart local v32    # "lsn":J
    :goto_e
    if-eqz v21, :cond_1f

    .line 521
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/Node;->latchShared()V

    .line 522
    const/4 v9, 0x1

    .line 525
    .local v9, "isLatched":Z
    :try_start_5
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/Node;->isBINDelta()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v3, :cond_1c

    .line 528
    cmp-long v1, v32, v1

    if-eqz v1, :cond_1b

    .line 530
    :try_start_6
    move-object/from16 v6, v29

    check-cast v6, Lcom/sleepycat/je/tree/BIN;

    .line 531
    .local v6, "delta":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v1

    move-wide v7, v1

    .line 532
    .local v7, "fullLsn":J
    invoke-virtual {v13, v7, v8}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V

    .line 533
    move-object/from16 v1, p0

    move-wide v2, v7

    move-object/from16 v4, p1

    move/from16 v5, v31

    move-wide/from16 v34, v7

    .end local v7    # "fullLsn":J
    .local v34, "fullLsn":J
    move-wide/from16 v7, v32

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V

    .line 535
    .end local v6    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v34    # "fullLsn":J
    move/from16 v14, v31

    goto :goto_f

    .line 545
    :catchall_5
    move-exception v0

    move/from16 v14, v31

    goto :goto_10

    .line 528
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "isLatched":Z
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "dups":Z
    .end local v18    # "allChildrenAreLNs":Z
    .end local v19    # "accumulateChildren":Z
    .end local v21    # "childCached":Z
    .end local v22    # "isEmbedded":Z
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v28    # "lnKey":[B
    .end local v29    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v31    # "i":I
    .end local v32    # "lsn":J
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .end local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "ohBinIndex":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 537
    .restart local v9    # "isLatched":Z
    .restart local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "dups":Z
    .restart local v18    # "allChildrenAreLNs":Z
    .restart local v19    # "accumulateChildren":Z
    .restart local v21    # "childCached":Z
    .restart local v22    # "isEmbedded":Z
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v28    # "lnKey":[B
    .restart local v29    # "child":Lcom/sleepycat/je/tree/Node;
    .restart local v31    # "i":I
    .restart local v32    # "lsn":J
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    .restart local p3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "ohBinIndex":I
    :cond_1c
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 538
    const/16 v23, 0x0

    .line 540
    .end local v9    # "isLatched":Z
    .local v23, "isLatched":Z
    nop

    .line 541
    move/from16 v10, v31

    .end local v31    # "i":I
    .restart local v10    # "i":I
    :try_start_8
    invoke-virtual {v12, v10}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    const/4 v9, 0x0

    const/16 v25, -0x1

    .line 540
    move-object/from16 v1, p0

    move-wide/from16 v2, v32

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move/from16 v7, v22

    move-object/from16 v8, p2

    move v14, v10

    .end local v10    # "i":I
    .local v14, "i":I
    move/from16 v10, v25

    :try_start_9
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move/from16 v9, v23

    .line 545
    .end local v23    # "isLatched":Z
    .restart local v9    # "isLatched":Z
    :goto_f
    if-eqz v9, :cond_1d

    .line 546
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 550
    .end local v9    # "isLatched":Z
    :cond_1d
    goto :goto_11

    .line 545
    .restart local v23    # "isLatched":Z
    :catchall_6
    move-exception v0

    move/from16 v9, v23

    goto :goto_10

    .end local v14    # "i":I
    .restart local v10    # "i":I
    :catchall_7
    move-exception v0

    move v14, v10

    move/from16 v9, v23

    .end local v10    # "i":I
    .restart local v14    # "i":I
    goto :goto_10

    .end local v14    # "i":I
    .end local v23    # "isLatched":Z
    .restart local v9    # "isLatched":Z
    .restart local v31    # "i":I
    :catchall_8
    move-exception v0

    move/from16 v14, v31

    .end local v31    # "i":I
    .restart local v14    # "i":I
    :goto_10
    if-eqz v9, :cond_1e

    .line 546
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    :cond_1e
    throw v0

    .line 556
    .end local v9    # "isLatched":Z
    .end local v14    # "i":I
    .restart local v31    # "i":I
    :cond_1f
    move/from16 v14, v31

    .end local v31    # "i":I
    .restart local v14    # "i":I
    const/4 v4, 0x0

    .line 557
    invoke-virtual {v12, v14}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 556
    move-object/from16 v1, p0

    move-wide/from16 v2, v32

    move-object/from16 v5, v28

    move/from16 v7, v22

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V

    .line 565
    .end local v14    # "i":I
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v28    # "lnKey":[B
    .end local v29    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v32    # "lsn":J
    .restart local v4    # "lnKey":[B
    .restart local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .local v6, "lsn":J
    .restart local v8    # "i":I
    .local v9, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v10, "parentBin":Lcom/sleepycat/je/tree/BIN;
    :goto_11
    move-object/from16 v5, v29

    .end local v4    # "lnKey":[B
    .end local v6    # "lsn":J
    .end local v8    # "i":I
    .end local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v14    # "i":I
    .restart local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v28    # "lnKey":[B
    .restart local v32    # "lsn":J
    :goto_12
    iget-wide v1, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryUsage:J

    iget-wide v3, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryLimit:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_20

    move/from16 v1, v17

    goto :goto_13

    :cond_20
    move v1, v0

    .line 568
    .local v1, "internalMemoryExceeded":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getNTotalEntries()I

    move-result v2

    int-to-long v2, v2

    iget-wide v6, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnBatchSize:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_21

    if-eqz v1, :cond_23

    .line 570
    :cond_21
    if-eqz v1, :cond_22

    .line 571
    iget-object v2, v11, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callback:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;

    invoke-interface {v2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;->noteMemoryExceeded()V

    .line 573
    :cond_22
    invoke-direct {v11, v13}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processAccumulatedLSNs(Lcom/sleepycat/je/dbi/LSNAccumulator;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/LSNAccumulator;->clear()V

    .line 422
    .end local v1    # "internalMemoryExceeded":Z
    .end local v5    # "child":Lcom/sleepycat/je/tree/Node;
    .end local v21    # "childCached":Z
    .end local v22    # "isEmbedded":Z
    .end local v28    # "lnKey":[B
    .end local v32    # "lsn":J
    :cond_23
    add-int/lit8 v8, v14, 0x1

    move-object/from16 v14, p3

    move-object/from16 v10, v24

    move-object/from16 v9, v26

    .end local v14    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_6

    .line 577
    .end local v8    # "i":I
    .end local v24    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v9    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v10    # "parentBin":Lcom/sleepycat/je/tree/BIN;
    :cond_24
    return-void
.end method

.method private addEntryToLsnMap(JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;)V
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "inEntry"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;

    .line 817
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnINMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 818
    invoke-virtual {p3}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->incInternalMemoryUsage(J)V

    .line 820
    :cond_0
    return-void
.end method

.method private addToLsnINMap(JLcom/sleepycat/je/tree/IN;I)V
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "index"    # I

    .line 802
    new-instance v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;

    invoke-direct {v0, p3, p4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;-><init>(Lcom/sleepycat/je/tree/IN;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addEntryToLsnMap(JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;)V

    .line 803
    return-void
.end method

.method private addToLsnINMap(JLcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "index"    # I
    .param p5, "delta"    # Ljava/lang/Object;
    .param p6, "deltaLsn"    # J

    .line 813
    new-instance v6, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;

    move-object v0, v6

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;-><init>(Lcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V

    invoke-direct {p0, p1, p2, v6}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addEntryToLsnMap(JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;)V

    .line 814
    return-void
.end method

.method private callProcessLSNHandleExceptions(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    .locals 11
    .param p1, "childLSN"    # J
    .param p3, "childType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "theNode"    # Lcom/sleepycat/je/tree/Node;
    .param p5, "lnKey"    # [B
    .param p6, "lastLoggedSize"    # I
    .param p7, "isEmbedded"    # Z

    .line 715
    move-object v1, p0

    const/4 v2, 0x0

    .line 718
    .local v2, "dbe":Lcom/sleepycat/je/DatabaseException;
    :try_start_0
    iget-object v3, v1, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callback:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;->processLSN(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    iget-object v3, v1, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

    if-eqz v3, :cond_0

    .line 731
    invoke-interface {v3, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;->ignoreException(Ljava/lang/Exception;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 732
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 722
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v0

    .line 723
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, v1, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

    if-eqz v3, :cond_1

    .line 724
    invoke-interface {v3, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;->ignoreException(Ljava/lang/Exception;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 725
    :cond_1
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 734
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_0
    nop

    .line 736
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 737
    iget-object v0, v1, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->savedExceptions:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 743
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 745
    :cond_4
    throw v2

    .line 748
    :cond_5
    :goto_2
    return-void
.end method

.method private createLSNAccumulator()Lcom/sleepycat/je/dbi/LSNAccumulator;
    .locals 1

    .line 318
    new-instance v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$1;-><init>(Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;)V

    return-object v0
.end method

.method private fetchAndProcessLSN(JLcom/sleepycat/je/dbi/LSNAccumulator;)V
    .locals 12
    .param p1, "lsn"    # J
    .param p3, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;

    .line 641
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lnKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lnKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchLSNHandleExceptions(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/LSNAccumulator;)Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;

    move-result-object v0

    .line 646
    .local v0, "result":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
    if-nez v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->node:Lcom/sleepycat/je/tree/Node;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v1

    .line 652
    .local v1, "isIN":Z
    if-eqz v1, :cond_1

    .line 653
    iget-object v2, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->node:Lcom/sleepycat/je/tree/Node;

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    .line 654
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    goto :goto_0

    .line 656
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    const/4 v2, 0x0

    .line 660
    .restart local v2    # "in":Lcom/sleepycat/je/tree/IN;
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->node:Lcom/sleepycat/je/tree/Node;

    .line 661
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/Node;->getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->node:Lcom/sleepycat/je/tree/Node;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lnKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 662
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v9

    iget v10, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->lastLoggedSize:I

    const/4 v11, 0x0

    .line 660
    move-object v4, p0

    move-wide v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callProcessLSNHandleExceptions(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V

    .line 665
    if-eqz v1, :cond_2

    .line 666
    iget-object v3, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->ohBinParent:Lcom/sleepycat/je/tree/IN;

    iget v4, v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->ohBinIndex:I

    invoke-direct {p0, v2, p3, v3, v4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateLSNs(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_2
    if-eqz v1, :cond_3

    .line 671
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 674
    :cond_3
    return-void

    .line 670
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 671
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_4
    throw v3
.end method

.method private fetchLSN(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/LSNAccumulator;)Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
    .locals 37
    .param p1, "lsn"    # J
    .param p3, "lnKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;

    .line 849
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    iget-object v0, v9, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v14

    .line 850
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    iget-object v0, v9, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v15

    .line 852
    .local v15, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    iget-object v0, v9, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnINMap:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;

    .line 853
    .local v7, "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    if-eqz v7, :cond_53

    .line 855
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getMemorySize()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {v9, v0, v1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->incInternalMemoryUsage(J)V

    .line 857
    iget-object v1, v7, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 858
    .local v1, "in":Lcom/sleepycat/je/tree/IN;
    iget v2, v7, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->index:I

    .line 860
    .local v2, "index":I
    const/4 v3, 0x0

    .line 861
    .local v3, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    const/4 v4, -0x1

    .line 863
    .local v4, "ohBinIndex":I
    const/4 v0, 0x0

    .line 864
    .local v0, "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    const/4 v5, 0x0

    .line 866
    .local v5, "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v6

    if-nez v6, :cond_0

    .line 867
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->latch()V

    .line 868
    move-object v0, v1

    move-object/from16 v16, v0

    goto :goto_0

    .line 866
    :cond_0
    move-object/from16 v16, v0

    .line 871
    .end local v0    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .local v16, "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v8

    .line 872
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/16 v17, 0x0

    .line 874
    .local v17, "lnKey":[B
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v6

    .line 875
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    if-eqz v6, :cond_1

    .line 876
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->latch()V

    .line 885
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getDelta()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    .line 886
    .local v18, "deltaObject":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    const/16 v19, 0x1

    move-object/from16 v20, v3

    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v20, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    if-ltz v0, :cond_2

    move/from16 v0, v19

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move/from16 v21, v0

    .line 887
    .local v21, "isOffHeapBinInTree":Z
    const/4 v0, 0x0

    .line 889
    .local v0, "isLnInOffHeapBin":Z
    move/from16 v3, v21

    .end local v21    # "isOffHeapBinInTree":Z
    .local v3, "isOffHeapBinInTree":Z
    if-eqz v3, :cond_a

    move/from16 v21, v4

    move-object/from16 v4, v18

    .end local v18    # "deltaObject":Ljava/lang/Object;
    .local v4, "deltaObject":Ljava/lang/Object;
    .local v21, "ohBinIndex":I
    if-nez v4, :cond_9

    .line 894
    const/4 v0, 0x1

    .line 896
    move/from16 v18, v0

    .end local v0    # "isLnInOffHeapBin":Z
    .local v18, "isLnInOffHeapBin":Z
    :try_start_1
    iget-object v0, v9, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 897
    move/from16 v25, v3

    .end local v3    # "isOffHeapBinInTree":Z
    .local v25, "isOffHeapBinInTree":Z
    invoke-virtual {v15, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v3

    .line 896
    invoke-virtual {v15, v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 899
    .local v0, "ohBin":Lcom/sleepycat/je/tree/BIN;
    const/4 v3, -0x1

    .line 900
    .local v3, "foundIndex":I
    const/16 v26, 0x0

    move/from16 v27, v3

    move/from16 v3, v26

    .local v3, "i":I
    .local v27, "foundIndex":I
    :goto_2
    move-object/from16 v26, v15

    .end local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v26, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v15

    if-ge v3, v15, :cond_4

    .line 901
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v15, v28, v10

    if-nez v15, :cond_3

    .line 902
    move v15, v3

    .line 903
    .end local v27    # "foundIndex":I
    .local v15, "foundIndex":I
    goto :goto_3

    .line 900
    .end local v15    # "foundIndex":I
    .restart local v27    # "foundIndex":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, v26

    goto :goto_2

    :cond_4
    move/from16 v3, v27

    .line 907
    .end local v27    # "foundIndex":I
    .local v3, "foundIndex":I
    :goto_3
    const/4 v15, -0x1

    if-ne v3, v15, :cond_8

    .line 908
    nop

    .line 1187
    if-eqz v6, :cond_5

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_5
    if-eqz v16, :cond_6

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_6
    if-eqz v5, :cond_7

    .line 1194
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 908
    :cond_7
    const/4 v15, 0x0

    return-object v15

    .line 911
    :cond_8
    move-object v15, v1

    .line 912
    .end local v20    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v15, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    move/from16 v20, v2

    .line 914
    .end local v21    # "ohBinIndex":I
    .local v20, "ohBinIndex":I
    move-object v1, v0

    .line 915
    move v2, v3

    .line 917
    :try_start_3
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 918
    move-object v5, v1

    move-object v3, v15

    move/from16 v15, v18

    move-object/from16 v18, v5

    move/from16 v1, v20

    goto/16 :goto_5

    .line 1187
    .end local v0    # "ohBin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "foundIndex":I
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v18    # "isLnInOffHeapBin":Z
    .end local v25    # "isOffHeapBinInTree":Z
    :catchall_0
    move-exception v0

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object v13, v15

    move/from16 v15, v20

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    goto/16 :goto_1a

    .end local v15    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v20, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "ohBinIndex":I
    :catchall_1
    move-exception v0

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v13, v20

    move/from16 v15, v21

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    goto/16 :goto_1a

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v15, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :catchall_2
    move-exception v0

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v13, v20

    move-object v14, v6

    move-object v9, v8

    move-object v6, v15

    move/from16 v15, v21

    .end local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    goto/16 :goto_1a

    .line 889
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v0, "isLnInOffHeapBin":Z
    .local v3, "isOffHeapBinInTree":Z
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_9
    move/from16 v25, v3

    move-object/from16 v26, v15

    .end local v3    # "isOffHeapBinInTree":Z
    .end local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v25    # "isOffHeapBinInTree":Z
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    goto :goto_4

    .end local v21    # "ohBinIndex":I
    .end local v25    # "isOffHeapBinInTree":Z
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v3    # "isOffHeapBinInTree":Z
    .local v4, "ohBinIndex":I
    .restart local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v18, "deltaObject":Ljava/lang/Object;
    :cond_a
    move/from16 v25, v3

    move/from16 v21, v4

    move-object/from16 v26, v15

    move-object/from16 v4, v18

    .line 927
    .end local v3    # "isOffHeapBinInTree":Z
    .end local v15    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v18    # "deltaObject":Ljava/lang/Object;
    .local v4, "deltaObject":Ljava/lang/Object;
    .restart local v21    # "ohBinIndex":I
    .restart local v25    # "isOffHeapBinInTree":Z
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :goto_4
    move v15, v0

    move-object/from16 v18, v5

    move-object/from16 v3, v20

    move-object v5, v1

    move/from16 v1, v21

    .end local v0    # "isLnInOffHeapBin":Z
    .end local v20    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v21    # "ohBinIndex":I
    .local v1, "ohBinIndex":I
    .local v3, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    .local v15, "isLnInOffHeapBin":Z
    .local v18, "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1f

    if-eqz v0, :cond_e

    :try_start_5
    move-object v0, v5

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_e

    .line 928
    nop

    .line 1187
    if-eqz v6, :cond_b

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_b
    if-eqz v16, :cond_c

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_c
    if-eqz v18, :cond_d

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 928
    :cond_d
    const/4 v0, 0x0

    return-object v0

    .line 1187
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v15    # "isLnInOffHeapBin":Z
    .end local v25    # "isOffHeapBinInTree":Z
    :catchall_3
    move-exception v0

    move v15, v1

    move-object v13, v3

    move-object v1, v5

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v5, v18

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    goto/16 :goto_1a

    .line 931
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v15    # "isLnInOffHeapBin":Z
    .restart local v25    # "isOffHeapBinInTree":Z
    :cond_e
    if-nez v4, :cond_12

    .line 932
    :try_start_6
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    cmp-long v0, v20, v10

    if-eqz v0, :cond_16

    .line 933
    nop

    .line 1187
    if-eqz v6, :cond_f

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_f
    if-eqz v16, :cond_10

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_10
    if-eqz v18, :cond_11

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 933
    :cond_11
    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_12
    :try_start_7
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getDeltaLsn()J

    move-result-wide v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1f

    cmp-long v0, v20, v27

    if-eqz v0, :cond_16

    .line 937
    nop

    .line 1187
    if-eqz v6, :cond_13

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_13
    if-eqz v16, :cond_14

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_14
    if-eqz v18, :cond_15

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 937
    :cond_15
    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_16
    const/4 v0, 0x0

    .line 943
    .local v0, "mutateResidentDeltaToFullBIN":Z
    if-eqz v6, :cond_20

    .line 949
    :try_start_8
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->isBINDelta()Z

    move-result v20

    if-nez v20, :cond_1b

    .line 950
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v19, :cond_17

    .line 951
    move/from16 v20, v0

    .end local v0    # "mutateResidentDeltaToFullBIN":Z
    .local v20, "mutateResidentDeltaToFullBIN":Z
    :try_start_9
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 950
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v0    # "mutateResidentDeltaToFullBIN":Z
    :cond_17
    move/from16 v20, v0

    .line 953
    .end local v0    # "mutateResidentDeltaToFullBIN":Z
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    :goto_6
    :try_start_a
    new-instance v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 954
    move/from16 v21, v1

    .end local v1    # "ohBinIndex":I
    .restart local v21    # "ohBinIndex":I
    :try_start_b
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move/from16 v27, v2

    move-object/from16 v23, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v23, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v27, "index":I
    :try_start_c
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;-><init>(Lcom/sleepycat/je/tree/Node;ILcom/sleepycat/je/tree/IN;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1187
    if-eqz v6, :cond_18

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_18
    if-eqz v16, :cond_19

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_19
    if-eqz v18, :cond_1a

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 953
    :cond_1a
    return-object v0

    .line 1187
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v15    # "isLnInOffHeapBin":Z
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "isOffHeapBinInTree":Z
    .end local v27    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_4
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v5, v18

    move/from16 v15, v21

    move-object/from16 v13, v23

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "index":I
    goto/16 :goto_1a

    .line 958
    .end local v21    # "ohBinIndex":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "index":I
    .restart local v0    # "mutateResidentDeltaToFullBIN":Z
    .restart local v1    # "ohBinIndex":I
    .restart local v2    # "index":I
    .restart local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v15    # "isLnInOffHeapBin":Z
    .restart local v25    # "isOffHeapBinInTree":Z
    :cond_1b
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v27, v2

    move-object/from16 v23, v3

    .end local v0    # "mutateResidentDeltaToFullBIN":Z
    .end local v1    # "ohBinIndex":I
    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "ohBinIndex":I
    .restart local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "index":I
    :try_start_d
    move-object v0, v6

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1f

    .line 959
    nop

    .line 1187
    if-eqz v6, :cond_1c

    .line 1188
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_1c
    if-eqz v16, :cond_1d

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_1d
    if-eqz v18, :cond_1e

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 959
    :cond_1e
    const/4 v0, 0x0

    return-object v0

    .line 961
    :cond_1f
    const/4 v0, 0x0

    const/4 v1, 0x1

    move/from16 v20, v1

    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .local v1, "mutateResidentDeltaToFullBIN":Z
    goto :goto_7

    .line 1187
    .end local v1    # "mutateResidentDeltaToFullBIN":Z
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v15    # "isLnInOffHeapBin":Z
    .end local v25    # "isOffHeapBinInTree":Z
    :catchall_5
    move-exception v0

    move-object v1, v5

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v5, v18

    move/from16 v15, v21

    move-object/from16 v13, v23

    move/from16 v2, v27

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    goto/16 :goto_1a

    .end local v21    # "ohBinIndex":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "index":I
    .local v1, "ohBinIndex":I
    .restart local v2    # "index":I
    .restart local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_6
    move-exception v0

    move/from16 v21, v1

    move/from16 v27, v2

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object/from16 v5, v18

    move/from16 v15, v21

    move-object/from16 v13, v23

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    .end local v1    # "ohBinIndex":I
    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "ohBinIndex":I
    .restart local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "index":I
    goto/16 :goto_1a

    .line 943
    .end local v21    # "ohBinIndex":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "index":I
    .restart local v0    # "mutateResidentDeltaToFullBIN":Z
    .restart local v1    # "ohBinIndex":I
    .restart local v2    # "index":I
    .restart local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v15    # "isLnInOffHeapBin":Z
    .restart local v25    # "isOffHeapBinInTree":Z
    :cond_20
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v27, v2

    move-object/from16 v23, v3

    const/4 v0, 0x0

    .line 967
    .end local v0    # "mutateResidentDeltaToFullBIN":Z
    .end local v1    # "ohBinIndex":I
    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "ohBinIndex":I
    .restart local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "index":I
    :goto_7
    :try_start_e
    invoke-virtual {v14, v10, v11}, Lcom/sleepycat/je/log/LogManager;->getWholeLogEntry(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1d

    move-object/from16 v24, v1

    .line 986
    .local v24, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    nop

    .line 988
    :try_start_f
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    move-object v2, v1

    .line 989
    .local v2, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v1

    move v3, v1

    .line 999
    .local v3, "lastLoggedSize":I
    instance-of v1, v2, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1d

    if-eqz v1, :cond_24

    .line 1000
    :try_start_10
    move-object v1, v2

    check-cast v1, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    move-object/from16 v19, v1

    .line 1001
    .local v19, "deltaEntry":Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;->getPrevFullLsn()J

    move-result-wide v28

    move-wide/from16 v30, v28

    .line 1002
    .local v30, "fullLsn":J
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/BIN;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object/from16 v28, v14

    move-object v14, v6

    .end local v6    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v28, "logManager":Lcom/sleepycat/je/log/LogManager;
    move-object v6, v1

    .line 1003
    .local v6, "delta":Lcom/sleepycat/je/tree/BIN;
    move-wide/from16 v0, v30

    .end local v30    # "fullLsn":J
    .local v0, "fullLsn":J
    :try_start_11
    invoke-virtual {v13, v0, v1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1004
    move/from16 v30, v15

    move/from16 v15, v21

    move-wide/from16 v21, v0

    .end local v0    # "fullLsn":J
    .local v15, "ohBinIndex":I
    .local v21, "fullLsn":J
    .local v30, "isLnInOffHeapBin":Z
    move-object/from16 v1, p0

    move-object v10, v2

    move v11, v3

    move-object/from16 v9, v23

    move/from16 v32, v25

    const/4 v0, 0x0

    .end local v2    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v3    # "lastLoggedSize":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "isOffHeapBinInTree":Z
    .local v9, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v10, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .local v11, "lastLoggedSize":I
    .local v32, "isOffHeapBinInTree":Z
    move-wide/from16 v2, v21

    move-object/from16 v33, v4

    .end local v4    # "deltaObject":Ljava/lang/Object;
    .local v33, "deltaObject":Ljava/lang/Object;
    move-object v4, v5

    move-object/from16 v23, v5

    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    move/from16 v5, v27

    move-object/from16 v25, v7

    move-object/from16 v29, v9

    move-object v9, v8

    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v9, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v25, "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v29, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    move-wide/from16 v7, p1

    :try_start_12
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1005
    nop

    .line 1187
    if-eqz v14, :cond_21

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_21
    if-eqz v16, :cond_22

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_22
    if-eqz v18, :cond_23

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1005
    :cond_23
    return-object v0

    .line 1187
    .end local v6    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v15    # "ohBinIndex":I
    .end local v19    # "deltaEntry":Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v21, "ohBinIndex":I
    .local v23, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_7
    move-exception v0

    move-object/from16 v25, v7

    move-object v9, v8

    move/from16 v15, v21

    move-object/from16 v29, v23

    move-object/from16 v23, v5

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "ohBinIndex":I
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "ohBinIndex":I
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_1a

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "ohBinIndex":I
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v21    # "ohBinIndex":I
    .local v23, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_8
    move-exception v0

    move-object/from16 v25, v7

    move-object v9, v8

    move-object/from16 v28, v14

    move/from16 v15, v21

    move-object/from16 v29, v23

    move-object/from16 v23, v5

    move-object v14, v6

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "ohBinIndex":I
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_1a

    .line 1008
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v3    # "lastLoggedSize":I
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v15, "isLnInOffHeapBin":Z
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "ohBinIndex":I
    .local v23, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .local v25, "isOffHeapBinInTree":Z
    :cond_24
    move-object v10, v2

    move v11, v3

    move-object/from16 v33, v4

    move-object v9, v8

    move-object/from16 v28, v14

    move/from16 v30, v15

    move/from16 v15, v21

    move-object/from16 v29, v23

    move/from16 v32, v25

    move-object/from16 v23, v5

    move-object v14, v6

    move-object/from16 v25, v7

    .end local v2    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v3    # "lastLoggedSize":I
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "ohBinIndex":I
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v15, "ohBinIndex":I
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .local v25, "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :try_start_13
    instance-of v1, v10, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1c

    if-eqz v1, :cond_28

    .line 1009
    :try_start_14
    invoke-interface {v10}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 1010
    .local v6, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v1

    move-wide v7, v1

    .line 1011
    .local v7, "fullLsn":J
    invoke-virtual {v13, v7, v8}, Lcom/sleepycat/je/dbi/LSNAccumulator;->add(J)V

    .line 1012
    move-object/from16 v1, p0

    move-wide v2, v7

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-wide/from16 v21, v7

    .end local v7    # "fullLsn":J
    .local v21, "fullLsn":J
    move-wide/from16 v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->addToLsnINMap(JLcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 1013
    nop

    .line 1187
    if-eqz v14, :cond_25

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_25
    if-eqz v16, :cond_26

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_26
    if-eqz v18, :cond_27

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1013
    :cond_27
    return-object v0

    .line 1187
    .end local v6    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v21    # "fullLsn":J
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    goto/16 :goto_1a

    .line 1017
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :cond_28
    :try_start_15
    instance-of v1, v10, Lcom/sleepycat/je/log/entry/LNLogEntry;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1c

    if-eqz v1, :cond_29

    .line 1018
    :try_start_16
    move-object v1, v10

    check-cast v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1019
    .local v1, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v1, v9}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1020
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 1021
    .end local v17    # "lnKey":[B
    .local v2, "lnKey":[B
    :try_start_17
    invoke-virtual {v12, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    goto :goto_8

    .line 1187
    .end local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    :catchall_a
    move-exception v0

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v17, v2

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    goto/16 :goto_1a

    .line 1017
    .end local v2    # "lnKey":[B
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v17    # "lnKey":[B
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :cond_29
    move-object/from16 v2, v17

    .line 1025
    .end local v17    # "lnKey":[B
    .restart local v2    # "lnKey":[B
    :goto_8
    :try_start_18
    invoke-interface {v10, v9}, Lcom/sleepycat/je/log/entry/LogEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/Node;

    .line 1031
    .local v1, "ret":Lcom/sleepycat/je/tree/Node;
    move-wide/from16 v3, p1

    .line 1032
    .local v3, "lastLoggedLsn":J
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1b

    if-eqz v5, :cond_2a

    .line 1033
    :try_start_19
    move-object v5, v1

    check-cast v5, Lcom/sleepycat/je/tree/IN;

    .line 1034
    .local v5, "retIn":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v5, v9}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1041
    .end local v5    # "retIn":Lcom/sleepycat/je/tree/IN;
    :cond_2a
    if-eqz v20, :cond_32

    .line 1042
    :try_start_1a
    move-object v0, v1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 1043
    .local v0, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    move-object v5, v14

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1044
    .local v5, "delta":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchAndInsertIntoTree()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1045
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1047
    new-instance v6, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    move-object/from16 v7, v29

    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v7, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :try_start_1b
    invoke-direct {v6, v14, v11, v7, v15}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;-><init>(Lcom/sleepycat/je/tree/Node;ILcom/sleepycat/je/tree/IN;I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 1187
    if-eqz v14, :cond_2b

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_2b
    if-eqz v16, :cond_2c

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_2c
    if-eqz v18, :cond_2d

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1047
    :cond_2d
    return-object v6

    .line 1050
    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :cond_2e
    move-object/from16 v7, v29

    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    const/4 v6, 0x0

    :try_start_1c
    invoke-virtual {v5, v9, v0, v6}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1053
    new-instance v6, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;

    invoke-direct {v6, v1, v11, v7, v15}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;-><init>(Lcom/sleepycat/je/tree/Node;ILcom/sleepycat/je/tree/IN;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 1187
    if-eqz v14, :cond_2f

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_2f
    if-eqz v16, :cond_30

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_30
    if-eqz v18, :cond_31

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1053
    :cond_31
    return-object v6

    .line 1187
    .end local v0    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v3    # "lastLoggedLsn":J
    .end local v5    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    :catchall_b
    move-exception v0

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    goto :goto_a

    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_c
    move-exception v0

    move-object/from16 v7, v29

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v17, v2

    move-object v13, v7

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_1a

    .line 1058
    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v3    # "lastLoggedLsn":J
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :cond_32
    move-object/from16 v7, v29

    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    move-object/from16 v5, v33

    .end local v33    # "deltaObject":Ljava/lang/Object;
    .local v5, "deltaObject":Ljava/lang/Object;
    if-eqz v5, :cond_36

    .line 1059
    :try_start_1d
    move-object v6, v1

    check-cast v6, Lcom/sleepycat/je/tree/BIN;

    .line 1061
    .local v6, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    instance-of v8, v5, Lcom/sleepycat/je/tree/OldBINDelta;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    if-eqz v8, :cond_34

    .line 1062
    :try_start_1e
    move-object v8, v5

    check-cast v8, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 1063
    .local v8, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v33
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    move-wide/from16 v35, v3

    move-wide/from16 v3, p1

    .end local v3    # "lastLoggedLsn":J
    .local v35, "lastLoggedLsn":J
    cmp-long v17, v3, v33

    if-nez v17, :cond_33

    .line 1064
    :try_start_1f
    invoke-virtual {v8, v9, v6}, Lcom/sleepycat/je/tree/OldBINDelta;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;)V

    .line 1065
    invoke-virtual/range {v25 .. v25}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getDeltaLsn()J

    move-result-wide v33

    .line 1066
    .end local v8    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    .end local v35    # "lastLoggedLsn":J
    .local v33, "lastLoggedLsn":J
    move-object/from16 v29, v7

    move-wide/from16 v6, v33

    goto/16 :goto_c

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "deltaObject":Ljava/lang/Object;
    .end local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "lastLoggedLsn":J
    :catchall_d
    move-exception v0

    goto :goto_9

    .line 1063
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v5    # "deltaObject":Ljava/lang/Object;
    .restart local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v35    # "lastLoggedLsn":J
    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "lnKey":[B
    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "deltaObject":Ljava/lang/Object;
    .end local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v35    # "lastLoggedLsn":J
    .restart local v2    # "lnKey":[B
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :catchall_e
    move-exception v0

    move-wide/from16 v3, p1

    :goto_9
    move-object/from16 v12, p0

    :goto_a
    move-object/from16 v17, v2

    move-object v13, v7

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    goto/16 :goto_1a

    .line 1067
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v3    # "lastLoggedLsn":J
    .restart local v5    # "deltaObject":Ljava/lang/Object;
    .restart local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    :cond_34
    move-wide/from16 v35, v3

    move-wide/from16 v3, p1

    .end local v3    # "lastLoggedLsn":J
    .restart local v35    # "lastLoggedLsn":J
    :try_start_20
    move-object v8, v5

    check-cast v8, Lcom/sleepycat/je/tree/BIN;

    .line 1068
    .local v8, "delta":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v33
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    cmp-long v17, v3, v33

    if-nez v17, :cond_35

    .line 1070
    move-object/from16 v29, v7

    const/4 v7, 0x0

    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :try_start_21
    invoke-virtual {v8, v9, v6, v7}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1073
    invoke-virtual/range {v25 .. v25}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->getDeltaLsn()J

    move-result-wide v33

    move-wide/from16 v6, v33

    .end local v35    # "lastLoggedLsn":J
    .restart local v33    # "lastLoggedLsn":J
    goto :goto_c

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "deltaObject":Ljava/lang/Object;
    .end local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "lastLoggedLsn":J
    :catchall_f
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v17, v2

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    goto/16 :goto_1a

    .line 1068
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v5    # "deltaObject":Ljava/lang/Object;
    .restart local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "delta":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    .restart local v35    # "lastLoggedLsn":J
    :cond_35
    move-object/from16 v29, v7

    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "lnKey":[B
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "deltaObject":Ljava/lang/Object;
    .end local v6    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "delta":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v35    # "lastLoggedLsn":J
    .restart local v2    # "lnKey":[B
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :catchall_10
    move-exception v0

    goto :goto_b

    :catchall_11
    move-exception v0

    move-wide/from16 v3, p1

    :goto_b
    move-object/from16 v29, v7

    move-object/from16 v12, p0

    move-object/from16 v17, v2

    move-object/from16 v5, v18

    move-object/from16 v1, v23

    move-object/from16 v6, v26

    move/from16 v2, v27

    move-object/from16 v13, v29

    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_1a

    .line 1058
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v3    # "lastLoggedLsn":J
    .restart local v5    # "deltaObject":Ljava/lang/Object;
    .restart local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    :cond_36
    move-wide/from16 v35, v3

    move-object/from16 v29, v7

    move-wide/from16 v3, p1

    .end local v3    # "lastLoggedLsn":J
    .end local v7    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v35    # "lastLoggedLsn":J
    move-wide/from16 v6, v35

    .line 1077
    .end local v35    # "lastLoggedLsn":J
    .local v6, "lastLoggedLsn":J
    :goto_c
    const/4 v8, 0x0

    :try_start_22
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/Node;->isBINDelta(Z)Z

    move-result v17

    if-nez v17, :cond_4b

    .line 1083
    const/4 v8, 0x0

    .line 1084
    .local v8, "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    const/16 v17, -0x1

    .line 1087
    .local v17, "retOhBinIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchAndInsertIntoTree()Z

    move-result v21
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    if-eqz v21, :cond_47

    .line 1090
    move-object/from16 v21, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v10

    move/from16 v10, v27

    .end local v27    # "index":I
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    .local v10, "index":I
    .local v21, "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v23, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    :try_start_23
    invoke-virtual {v8, v10, v11}, Lcom/sleepycat/je/tree/IN;->setLastLoggedSize(II)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    .line 1096
    move-object/from16 v12, p0

    move-object/from16 v13, v29

    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v13, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :try_start_24
    iget-object v0, v12, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    move-object/from16 v27, v0

    .line 1097
    .local v27, "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    iget-boolean v0, v12, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->preloadIntoOffHeapCache:Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_17

    if-eqz v0, :cond_37

    .line 1099
    :try_start_25
    invoke-virtual/range {v27 .. v27}, Lcom/sleepycat/je/dbi/MemoryBudget;->getCacheMemoryUsage()J

    move-result-wide v33

    invoke-virtual/range {v27 .. v27}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v35

    cmp-long v0, v33, v35

    if-lez v0, :cond_37

    goto :goto_d

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "deltaObject":Ljava/lang/Object;
    .end local v6    # "lastLoggedLsn":J
    .end local v11    # "lastLoggedSize":I
    .end local v17    # "retOhBinIndex":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    :catchall_12
    move-exception v0

    move-object/from16 v17, v2

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v6, v26

    goto/16 :goto_1a

    .line 1099
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v5    # "deltaObject":Ljava/lang/Object;
    .restart local v6    # "lastLoggedLsn":J
    .restart local v11    # "lastLoggedSize":I
    .restart local v17    # "retOhBinIndex":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    :cond_37
    const/16 v19, 0x0

    .line 1108
    .local v19, "storeOffHeap":Z
    :goto_d
    move-object/from16 v33, v5

    move/from16 v5, v32

    .end local v32    # "isOffHeapBinInTree":Z
    .local v5, "isOffHeapBinInTree":Z
    .local v33, "deltaObject":Ljava/lang/Object;
    if-nez v5, :cond_3c

    if-eqz v19, :cond_38

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isUpperIN()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    if-nez v0, :cond_38

    move-object/from16 v31, v2

    goto/16 :goto_f

    .line 1148
    :cond_38
    :try_start_26
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    if-eqz v0, :cond_39

    .line 1149
    :try_start_27
    move-object v0, v1

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 1150
    .local v0, "retIn":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0, v9}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1151
    invoke-virtual {v1, v9, v6, v7}, Lcom/sleepycat/je/tree/Node;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1152
    invoke-virtual {v8, v10, v1, v2}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    .line 1153
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 1154
    .end local v0    # "retIn":Lcom/sleepycat/je/tree/IN;
    goto :goto_e

    .line 1155
    :cond_39
    :try_start_28
    invoke-virtual {v1, v9, v6, v7}, Lcom/sleepycat/je/tree/Node;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1156
    invoke-virtual {v8, v10, v1, v2}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    .line 1160
    :goto_e
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1161
    nop

    .line 1162
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    .line 1164
    .local v0, "mode":Lcom/sleepycat/je/CacheMode;
    move-object/from16 v31, v2

    .end local v2    # "lnKey":[B
    .local v31, "lnKey":[B
    :try_start_29
    sget-object v2, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v2, :cond_3a

    .line 1165
    iget-object v2, v12, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri1LRU(Lcom/sleepycat/je/tree/IN;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    move-wide/from16 v34, v6

    move-object/from16 v6, v26

    goto :goto_11

    .line 1164
    :cond_3a
    move-wide/from16 v34, v6

    move-object/from16 v6, v26

    goto :goto_11

    .line 1187
    .end local v0    # "mode":Lcom/sleepycat/je/CacheMode;
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "isOffHeapBinInTree":Z
    .end local v6    # "lastLoggedLsn":J
    .end local v11    # "lastLoggedSize":I
    .end local v17    # "retOhBinIndex":I
    .end local v19    # "storeOffHeap":Z
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    :catchall_13
    move-exception v0

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v6, v26

    move-object/from16 v17, v31

    goto/16 :goto_1a

    .line 1160
    .end local v31    # "lnKey":[B
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v2    # "lnKey":[B
    .restart local v5    # "isOffHeapBinInTree":Z
    .restart local v6    # "lastLoggedLsn":J
    .restart local v11    # "lastLoggedSize":I
    .restart local v17    # "retOhBinIndex":I
    .restart local v19    # "storeOffHeap":Z
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :cond_3b
    move-object/from16 v31, v2

    .end local v2    # "lnKey":[B
    .restart local v31    # "lnKey":[B
    move-wide/from16 v34, v6

    move-object/from16 v6, v26

    goto :goto_11

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "isOffHeapBinInTree":Z
    .end local v6    # "lastLoggedLsn":J
    .end local v11    # "lastLoggedSize":I
    .end local v17    # "retOhBinIndex":I
    .end local v19    # "storeOffHeap":Z
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v31    # "lnKey":[B
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .restart local v2    # "lnKey":[B
    :catchall_14
    move-exception v0

    move-object/from16 v31, v2

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v6, v26

    move-object/from16 v17, v31

    .end local v2    # "lnKey":[B
    .restart local v31    # "lnKey":[B
    goto/16 :goto_1a

    .line 1108
    .end local v31    # "lnKey":[B
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v2    # "lnKey":[B
    .restart local v5    # "isOffHeapBinInTree":Z
    .restart local v6    # "lastLoggedLsn":J
    .restart local v11    # "lastLoggedSize":I
    .restart local v17    # "retOhBinIndex":I
    .restart local v19    # "storeOffHeap":Z
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :cond_3c
    move-object/from16 v31, v2

    .line 1109
    .end local v2    # "lnKey":[B
    .restart local v31    # "lnKey":[B
    :goto_f
    :try_start_2a
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1116
    move-object v0, v8

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 1117
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/LN;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 1118
    .local v2, "retLn":Lcom/sleepycat/je/tree/LN;
    move-wide/from16 v34, v6

    move-object/from16 v6, v26

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v34, "lastLoggedLsn":J
    :try_start_2b
    invoke-virtual {v6, v0, v10, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->storePreloadedLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;)Z

    .line 1119
    if-eqz v5, :cond_3e

    .line 1120
    if-eqz v30, :cond_3d

    .line 1121
    invoke-virtual {v6, v0, v13, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->storePreloadedBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)Z

    goto :goto_10

    .line 1120
    :cond_3d
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v31    # "lnKey":[B
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v7

    .line 1124
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "retLn":Lcom/sleepycat/je/tree/LN;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v31    # "lnKey":[B
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :cond_3e
    :goto_10
    nop

    .line 1176
    :goto_11
    move-object/from16 v0, v21

    goto :goto_12

    .line 1131
    .end local v34    # "lastLoggedLsn":J
    .local v6, "lastLoggedLsn":J
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_3f
    move-wide/from16 v34, v6

    move-object/from16 v6, v26

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v34    # "lastLoggedLsn":J
    if-nez v30, :cond_46

    .line 1132
    move-object v0, v1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    move-object v2, v0

    .line 1133
    .local v2, "retBin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2, v9}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1134
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedLsn(J)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    .line 1136
    :try_start_2c
    invoke-virtual {v6, v2, v8, v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->storePreloadedBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    if-nez v0, :cond_43

    .line 1138
    nop

    .line 1141
    :try_start_2d
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_19

    .line 1187
    if-eqz v14, :cond_40

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_40
    if-eqz v16, :cond_41

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_41
    if-eqz v18, :cond_42

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1138
    :cond_42
    const/4 v0, 0x0

    return-object v0

    .line 1141
    :cond_43
    :try_start_2e
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1142
    nop

    .line 1143
    move-object v0, v8

    .line 1144
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v0, "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    move v2, v10

    .line 1145
    .end local v17    # "retOhBinIndex":I
    .local v2, "retOhBinIndex":I
    move/from16 v17, v2

    .line 1176
    .end local v2    # "retOhBinIndex":I
    .restart local v17    # "retOhBinIndex":I
    :goto_12
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1177
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/IN;->setFetchedCold(Z)V

    goto :goto_13

    .line 1178
    :cond_44
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1179
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/LN;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/LN;->setFetchedCold(Z)V

    .line 1183
    .end local v19    # "storeOffHeap":Z
    .end local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :cond_45
    :goto_13
    move/from16 v2, v17

    goto :goto_14

    .line 1141
    .end local v0    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v2, "retBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v19    # "storeOffHeap":Z
    .restart local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_15
    move-exception v0

    move-object v7, v0

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v31    # "lnKey":[B
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v7

    .line 1131
    .end local v2    # "retBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v31    # "lnKey":[B
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :cond_46
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v31    # "lnKey":[B
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v0

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "isOffHeapBinInTree":Z
    .end local v11    # "lastLoggedSize":I
    .end local v17    # "retOhBinIndex":I
    .end local v19    # "storeOffHeap":Z
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v27    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .end local v34    # "lastLoggedLsn":J
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v31    # "lnKey":[B
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :catchall_16
    move-exception v0

    move-object/from16 v6, v26

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v17, v31

    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    goto/16 :goto_1a

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v31    # "lnKey":[B
    .local v2, "lnKey":[B
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :catchall_17
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v6, v26

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v17, v31

    .end local v2    # "lnKey":[B
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v31    # "lnKey":[B
    goto/16 :goto_1a

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v31    # "lnKey":[B
    .restart local v2    # "lnKey":[B
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_18
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v31, v2

    move-object/from16 v6, v26

    move-object/from16 v13, v29

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v17, v31

    .end local v2    # "lnKey":[B
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v31    # "lnKey":[B
    goto/16 :goto_1a

    .line 1087
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v31    # "lnKey":[B
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .restart local v2    # "lnKey":[B
    .local v5, "deltaObject":Ljava/lang/Object;
    .local v6, "lastLoggedLsn":J
    .local v8, "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v10, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v17    # "retOhBinIndex":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v27, "index":I
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    :cond_47
    move-object/from16 v12, p0

    move-object/from16 v31, v2

    move-object/from16 v33, v5

    move-wide/from16 v34, v6

    move-object/from16 v21, v8

    move-object/from16 v8, v23

    move-object/from16 v6, v26

    move-object/from16 v13, v29

    move/from16 v5, v32

    move-object/from16 v23, v10

    move/from16 v10, v27

    .end local v2    # "lnKey":[B
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v32    # "isOffHeapBinInTree":Z
    .local v5, "isOffHeapBinInTree":Z
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    .local v10, "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v23, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v31    # "lnKey":[B
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    .restart local v34    # "lastLoggedLsn":J
    move/from16 v2, v17

    move-object/from16 v0, v21

    .line 1183
    .end local v17    # "retOhBinIndex":I
    .end local v21    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .local v2, "retOhBinIndex":I
    :goto_14
    new-instance v7, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;

    invoke-direct {v7, v1, v11, v0, v2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;-><init>(Lcom/sleepycat/je/tree/Node;ILcom/sleepycat/je/tree/IN;I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    .line 1187
    if-eqz v14, :cond_48

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_48
    if-eqz v16, :cond_49

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_49
    if-eqz v18, :cond_4a

    .line 1194
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1183
    :cond_4a
    return-object v7

    .line 1187
    .end local v0    # "retOhBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v2    # "retOhBinIndex":I
    .end local v5    # "isOffHeapBinInTree":Z
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v23    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .end local v34    # "lastLoggedLsn":J
    :catchall_19
    move-exception v0

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v17, v31

    goto/16 :goto_1a

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v31    # "lnKey":[B
    .local v2, "lnKey":[B
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_1a
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_15

    .line 1077
    .restart local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .local v5, "deltaObject":Ljava/lang/Object;
    .local v6, "lastLoggedLsn":J
    .local v10, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v11    # "lastLoggedSize":I
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    :cond_4b
    move-object/from16 v12, p0

    move-object/from16 v31, v2

    move-object/from16 v33, v5

    move-wide/from16 v34, v6

    move-object/from16 v8, v23

    move-object/from16 v6, v26

    move-object/from16 v13, v29

    move/from16 v5, v32

    move-object/from16 v23, v10

    move/from16 v10, v27

    .end local v2    # "lnKey":[B
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v32    # "isOffHeapBinInTree":Z
    .local v5, "isOffHeapBinInTree":Z
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .local v10, "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v23, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v31    # "lnKey":[B
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    .restart local v34    # "lastLoggedLsn":J
    :try_start_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v31    # "lnKey":[B
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    .line 1187
    .end local v1    # "ret":Lcom/sleepycat/je/tree/Node;
    .end local v5    # "isOffHeapBinInTree":Z
    .end local v11    # "lastLoggedSize":I
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v24    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .end local v34    # "lastLoggedLsn":J
    .restart local v2    # "lnKey":[B
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .local v23, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :catchall_1b
    move-exception v0

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    :goto_15
    move-object/from16 v31, v2

    move-object/from16 v8, v23

    move-object/from16 v6, v26

    move/from16 v10, v27

    move-object/from16 v13, v29

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    move-object/from16 v17, v31

    .end local v2    # "lnKey":[B
    .end local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v31    # "lnKey":[B
    goto/16 :goto_1a

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v31    # "lnKey":[B
    .local v17, "lnKey":[B
    .restart local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    .restart local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    :catchall_1c
    move-exception v0

    move-object/from16 v12, p0

    move-wide/from16 v3, p1

    move-object/from16 v8, v23

    move-object/from16 v6, v26

    move/from16 v10, v27

    move-object/from16 v13, v29

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    .end local v23    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .end local v29    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_1a

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "ohBinIndex":I
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v7, "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v21, "ohBinIndex":I
    .local v23, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    :catchall_1d
    move-exception v0

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move/from16 v15, v21

    move-object/from16 v13, v23

    move/from16 v10, v27

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    move-object v8, v5

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v21    # "ohBinIndex":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    goto/16 :goto_1a

    .line 969
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v4    # "deltaObject":Ljava/lang/Object;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v15, "isLnInOffHeapBin":Z
    .restart local v20    # "mutateResidentDeltaToFullBIN":Z
    .restart local v21    # "ohBinIndex":I
    .restart local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v25, "isOffHeapBinInTree":Z
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v27    # "index":I
    :catch_0
    move-exception v0

    goto :goto_16

    :catch_1
    move-exception v0

    :goto_16
    move-object/from16 v33, v4

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move/from16 v30, v15

    move/from16 v15, v21

    move-object/from16 v13, v23

    move/from16 v10, v27

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    move-object v8, v5

    move/from16 v5, v25

    move-object/from16 v25, v7

    const/4 v7, 0x0

    .line 970
    .end local v4    # "deltaObject":Ljava/lang/Object;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v21    # "ohBinIndex":I
    .end local v23    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v27    # "index":I
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "isOffHeapBinInTree":Z
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v15, "ohBinIndex":I
    .local v25, "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v30    # "isLnInOffHeapBin":Z
    .restart local v33    # "deltaObject":Ljava/lang/Object;
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchAndInsertIntoTree()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "Preload failed"

    goto :goto_17

    :cond_4c
    const-string v2, "SortedLSNTreeWalker failed"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dbId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOffHeapBinInTree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLnInOffHeapBin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v30

    .end local v30    # "isLnInOffHeapBin":Z
    .local v2, "isLnInOffHeapBin":Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " deltaObject="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v33, :cond_4d

    move/from16 v11, v19

    goto :goto_18

    :cond_4d
    move v11, v7

    :goto_18
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " residentNode="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v14, :cond_4e

    move/from16 v7, v19

    :cond_4e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "msg":Ljava/lang/String;
    new-instance v7, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v11, v12, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move/from16 v30, v2

    .end local v2    # "isLnInOffHeapBin":Z
    .restart local v30    # "isLnInOffHeapBin":Z
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_4f

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    goto :goto_19

    :cond_4f
    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 985
    :goto_19
    move/from16 v32, v5

    .end local v5    # "isOffHeapBinInTree":Z
    .restart local v32    # "isOffHeapBinInTree":Z
    invoke-virtual {v8, v1, v3, v4, v10}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v11, v2, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .end local v15    # "ohBinIndex":I
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v17    # "lnKey":[B
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local p1    # "lsn":J
    .end local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    throw v7
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1e

    .line 1187
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v20    # "mutateResidentDeltaToFullBIN":Z
    .end local v30    # "isLnInOffHeapBin":Z
    .end local v32    # "isOffHeapBinInTree":Z
    .end local v33    # "deltaObject":Ljava/lang/Object;
    .restart local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v17    # "lnKey":[B
    .restart local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local p1    # "lsn":J
    .restart local p3    # "lnKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    :catchall_1e
    move-exception v0

    move-object v1, v8

    move v2, v10

    move-object/from16 v5, v18

    goto :goto_1a

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "ohBinIndex":I
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v1, "ohBinIndex":I
    .local v2, "index":I
    .local v3, "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :catchall_1f
    move-exception v0

    move v15, v1

    move-object v13, v3

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move v10, v2

    move-object v14, v6

    move-object v9, v8

    move-object/from16 v6, v26

    move-object v8, v5

    move-object v1, v8

    move-object/from16 v5, v18

    .end local v1    # "ohBinIndex":I
    .end local v2    # "index":I
    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v26    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "index":I
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v15    # "ohBinIndex":I
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    goto :goto_1a

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "index":I
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v1, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "index":I
    .restart local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v4, "ohBinIndex":I
    .local v5, "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .local v6, "residentNode":Lcom/sleepycat/je/tree/Node;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v15, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :catchall_20
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v25, v7

    move-object v12, v9

    move-wide v3, v10

    move-object/from16 v28, v14

    move-object v14, v6

    move-object v9, v8

    move-object v6, v15

    move-object/from16 v13, v20

    move/from16 v15, v21

    .end local v3    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v4    # "ohBinIndex":I
    .end local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v6, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .local v14, "residentNode":Lcom/sleepycat/je/tree/Node;
    .local v15, "ohBinIndex":I
    .restart local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .restart local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    :goto_1a
    if-eqz v14, :cond_50

    .line 1188
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/Node;->releaseLatch()V

    .line 1190
    :cond_50
    if-eqz v16, :cond_51

    .line 1191
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1193
    :cond_51
    if-eqz v5, :cond_52

    .line 1194
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_52
    throw v0

    .line 853
    .end local v1    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "index":I
    .end local v5    # "in2ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "ohBinParent":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "in1ToUnlatch":Lcom/sleepycat/je/tree/IN;
    .end local v17    # "lnKey":[B
    .end local v25    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .end local v28    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v7    # "inEntry":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
    .local v14, "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v15, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    :cond_53
    move-wide v3, v10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private fetchLSNHandleExceptions(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/LSNAccumulator;)Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
    .locals 3
    .param p1, "lsn"    # J
    .param p3, "lnKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;

    .line 681
    const/4 v0, 0x0

    .line 684
    .local v0, "dbe":Lcom/sleepycat/je/DatabaseException;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchLSN(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/LSNAccumulator;)Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->excPredicate:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;

    .line 688
    invoke-interface {v2, v1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;->ignoreException(Ljava/lang/Exception;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    :cond_0
    move-object v0, v1

    .line 693
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    if-eqz v0, :cond_3

    .line 694
    iget-object v1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->savedExceptions:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 700
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 702
    :cond_2
    throw v0

    .line 706
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getOrFetchRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;J)Lcom/sleepycat/je/tree/IN;
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "rootLsn"    # J

    .line 756
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->getResidentRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 757
    .local v0, "root":Lcom/sleepycat/je/tree/IN;
    if-eqz v0, :cond_0

    .line 758
    return-object v0

    .line 760
    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 761
    const/4 v1, 0x0

    return-object v1

    .line 763
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->getRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;J)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    return-object v1
.end method

.method private incInternalMemoryUsage(J)V
    .locals 2
    .param p1, "increment"    # J

    .line 314
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryUsage:J

    .line 315
    return-void
.end method

.method private processAccumulatedLSNs(Lcom/sleepycat/je/dbi/LSNAccumulator;)V
    .locals 5
    .param p1, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;

    .line 626
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->getAndSortPendingLSNs()[J

    move-result-object v0

    .line 628
    .local v0, "currentLSNs":[J
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->createLSNAccumulator()Lcom/sleepycat/je/dbi/LSNAccumulator;

    move-result-object p1

    .line 629
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 630
    .local v3, "lsn":J
    invoke-direct {p0, v3, v4, p1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->fetchAndProcessLSN(JLcom/sleepycat/je/dbi/LSNAccumulator;)V

    .line 629
    .end local v3    # "lsn":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    .end local v0    # "currentLSNs":[J
    :cond_0
    goto :goto_0

    .line 633
    :cond_1
    return-void
.end method

.method private processChild(JLcom/sleepycat/je/tree/Node;[BIZLcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    .locals 10
    .param p1, "lsn"    # J
    .param p3, "child"    # Lcom/sleepycat/je/tree/Node;
    .param p4, "lnKey"    # [B
    .param p5, "lastLoggedSize"    # I
    .param p6, "isEmbedded"    # Z
    .param p7, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;
    .param p8, "ohBinParent"    # Lcom/sleepycat/je/tree/IN;
    .param p9, "ohBinIndex"    # I

    .line 598
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 603
    .local v9, "childCached":Z
    if-nez v9, :cond_1

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

    move-object v4, v0

    goto :goto_1

    .line 607
    :cond_1
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/Node;->getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    move-object v4, v0

    .line 603
    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callProcessLSNHandleExceptions(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V

    .line 610
    if-eqz v9, :cond_2

    invoke-virtual {p3}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    move-object v1, p3

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 613
    .local v1, "nodeAsIN":Lcom/sleepycat/je/tree/IN;
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 614
    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    :try_start_1
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateLSNs(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 617
    goto :goto_3

    .line 616
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    :goto_2
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0

    .line 610
    .end local v1    # "nodeAsIN":Lcom/sleepycat/je/tree/IN;
    :cond_2
    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    .line 619
    :goto_3
    return-void
.end method

.method private processDirtyLN(Lcom/sleepycat/je/tree/Node;J[B)V
    .locals 2
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "lsn"    # J
    .param p4, "lnKey"    # [B

    .line 580
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/Node;->isLN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 582
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->callback:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;

    invoke-interface {v1, p2, p3, v0, p4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;->processDirtyDeletedLN(JLcom/sleepycat/je/tree/LN;[B)V

    .line 586
    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_0
    return-void
.end method

.method private processRootLSN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/LSNAccumulator;J)V
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "pendingLSNs"    # Lcom/sleepycat/je/dbi/LSNAccumulator;
    .param p3, "rootLsn"    # J

    .line 366
    invoke-direct {p0, p1, p3, p4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->getOrFetchRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;J)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 367
    .local v0, "root":Lcom/sleepycat/je/tree/IN;
    if-eqz v0, :cond_0

    .line 369
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->accumulateLSNs(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/LSNAccumulator;Lcom/sleepycat/je/tree/IN;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->releaseRootIN(Lcom/sleepycat/je/tree/IN;)V

    .line 372
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->releaseRootIN(Lcom/sleepycat/je/tree/IN;)V

    throw v1

    .line 374
    :cond_0
    :goto_0
    return-void
.end method

.method private releaseRootIN(Lcom/sleepycat/je/tree/IN;)V
    .locals 0
    .param p1, "root"    # Lcom/sleepycat/je/tree/IN;

    .line 795
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 796
    return-void
.end method


# virtual methods
.method protected fetchAndInsertIntoTree()Z
    .locals 1

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public getResidentRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 788
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/Tree;->getResidentRootIN(Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method getRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;J)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "rootLsn"    # J

    .line 772
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 773
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 774
    .local v0, "root":Lcom/sleepycat/je/tree/IN;
    if-nez v0, :cond_0

    .line 775
    const/4 v1, 0x0

    return-object v1

    .line 777
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 778
    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 779
    return-object v0
.end method

.method public setInternalMemoryLimit(J)V
    .locals 0
    .param p1, "internalMemoryLimit"    # J

    .line 310
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->internalMemoryLimit:J

    .line 311
    return-void
.end method

.method setLSNBatchSize(J)V
    .locals 0
    .param p1, "lsnBatchSize"    # J

    .line 306
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->lsnBatchSize:J

    .line 307
    return-void
.end method

.method public walk()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->walkInternal()V

    .line 332
    return-void
.end method

.method walkInternal()V
    .locals 5

    .line 344
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->createLSNAccumulator()Lcom/sleepycat/je/dbi/LSNAccumulator;

    move-result-object v0

    .line 345
    .local v0, "pendingLSNs":Lcom/sleepycat/je/dbi/LSNAccumulator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 346
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->rootLsns:[J

    aget-wide v3, v3, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processRootLSN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/LSNAccumulator;J)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->processAccumulatedLSNs(Lcom/sleepycat/je/dbi/LSNAccumulator;)V

    .line 357
    return-void
.end method
