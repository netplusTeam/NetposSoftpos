.class public final Lcom/sleepycat/je/tree/Tree;
.super Ljava/lang/Object;
.source "Tree.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/Tree$SplitInfo;,
        Lcom/sleepycat/je/tree/Tree$RootChildReference;,
        Lcom/sleepycat/je/tree/Tree$SearchType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TRACE_ROOT_SPLIT:Ljava/lang/String; = "RootSplit:"

.field private static splitRequiredException:Lcom/sleepycat/je/tree/SplitRequiredException;


# instance fields
.field private ckptHook:Lcom/sleepycat/je/utilint/TestHook;

.field private database:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

.field private getParentINHook:Lcom/sleepycat/je/utilint/TestHook;

.field private maxTreeEntriesPerNode:I

.field private root:Lcom/sleepycat/je/tree/ChildReference;

.field private rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

.field private searchHook:Lcom/sleepycat/je/utilint/TestHook;

.field private stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;",
            ">;"
        }
    .end annotation
.end field

.field private waitHook:Lcom/sleepycat/je/utilint/TestHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    nop

    .line 151
    new-instance v0, Lcom/sleepycat/je/tree/SplitRequiredException;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/SplitRequiredException;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/Tree;->splitRequiredException:Lcom/sleepycat/je/tree/SplitRequiredException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/Tree;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/Tree;->init(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/Tree;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    .line 265
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/Tree;->init(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/Tree;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/tree/Tree;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/tree/ChildReference;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/tree/Tree;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/tree/Tree;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method private forceSplit([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 31
    .param p1, "key"    # [B
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/tree/SplitRequiredException;
        }
    .end annotation

    .line 1890
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1892
    .local v3, "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    const/4 v4, 0x1

    .line 1893
    .local v4, "allLeftSideDescent":Z
    const/4 v5, 0x1

    .line 1896
    .local v5, "allRightSideDescent":Z
    const/4 v6, 0x0

    .line 1897
    .local v6, "child":Lcom/sleepycat/je/tree/IN;
    const/4 v7, 0x0

    .line 1904
    .local v7, "rootIN":Lcom/sleepycat/je/tree/IN;
    iget-object v0, v1, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 1906
    const/4 v8, 0x0

    .line 1909
    .local v8, "success":Z
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v9, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    move-object v7, v0

    .line 1910
    nop

    .line 1911
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1921
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1930
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v9

    if-eqz v9, :cond_10

    .line 1936
    const/4 v9, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v0, v15, v9, v9}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v11

    .line 1937
    .local v11, "index":I
    if-ltz v11, :cond_f

    .line 1938
    if-eqz v11, :cond_0

    .line 1939
    const/4 v4, 0x0

    .line 1941
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_1

    .line 1942
    const/4 v5, 0x0

    .line 1949
    :cond_1
    invoke-virtual {v0, v11, v2}, Lcom/sleepycat/je/tree/IN;->loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v12

    move-object v6, v12

    .line 1951
    if-nez v6, :cond_2

    .line 1952
    goto :goto_1

    .line 1955
    :cond_2
    invoke-static {v0, v6, v2}, Lcom/sleepycat/je/tree/Tree;->latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 1957
    new-instance v12, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    invoke-direct {v12, v0, v6, v11}, Lcom/sleepycat/je/tree/Tree$SplitInfo;-><init>(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    move-object v0, v6

    .line 1961
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1963
    :goto_1
    const/4 v12, 0x0

    .line 1973
    .local v12, "startedSplits":Z
    const-wide/16 v13, -0x1

    .line 1975
    .local v13, "lastParentForSplit":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v18, v12

    move-wide/from16 v19, v13

    move/from16 v14, v16

    .end local v12    # "startedSplits":Z
    .end local v13    # "lastParentForSplit":J
    .local v14, "i":I
    .local v18, "startedSplits":Z
    .local v19, "lastParentForSplit":J
    :goto_2
    if-ltz v14, :cond_a

    .line 1976
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    move-object v13, v12

    .line 1978
    .local v13, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v12, v13, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    move-object v6, v12

    .line 1979
    iget-object v12, v13, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    move-object v0, v12

    .line 1980
    iget v12, v13, Lcom/sleepycat/je/tree/Tree$SplitInfo;->index:I

    .line 1983
    .end local v11    # "index":I
    .local v12, "index":I
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1985
    invoke-virtual {v6, v9}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 1987
    if-lez v14, :cond_3

    add-int/lit8 v11, v14, -0x1

    .line 1988
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    iget-object v11, v11, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    goto :goto_3

    :cond_3
    move-object v11, v10

    .line 1990
    .local v11, "grandParent":Lcom/sleepycat/je/tree/IN;
    :goto_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 1995
    :cond_4
    iget v9, v1, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    invoke-virtual {v6, v0, v12, v11, v9}, Lcom/sleepycat/je/tree/IN;->split(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/tree/IN;

    move-object/from16 v21, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    goto :goto_5

    .line 1991
    :cond_5
    :goto_4
    iget v9, v1, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    move-object/from16 v21, v11

    .end local v11    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .local v21, "grandParent":Lcom/sleepycat/je/tree/IN;
    move-object v11, v6

    move/from16 v28, v12

    .end local v12    # "index":I
    .local v28, "index":I
    move-object v12, v0

    move-object/from16 v29, v13

    .end local v13    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .local v29, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    move/from16 v13, v28

    move/from16 v30, v14

    .end local v14    # "i":I
    .local v30, "i":I
    move-object/from16 v14, v21

    move v15, v9

    move-object/from16 v16, p1

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/sleepycat/je/tree/IN;->splitSpecial(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I[BZ)Lcom/sleepycat/je/tree/IN;

    .line 1999
    :goto_5
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v11

    .line 2000
    .end local v19    # "lastParentForSplit":J
    .local v11, "lastParentForSplit":J
    const/4 v9, 0x1

    .line 2007
    .end local v18    # "startedSplits":Z
    .local v9, "startedSplits":Z
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2008
    iget-object v13, v1, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v14, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2009
    move-wide/from16 v16, v11

    .end local v11    # "lastParentForSplit":J
    .local v16, "lastParentForSplit":J
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v10

    .line 2008
    invoke-virtual {v13, v14, v10, v11}, Lcom/sleepycat/je/tree/ChildReference;->updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    goto :goto_6

    .line 2007
    .end local v16    # "lastParentForSplit":J
    .restart local v11    # "lastParentForSplit":J
    :cond_6
    move-wide/from16 v16, v11

    .line 2011
    .end local v11    # "lastParentForSplit":J
    .end local v21    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "lastParentForSplit":J
    :goto_6
    move/from16 v18, v9

    move-wide/from16 v19, v16

    goto :goto_8

    .line 2012
    .end local v9    # "startedSplits":Z
    .end local v16    # "lastParentForSplit":J
    .end local v28    # "index":I
    .end local v29    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local v30    # "i":I
    .restart local v12    # "index":I
    .restart local v13    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local v14    # "i":I
    .restart local v18    # "startedSplits":Z
    .restart local v19    # "lastParentForSplit":J
    :cond_7
    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    .end local v12    # "index":I
    .end local v13    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local v14    # "i":I
    .restart local v28    # "index":I
    .restart local v29    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local v30    # "i":I
    if-eqz v18, :cond_9

    .line 2021
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v9

    cmp-long v9, v19, v9

    if-nez v9, :cond_8

    .line 2022
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v9

    .local v9, "newChildLsn":J
    goto :goto_7

    .line 2024
    .end local v9    # "newChildLsn":J
    :cond_8
    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisional(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v9

    .line 2027
    .restart local v9    # "newChildLsn":J
    :goto_7
    const-wide/16 v25, -0x1

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move/from16 v22, v28

    move-wide/from16 v23, v9

    invoke-virtual/range {v21 .. v27}, Lcom/sleepycat/je/tree/IN;->updateEntry(IJJI)V

    .line 2035
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2037
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->optionalLog()J

    move-result-wide v11

    .line 2039
    .local v11, "newRootLsn":J
    iget-object v13, v1, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v14, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v13, v14, v11, v12}, Lcom/sleepycat/je/tree/ChildReference;->updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2044
    .end local v9    # "newChildLsn":J
    .end local v11    # "newRootLsn":J
    :cond_9
    :goto_8
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    const/4 v6, 0x0

    .line 1975
    .end local v29    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    add-int/lit8 v14, v30, -0x1

    move-object/from16 v15, p1

    move/from16 v11, v28

    const/4 v9, 0x0

    const/4 v10, 0x0

    .end local v30    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_2

    .end local v28    # "index":I
    .local v11, "index":I
    :cond_a
    move/from16 v30, v14

    .line 2047
    .end local v14    # "i":I
    const/4 v8, 0x1

    .line 2049
    .end local v18    # "startedSplits":Z
    .end local v19    # "lastParentForSplit":J
    if-nez v8, :cond_d

    .line 2050
    if-eqz v6, :cond_b

    .line 2051
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2054
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 2055
    .local v10, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v12, v10, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v12}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2056
    .end local v10    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    goto :goto_9

    .line 2058
    :cond_c
    if-eqz v7, :cond_d

    .line 2059
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2063
    :cond_d
    iget-object v9, v1, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v9}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 2064
    nop

    .line 2066
    return-object v7

    .line 1961
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1937
    :cond_f
    :try_start_1
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v4    # "allLeftSideDescent":Z
    .end local v5    # "allRightSideDescent":Z
    .end local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "success":Z
    .end local p1    # "key":[B
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v9

    .line 1931
    .end local v11    # "index":I
    .restart local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v4    # "allLeftSideDescent":Z
    .restart local v5    # "allRightSideDescent":Z
    .restart local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "success":Z
    .restart local p1    # "key":[B
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :cond_10
    const-string v9, "Found upper IN with 0 entries"

    invoke-static {v9}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v9

    .end local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v4    # "allLeftSideDescent":Z
    .end local v5    # "allRightSideDescent":Z
    .end local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "success":Z
    .end local p1    # "key":[B
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v9

    .line 1922
    .restart local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v4    # "allLeftSideDescent":Z
    .restart local v5    # "allRightSideDescent":Z
    .restart local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "success":Z
    .restart local p1    # "key":[B
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :cond_11
    sget-object v9, Lcom/sleepycat/je/tree/Tree;->splitRequiredException:Lcom/sleepycat/je/tree/SplitRequiredException;

    .end local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v4    # "allLeftSideDescent":Z
    .end local v5    # "allRightSideDescent":Z
    .end local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "success":Z
    .end local p1    # "key":[B
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v4    # "allLeftSideDescent":Z
    .restart local v5    # "allRightSideDescent":Z
    .restart local v6    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "success":Z
    .restart local p1    # "key":[B
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_0
    move-exception v0

    if-nez v8, :cond_14

    .line 2050
    if-eqz v6, :cond_12

    .line 2051
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2054
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 2055
    .restart local v10    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v11, v10, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2056
    .end local v10    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    goto :goto_a

    .line 2058
    :cond_13
    if-eqz v7, :cond_14

    .line 2059
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 2063
    :cond_14
    iget-object v9, v1, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v9}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method private getRootINInternal(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p2, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 449
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/Tree;->getRootINRootAlreadyLatched(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 449
    return-object v0

    .line 451
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method private getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .locals 1

    .line 2639
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getThreadLocalReferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    return-object v0

    .line 2642
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    .line 282
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 283
    return-void
.end method

.method private static latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p0, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p1, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 339
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 341
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getParent()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 344
    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private static latchChildShared(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p0, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p1, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 353
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 355
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getParent()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 358
    return-void

    .line 356
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private makeRootChildReference()Lcom/sleepycat/je/tree/ChildReference;
    .locals 2

    .line 389
    new-instance v0, Lcom/sleepycat/je/tree/Tree$RootChildReference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/tree/Tree$RootChildReference;-><init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Tree$1;)V

    return-object v0
.end method

.method private releaseNodeLadderLatches(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/Tree$SplitInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 790
    .local p1, "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    iget-object v0, v0, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 797
    .local v1, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v2, v1, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 798
    .end local v1    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    goto :goto_0

    .line 800
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 801
    return-void
.end method

.method private searchDeletableSubTree([B)Ljava/util/List;
    .locals 9
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/Tree$SplitInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/tree/NodeNotEmptyException;,
            Lcom/sleepycat/je/tree/CursorsExistException;
        }
    .end annotation

    .line 690
    if-eqz p1, :cond_d

    .line 692
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/Tree;->getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 694
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    return-object v1

    .line 699
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v2, "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    const/4 v3, 0x0

    .line 706
    .local v3, "pinedIN":Lcom/sleepycat/je/tree/IN;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4

    if-eqz v4, :cond_c

    .line 711
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 716
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 717
    .local v6, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v7, v6, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 718
    .end local v6    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    goto :goto_0

    .line 719
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 720
    const/4 v3, 0x0

    goto :goto_1

    .line 721
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isPinned()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 722
    move-object v3, v0

    .line 725
    :cond_4
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v4}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v6

    .line 726
    .local v6, "index":I
    if-ltz v6, :cond_b

    .line 729
    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v7

    .line 731
    .local v7, "child":Lcom/sleepycat/je/tree/IN;
    sget-object v8, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-static {v0, v7, v8}, Lcom/sleepycat/je/tree/Tree;->latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 733
    new-instance v8, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    invoke-direct {v8, v0, v7, v6}, Lcom/sleepycat/je/tree/Tree$SplitInfo;-><init>(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    move-object v0, v7

    .line 737
    .end local v6    # "index":I
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 739
    if-nez v3, :cond_a

    .line 747
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 748
    move-object v6, v7

    check-cast v6, Lcom/sleepycat/je/tree/BIN;

    .line 750
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v8

    if-nez v8, :cond_8

    .line 754
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v8

    if-nez v8, :cond_7

    .line 763
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v8

    if-gtz v8, :cond_6

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isPinned()Z

    move-result v8

    if-nez v8, :cond_6

    .line 767
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    iget-object v4, v4, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4

    if-gt v4, v5, :cond_5

    .line 769
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/Tree;->releaseNodeLadderLatches(Ljava/util/List;)V

    .line 770
    return-object v1

    .line 773
    :cond_5
    return-object v2

    .line 764
    :cond_6
    sget-object v1, Lcom/sleepycat/je/tree/CursorsExistException;->CURSORS_EXIST:Lcom/sleepycat/je/tree/CursorsExistException;

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 755
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :cond_7
    const-string v1, "Found BIN delta with 0 entries"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 751
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :cond_8
    sget-object v1, Lcom/sleepycat/je/tree/NodeNotEmptyException;->NODE_NOT_EMPTY:Lcom/sleepycat/je/tree/NodeNotEmptyException;

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 747
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 740
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :cond_a
    sget-object v1, Lcom/sleepycat/je/tree/CursorsExistException;->CURSORS_EXIST:Lcom/sleepycat/je/tree/CursorsExistException;

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 726
    .end local v7    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .local v6, "index":I
    .restart local p1    # "key":[B
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1

    .line 707
    .end local v6    # "index":I
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :cond_c
    const-string v1, "Found upper IN with 0 entries"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local p1    # "key":[B
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    .end local v3    # "pinedIN":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local p1    # "key":[B
    :catchall_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/Tree;->releaseNodeLadderLatches(Ljava/util/List;)V

    .line 778
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 779
    throw v1

    .line 690
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "nodeLadder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private searchSplitsAllowed(Lcom/sleepycat/je/tree/IN;[BLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;
    .locals 7
    .param p1, "rootIN"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "key"    # [B
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "[B",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/tree/BIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/tree/SplitRequiredException;
        }
    .end annotation

    .line 1764
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1765
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0

    const-string v1, "A null or non-root IN was given as the parent"

    if-eqz v0, :cond_e

    .line 1771
    move-object v0, p1

    .line 1772
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v2, 0x0

    .line 1773
    .local v2, "child":Lcom/sleepycat/je/tree/IN;
    const/4 v3, 0x0

    .line 1781
    .local v3, "success":Z
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4

    if-eqz v4, :cond_b

    .line 1786
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v4, p4}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v5

    .line 1787
    .local v5, "index":I
    if-ltz v5, :cond_a

    .line 1789
    invoke-virtual {v0, v5, p2}, Lcom/sleepycat/je/tree/IN;->fetchINWithNoLatch(I[B)Lcom/sleepycat/je/tree/IN;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 1791
    if-nez v2, :cond_3

    .line 1792
    const/4 v1, 0x0

    .line 1848
    if-nez v3, :cond_2

    .line 1849
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1850
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1852
    :cond_1
    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1853
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1792
    :cond_2
    return-object v1

    .line 1796
    :cond_3
    :try_start_1
    invoke-static {v0, v2, p3}, Lcom/sleepycat/je/tree/Tree;->latchChildShared(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 1803
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1805
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 1807
    iget-object v4, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 1810
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1812
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1813
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1816
    iget-object v4, p0, Lcom/sleepycat/je/tree/Tree;->waitHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1825
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/tree/Tree;->forceSplit([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v4

    move-object p1, v4

    .line 1826
    move-object v0, p1

    .line 1828
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1829
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1830
    :cond_4
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    .end local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v1

    .line 1828
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "success":Z
    .restart local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    .end local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v1

    .line 1816
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "success":Z
    .restart local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    .end local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v1

    .line 1838
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "success":Z
    .restart local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_7
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1839
    move-object v0, v2

    .line 1840
    const/4 v2, 0x0

    .line 1842
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1844
    const/4 v3, 0x1

    .line 1845
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/tree/BIN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1848
    if-nez v3, :cond_9

    .line 1849
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1850
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1852
    :cond_8
    if-eq v0, v2, :cond_9

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1853
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1845
    :cond_9
    return-object v1

    .line 1787
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    .end local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v1

    .line 1782
    .end local v5    # "index":I
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "success":Z
    .restart local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_b
    const-string v1, "Found upper IN with 0 entries"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    .end local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1848
    .restart local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v3    # "success":Z
    .restart local p1    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :catchall_0
    move-exception v1

    if-nez v3, :cond_d

    .line 1849
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1850
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1852
    :cond_c
    if-eq v0, v2, :cond_d

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1853
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_d
    throw v1

    .line 1766
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "success":Z
    :cond_e
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1764
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/tree/BIN;"
        }
    .end annotation

    .line 1655
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    const/4 v0, 0x0

    .line 1657
    .local v0, "insertTarget":Lcom/sleepycat/je/tree/BIN;
    :cond_0
    :goto_0
    if-nez v0, :cond_10

    .line 1659
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 1661
    const/4 v1, 0x1

    .line 1662
    .local v1, "rootLatched":Z
    const/4 v2, 0x0

    .line 1663
    .local v2, "rootINLatched":Z
    const/4 v3, 0x0

    .line 1664
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 1675
    .local v4, "rootIN":Lcom/sleepycat/je/tree/IN;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 1676
    nop

    .line 1711
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 1712
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1714
    :cond_1
    if-eqz v1, :cond_2

    .line 1715
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1676
    :cond_2
    return-object v6

    .line 1679
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v7, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5, v7, v6}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/IN;

    move-object v4, v5

    .line 1681
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1683
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1684
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 1686
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_6

    .line 1687
    nop

    .line 1711
    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 1712
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1714
    :cond_4
    if-eqz v1, :cond_5

    .line 1715
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1687
    :cond_5
    return-object v6

    .line 1690
    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v7, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5, v7, v6}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/IN;

    move-object v4, v5

    .line 1692
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->needsSplitting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1694
    invoke-direct {p0, p2}, Lcom/sleepycat/je/tree/Tree;->splitRoot(Lcom/sleepycat/je/CacheMode;)V

    .line 1696
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1697
    const/4 v1, 0x0

    .line 1699
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    .line 1700
    .local v5, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/dbi/DbTree;->optionalModifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1711
    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 1712
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1714
    :cond_7
    if-eqz v1, :cond_0

    .line 1715
    iget-object v6, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v6}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    goto/16 :goto_0

    .line 1706
    .end local v5    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_8
    :try_start_3
    invoke-virtual {v4, p2}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1707
    const/4 v2, 0x1

    .line 1708
    const/4 v3, 0x1

    .line 1711
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 1712
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1714
    :cond_9
    if-eqz v1, :cond_a

    .line 1715
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1726
    :cond_a
    if-eqz v2, :cond_d

    .line 1728
    :try_start_4
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/sleepycat/je/tree/Tree;->searchSplitsAllowed(Lcom/sleepycat/je/tree/IN;[BLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v5

    move-object v0, v5

    .line 1731
    if-nez v0, :cond_c

    .line 1732
    sget-boolean v5, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v5, :cond_b

    .line 1733
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1735
    :cond_b
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incRelatchesRequired()V

    .line 1745
    :cond_c
    nop

    .line 1746
    .end local v1    # "rootLatched":Z
    .end local v2    # "rootINLatched":Z
    .end local v3    # "success":Z
    .end local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    goto/16 :goto_0

    .line 1737
    .restart local v1    # "rootLatched":Z
    .restart local v2    # "rootINLatched":Z
    .restart local v3    # "success":Z
    .restart local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1726
    :cond_d
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "insertTarget":Lcom/sleepycat/je/tree/BIN;
    .end local v1    # "rootLatched":Z
    .end local v2    # "rootINLatched":Z
    .end local v3    # "success":Z
    .end local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "key":[B
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v5
    :try_end_4
    .catch Lcom/sleepycat/je/tree/SplitRequiredException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1744
    .restart local v0    # "insertTarget":Lcom/sleepycat/je/tree/BIN;
    .restart local v1    # "rootLatched":Z
    .restart local v2    # "rootINLatched":Z
    .restart local v3    # "success":Z
    .restart local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .local v5, "e":Lcom/sleepycat/je/tree/SplitRequiredException;
    .restart local p1    # "key":[B
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :goto_1
    goto/16 :goto_0

    .line 1711
    .end local v5    # "e":Lcom/sleepycat/je/tree/SplitRequiredException;
    :catchall_0
    move-exception v5

    if-nez v3, :cond_e

    if-eqz v2, :cond_e

    .line 1712
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1714
    :cond_e
    if-eqz v1, :cond_f

    .line 1715
    iget-object v6, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v6}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    :cond_f
    throw v5

    .line 1748
    .end local v1    # "rootLatched":Z
    .end local v2    # "rootINLatched":Z
    .end local v3    # "success":Z
    .end local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_10
    return-object v0
.end method

.method private searchSubTree(Lcom/sleepycat/je/tree/IN;[BLcom/sleepycat/je/tree/Tree$SearchType;IZLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/IN;
    .locals 21
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "key"    # [B
    .param p3, "searchType"    # Lcom/sleepycat/je/tree/Tree$SearchType;
    .param p4, "targetLevel"    # I
    .param p5, "latchShared"    # Z
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "[B",
            "Lcom/sleepycat/je/tree/Tree$SearchType;",
            "IZ",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/tree/IN;"
        }
    .end annotation

    .line 2318
    .local p7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    if-eqz p1, :cond_22

    .line 2319
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2320
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p7

    goto/16 :goto_d

    .line 2322
    :cond_1
    :goto_0
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-eq v3, v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v0, :cond_3

    :cond_2
    if-nez v2, :cond_21

    .line 2334
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2335
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2337
    const/4 v6, 0x0

    .line 2339
    .local v6, "success":Z
    move-object/from16 v0, p1

    .line 2340
    .local v0, "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    const/4 v7, 0x0

    .line 2341
    .local v7, "child":Lcom/sleepycat/je/tree/IN;
    const/4 v8, 0x0

    .line 2342
    .local v8, "grandParent":Lcom/sleepycat/je/tree/IN;
    const/4 v9, 0x0

    .line 2343
    .local v9, "childIsLatched":Z
    const/4 v10, 0x0

    .line 2344
    .local v10, "grandParentIsLatched":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 2346
    .local v11, "doGrandparentLatching":Z
    nop

    .line 2347
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/Tree;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v12

    move v13, v10

    move v14, v11

    move-object v10, v8

    move v11, v9

    move-object v8, v0

    move-object v9, v7

    move-object/from16 v7, p1

    .line 2351
    .end local v0    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v7, "parent":Lcom/sleepycat/je/tree/IN;
    .local v8, "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .local v9, "child":Lcom/sleepycat/je/tree/IN;
    .local v10, "grandParent":Lcom/sleepycat/je/tree/IN;
    .local v11, "childIsLatched":Z
    .local v12, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .local v13, "grandParentIsLatched":Z
    .local v14, "doGrandparentLatching":Z
    :goto_1
    const-string v15, ""

    move-object/from16 p1, v9

    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .local p1, "child":Lcom/sleepycat/je/tree/IN;
    const-string/jumbo v9, "searchSubTreeInternal"

    move/from16 v16, v11

    .end local v11    # "childIsLatched":Z
    .local v16, "childIsLatched":Z
    const-string v11, "Tree"

    if-eqz v12, :cond_4

    .line 2352
    :try_start_0
    invoke-virtual {v7, v12}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2473
    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v18, v6

    move/from16 v19, v14

    move-object/from16 v6, p7

    move-object v14, v10

    move-object/from16 v10, p1

    goto/16 :goto_b

    .line 2355
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v0

    if-lez v0, :cond_1b

    .line 2357
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move/from16 v17, v13

    .end local v13    # "grandParentIsLatched":Z
    .local v17, "grandParentIsLatched":Z
    const/4 v13, 0x0

    if-ne v3, v0, :cond_5

    .line 2359
    move/from16 v18, v6

    move-object/from16 v6, p7

    .end local v6    # "success":Z
    .local v18, "success":Z
    :try_start_2
    invoke-virtual {v7, v2, v13, v13, v6}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v0

    move v13, v0

    .local v0, "index":I
    goto :goto_3

    .line 2360
    .end local v0    # "index":I
    .end local v18    # "success":Z
    .restart local v6    # "success":Z
    :cond_5
    move/from16 v18, v6

    move-object/from16 v6, p7

    .end local v6    # "success":Z
    .restart local v18    # "success":Z
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v0, :cond_6

    .line 2362
    const/4 v0, 0x0

    move v13, v0

    .restart local v0    # "index":I
    goto :goto_3

    .line 2363
    .end local v0    # "index":I
    :cond_6
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v0, :cond_1a

    .line 2365
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    .line 2371
    .local v13, "index":I
    :goto_3
    if-ltz v13, :cond_19

    .line 2397
    invoke-virtual {v7, v13}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v19, v0

    .line 2399
    .end local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .local v19, "child":Lcom/sleepycat/je/tree/IN;
    if-nez v19, :cond_c

    if-eqz v14, :cond_c

    .line 2401
    if-eq v7, v8, :cond_8

    .line 2403
    :try_start_3
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2404
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2405
    invoke-virtual {v7, v5}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 2406
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2407
    const/4 v0, 0x0

    .line 2408
    .end local v17    # "grandParentIsLatched":Z
    .local v0, "grandParentIsLatched":Z
    const/4 v10, 0x0

    .line 2409
    const/4 v14, 0x0

    move/from16 v17, v0

    goto :goto_4

    .line 2403
    .end local v0    # "grandParentIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2411
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v14    # "doGrandparentLatching":Z
    .restart local v16    # "childIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    .restart local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_8
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2412
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2414
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2415
    invoke-virtual {v1, v5}, Lcom/sleepycat/je/tree/Tree;->getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    move-object v8, v0

    .line 2416
    move-object v7, v8

    .line 2417
    if-eqz v7, :cond_a

    .line 2418
    if-nez v10, :cond_9

    .line 2419
    const/4 v0, 0x0

    .line 2421
    .end local v14    # "doGrandparentLatching":Z
    .local v0, "doGrandparentLatching":Z
    move-object v14, v10

    move-object/from16 v10, v19

    move/from16 v19, v0

    goto/16 :goto_8

    .line 2418
    .end local v0    # "doGrandparentLatching":Z
    .restart local v14    # "doGrandparentLatching":Z
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2417
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v14    # "doGrandparentLatching":Z
    .restart local v16    # "childIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    .restart local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2424
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v14    # "doGrandparentLatching":Z
    .restart local v16    # "childIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    .restart local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_b
    :goto_4
    invoke-virtual {v7, v13, v5}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    move/from16 v19, v14

    move-object v14, v10

    move-object v10, v0

    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .local v0, "child":Lcom/sleepycat/je/tree/IN;
    goto :goto_5

    .line 2426
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v19    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_c
    if-nez v19, :cond_d

    .line 2428
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v7, v13, v0}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v19, v14

    move-object v14, v10

    move-object v10, v0

    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "child":Lcom/sleepycat/je/tree/IN;
    goto :goto_5

    .line 2473
    .end local v0    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v13    # "index":I
    .restart local v19    # "child":Lcom/sleepycat/je/tree/IN;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move/from16 v13, v17

    move/from16 v20, v14

    move-object v14, v10

    move-object/from16 v10, v19

    move/from16 v19, v20

    goto/16 :goto_b

    .line 2426
    .restart local v13    # "index":I
    :cond_d
    move/from16 v20, v14

    move-object v14, v10

    move-object/from16 v10, v19

    move/from16 v19, v20

    .line 2432
    .local v10, "child":Lcom/sleepycat/je/tree/IN;
    .local v14, "grandParent":Lcom/sleepycat/je/tree/IN;
    .local v19, "doGrandparentLatching":Z
    :goto_5
    if-eqz v14, :cond_e

    .line 2433
    :try_start_4
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2434
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 2438
    :cond_e
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v0

    if-ne v0, v4, :cond_10

    .line 2439
    if-eqz p5, :cond_f

    .line 2440
    invoke-virtual {v10, v5}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    goto :goto_6

    .line 2442
    :cond_f
    invoke-virtual {v10, v5}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    goto :goto_6

    .line 2445
    :cond_10
    if-eqz v19, :cond_11

    goto :goto_6

    .line 2447
    :cond_11
    invoke-static {v7, v10, v5}, Lcom/sleepycat/je/tree/Tree;->latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 2449
    :goto_6
    const/16 v16, 0x1

    .line 2451
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 2453
    if-eqz v12, :cond_12

    .line 2454
    invoke-virtual {v10, v12}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 2458
    :cond_12
    if-eqz v19, :cond_13

    .line 2459
    move-object v14, v7

    .line 2460
    const/16 v17, 0x1

    goto :goto_7

    .line 2462
    :cond_13
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2465
    :goto_7
    move-object v0, v10

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    move-object v7, v0

    .line 2467
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    :goto_8
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v4, :cond_14

    goto :goto_9

    :cond_14
    move-object v9, v10

    move-object v10, v14

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v14, v19

    goto/16 :goto_1

    .line 2469
    :cond_15
    :goto_9
    const/16 v18, 0x1

    .line 2470
    nop

    .line 2473
    if-nez v18, :cond_17

    .line 2482
    if-eqz v10, :cond_16

    if-eqz v16, :cond_16

    .line 2483
    :try_start_5
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2486
    :cond_16
    if-eq v7, v10, :cond_17

    .line 2487
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    .line 2489
    :catch_0
    move-exception v0

    .line 2490
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2491
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 2490
    invoke-static {v2, v11, v9, v15, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 2496
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_a
    if-eqz v14, :cond_18

    if-eqz v17, :cond_18

    .line 2497
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2470
    :cond_18
    return-object v10

    .line 2473
    .end local v13    # "index":I
    :catchall_2
    move-exception v0

    move-object v2, v0

    move/from16 v13, v17

    goto :goto_b

    .line 2371
    .end local v19    # "doGrandparentLatching":Z
    .local v10, "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v13    # "index":I
    .local v14, "doGrandparentLatching":Z
    .restart local p1    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_19
    :try_start_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2367
    .end local v13    # "index":I
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v14    # "doGrandparentLatching":Z
    .restart local v16    # "childIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    .restart local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value of searchType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2473
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v14    # "doGrandparentLatching":Z
    .restart local v16    # "childIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    .restart local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :catchall_3
    move-exception v0

    move-object v2, v0

    move/from16 v19, v14

    move/from16 v13, v17

    move-object v14, v10

    move-object/from16 v10, p1

    goto :goto_b

    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .restart local v6    # "success":Z
    .local v13, "grandParentIsLatched":Z
    :catchall_4
    move-exception v0

    move/from16 v18, v6

    move/from16 v17, v13

    move-object/from16 v6, p7

    move-object v2, v0

    move/from16 v19, v14

    move-object v14, v10

    move-object/from16 v10, p1

    .end local v6    # "success":Z
    .end local v13    # "grandParentIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    goto :goto_b

    .line 2355
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .restart local v6    # "success":Z
    .restart local v13    # "grandParentIsLatched":Z
    :cond_1b
    move/from16 v18, v6

    move/from16 v17, v13

    move-object/from16 v6, p7

    .end local v6    # "success":Z
    .end local v13    # "grandParentIsLatched":Z
    .restart local v17    # "grandParentIsLatched":Z
    .restart local v18    # "success":Z
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v14    # "doGrandparentLatching":Z
    .end local v16    # "childIsLatched":Z
    .end local v17    # "grandParentIsLatched":Z
    .end local v18    # "success":Z
    .end local p1    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "key":[B
    .end local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p4    # "targetLevel":I
    .end local p5    # "latchShared":Z
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2473
    .restart local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .local v10, "child":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v13    # "grandParentIsLatched":Z
    .local v14, "grandParent":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "childIsLatched":Z
    .restart local v18    # "success":Z
    .restart local v19    # "doGrandparentLatching":Z
    .restart local p2    # "key":[B
    .restart local p3    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p4    # "targetLevel":I
    .restart local p5    # "latchShared":Z
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :goto_b
    if-nez v18, :cond_1d

    .line 2482
    if-eqz v10, :cond_1c

    if-eqz v16, :cond_1c

    .line 2483
    :try_start_7
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2486
    :cond_1c
    if-eq v7, v10, :cond_1d

    .line 2487
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_c

    .line 2489
    :catch_1
    move-exception v0

    .line 2490
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2491
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 2490
    invoke-static {v3, v11, v9, v15, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 2496
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_c
    if-eqz v14, :cond_1e

    if-eqz v13, :cond_1e

    .line 2497
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_1e
    throw v2

    .line 2335
    .end local v7    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "subtreeRoot":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v12    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v13    # "grandParentIsLatched":Z
    .end local v14    # "grandParent":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "childIsLatched":Z
    .end local v18    # "success":Z
    .end local v19    # "doGrandparentLatching":Z
    .local p1, "parent":Lcom/sleepycat/je/tree/IN;
    :cond_1f
    move-object/from16 v6, p7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2334
    :cond_20
    move-object/from16 v6, p7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2330
    :cond_21
    move-object/from16 v6, p7

    const-string/jumbo v0, "searchSubTree passed key and left/right search"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2318
    :cond_22
    move-object/from16 v6, p7

    :goto_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private splitRoot(Lcom/sleepycat/je/CacheMode;)V
    .locals 20
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2079
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v12

    .line 2080
    .local v12, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v13

    .line 2082
    .local v13, "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    const/4 v0, 0x0

    .line 2083
    .local v0, "curRoot":Lcom/sleepycat/je/tree/IN;
    iget-object v1, v10, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v2, v10, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/sleepycat/je/tree/IN;

    .line 2084
    .end local v0    # "curRoot":Lcom/sleepycat/je/tree/IN;
    .local v14, "curRoot":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v14, v11}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 2085
    const-wide/16 v1, 0x0

    .line 2086
    .local v1, "curRootLsn":J
    const-wide/16 v4, 0x0

    .line 2087
    .local v4, "logLsn":J
    const/4 v6, 0x0

    .line 2093
    .local v6, "newRoot":Lcom/sleepycat/je/tree/IN;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v14, v0}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v7

    .line 2094
    .local v7, "rootIdKey":[B
    new-instance v8, Lcom/sleepycat/je/tree/IN;

    iget-object v9, v10, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget v15, v10, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    .line 2095
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v16

    const/4 v3, 0x1

    add-int/lit8 v0, v16, 0x1

    invoke-direct {v8, v9, v7, v15, v0}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v15, v8

    .line 2096
    .end local v6    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .local v15, "newRoot":Lcom/sleepycat/je/tree/IN;
    :try_start_1
    invoke-virtual {v15, v11}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 2097
    invoke-virtual {v15, v3}, Lcom/sleepycat/je/tree/IN;->setIsRoot(Z)V

    .line 2098
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/sleepycat/je/tree/IN;->setIsRoot(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2106
    const/4 v6, 0x0

    .line 2108
    .local v6, "logSuccess":Z
    :try_start_2
    invoke-virtual {v14, v15}, Lcom/sleepycat/je/tree/IN;->optionalLogProvisional(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2110
    .end local v1    # "curRootLsn":J
    .local v8, "curRootLsn":J
    :try_start_3
    invoke-virtual {v15, v14, v7, v8, v9}, Lcom/sleepycat/je/tree/IN;->insertEntry(Lcom/sleepycat/je/tree/Node;[BJ)Z

    move-result v0

    .line 2112
    .local v0, "inserted":Z
    if-eqz v0, :cond_1

    .line 2114
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->optionalLog()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide v4, v1

    .line 2115
    const/4 v1, 0x1

    .line 2117
    .end local v0    # "inserted":Z
    .end local v6    # "logSuccess":Z
    .local v1, "logSuccess":Z
    if-nez v1, :cond_0

    .line 2119
    :try_start_4
    invoke-virtual {v14, v3}, Lcom/sleepycat/je/tree/IN;->setIsRoot(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2142
    .end local v1    # "logSuccess":Z
    .end local v7    # "rootIdKey":[B
    :catchall_0
    move-exception v0

    move-wide v1, v8

    move-object v6, v15

    goto/16 :goto_2

    .line 2123
    .restart local v1    # "logSuccess":Z
    .restart local v7    # "rootIdKey":[B
    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {v13, v15}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 2135
    iget-object v0, v10, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v0, v15}, Lcom/sleepycat/je/tree/ChildReference;->setTarget(Lcom/sleepycat/je/tree/Node;)V

    .line 2136
    iget-object v0, v10, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v2, v10, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v2, v4, v5}, Lcom/sleepycat/je/tree/ChildReference;->updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2137
    iget v0, v10, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v3, v2, v0}, Lcom/sleepycat/je/tree/IN;->split(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/tree/IN;

    .line 2138
    iget-object v0, v10, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/tree/ChildReference;->setLsn(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2142
    .end local v1    # "logSuccess":Z
    .end local v7    # "rootIdKey":[B
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2143
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2144
    nop

    .line 2145
    iget-object v0, v10, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incRootSplits()V

    .line 2146
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "RootSplit:"

    move-object/from16 v1, p0

    move-wide/from16 v16, v4

    .end local v4    # "logLsn":J
    .local v16, "logLsn":J
    move-object v4, v15

    move-wide/from16 v5, v16

    move-object v7, v14

    move-wide/from16 v18, v8

    .end local v8    # "curRootLsn":J
    .local v18, "curRootLsn":J
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/tree/Tree;->traceSplitRoot(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JLcom/sleepycat/je/tree/IN;J)V

    .line 2148
    return-void

    .line 2142
    .end local v16    # "logLsn":J
    .end local v18    # "curRootLsn":J
    .restart local v4    # "logLsn":J
    .restart local v8    # "curRootLsn":J
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-object v6, v15

    move-wide/from16 v1, v18

    .end local v4    # "logLsn":J
    .end local v8    # "curRootLsn":J
    .restart local v16    # "logLsn":J
    .restart local v18    # "curRootLsn":J
    goto :goto_2

    .line 2112
    .end local v16    # "logLsn":J
    .end local v18    # "curRootLsn":J
    .restart local v0    # "inserted":Z
    .restart local v4    # "logLsn":J
    .restart local v6    # "logSuccess":Z
    .restart local v7    # "rootIdKey":[B
    .restart local v8    # "curRootLsn":J
    :cond_1
    move-wide/from16 v18, v8

    .end local v8    # "curRootLsn":J
    .restart local v18    # "curRootLsn":J
    :try_start_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "logLsn":J
    .end local v6    # "logSuccess":Z
    .end local v7    # "rootIdKey":[B
    .end local v12    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v14    # "curRoot":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "curRootLsn":J
    .end local p1    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2117
    .end local v0    # "inserted":Z
    .restart local v4    # "logLsn":J
    .restart local v6    # "logSuccess":Z
    .restart local v7    # "rootIdKey":[B
    .restart local v12    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v14    # "curRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "curRootLsn":J
    .restart local p1    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_2
    move-exception v0

    move-wide/from16 v1, v18

    goto :goto_1

    .end local v18    # "curRootLsn":J
    .restart local v8    # "curRootLsn":J
    :catchall_3
    move-exception v0

    move-wide/from16 v18, v8

    move-wide/from16 v1, v18

    .end local v8    # "curRootLsn":J
    .restart local v18    # "curRootLsn":J
    goto :goto_1

    .end local v18    # "curRootLsn":J
    .local v1, "curRootLsn":J
    :catchall_4
    move-exception v0

    :goto_1
    if-nez v6, :cond_2

    .line 2119
    :try_start_7
    invoke-virtual {v14, v3}, Lcom/sleepycat/je/tree/IN;->setIsRoot(Z)V

    :cond_2
    nop

    .end local v1    # "curRootLsn":J
    .end local v4    # "logLsn":J
    .end local v12    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v14    # "curRoot":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2142
    .end local v6    # "logSuccess":Z
    .end local v7    # "rootIdKey":[B
    .restart local v1    # "curRootLsn":J
    .restart local v4    # "logLsn":J
    .restart local v12    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v13    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v14    # "curRoot":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_5
    move-exception v0

    move-object v6, v15

    goto :goto_2

    .end local v15    # "newRoot":Lcom/sleepycat/je/tree/IN;
    .local v6, "newRoot":Lcom/sleepycat/je/tree/IN;
    :catchall_6
    move-exception v0

    :goto_2
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2143
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0
.end method

.method private traceSplitRoot(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JLcom/sleepycat/je/tree/IN;J)V
    .locals 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "splitType"    # Ljava/lang/String;
    .param p3, "newRoot"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "newRootLsn"    # J
    .param p6, "oldRoot"    # Lcom/sleepycat/je/tree/IN;
    .param p7, "oldRootLsn"    # J

    .line 2733
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 2734
    .local v0, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2736
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    const-string v2, " newRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2738
    const-string v2, " newRootLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2739
    invoke-static {p4, p5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2740
    const-string v2, " oldRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2741
    const-string v2, " oldRootLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2742
    invoke-static {p7, p8}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2744
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2743
    invoke-static {v0, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2746
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete([B)V
    .locals 13
    .param p1, "idKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/tree/NodeNotEmptyException;,
            Lcom/sleepycat/je/tree/CursorsExistException;
        }
    .end annotation

    .line 568
    const-string v0, "-"

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 569
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    .line 571
    .local v2, "logger":Ljava/util/logging/Logger;
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/Tree;->searchDeletableSubTree([B)Ljava/util/List;

    move-result-object v3

    .line 573
    .local v3, "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    if-nez v3, :cond_0

    .line 585
    return-void

    .line 589
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 591
    .local v5, "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    :try_start_0
    iget-object v6, v5, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    .line 592
    .local v6, "branchParent":Lcom/sleepycat/je/tree/IN;
    iget-object v7, v5, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    .line 594
    .local v7, "branchRoot":Lcom/sleepycat/je/tree/IN;
    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tree.delete() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " Deleting child node: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 601
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " from parent node: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " parent has "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " children"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-static {v8, v1, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 607
    :cond_1
    iget v0, v5, Lcom/sleepycat/je/tree/Tree$SplitInfo;->index:I

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/IN;->deleteEntry(I)V

    .line 615
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    .line 617
    .local v0, "inList":Lcom/sleepycat/je/dbi/INList;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/tree/Tree$SplitInfo;

    .line 619
    .local v9, "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    iget-object v10, v9, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    .line 621
    .local v10, "child":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v10, v4}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v11

    if-nez v11, :cond_7

    .line 622
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "logger":Ljava/util/logging/Logger;
    .end local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local p1    # "idKey":[B
    throw v4

    .line 623
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "logger":Ljava/util/logging/Logger;
    .restart local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local p1    # "idKey":[B
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v11

    if-gtz v11, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "logger":Ljava/util/logging/Logger;
    .end local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local p1    # "idKey":[B
    throw v4

    .line 629
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "logger":Ljava/util/logging/Logger;
    .restart local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local p1    # "idKey":[B
    :cond_5
    :goto_2
    if-eq v10, v7, :cond_6

    .line 630
    invoke-virtual {v0, v10}, Lcom/sleepycat/je/dbi/INList;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 634
    :cond_6
    nop

    .line 635
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v11

    .line 634
    invoke-virtual {v6, v10, v11, v12}, Lcom/sleepycat/je/tree/IN;->trackProvisionalObsolete(Lcom/sleepycat/je/tree/IN;J)V

    .line 637
    nop

    .line 638
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->getLastDeltaLsn()J

    move-result-wide v11

    .line 637
    invoke-virtual {v6, v10, v11, v12}, Lcom/sleepycat/je/tree/IN;->trackProvisionalObsolete(Lcom/sleepycat/je/tree/IN;J)V

    .line 639
    .end local v9    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local v10    # "child":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 621
    .restart local v9    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local v10    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_7
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "logger":Ljava/util/logging/Logger;
    .end local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .end local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local p1    # "idKey":[B
    throw v4

    .line 641
    .end local v9    # "info":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .end local v10    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "logger":Ljava/util/logging/Logger;
    .restart local v3    # "nodeLadder":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/Tree$SplitInfo;>;"
    .restart local v5    # "detachPoint":Lcom/sleepycat/je/tree/Tree$SplitInfo;
    .restart local p1    # "idKey":[B
    :cond_8
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 642
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubtreeRemoval: subtreeRoot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 644
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 642
    invoke-static {v4, v1, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    .end local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    .end local v6    # "branchParent":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "branchRoot":Lcom/sleepycat/je/tree/IN;
    :cond_9
    invoke-direct {p0, v3}, Lcom/sleepycat/je/tree/Tree;->releaseNodeLadderLatches(Ljava/util/List;)V

    .line 649
    nop

    .line 650
    return-void

    .line 648
    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/sleepycat/je/tree/Tree;->releaseNodeLadderLatches(Ljava/util/List;)V

    throw v0
.end method

.method public dump()V
    .locals 2

    .line 2654
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/tree/Tree;->dumpString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2655
    return-void
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 2616
    const-string v0, "<root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v0, :cond_0

    .line 2618
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/tree/ChildReference;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 2620
    :cond_0
    const-string v0, "</root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    return-void
.end method

.method public dumpString(I)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2659
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    const-string v1, "<tree>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2662
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v2, :cond_1

    .line 2663
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/sleepycat/je/utilint/DbLsn;->dumpString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2665
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    .line 2666
    .local v2, "rootIN":Lcom/sleepycat/je/tree/IN;
    if-nez v2, :cond_0

    .line 2667
    const-string v3, "<in/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2669
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2673
    .end local v2    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    const-string v1, "</tree>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public findBinForInsert([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 11
    .param p1, "key"    # [B
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, "rootLatchIsHeld":Z
    const/4 v1, 0x0

    .line 1537
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    const/4 v0, 0x1

    .line 1538
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 1540
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1542
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1543
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 1544
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1546
    const/4 v0, 0x0

    .line 1547
    goto :goto_0

    .line 1550
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 1551
    .local v2, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v3

    .line 1562
    .local v3, "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    new-instance v4, Lcom/sleepycat/je/tree/IN;

    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget v6, p0, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    const/4 v7, 0x2

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 1564
    .local v4, "rootIN":Lcom/sleepycat/je/tree/IN;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/IN;->setIsRoot(Z)V

    .line 1566
    invoke-virtual {v4, p2}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1569
    new-instance v6, Lcom/sleepycat/je/tree/BIN;

    iget-object v7, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget v8, p0, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    invoke-direct {v6, v7, p1, v8, v5}, Lcom/sleepycat/je/tree/BIN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    move-object v1, v6

    .line 1570
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1571
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->optionalLogProvisionalNoCompress(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v6

    .line 1585
    .local v6, "logLsn":J
    invoke-virtual {v4, v1, p1, v6, v7}, Lcom/sleepycat/je/tree/IN;->insertEntry(Lcom/sleepycat/je/tree/Node;[BJ)Z

    move-result v8

    .line 1586
    .local v8, "insertOk":Z
    if-eqz v8, :cond_1

    .line 1588
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->optionalLog()J

    move-result-wide v9

    move-wide v6, v9

    .line 1589
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1591
    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sleepycat/je/tree/Tree;->makeRootChildReference(Lcom/sleepycat/je/tree/Node;[BJ)Lcom/sleepycat/je/tree/ChildReference;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    .line 1593
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1596
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 1597
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/INList;->add(Lcom/sleepycat/je/tree/IN;)V

    .line 1598
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 1600
    iget-object v5, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v5}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1601
    const/4 v0, 0x0

    .line 1603
    goto :goto_1

    .line 1586
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "rootLatchIsHeld":Z
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "key":[B
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v5

    .line 1605
    .end local v2    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "inMemoryINs":Lcom/sleepycat/je/dbi/INList;
    .end local v4    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "logLsn":J
    .end local v8    # "insertOk":Z
    .restart local v0    # "rootLatchIsHeld":Z
    .restart local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "key":[B
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1606
    const/4 v0, 0x0

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/Tree;->searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 1619
    if-nez v1, :cond_3

    .line 1621
    goto/16 :goto_0

    .line 1629
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1630
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 1635
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->ckptHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1637
    return-object v1

    .line 1635
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1629
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_6

    .line 1630
    iget-object v3, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v3}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    :cond_6
    throw v2
.end method

.method public getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getFirstNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 6
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 812
    sget-object v2, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/tree/Tree$SearchType;Lcom/sleepycat/je/tree/BINBoundary;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 816
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v0, :cond_0

    .line 817
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 820
    :cond_0
    return-object v0
.end method

.method public getLastNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 6
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 832
    sget-object v2, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/tree/Tree$SearchType;Lcom/sleepycat/je/tree/BINBoundary;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 836
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v0, :cond_0

    .line 837
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 840
    :cond_0
    return-object v0
.end method

.method public getLogSize()I
    .locals 2

    .line 2581
    const/4 v0, 0x1

    .line 2582
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v1, :cond_0

    .line 2583
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/ChildReference;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2585
    :cond_0
    return v0
.end method

.method public getMaxLNs()J
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 534
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 535
    .local v1, "levels":I
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 537
    .local v0, "topLevelSlots":I
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 538
    nop

    .line 539
    int-to-double v2, v0

    iget-object v4, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 540
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v4

    int-to-double v4, v4

    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 539
    return-wide v2

    .line 537
    .end local v0    # "topLevelSlots":I
    .end local v1    # "levels":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method public getNextBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 2
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 855
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sleepycat/je/tree/Tree;->getNextIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    return-object v0
.end method

.method public getNextIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 24
    .param p1, "prevIn"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "forward"    # Z
    .param p3, "latchShared"    # Z
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 900
    move-object/from16 v1, p1

    move-object/from16 v10, p4

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 902
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 903
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 906
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 919
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-nez v2, :cond_1

    .line 920
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v2

    move-object v12, v2

    .local v2, "searchKey":[B
    goto :goto_0

    .line 921
    .end local v2    # "searchKey":[B
    :cond_1
    if-eqz p2, :cond_2

    .line 922
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v2

    move-object v12, v2

    .restart local v2    # "searchKey":[B
    goto :goto_0

    .line 924
    .end local v2    # "searchKey":[B
    :cond_2
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v2

    move-object v12, v2

    .line 927
    .local v12, "searchKey":[B
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v13

    .line 928
    .local v13, "targetLevel":I
    move-object/from16 v2, p1

    .line 929
    .local v2, "curr":Lcom/sleepycat/je/tree/IN;
    const/4 v3, 0x0

    .line 930
    .local v3, "currIsLatched":Z
    const/4 v4, 0x0

    .line 931
    .local v4, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v5, 0x0

    .line 932
    .local v5, "nextIN":Lcom/sleepycat/je/tree/IN;
    const/4 v6, 0x0

    .line 933
    .local v6, "nextINIsLatched":Z
    const/4 v14, 0x0

    move-object v15, v2

    .line 947
    .end local v2    # "curr":Lcom/sleepycat/je/tree/IN;
    .local v14, "normalExit":Z
    .local v15, "curr":Lcom/sleepycat/je/tree/IN;
    :goto_1
    const/16 v16, 0x0

    .line 949
    .end local v3    # "currIsLatched":Z
    .local v16, "currIsLatched":Z
    :try_start_0
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 951
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 953
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_3

    .line 954
    invoke-static {v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 956
    :cond_3
    const/4 v0, 0x1

    .line 957
    .end local v14    # "normalExit":Z
    .local v0, "normalExit":Z
    const/4 v2, 0x0

    .line 1074
    if-nez v0, :cond_6

    .line 1075
    if-eqz v15, :cond_4

    if-eqz v16, :cond_4

    .line 1076
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1079
    :cond_4
    if-eqz v4, :cond_5

    .line 1080
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1083
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 1084
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 957
    :cond_6
    return-object v2

    .line 960
    .end local v0    # "normalExit":Z
    .restart local v14    # "normalExit":Z
    :cond_7
    move-object/from16 v9, p0

    :try_start_1
    invoke-virtual {v9, v15, v0, v11, v10}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v2

    move-object v8, v2

    .line 964
    .local v8, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-boolean v2, v8, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v2, :cond_1c

    .line 965
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_8

    .line 966
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 968
    :cond_8
    iget-object v2, v8, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    move-object v4, v2

    .line 981
    invoke-virtual {v4, v12, v0, v0}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v2

    .line 985
    .local v2, "index":I
    if-eqz p2, :cond_a

    .line 986
    add-int/lit8 v2, v2, 0x1

    .line 987
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v3

    if-ge v2, v3, :cond_9

    move v3, v11

    goto :goto_2

    :cond_9
    move v3, v0

    :goto_2
    move v7, v2

    move/from16 v17, v3

    .local v3, "moreEntriesThisIn":Z
    goto :goto_4

    .line 989
    .end local v3    # "moreEntriesThisIn":Z
    :cond_a
    if-lez v2, :cond_b

    move v3, v11

    goto :goto_3

    :cond_b
    move v3, v0

    .line 990
    .restart local v3    # "moreEntriesThisIn":Z
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v7, v2

    move/from16 v17, v3

    .line 993
    .end local v2    # "index":I
    .end local v3    # "moreEntriesThisIn":Z
    .local v7, "index":I
    .local v17, "moreEntriesThisIn":Z
    :goto_4
    if-eqz v17, :cond_1b

    .line 1000
    invoke-virtual {v4, v7, v10}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v5, v2

    .line 1002
    :try_start_2
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v2, :cond_c

    .line 1003
    :try_start_3
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1006
    :cond_c
    :try_start_4
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v2, v13, :cond_13

    .line 1008
    if-eqz p3, :cond_d

    .line 1009
    :try_start_5
    invoke-static {v4, v5, v10}, Lcom/sleepycat/je/tree/Tree;->latchChildShared(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    goto :goto_5

    .line 1011
    :cond_d
    invoke-static {v4, v5, v10}, Lcom/sleepycat/je/tree/Tree;->latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 1013
    :goto_5
    const/4 v6, 0x1

    .line 1015
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    .line 1017
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1018
    const/4 v4, 0x0

    .line 1020
    nop

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/Tree;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v0

    .line 1022
    .local v0, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    if-eqz v0, :cond_e

    .line 1023
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1026
    :cond_e
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_f

    .line 1027
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1030
    :cond_f
    const/4 v2, 0x1

    .line 1031
    .end local v14    # "normalExit":Z
    .local v2, "normalExit":Z
    nop

    .line 1074
    if-nez v2, :cond_12

    .line 1075
    if-eqz v15, :cond_10

    if-eqz v16, :cond_10

    .line 1076
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1079
    :cond_10
    if-eqz v4, :cond_11

    .line 1080
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1083
    :cond_11
    if-eqz v5, :cond_12

    if-eqz v6, :cond_12

    .line 1084
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1031
    :cond_12
    return-object v5

    .line 1039
    .end local v0    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v2    # "normalExit":Z
    .restart local v14    # "normalExit":Z
    :cond_13
    :try_start_6
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1040
    invoke-virtual {v5, v10}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1041
    const/4 v6, 0x1

    .line 1043
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1044
    const/16 v18, 0x0

    .line 1045
    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v18, "parent":Lcom/sleepycat/je/tree/IN;
    const/16 v19, 0x0

    .line 1047
    .end local v6    # "nextINIsLatched":Z
    .local v19, "nextINIsLatched":Z
    const/4 v4, 0x0

    if-eqz p2, :cond_14

    :try_start_7
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 1074
    .end local v7    # "index":I
    .end local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v17    # "moreEntriesThisIn":Z
    :catchall_0
    move-exception v0

    move-object/from16 v4, v18

    move/from16 v6, v19

    goto/16 :goto_7

    .line 1047
    .restart local v7    # "index":I
    .restart local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v17    # "moreEntriesThisIn":Z
    :cond_14
    :try_start_8
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_6
    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-object v3, v5

    move-object/from16 v21, v5

    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .local v21, "nextIN":Lcom/sleepycat/je/tree/IN;
    move-object v5, v0

    move v6, v13

    move/from16 v22, v7

    .end local v7    # "index":I
    .local v22, "index":I
    move/from16 v7, p3

    move-object/from16 v23, v8

    .end local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v23, "result":Lcom/sleepycat/je/tree/SearchResult;
    move-object/from16 v8, p4

    move-object/from16 v9, v20

    :try_start_9
    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/tree/Tree;->searchSubTree(Lcom/sleepycat/je/tree/IN;[BLcom/sleepycat/je/tree/Tree$SearchType;IZLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 1053
    .local v0, "ret":Lcom/sleepycat/je/tree/IN;
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_15

    .line 1054
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1057
    :cond_15
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-ne v2, v13, :cond_19

    .line 1058
    const/4 v2, 0x1

    .line 1059
    .end local v14    # "normalExit":Z
    .restart local v2    # "normalExit":Z
    nop

    .line 1074
    if-nez v2, :cond_18

    .line 1075
    if-eqz v15, :cond_16

    if-eqz v16, :cond_16

    .line 1076
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1079
    :cond_16
    if-eqz v18, :cond_17

    .line 1080
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1083
    :cond_17
    if-eqz v21, :cond_18

    if-eqz v19, :cond_18

    .line 1084
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1059
    :cond_18
    return-object v0

    .line 1061
    .end local v2    # "normalExit":Z
    .restart local v14    # "normalExit":Z
    :cond_19
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subtree did not have a IN at level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v12    # "searchKey":[B
    .end local v13    # "targetLevel":I
    .end local v14    # "normalExit":Z
    .end local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "currIsLatched":Z
    .end local v18    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v19    # "nextINIsLatched":Z
    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "forward":Z
    .end local p3    # "latchShared":Z
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1074
    .end local v0    # "ret":Lcom/sleepycat/je/tree/IN;
    .end local v17    # "moreEntriesThisIn":Z
    .end local v22    # "index":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v12    # "searchKey":[B
    .restart local v13    # "targetLevel":I
    .restart local v14    # "normalExit":Z
    .restart local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "currIsLatched":Z
    .restart local v18    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v19    # "nextINIsLatched":Z
    .restart local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "forward":Z
    .restart local p3    # "latchShared":Z
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_1
    move-exception v0

    move-object/from16 v4, v18

    move/from16 v6, v19

    move-object/from16 v5, v21

    goto :goto_7

    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v4, v18

    move/from16 v6, v19

    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    goto :goto_7

    .line 1039
    .end local v18    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v19    # "nextINIsLatched":Z
    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "nextINIsLatched":Z
    .restart local v7    # "index":I
    .restart local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v17    # "moreEntriesThisIn":Z
    :cond_1a
    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .end local v7    # "index":I
    .end local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v22    # "index":I
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "nextINIsLatched":Z
    .end local v12    # "searchKey":[B
    .end local v13    # "targetLevel":I
    .end local v14    # "normalExit":Z
    .end local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "currIsLatched":Z
    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "forward":Z
    .end local p3    # "latchShared":Z
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1074
    .end local v17    # "moreEntriesThisIn":Z
    .end local v22    # "index":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "nextINIsLatched":Z
    .restart local v12    # "searchKey":[B
    .restart local v13    # "targetLevel":I
    .restart local v14    # "normalExit":Z
    .restart local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "currIsLatched":Z
    .restart local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "forward":Z
    .restart local p3    # "latchShared":Z
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_3
    move-exception v0

    move-object/from16 v5, v21

    goto :goto_7

    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    goto :goto_7

    .line 1069
    .end local v21    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "index":I
    .restart local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v17    # "moreEntriesThisIn":Z
    :cond_1b
    move/from16 v22, v7

    move-object/from16 v23, v8

    .end local v7    # "index":I
    .end local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "index":I
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    move-object v15, v4

    .line 1070
    const/4 v3, 0x1

    .line 1071
    .end local v16    # "currIsLatched":Z
    .local v3, "currIsLatched":Z
    const/4 v4, 0x0

    .line 1072
    .end local v17    # "moreEntriesThisIn":Z
    .end local v22    # "index":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    goto/16 :goto_1

    .line 970
    .end local v3    # "currIsLatched":Z
    .restart local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v16    # "currIsLatched":Z
    :cond_1c
    move-object/from16 v23, v8

    .end local v8    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_c
    const-string v0, "Failed to find parent for IN"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "nextINIsLatched":Z
    .end local v12    # "searchKey":[B
    .end local v13    # "targetLevel":I
    .end local v14    # "normalExit":Z
    .end local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "currIsLatched":Z
    .end local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "forward":Z
    .end local p3    # "latchShared":Z
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1074
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "nextINIsLatched":Z
    .restart local v12    # "searchKey":[B
    .restart local v13    # "targetLevel":I
    .restart local v14    # "normalExit":Z
    .restart local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "currIsLatched":Z
    .restart local p1    # "prevIn":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "forward":Z
    .restart local p3    # "latchShared":Z
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_5
    move-exception v0

    :goto_7
    if-nez v14, :cond_1f

    .line 1075
    if-eqz v15, :cond_1d

    if-eqz v16, :cond_1d

    .line 1076
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1079
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1080
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1083
    :cond_1e
    if-eqz v5, :cond_1f

    if-eqz v6, :cond_1f

    .line 1084
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_1f
    throw v0

    .line 900
    .end local v4    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v5    # "nextIN":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "nextINIsLatched":Z
    .end local v12    # "searchKey":[B
    .end local v13    # "targetLevel":I
    .end local v14    # "normalExit":Z
    .end local v15    # "curr":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "currIsLatched":Z
    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z
    .locals 8
    .param p1, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p2, "key"    # [B
    .param p3, "splitsAllowed"    # Z
    .param p4, "blindDeltaOps"    # Z
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1444
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/TreeLocation;->reset()V

    .line 1448
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1449
    invoke-direct {p0, p2, p5, v0}, Lcom/sleepycat/je/tree/Tree;->searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_0

    .line 1451
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_0
    invoke-virtual {p0, p2, p5}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    .line 1454
    .restart local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1455
    return v2

    .line 1461
    :cond_1
    :goto_1
    :try_start_0
    iput-object v1, p1, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1463
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3, v2}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v4

    .line 1466
    .local v4, "index":I
    if-ltz v4, :cond_2

    const/high16 v5, 0x10000

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 1469
    .local v5, "match":Z
    :goto_2
    const v6, -0x10001

    and-int/2addr v4, v6

    .line 1470
    iput v4, p1, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    .line 1471
    iput-object p2, p1, Lcom/sleepycat/je/tree/TreeLocation;->lnKey:[B

    .line 1488
    if-eqz v5, :cond_3

    .line 1489
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    .line 1490
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v2

    iput v2, p1, Lcom/sleepycat/je/tree/TreeLocation;->childLoggedSize:I

    .line 1491
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v2

    iput-boolean v2, p1, Lcom/sleepycat/je/tree/TreeLocation;->isKD:Z

    .line 1492
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v2

    iput-boolean v2, p1, Lcom/sleepycat/je/tree/TreeLocation;->isEmbedded:Z

    .line 1494
    return v3

    .line 1498
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p4, :cond_4

    .line 1500
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 1502
    :cond_4
    invoke-virtual {v1, p3}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 1503
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/TreeLocation;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    goto :goto_1

    .line 1507
    :cond_5
    return v2

    .line 1511
    .end local v4    # "index":I
    .end local v5    # "match":Z
    :catch_0
    move-exception v2

    .line 1512
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1513
    iput-object v0, p1, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1514
    throw v2
.end method

.method public getParentINForChildIN(J[BIIZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;
    .locals 19
    .param p1, "targetNodeId"    # J
    .param p3, "targetKey"    # [B
    .param p4, "targetLevel"    # I
    .param p5, "exclusiveLevel"    # I
    .param p6, "requireExactMatch"    # Z
    .param p7, "doFetch"    # Z
    .param p8, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BIIZZ",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)",
            "Lcom/sleepycat/je/tree/SearchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1233
    .local p9, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    iget-object v0, v1, Lcom/sleepycat/je/tree/Tree;->getParentINHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 1235
    const/4 v0, 0x2

    if-nez p7, :cond_1

    const v6, 0xffff

    and-int/2addr v6, v3

    if-lt v6, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1242
    :cond_1
    :goto_0
    new-instance v6, Lcom/sleepycat/je/tree/SearchResult;

    invoke-direct {v6}, Lcom/sleepycat/je/tree/SearchResult;-><init>()V

    .line 1245
    .local v6, "result":Lcom/sleepycat/je/tree/SearchResult;
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/Tree;->getRootIN(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v7

    .line 1247
    .local v7, "rootIN":Lcom/sleepycat/je/tree/IN;
    if-nez v7, :cond_2

    .line 1248
    return-object v6

    .line 1252
    :cond_2
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-eqz v8, :cond_21

    .line 1253
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v8

    if-lt v8, v3, :cond_20

    .line 1257
    move-object v8, v7

    .line 1258
    .local v8, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v9, 0x0

    .line 1259
    .local v9, "child":Lcom/sleepycat/je/tree/IN;
    const/4 v10, 0x0

    .line 1263
    .local v10, "success":Z
    :try_start_0
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v11

    if-gt v11, v3, :cond_4

    .line 1264
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1265
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/Tree;->getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v11

    move-object v7, v11

    .line 1266
    if-eqz v7, :cond_3

    .line 1267
    move-object v8, v7

    goto :goto_1

    .line 1266
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0

    .line 1272
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v11

    if-lez v11, :cond_1d

    .line 1274
    const/4 v11, 0x0

    invoke-virtual {v8, v2, v11, v11}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v11

    iput v11, v6, Lcom/sleepycat/je/tree/SearchResult;->index:I

    .line 1276
    if-eqz v5, :cond_5

    .line 1277
    new-instance v11, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v12, v6, Lcom/sleepycat/je/tree/SearchResult;->index:I

    .line 1278
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v13

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v15

    .line 1279
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v17

    iget v12, v6, Lcom/sleepycat/je/tree/SearchResult;->index:I

    move/from16 v18, v12

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/sleepycat/je/tree/TrackingInfo;-><init>(JJII)V

    .line 1277
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    :cond_5
    iget-object v11, v1, Lcom/sleepycat/je/tree/Tree;->searchHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v11}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 1284
    const/4 v11, 0x1

    if-lez p4, :cond_6

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v12

    add-int/lit8 v13, p4, 0x1

    if-ne v12, v13, :cond_6

    .line 1285
    iput-boolean v11, v6, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    .line 1286
    iput-object v8, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1287
    goto/16 :goto_6

    .line 1290
    :cond_6
    if-eqz p7, :cond_b

    .line 1291
    invoke-virtual {v8, v6, v2}, Lcom/sleepycat/je/tree/IN;->fetchINWithNoLatch(Lcom/sleepycat/je/tree/SearchResult;[B)Lcom/sleepycat/je/tree/IN;

    move-result-object v12

    move-object v9, v12

    .line 1293
    if-nez v9, :cond_d

    .line 1294
    if-eqz v5, :cond_7

    .line 1295
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->clear()V

    .line 1297
    :cond_7
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/SearchResult;->reset()V

    .line 1299
    iget-object v11, v1, Lcom/sleepycat/je/tree/Tree;->fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v11, v9}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    .line 1301
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/Tree;->getRootIN(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v11

    move-object v7, v11

    .line 1302
    if-eqz v7, :cond_a

    .line 1304
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v11

    if-gt v11, v3, :cond_9

    .line 1305
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1306
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/Tree;->getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v11

    move-object v7, v11

    .line 1307
    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0

    .line 1310
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_9
    :goto_2
    move-object v8, v7

    .line 1311
    goto :goto_1

    .line 1302
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0

    .line 1321
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_b
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v12

    if-ne v12, v0, :cond_c

    .line 1322
    iget v12, v6, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v8, v12, v4}, Lcom/sleepycat/je/tree/IN;->loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v12

    move-object v9, v12

    goto :goto_3

    .line 1324
    :cond_c
    iget v12, v6, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v8, v12}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v12

    check-cast v12, Lcom/sleepycat/je/tree/IN;

    move-object v9, v12

    .line 1328
    :cond_d
    :goto_3
    if-nez v9, :cond_f

    if-nez p7, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0

    .line 1330
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_f
    :goto_4
    if-nez v9, :cond_11

    .line 1331
    if-eqz p6, :cond_10

    .line 1332
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    goto :goto_5

    .line 1334
    :cond_10
    iput-object v8, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1336
    :goto_5
    iput-boolean v11, v6, Lcom/sleepycat/je/tree/SearchResult;->childNotResident:Z

    .line 1337
    goto :goto_6

    .line 1340
    :cond_11
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v12

    cmp-long v12, v12, p1

    if-nez v12, :cond_12

    .line 1341
    iput-boolean v11, v6, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    .line 1342
    iput-object v8, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1343
    goto :goto_6

    .line 1346
    :cond_12
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1347
    if-eqz p6, :cond_13

    .line 1348
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    goto :goto_6

    .line 1350
    :cond_13
    iput-object v8, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    nop

    .line 1367
    :goto_6
    const/4 v0, 0x1

    .line 1371
    .end local v10    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_15

    .line 1372
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1373
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1376
    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1377
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1382
    :cond_15
    iget-object v10, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v10, :cond_19

    .line 1383
    sget-boolean v10, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v10, :cond_16

    .line 1384
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1386
    :cond_16
    if-nez p7, :cond_17

    if-eqz p6, :cond_19

    :cond_17
    iget-object v10, v6, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1387
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_7

    .line 1386
    :cond_18
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1390
    :cond_19
    :goto_7
    return-object v6

    .line 1356
    .end local v0    # "success":Z
    .restart local v10    # "success":Z
    :cond_1a
    :try_start_1
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v11

    if-gt v11, v3, :cond_1b

    .line 1357
    invoke-static {v8, v9, v4}, Lcom/sleepycat/je/tree/Tree;->latchChild(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    goto :goto_8

    .line 1359
    :cond_1b
    invoke-static {v8, v9, v4}, Lcom/sleepycat/je/tree/Tree;->latchChildShared(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 1362
    :goto_8
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1363
    move-object v8, v9

    .line 1364
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1282
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0

    .line 1272
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    .end local p1    # "targetNodeId":J
    .end local p3    # "targetKey":[B
    .end local p4    # "targetLevel":I
    .end local p5    # "exclusiveLevel":I
    .end local p6    # "requireExactMatch":Z
    .end local p7    # "doFetch":Z
    .end local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    .restart local v6    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v7    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "success":Z
    .restart local p1    # "targetNodeId":J
    .restart local p3    # "targetKey":[B
    .restart local p4    # "targetLevel":I
    .restart local p5    # "exclusiveLevel":I
    .restart local p6    # "requireExactMatch":Z
    .restart local p7    # "doFetch":Z
    .restart local p8    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p9    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :catchall_0
    move-exception v0

    if-nez v10, :cond_1f

    .line 1372
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 1373
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1376
    :cond_1e
    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1377
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_1f
    throw v0

    .line 1253
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "success":Z
    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " rootLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1254
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1252
    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;
    .locals 6
    .param p1, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "useTargetLevel"    # Z
    .param p3, "doFetch"    # Z
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1156
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;
    .locals 15
    .param p1, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "useTargetLevel"    # Z
    .param p3, "doFetch"    # Z
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "ZZ",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)",
            "Lcom/sleepycat/je/tree/SearchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1178
    .local p5, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    if-eqz p1, :cond_2

    .line 1183
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v11

    .line 1189
    .local v11, "targetId":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v0

    .line 1190
    .local v0, "targetKey":[B
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v5, v1

    .line 1191
    .local v5, "targetLevel":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    .line 1192
    .local v13, "exclusiveLevel":I
    const/4 v14, 0x1

    .line 1194
    .local v14, "requireExactMatch":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1196
    move-object v1, p0

    move-wide v2, v11

    move-object v4, v0

    move v6, v13

    move v7, v14

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(J[BIIZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v1

    return-object v1

    .line 1183
    .end local v0    # "targetKey":[B
    .end local v5    # "targetLevel":I
    .end local v11    # "targetId":J
    .end local v13    # "exclusiveLevel":I
    .end local v14    # "requireExactMatch":Z
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1179
    :cond_2
    const-string v0, "getParentINForChildIN given null child node"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getPrevBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/sleepycat/je/tree/Tree;->getNextIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    return-object v0
.end method

.method public getResidentRootIN(Z)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "latched"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 482
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 483
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 486
    :cond_0
    return-object v0
.end method

.method public getRootIN(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/Tree;->getRootINInternal(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/Tree;->getRootINInternal(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public getRootINRootAlreadyLatched(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;
    .locals 3
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p2, "exclusive"    # Z

    .line 462
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 463
    return-object v1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 468
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    if-eqz p2, :cond_1

    .line 469
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 473
    :goto_0
    return-object v0
.end method

.method public getRootLsn()J
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-nez v0, :cond_0

    .line 517
    const-wide/16 v0, -0x1

    return-wide v0

    .line 519
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 2627
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRootResident()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public latchRootLatchExclusive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 364
    return-void
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 2635
    const/4 v0, 0x0

    return v0
.end method

.method public makeRootChildReference(Lcom/sleepycat/je/tree/Node;[BJ)Lcom/sleepycat/je/tree/ChildReference;
    .locals 8
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "lsn"    # J

    .line 385
    new-instance v7, Lcom/sleepycat/je/tree/Tree$RootChildReference;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/tree/Tree$RootChildReference;-><init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Node;[BJLcom/sleepycat/je/tree/Tree$1;)V

    return-object v7
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 2603
    const/4 v0, 0x0

    .line 2604
    .local v0, "rootExists":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 2605
    .local v1, "booleans":B
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 2606
    if-eqz v0, :cond_1

    .line 2607
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Tree;->makeRootChildReference()Lcom/sleepycat/je/tree/ChildReference;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    .line 2608
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/tree/ChildReference;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 2610
    :cond_1
    return-void
.end method

.method public rebuildINList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2509
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    .line 2511
    .local v0, "inMemoryList":Lcom/sleepycat/je/dbi/INList;
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v1, :cond_1

    .line 2512
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 2514
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    .line 2515
    .local v1, "rootIN":Lcom/sleepycat/je/tree/Node;
    if-eqz v1, :cond_0

    .line 2516
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/Node;->rebuildINList(Lcom/sleepycat/je/dbi/INList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    .end local v1    # "rootIN":Lcom/sleepycat/je/tree/Node;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 2520
    goto :goto_0

    .line 2519
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v1

    .line 2522
    :cond_1
    :goto_0
    return-void
.end method

.method public releaseRootLatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 370
    return-void
.end method

.method public rootExists()Z
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    return v1

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    .line 406
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 407
    return v1

    .line 410
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2152
    sget-object v2, Lcom/sleepycat/je/tree/Tree$SearchType;->NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/tree/Tree$SearchType;Lcom/sleepycat/je/tree/BINBoundary;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    return-object v0
.end method

.method public search([BLcom/sleepycat/je/tree/Tree$SearchType;Lcom/sleepycat/je/tree/BINBoundary;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;
    .locals 19
    .param p1, "key"    # [B
    .param p2, "searchType"    # Lcom/sleepycat/je/tree/Tree$SearchType;
    .param p3, "binBoundary"    # Lcom/sleepycat/je/tree/BINBoundary;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sleepycat/je/tree/Tree$SearchType;",
            "Lcom/sleepycat/je/tree/BINBoundary;",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/tree/BIN;"
        }
    .end annotation

    .line 2185
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/tree/Tree;->getRootIN(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    .line 2187
    .local v6, "rootIN":Lcom/sleepycat/je/tree/IN;
    if-nez v6, :cond_0

    .line 2188
    const/4 v0, 0x0

    return-object v0

    .line 2191
    :cond_0
    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-eq v3, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v0, :cond_2

    :cond_1
    if-nez v2, :cond_16

    .line 2194
    :cond_2
    const/4 v0, 0x1

    if-eqz v4, :cond_3

    .line 2195
    iput-boolean v0, v4, Lcom/sleepycat/je/tree/BINBoundary;->isLastBin:Z

    .line 2196
    iput-boolean v0, v4, Lcom/sleepycat/je/tree/BINBoundary;->isFirstBin:Z

    .line 2199
    :cond_3
    const/4 v7, 0x0

    .line 2201
    .local v7, "success":Z
    move-object v8, v6

    .line 2202
    .local v8, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v9, 0x0

    .line 2204
    .local v9, "child":Lcom/sleepycat/je/tree/IN;
    nop

    .line 2205
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/tree/Tree;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v10

    .line 2208
    .local v10, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    const-string v11, ""

    const-string/jumbo v12, "searchSubTreeInternal"

    const-string v13, "Tree"

    if-eqz v10, :cond_4

    .line 2209
    :try_start_0
    invoke-virtual {v8, v10}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2271
    :catchall_0
    move-exception v0

    move-object/from16 v14, p5

    :goto_0
    move-object v2, v0

    move-object/from16 v18, v6

    goto/16 :goto_a

    .line 2213
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v14

    if-eqz v14, :cond_13

    .line 2218
    sget-object v14, Lcom/sleepycat/je/tree/Tree$SearchType;->NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v15, 0x0

    if-ne v3, v14, :cond_5

    .line 2219
    move-object/from16 v14, p5

    :try_start_2
    invoke-virtual {v8, v2, v15, v15, v14}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v15, v16

    .local v16, "index":I
    goto :goto_2

    .line 2271
    .end local v16    # "index":I
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 2221
    :cond_5
    move-object/from16 v14, p5

    :try_start_3
    sget-object v15, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v15, :cond_6

    .line 2222
    const/4 v15, 0x0

    .local v15, "index":I
    goto :goto_2

    .line 2224
    .end local v15    # "index":I
    :cond_6
    sget-object v15, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    if-ne v3, v15, :cond_12

    .line 2225
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v15

    sub-int/2addr v15, v0

    .line 2232
    .restart local v15    # "index":I
    :goto_2
    if-ltz v15, :cond_11

    .line 2234
    if-eqz v4, :cond_8

    .line 2235
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v18, v6

    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .local v18, "rootIN":Lcom/sleepycat/je/tree/IN;
    add-int/lit8 v6, v17, -0x1

    if-eq v15, v6, :cond_7

    .line 2236
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, v4, Lcom/sleepycat/je/tree/BINBoundary;->isLastBin:Z

    goto :goto_3

    .line 2235
    :cond_7
    const/4 v6, 0x0

    .line 2238
    :goto_3
    if-eqz v15, :cond_9

    .line 2239
    iput-boolean v6, v4, Lcom/sleepycat/je/tree/BINBoundary;->isFirstBin:Z

    goto :goto_4

    .line 2234
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_8
    move-object/from16 v18, v6

    .line 2243
    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_9
    :goto_4
    invoke-virtual {v8, v15, v2}, Lcom/sleepycat/je/tree/IN;->fetchINWithNoLatch(I[B)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    move-object v9, v6

    .line 2245
    if-nez v9, :cond_b

    .line 2246
    invoke-virtual {v1, v5}, Lcom/sleepycat/je/tree/Tree;->getRootIN(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    move-object v8, v6

    .line 2247
    if-eqz v8, :cond_a

    .line 2248
    if-eqz v10, :cond_d

    .line 2249
    invoke-virtual {v8, v10}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    goto :goto_5

    .line 2247
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "success":Z
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "key":[B
    .end local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2255
    .restart local v7    # "success":Z
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "key":[B
    .restart local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_b
    invoke-static {v8, v9, v5}, Lcom/sleepycat/je/tree/Tree;->latchChildShared(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)V

    .line 2257
    if-eqz v10, :cond_c

    .line 2258
    invoke-virtual {v9, v10}, Lcom/sleepycat/je/tree/IN;->accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 2261
    :cond_c
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2262
    move-object v6, v9

    .line 2263
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v6, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v8, 0x0

    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .local v8, "child":Lcom/sleepycat/je/tree/IN;
    move-object v9, v8

    move-object v8, v6

    .line 2265
    .end local v6    # "parent":Lcom/sleepycat/je/tree/IN;
    .local v8, "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_d
    :goto_5
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2267
    const/4 v7, 0x1

    .line 2268
    move-object v6, v8

    check-cast v6, Lcom/sleepycat/je/tree/BIN;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2271
    if-nez v7, :cond_f

    .line 2280
    if-eqz v9, :cond_e

    :try_start_5
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2281
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    goto :goto_6

    .line 2287
    :catch_0
    move-exception v0

    goto :goto_7

    .line 2284
    :cond_e
    :goto_6
    if-eq v8, v9, :cond_f

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2285
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    .line 2288
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    iget-object v2, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2289
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 2288
    invoke-static {v2, v13, v12, v11, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 2268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_8
    return-object v6

    .line 2265
    :cond_10
    move-object/from16 v2, p1

    move-object/from16 v6, v18

    goto/16 :goto_1

    .line 2232
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .local v6, "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_11
    move-object/from16 v18, v6

    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :try_start_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v7    # "success":Z
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "key":[B
    .end local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2228
    .end local v15    # "index":I
    .restart local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "success":Z
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local p1    # "key":[B
    .restart local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_12
    move-object/from16 v18, v6

    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value of searchType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v7    # "success":Z
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "key":[B
    .end local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0

    .line 2271
    .restart local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "success":Z
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local p1    # "key":[B
    .restart local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :catchall_2
    move-exception v0

    goto :goto_9

    .line 2214
    :cond_13
    move-object/from16 v14, p5

    move-object/from16 v18, v6

    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    const-string v0, "Upper IN with 0 entries"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v7    # "success":Z
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "key":[B
    .end local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .end local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2271
    .restart local v7    # "success":Z
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "key":[B
    .restart local p2    # "searchType":Lcom/sleepycat/je/tree/Tree$SearchType;
    .restart local p3    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_a

    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :catchall_4
    move-exception v0

    move-object/from16 v14, p5

    :goto_9
    move-object/from16 v18, v6

    move-object v2, v0

    .end local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :goto_a
    if-nez v7, :cond_15

    .line 2280
    if-eqz v9, :cond_14

    :try_start_7
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2281
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    goto :goto_b

    .line 2287
    :catch_1
    move-exception v0

    goto :goto_c

    .line 2284
    :cond_14
    :goto_b
    if-eq v8, v9, :cond_15

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2285
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_d

    .line 2288
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_c
    iget-object v6, v1, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2289
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    .line 2288
    invoke-static {v6, v13, v12, v11, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 2291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_d
    throw v2

    .line 2191
    .end local v7    # "success":Z
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local v18    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1646
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/tree/Tree;->searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    return-object v0
.end method

.method public setCkptHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2711
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->ckptHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2712
    return-void
.end method

.method public setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 3
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 290
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 292
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 299
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v1, Lcom/sleepycat/je/tree/Tree$1;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/tree/Tree$1;-><init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 318
    .local v1, "latchContext":Lcom/sleepycat/je/latch/LatchContext;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/je/latch/LatchFactory;->createSharedLatch(Lcom/sleepycat/je/latch/LatchContext;Z)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    .line 322
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/tree/Tree;->maxTreeEntriesPerNode:I

    .line 323
    return-void
.end method

.method public setFetchINHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2720
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->fetchINHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2721
    return-void
.end method

.method public setGetParentINHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2716
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->getParentINHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2717
    return-void
.end method

.method public setRoot(Lcom/sleepycat/je/tree/ChildReference;Z)V
    .locals 1
    .param p1, "newRoot"    # Lcom/sleepycat/je/tree/ChildReference;
    .param p2, "notLatched"    # Z

    .line 376
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 377
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    .line 378
    return-void
.end method

.method public setSearchHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2706
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->searchHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2707
    return-void
.end method

.method public setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    .locals 1
    .param p1, "tSA"    # Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    .line 2647
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2648
    return-void
.end method

.method public setWaitHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 2701
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree;->waitHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2702
    return-void
.end method

.method validateDelete(I)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2685
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 2687
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 2688
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->latch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2690
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->validateSubtreeBeforeDelete(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2692
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2695
    iget-object v2, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 2690
    return v1

    .line 2692
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .end local p1    # "index":I
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2695
    .end local v0    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "index":I
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method public validateINList(Lcom/sleepycat/je/tree/IN;)V
    .locals 8
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2531
    if-nez p1, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/sleepycat/je/tree/IN;

    .line 2535
    :cond_0
    if-eqz p1, :cond_6

    .line 2536
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->database:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    .line 2538
    .local v0, "inList":Lcom/sleepycat/je/dbi/INList;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/INList;->contains(Lcom/sleepycat/je/tree/IN;)Z

    move-result v1

    const-string v2, "IN "

    if-eqz v1, :cond_5

    .line 2543
    const/4 v1, 0x0

    .line 2545
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v3

    .line 2547
    .local v3, "node":Lcom/sleepycat/je/tree/Node;
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v4, :cond_3

    .line 2548
    const-string v4, " at index "

    if-nez v3, :cond_2

    .line 2554
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v5

    .line 2555
    .local v5, "key":[B
    if-nez v5, :cond_1

    goto :goto_1

    .line 2556
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2557
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " has stray key "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2556
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    .end local v1    # "i":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    throw v2

    .line 2549
    .end local v5    # "key":[B
    .restart local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    .restart local v1    # "i":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2550
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has stray node "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2549
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    .end local v1    # "i":I
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    throw v2

    .line 2563
    .restart local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    .restart local v1    # "i":I
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    :cond_3
    :goto_1
    instance-of v4, v3, Lcom/sleepycat/je/tree/IN;

    if-eqz v4, :cond_4

    .line 2564
    move-object v4, v3

    check-cast v4, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/tree/Tree;->validateINList(Lcom/sleepycat/je/tree/IN;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2568
    .end local v3    # "node":Lcom/sleepycat/je/tree/Node;
    :cond_4
    nop

    .line 2543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2566
    :catch_0
    move-exception v2

    .line 2567
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_2

    .line 2539
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2540
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing from INList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2539
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 2571
    .end local v0    # "inList":Lcom/sleepycat/je/dbi/INList;
    :cond_6
    :goto_2
    return-void
.end method

.method public withRootLatchedExclusive(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "wrl"    # Lcom/sleepycat/je/tree/WithRootLatched;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 494
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-interface {p1, v0}, Lcom/sleepycat/je/tree/WithRootLatched;->doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 494
    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method public withRootLatchedShared(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "wrl"    # Lcom/sleepycat/je/tree/WithRootLatched;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    invoke-interface {p1, v0}, Lcom/sleepycat/je/tree/WithRootLatched;->doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 505
    return-object v0

    .line 507
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->rootLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 2592
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    .line 2593
    .local v0, "booleans":B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2594
    iget-object v1, p0, Lcom/sleepycat/je/tree/Tree;->root:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v1, :cond_1

    .line 2595
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/tree/ChildReference;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 2597
    :cond_1
    return-void
.end method
