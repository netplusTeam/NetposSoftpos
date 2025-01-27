.class public Lcom/sleepycat/je/utilint/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"

# interfaces
.implements Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;


# static fields
.field private static final MAX_LEVELS:I = 0x64


# instance fields
.field private binEntriesHistogram:[J

.field private final binNodeIdsSeen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private binsSeenByLevel:[J

.field private deletedLNCount:J

.field private final inNodeIdsSeen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private insSeenByLevel:[J

.field private lnCount:J

.field private mainTreeMaxDepth:I

.field progressInterval:I

.field public progressStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;I)V
    .locals 2
    .param p1, "progressStream"    # Ljava/io/PrintStream;
    .param p2, "progressInterval"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->inNodeIdsSeen:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binNodeIdsSeen:Ljava/util/Set;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->insSeenByLevel:[J

    .line 42
    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binsSeenByLevel:[J

    .line 43
    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binEntriesHistogram:[J

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->lnCount:J

    .line 45
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->deletedLNCount:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->mainTreeMaxDepth:I

    .line 58
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->progressStream:Ljava/io/PrintStream;

    .line 59
    iput p2, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->progressInterval:I

    .line 61
    const/16 v0, 0x64

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->insSeenByLevel:[J

    .line 62
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binsSeenByLevel:[J

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binEntriesHistogram:[J

    .line 64
    return-void
.end method

.method private tallyEntries(Lcom/sleepycat/je/tree/BIN;[J)V
    .locals 7
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "binEntriesHistogram"    # [J

    .line 115
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    .line 116
    .local v0, "nEntries":I
    const/4 v1, 0x0

    .line 117
    .local v1, "nonDeletedEntries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 119
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_1
    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    .line 126
    .local v2, "bucket":I
    div-int/lit8 v2, v2, 0xa

    .line 127
    aget-wide v3, p2, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, p2, v2

    .line 128
    return-void
.end method

.method private tallyLevel(I[J)V
    .locals 5
    .param p1, "levelArg"    # I
    .param p2, "nodesSeenByLevel"    # [J

    .line 87
    move v0, p1

    .line 88
    .local v0, "level":I
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    .line 90
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 91
    iget v1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->mainTreeMaxDepth:I

    if-le v0, v1, :cond_0

    .line 92
    iput v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->mainTreeMaxDepth:I

    .line 96
    :cond_0
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 97
    return-void
.end method


# virtual methods
.method getBINEntriesHistogram()[J
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binEntriesHistogram:[J

    return-object v0
.end method

.method getBINNodeIdsSeen()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binNodeIdsSeen:Ljava/util/Set;

    return-object v0
.end method

.method getBINsByLevel()[J
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binsSeenByLevel:[J

    return-object v0
.end method

.method getDeletedLNCount()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->deletedLNCount:J

    return-wide v0
.end method

.method getINNodeIdsSeen()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->inNodeIdsSeen:Ljava/util/Set;

    return-object v0
.end method

.method getINsByLevel()[J
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->insSeenByLevel:[J

    return-object v0
.end method

.method getLNCount()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->lnCount:J

    return-wide v0
.end method

.method getMainTreeMaxDepth()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->mainTreeMaxDepth:I

    return v0
.end method

.method public getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5

    .line 163
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BTreeCount"

    const-string v2, "Btree node counts."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "group":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getINNodeIdsSeen()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 166
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getBINNodeIdsSeen()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 167
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getLNCount()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 168
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_DELETED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getDeletedLNCount()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 169
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_MAINTREE_MAXDEPTH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getMainTreeMaxDepth()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 170
    new-instance v1, Lcom/sleepycat/je/utilint/LongArrayStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getINsByLevel()[J

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/LongArrayStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V

    .line 171
    new-instance v1, Lcom/sleepycat/je/utilint/LongArrayStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getBINsByLevel()[J

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/LongArrayStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V

    .line 172
    new-instance v1, Lcom/sleepycat/je/utilint/StatsAccumulator$1;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BIN_ENTRIES_HISTOGRAM:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 173
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getBINEntriesHistogram()[J

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sleepycat/je/utilint/StatsAccumulator$1;-><init>(Lcom/sleepycat/je/utilint/StatsAccumulator;Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V

    .line 203
    return-object v0
.end method

.method public incrementDeletedLNCount()V
    .locals 4

    .line 111
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->deletedLNCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->deletedLNCount:J

    .line 112
    return-void
.end method

.method public incrementLNCount()V
    .locals 6

    .line 101
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->lnCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->lnCount:J

    .line 102
    iget v2, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->progressInterval:I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->progressStream:Ljava/io/PrintStream;

    if-eqz v3, :cond_0

    .line 103
    int-to-long v4, v2

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->getStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public processBIN(Lcom/sleepycat/je/tree/BIN;Ljava/lang/Long;I)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "nid"    # Ljava/lang/Long;
    .param p3, "level"    # I

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binNodeIdsSeen:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binsSeenByLevel:[J

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->tallyLevel(I[J)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/StatsAccumulator;->verifyNode(Lcom/sleepycat/je/tree/Node;)V

    .line 82
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->binEntriesHistogram:[J

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->tallyEntries(Lcom/sleepycat/je/tree/BIN;[J)V

    .line 84
    :cond_0
    return-void
.end method

.method public processIN(Lcom/sleepycat/je/tree/IN;Ljava/lang/Long;I)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "nid"    # Ljava/lang/Long;
    .param p3, "level"    # I

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->inNodeIdsSeen:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatsAccumulator;->insSeenByLevel:[J

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/je/utilint/StatsAccumulator;->tallyLevel(I[J)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/StatsAccumulator;->verifyNode(Lcom/sleepycat/je/tree/Node;)V

    .line 75
    :cond_0
    return-void
.end method

.method public verifyNode(Lcom/sleepycat/je/tree/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;

    .line 67
    return-void
.end method
