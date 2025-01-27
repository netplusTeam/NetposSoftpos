.class public Lcom/sleepycat/je/cleaner/UtilizationTracker;
.super Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
.source "UtilizationTracker.java"


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cleaner"    # Lcom/sleepycat/je/cleaner/Cleaner;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    .line 42
    return-void
.end method


# virtual methods
.method public countNewLogEntry(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countNew(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 121
    return-void
.end method

.method public countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 140
    nop

    .line 141
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 144
    return-void
.end method

.method public countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 178
    nop

    .line 179
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 182
    return-void
.end method

.method public countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 158
    nop

    .line 159
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 162
    return-void
.end method

.method public evictMemory()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-boolean v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->trackDetail:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return-wide v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    return-wide v1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    return-wide v1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 85
    .local v0, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    const-wide/16 v1, 0x0

    .line 86
    .local v1, "totalEvicted":J
    const-wide/16 v3, 0x0

    .line 87
    .local v3, "totalBytes":J
    const/4 v5, 0x0

    .line 88
    .local v5, "largestBytes":I
    const/4 v6, 0x0

    .line 89
    .local v6, "bestFile":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    const/high16 v7, 0x100000

    .line 91
    .local v7, "ONE_MB":I
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 92
    .local v9, "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getMemorySize()I

    move-result v10

    .line 93
    .local v10, "mem":I
    const/high16 v11, 0x100000

    if-lt v10, v11, :cond_3

    .line 94
    iget-object v11, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 95
    int-to-long v11, v10

    add-long/2addr v1, v11

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    int-to-long v11, v10

    add-long/2addr v3, v11

    .line 99
    if-le v10, v5, :cond_4

    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getAllowFlush()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 100
    move v5, v10

    .line 101
    move-object v6, v9

    .line 103
    .end local v9    # "tfs":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v10    # "mem":I
    :cond_4
    goto :goto_0

    .line 105
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getTrackerBudget()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-lez v8, :cond_6

    .line 106
    iget-object v8, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushFileSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 107
    int-to-long v8, v5

    add-long/2addr v1, v8

    .line 109
    :cond_6
    return-wide v1
.end method

.method public getEnvironment()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getUnflushableTrackedSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .locals 2
    .param p1, "fileNum"    # J

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v0

    .line 189
    .local v0, "file":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->setAllowFlush(Z)V

    .line 190
    return-object v0
.end method
