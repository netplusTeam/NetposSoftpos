.class public abstract Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
.super Ljava/lang/Object;
.source "BaseUtilizationTracker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeFile:J

.field cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private volatile fileSummaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/TrackedFileSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 45
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cleaner"    # Lcom/sleepycat/je/cleaner/Cleaner;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p2, :cond_0

    .line 50
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 51
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->activeFile:J

    .line 54
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isLNType(Lcom/sleepycat/je/log/LogEntryType;)Z
    .locals 1
    .param p0, "type"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 319
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static trackObsoleteInfo(Lcom/sleepycat/je/log/LogEntryType;)Z
    .locals 1
    .param p0, "type"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 308
    if-eqz p0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType;->isNodeType()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 310
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 311
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 308
    :goto_1
    return v0
.end method


# virtual methods
.method close()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 328
    .local v1, "t":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->close()V

    .line 329
    .end local v1    # "t":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method final countNew(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 5
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 96
    if-eqz p3, :cond_3

    .line 98
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 99
    .local v0, "fileNum":J
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v2

    .line 100
    .local v2, "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 101
    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    add-int/2addr v3, p4

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 102
    invoke-static {p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->isLNType(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v3

    .line 103
    .local v3, "isLN":Z
    if-eqz v3, :cond_0

    iget v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    if-ge v4, p4, :cond_0

    .line 104
    iput p4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    .line 106
    :cond_0
    invoke-static {p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->trackObsoleteInfo(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    if-eqz v3, :cond_1

    .line 108
    iget v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 109
    iget v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    add-int/2addr v4, p4

    iput v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    goto :goto_0

    .line 111
    :cond_1
    iget v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    .line 112
    iget v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    add-int/2addr v4, p4

    iput v4, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    .line 115
    :cond_2
    :goto_0
    return-void

    .line 96
    .end local v0    # "fileNum":J
    .end local v2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "isLN":Z
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V
    .locals 8
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I
    .param p5, "trackOffset"    # Z
    .param p6, "checkDupOffsets"    # Z

    .line 130
    invoke-static {p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->trackObsoleteInfo(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    invoke-static {p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->isLNType(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v0

    .line 133
    .local v0, "isLN":Z
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    .line 135
    .local v1, "fileNum":J
    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v3

    .line 136
    .local v3, "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-eqz v0, :cond_0

    .line 137
    iget v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNCount:I

    .line 139
    if-lez p4, :cond_1

    .line 140
    iget v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSize:I

    add-int/2addr v4, p4

    iput v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSize:I

    .line 141
    iget v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSizeCounted:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSizeCounted:I

    goto :goto_0

    .line 144
    :cond_0
    iget v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteINCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteINCount:I

    .line 146
    if-nez p4, :cond_3

    .line 149
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 150
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 151
    .local v4, "offset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {v3, v4, v5, p6}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->trackObsolete(JZ)V

    .line 155
    .end local v4    # "offset":J
    :cond_2
    return-void

    .line 146
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 130
    .end local v0    # "isLN":Z
    .end local v1    # "fileNum":J
    .end local v3    # "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public countObsoleteDb(Lcom/sleepycat/je/cleaner/DbFileSummaryMap;J)V
    .locals 10
    .param p1, "dbFileSummaries"    # Lcom/sleepycat/je/cleaner/DbFileSummaryMap;
    .param p2, "mapLnLsn"    # J

    .line 206
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->entrySet()Ljava/util/Set;

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

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 210
    .local v2, "fileNum":Ljava/lang/Long;
    invoke-virtual {p0, v2, p2, p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->isFileUncounted(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/DbFileSummary;

    .line 212
    .local v3, "dbFileSummary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    nop

    .line 213
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v4

    .line 220
    .local v4, "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    iget v5, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNCount:I

    iget v6, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNCount:I

    sub-int/2addr v5, v6

    .line 222
    .local v5, "lnObsoleteCount":I
    iget v6, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNSize:I

    iget v7, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSize:I

    sub-int/2addr v6, v7

    .line 224
    .local v6, "lnObsoleteSize":I
    iget v7, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalINCount:I

    iget v8, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteINCount:I

    sub-int/2addr v7, v8

    .line 226
    .local v7, "inObsoleteCount":I
    iget v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNCount:I

    add-int/2addr v8, v5

    iput v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNCount:I

    .line 227
    iget v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSize:I

    add-int/2addr v8, v6

    iput v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSize:I

    .line 228
    iget v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteINCount:I

    add-int/2addr v8, v7

    iput v8, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteINCount:I

    .line 240
    iget v8, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNCount:I

    iget v9, v3, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSizeCounted:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v5

    .line 243
    .local v8, "lnObsoleteSizeCounted":I
    iget v9, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSizeCounted:I

    add-int/2addr v9, v8

    iput v9, v4, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->obsoleteLNSizeCounted:I

    .line 251
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    .end local v2    # "fileNum":Ljava/lang/Long;
    .end local v3    # "dbFileSummary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    .end local v4    # "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v5    # "lnObsoleteCount":I
    .end local v6    # "lnObsoleteSize":I
    .end local v7    # "inObsoleteCount":I
    .end local v8    # "lnObsoleteSizeCounted":I
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public getEnvironment()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .locals 4
    .param p1, "fileNum"    # J

    .line 266
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->activeFile:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 267
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->activeFile:J

    .line 269
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 270
    .local v0, "fileNumLong":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 271
    .local v1, "file":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    if-nez v1, :cond_1

    .line 273
    new-instance v2, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-boolean v3, v3, Lcom/sleepycat/je/cleaner/Cleaner;->trackDetail:Z

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;-><init>(Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;JZ)V

    move-object v1, v2

    .line 274
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 276
    .local v2, "newFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/TrackedFileSummary;>;"
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iput-object v2, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    .line 279
    .end local v2    # "newFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/TrackedFileSummary;>;"
    :cond_1
    return-object v1
.end method

.method public getTrackedFile(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .locals 2
    .param p1, "fileNum"    # J

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    return-object v0
.end method

.method public getTrackedFiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/cleaner/TrackedFileSummary;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isFileUncounted(Ljava/lang/Long;J)Z
    .locals 1
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "lsn"    # J

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method resetFile(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    .locals 4
    .param p1, "fileSummary"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 292
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->activeFile:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getAllowFlush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 297
    .local v0, "newFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/TrackedFileSummary;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->fileSummaries:Ljava/util/Map;

    .line 300
    .end local v0    # "newFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/TrackedFileSummary;>;"
    :cond_0
    return-void
.end method

.method public transferToUtilizationTracker(Lcom/sleepycat/je/cleaner/UtilizationTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 180
    .local v1, "localSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    nop

    .line 181
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getFileNumber()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getFileSummary(J)Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    move-result-object v2

    .line 182
    .local v2, "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->addTrackedSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V

    .line 183
    .end local v1    # "localSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .end local v2    # "fileSummary":Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method
