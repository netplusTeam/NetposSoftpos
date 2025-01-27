.class public Lcom/sleepycat/je/BtreeStats;
.super Lcom/sleepycat/je/DatabaseStats;
.source "BtreeStats.java"


# static fields
.field private static final serialVersionUID:J = 0x11cfb549L


# instance fields
.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/sleepycat/je/DatabaseStats;-><init>()V

    .line 43
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BTreeCount"

    const-string v2, "Btree node counts."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 50
    invoke-direct {p0}, Lcom/sleepycat/je/DatabaseStats;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 52
    return-void
.end method


# virtual methods
.method public getBINEntriesHistogram()[J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BIN_ENTRIES_HISTOGRAM:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLongArray(Lcom/sleepycat/je/utilint/StatDefinition;)[J

    move-result-object v0

    return-object v0
.end method

.method public getBINsByLevel()[J
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLongArray(Lcom/sleepycat/je/utilint/StatDefinition;)[J

    move-result-object v0

    return-object v0
.end method

.method public getBottomInternalNodeCount()J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDBINsByLevel()[J
    .locals 1

    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getDINsByLevel()[J
    .locals 1

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getDeletedLeafNodeCount()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_DELETED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDupCountLeafNodeCount()J
    .locals 2

    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuplicateBottomInternalNodeCount()J
    .locals 2

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuplicateInternalNodeCount()J
    .locals 2

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuplicateTreeMaxDepth()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getINsByLevel()[J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLongArray(Lcom/sleepycat/je/utilint/StatDefinition;)[J

    move-result-object v0

    return-object v0
.end method

.method public getInternalNodeCount()J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeafNodeCount()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainTreeMaxDepth()I
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_MAINTREE_MAXDEPTH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getRelatches()J
    .locals 2

    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRootSplits()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/BtreeStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
