.class public Lcom/sleepycat/je/cleaner/TrackedFileSummary;
.super Lcom/sleepycat/je/cleaner/FileSummary;
.source "TrackedFileSummary.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allowFlush:Z

.field private fileNum:J

.field private memSize:I

.field private obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

.field private trackDetail:Z

.field private tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;JZ)V
    .locals 1
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
    .param p2, "fileNum"    # J
    .param p4, "trackDetail"    # Z

    .line 42
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->allowFlush:Z

    .line 43
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;

    .line 44
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->fileNum:J

    .line 45
    iput-boolean p4, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->trackDetail:Z

    .line 46
    return-void
.end method

.method private updateMemoryBudget(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 186
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;

    if-eqz v0, :cond_0

    .line 187
    iget v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    .line 188
    iget-object v0, v0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method addTrackedSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 134
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 142
    iget v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    .line 143
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/cleaner/OffsetList;->merge(Lcom/sleepycat/je/cleaner/OffsetList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    neg-int v0, v0

    .line 149
    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->updateMemoryBudget(I)V

    goto :goto_0

    .line 153
    :cond_0
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method close()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, v0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x0

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;

    .line 199
    iput v2, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    .line 200
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method containsObsoleteOffset(J)Z
    .locals 1
    .param p1, "offset"    # J

    .line 178
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/OffsetList;->contains(J)Z

    move-result v0

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFlush()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->allowFlush:Z

    return v0
.end method

.method public getFileNumber()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->fileNum:J

    return-wide v0
.end method

.method getMemorySize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    return v0
.end method

.method public getObsoleteOffsets()[J
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/OffsetList;->toArray()[J

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->tracker:Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;

    if-eqz v0, :cond_1

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    .line 93
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->resetFile(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 95
    iget v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->memSize:I

    if-lez v0, :cond_0

    .line 96
    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->updateMemoryBudget(I)V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->reset()V

    .line 100
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method setAllowFlush(Z)V
    .locals 0
    .param p1, "allowFlush"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->allowFlush:Z

    .line 62
    return-void
.end method

.method trackObsolete(JZ)V
    .locals 2
    .param p1, "offset"    # J
    .param p3, "checkDupOffsets"    # Z

    .line 109
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->trackDetail:Z

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "adjustMem":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Lcom/sleepycat/je/cleaner/OffsetList;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/OffsetList;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    .line 116
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_INITIAL_OVERHEAD:I

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/OffsetList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/je/cleaner/OffsetList;->add(JZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    add-int/2addr v0, v1

    .line 123
    :cond_2
    if-eqz v0, :cond_3

    .line 124
    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->updateMemoryBudget(I)V

    .line 126
    :cond_3
    return-void
.end method
