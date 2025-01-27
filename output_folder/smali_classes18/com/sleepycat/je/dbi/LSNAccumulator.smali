.class abstract Lcom/sleepycat/je/dbi/LSNAccumulator;
.super Ljava/lang/Object;
.source "LSNAccumulator.java"


# instance fields
.field private lsnAccMemoryUsage:J

.field private nTotalEntries:I

.field private offsetsByFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/OffsetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->init()V

    .line 40
    return-void
.end method

.method private incInternalMemoryUsage(J)V
    .locals 2
    .param p1, "increment"    # J

    .line 70
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->lsnAccMemoryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->lsnAccMemoryUsage:J

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/LSNAccumulator;->noteMemUsage(J)V

    .line 72
    return-void
.end method

.method private init()V
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->lsnAccMemoryUsage:J

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    .line 46
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 47
    return-void
.end method


# virtual methods
.method add(J)V
    .locals 6
    .param p1, "lsn"    # J

    .line 75
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 76
    .local v0, "fileNumber":J
    iget-object v2, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/OffsetList;

    .line 77
    .local v2, "offsetsForFile":Lcom/sleepycat/je/cleaner/OffsetList;
    if-nez v2, :cond_0

    .line 78
    new-instance v3, Lcom/sleepycat/je/cleaner/OffsetList;

    invoke-direct {v3}, Lcom/sleepycat/je/cleaner/OffsetList;-><init>()V

    move-object v2, v3

    .line 79
    iget-object v3, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_INITIAL_OVERHEAD:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 81
    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 84
    :cond_0
    nop

    .line 85
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/cleaner/OffsetList;->add(JZ)Z

    move-result v3

    .line 86
    .local v3, "newSegment":Z
    if-eqz v3, :cond_1

    .line 87
    sget v4, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 90
    :cond_1
    iget v4, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    .line 91
    return-void
.end method

.method clear()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    .line 52
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->lsnAccMemoryUsage:J

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/LSNAccumulator;->incInternalMemoryUsage(J)V

    .line 53
    return-void
.end method

.method getAndSortPendingLSNs()[J
    .locals 13

    .line 94
    iget v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    new-array v0, v0, [J

    .line 95
    .local v0, "currentLSNs":[J
    const/4 v1, 0x0

    .line 98
    .local v1, "curIdx":I
    iget-object v2, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 100
    .local v3, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/OffsetList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 102
    .local v4, "fileNumber":J
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/cleaner/OffsetList;

    invoke-virtual {v6}, Lcom/sleepycat/je/cleaner/OffsetList;->toArray()[J

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-wide v9, v6, v8

    .line 103
    .local v9, "fileOffset":J
    invoke-static {v4, v5, v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v11

    aput-wide v11, v0, v1

    .line 104
    nop

    .end local v9    # "fileOffset":J
    add-int/lit8 v1, v1, 0x1

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 106
    .end local v3    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/OffsetList;>;"
    .end local v4    # "fileNumber":J
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->init()V

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 110
    return-object v0
.end method

.method getLSNs([JI)V
    .locals 11
    .param p1, "lsns"    # [J
    .param p2, "nLsns"    # I

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->offsetsByFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/OffsetList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 120
    .local v2, "fileNumber":J
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/cleaner/OffsetList;

    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/OffsetList;->toArray()[J

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-wide v7, v4, v6

    .line 121
    .local v7, "fileOffset":J
    invoke-static {v2, v3, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v9

    aput-wide v9, p1, p2

    .line 122
    nop

    .end local v7    # "fileOffset":J
    add-int/lit8 p2, p2, 0x1

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/OffsetList;>;"
    .end local v2    # "fileNumber":J
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/LSNAccumulator;->init()V

    .line 127
    return-void
.end method

.method getMemoryUsage()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->lsnAccMemoryUsage:J

    return-wide v0
.end method

.method getNTotalEntries()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/sleepycat/je/dbi/LSNAccumulator;->nTotalEntries:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract noteMemUsage(J)V
.end method
