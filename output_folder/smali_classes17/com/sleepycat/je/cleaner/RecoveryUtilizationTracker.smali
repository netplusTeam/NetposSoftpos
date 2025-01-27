.class public Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;
.super Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
.source "RecoveryUtilizationTracker.java"


# instance fields
.field private final fileSummaryLsns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 45
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->fileSummaryLsns:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public countNewLogEntry(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countNew(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 65
    return-void
.end method

.method public countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V
    .locals 11
    .param p1, "oldLsn"    # J
    .param p3, "newLsn"    # J
    .param p5, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p6, "size"    # I
    .param p7, "trackOffset"    # Z

    .line 101
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 103
    .local v0, "fileNum":Ljava/lang/Long;
    move-object v8, p0

    move-wide v9, p3

    invoke-virtual {p0, v0, p3, p4}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->isFileUncounted(Ljava/lang/Long;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 111
    return-void
.end method

.method public countObsoleteUnconditional(JLcom/sleepycat/je/log/LogEntryType;IZ)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I
    .param p5, "trackOffset"    # Z

    .line 80
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 84
    return-void
.end method

.method isFileUncounted(Ljava/lang/Long;J)Z
    .locals 4
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "lsn"    # J

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->fileSummaryLsns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/DbLsn;->longToLsn(Ljava/lang/Long;)J

    move-result-wide v0

    .line 122
    .local v0, "fsLsn":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {v0, v1, p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 125
    .local v2, "cmpFsLsnToNewLsn":I
    :goto_0
    if-gez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public resetFileInfo(J)V
    .locals 1
    .param p1, "fileNum"    # J

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->getTrackedFile(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v0

    .line 133
    .local v0, "trackedSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->reset()V

    .line 136
    :cond_0
    return-void
.end method

.method public saveLastLoggedFileSummaryLN(JJ)V
    .locals 3
    .param p1, "fileNum"    # J
    .param p3, "lsn"    # J

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->fileSummaryLsns:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
