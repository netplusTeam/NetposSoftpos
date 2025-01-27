.class public Lcom/sleepycat/je/cleaner/FileProcessor;
.super Lcom/sleepycat/je/utilint/DaemonThread;
.source "FileProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;,
        Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PROCESS_PENDING_EVERY_N_LNS:I = 0x64


# instance fields
.field private volatile activate:Z

.field private final calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

.field private final cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field private fileLogVersion:I

.field private final fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

.field private final firstThread:Z

.field private lastWakeupLsn:J

.field private nBINDeltasCleanedThisRun:I

.field private nBINDeltasDeadThisRun:I

.field private nBINDeltasMigratedThisRun:I

.field private nBINDeltasObsoleteThisRun:I

.field private nDbLookupsThisRun:I

.field private nEntriesReadThisRun:I

.field private nINsCleanedThisRun:I

.field private nINsDeadThisRun:I

.field private nINsMigratedThisRun:I

.field private nINsObsoleteThisRun:I

.field private nLNQueueHitsThisRun:I

.field private nLNsCleanedThisRun:I

.field private nLNsDeadThisRun:I

.field private nLNsExpiredThisRun:I

.field private nLNsExtinctThisRun:I

.field private nLNsLockedThisRun:I

.field private nLNsMarkedThisRun:I

.field private nLNsMigratedThisRun:I

.field private nLNsObsoleteThisRun:I

.field private final profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;Lcom/sleepycat/je/cleaner/UtilizationProfile;Lcom/sleepycat/je/cleaner/UtilizationCalculator;Lcom/sleepycat/je/cleaner/FileSelector;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "firstThread"    # Z
    .param p3, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p4, "cleaner"    # Lcom/sleepycat/je/cleaner/Cleaner;
    .param p5, "profile"    # Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .param p6, "calculator"    # Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    .param p7, "fileSelector"    # Lcom/sleepycat/je/cleaner/FileSelector;

    .line 235
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/sleepycat/je/utilint/DaemonThread;-><init>(JLjava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->activate:Z

    .line 91
    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->lastWakeupLsn:J

    .line 111
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    .line 117
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    .line 123
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    .line 129
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    .line 138
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    .line 144
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    .line 150
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    .line 156
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    .line 165
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    .line 170
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    .line 175
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    .line 182
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    .line 191
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    .line 197
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    .line 204
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    .line 209
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I

    .line 216
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I

    .line 221
    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nDbLookupsThisRun:I

    .line 236
    iput-object p4, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 237
    iput-object p7, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 238
    iput-object p5, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    .line 239
    iput-object p6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 240
    iput-boolean p2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->firstThread:Z

    .line 241
    return-void
.end method

.method private accumulatePerRunCounters()V
    .locals 3

    .line 1972
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nINsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1973
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nINsCleaned:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1974
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nINsDead:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1975
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nINsMigrated:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1976
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasObsolete:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1977
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasCleaned:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1978
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasDead:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1979
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasMigrated:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1980
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1981
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExpired:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1982
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExtinct:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1983
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsCleaned:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1984
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1985
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsMigrated:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1986
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsMarked:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1987
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNQueueHits:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1988
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1989
    return-void
.end method

.method private findINInTree(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)Lcom/sleepycat/je/tree/IN;
    .locals 9
    .param p1, "tree"    # Lcom/sleepycat/je/tree/Tree;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "inClone"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "logLsn"    # J

    .line 1745
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1746
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/cleaner/FileProcessor;->isRoot(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    .line 1747
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    if-nez v0, :cond_0

    .line 1754
    return-object v1

    .line 1756
    :cond_0
    return-object v0

    .line 1761
    .end local v0    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_1
    sget-object v0, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p3, v0}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1762
    const/4 v0, 0x0

    .line 1764
    .local v0, "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    const/4 v3, 0x1

    invoke-virtual {p1, p3, v3, v3, v2}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v2

    move-object v0, v2

    .line 1768
    iget-boolean v2, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 1769
    nop

    .line 1879
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v2, :cond_2

    .line 1880
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1769
    :cond_2
    return-object v1

    .line 1773
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1774
    .local v2, "parent":Lcom/sleepycat/je/tree/IN;
    iget v3, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1780
    .local v3, "treeLsn":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_5

    .line 1781
    nop

    .line 1879
    if-eqz v0, :cond_4

    iget-boolean v5, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v5, :cond_4

    .line 1880
    iget-object v5, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1781
    :cond_4
    return-object v1

    .line 1792
    :cond_5
    cmp-long v5, v3, p4

    const/4 v6, 0x0

    if-nez v5, :cond_a

    .line 1793
    :try_start_2
    iget v5, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    sget-object v7, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v5, v7}, Lcom/sleepycat/je/tree/IN;->loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    .line 1795
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    if-eqz v5, :cond_7

    .line 1797
    sget-object v1, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1799
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1807
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1815
    move-object v1, v5

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 1816
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    move-object v7, p3

    check-cast v7, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1, v7, v6}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1818
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_0

    .line 1807
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local p2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "inClone":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "logLsn":J
    throw v1

    .line 1820
    .restart local v0    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local p1    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local p2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "inClone":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "logLsn":J
    :cond_7
    move-object v5, p3

    .line 1827
    invoke-virtual {v5, p2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1828
    invoke-virtual {v5, p2, p4, p5}, Lcom/sleepycat/je/tree/IN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1829
    iget v6, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v2, v6, v5, v1}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1832
    :cond_8
    :goto_0
    nop

    .line 1879
    if-eqz v0, :cond_9

    iget-boolean v1, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v1, :cond_9

    .line 1880
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1832
    :cond_9
    return-object v5

    .line 1835
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_a
    :try_start_3
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_c

    .line 1837
    nop

    .line 1879
    if-eqz v0, :cond_b

    iget-boolean v5, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v5, :cond_b

    .line 1880
    iget-object v5, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1837
    :cond_b
    return-object v1

    .line 1846
    :cond_c
    :try_start_4
    iget v5, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    sget-object v7, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    .line 1847
    invoke-virtual {v2, v5, v7}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1849
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v7

    move-wide v3, v7

    .line 1852
    invoke-static {v3, v4, p4, p5}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1862
    .local v7, "compareVal":I
    if-eqz v7, :cond_e

    .line 1863
    nop

    .line 1879
    if-eqz v0, :cond_d

    iget-boolean v6, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v6, :cond_d

    .line 1880
    iget-object v6, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1863
    :cond_d
    return-object v1

    .line 1871
    :cond_e
    :try_start_5
    sget-object v1, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1872
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1873
    move-object v1, p3

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v5, v1, v6}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Lcom/sleepycat/je/tree/BIN;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1876
    :cond_f
    nop

    .line 1879
    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v1, :cond_10

    .line 1880
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1876
    :cond_10
    return-object v5

    .line 1879
    .end local v2    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v3    # "treeLsn":J
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "compareVal":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v2, :cond_11

    .line 1880
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_11
    throw v1
.end method

.method private isRoot(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "tree"    # Lcom/sleepycat/je/tree/Tree;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "inClone"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "lsn"    # J

    .line 1932
    new-instance v0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V

    .line 1933
    .local v0, "rdw":Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedShared(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    return-object v1
.end method

.method private processBINDelta(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 9
    .param p1, "deltaClone"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "logLsn"    # J

    .line 1599
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    .line 1602
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1603
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1605
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v0

    .line 1610
    .local v0, "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_0
    iget-boolean v2, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-nez v2, :cond_1

    .line 1612
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v1, :cond_0

    .line 1673
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1613
    :cond_0
    return-void

    .line 1616
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v3, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v2

    .line 1617
    .local v2, "treeLsn":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 1619
    iget v4, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v1, :cond_2

    .line 1673
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1620
    :cond_2
    return-void

    .line 1631
    :cond_3
    :try_start_2
    invoke-static {v2, v3, p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v4

    .line 1632
    .local v4, "cmp":I
    if-eqz v4, :cond_5

    .line 1634
    iget v5, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1672
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v1, :cond_4

    .line 1673
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1635
    :cond_4
    return-void

    .line 1644
    :cond_5
    :try_start_3
    iget-object v5, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v6, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/tree/IN;->loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1647
    .local v5, "treeBin":Lcom/sleepycat/je/tree/BIN;
    if-nez v5, :cond_6

    .line 1649
    move-object v5, p1

    .line 1650
    invoke-virtual {v5, p2}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1652
    invoke-virtual {v5, p2, p3, p4}, Lcom/sleepycat/je/tree/BIN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1654
    iget-object v6, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v7, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/sleepycat/je/tree/IN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    goto :goto_0

    .line 1657
    :cond_6
    sget-object v6, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1664
    :goto_0
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6, v5, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 1666
    invoke-virtual {v5, v1}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V

    .line 1667
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1669
    iget v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1672
    .end local v2    # "treeLsn":J
    .end local v4    # "cmp":I
    .end local v5    # "treeBin":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v1, :cond_7

    .line 1673
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1676
    :cond_7
    return-void

    .line 1672
    :catchall_0
    move-exception v1

    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v2, :cond_8

    .line 1673
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_8
    throw v1
.end method

.method private processFile(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)Z
    .locals 48
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "fileSummary"    # Lcom/sleepycat/je/cleaner/FileSummary;
    .param p3, "inSummary"    # Lcom/sleepycat/je/cleaner/INSummary;
    .param p4, "expTracker"    # Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    const/4 v0, 0x0

    const/4 v12, 0x1

    if-eqz p4, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v13, v2

    .line 696
    .local v13, "countOnly":Z
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 697
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v14

    .line 700
    .local v14, "lockManager":Lcom/sleepycat/je/txn/LockManager;
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    if-nez v13, :cond_1

    move v3, v12

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const/4 v15, 0x0

    invoke-virtual {v2, v11, v3, v15}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailPacked(Ljava/lang/Long;ZLjava/lang/Runnable;)Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v16

    .line 703
    .local v16, "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/PackedOffsets;->iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    move-result-object v17

    .line 704
    .local v17, "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    const-wide/16 v18, -0x1

    .line 707
    .local v18, "nextObsolete":J
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v10, v2, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    .line 708
    .local v10, "readBufferSize":I
    if-eqz v13, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->lookAheadCacheSize:I

    :goto_2
    move v9, v2

    .line 716
    .local v9, "lookAheadCacheSize":I
    mul-int/lit8 v2, v10, 0x2

    .line 717
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getLogSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int v8, v2, v9

    .line 719
    .local v8, "adjustMem":I
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v7

    .line 720
    .local v7, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    int-to-long v2, v8

    invoke-virtual {v7, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 724
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 732
    if-eqz v13, :cond_3

    move-object v2, v15

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;

    invoke-direct {v2, v9}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;-><init>(I)V

    :goto_3
    move-object v5, v2

    .line 736
    .local v5, "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    new-instance v2, Lcom/sleepycat/je/cleaner/DbCache;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/cleaner/DbCache;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    move-object v6, v2

    .line 743
    .local v6, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    if-eqz v13, :cond_4

    move-object v2, v15

    goto :goto_4

    :cond_4
    new-instance v2, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    :goto_4
    move-object v4, v2

    .line 747
    .local v4, "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v3, v2

    .line 750
    .local v3, "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    new-instance v20, Lcom/sleepycat/je/log/CleanerFileReader;

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 751
    move/from16 v22, v13

    .end local v13    # "countOnly":Z
    .local v22, "countOnly":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v0}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v12

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    move-object v15, v3

    .end local v3    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .local v15, "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    move-object/from16 v3, v23

    move-object v11, v4

    .end local v4    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .local v11, "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    move v4, v10

    move-object/from16 v24, v5

    move-object/from16 v23, v6

    .end local v5    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .local v23, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .local v24, "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    move-wide v5, v12

    move-object v12, v7

    .end local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    move-object/from16 v7, p1

    move v13, v8

    .end local v8    # "adjustMem":I
    .local v13, "adjustMem":I
    move-object/from16 v8, p2

    move/from16 v25, v9

    .end local v9    # "lookAheadCacheSize":I
    .local v25, "lookAheadCacheSize":I
    move-object/from16 v9, p3

    move/from16 v26, v10

    .end local v10    # "readBufferSize":I
    .local v26, "readBufferSize":I
    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/sleepycat/je/log/CleanerFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJLjava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)V

    move-object/from16 v8, v20

    .line 755
    .local v8, "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/sleepycat/je/log/CleanerFileReader;->setAlwaysValidateChecksum(Z)V

    .line 758
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v2}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 760
    .local v2, "location":Lcom/sleepycat/je/tree/TreeLocation;
    const/4 v3, 0x0

    .line 762
    .local v3, "nProcessedEntries":I
    :goto_5
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->readNextEntryAllowExceptions()Z

    move-result v4
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v4, :cond_34

    .line 764
    add-int/lit8 v3, v3, 0x1

    .line 765
    :try_start_1
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v4, v4, Lcom/sleepycat/je/cleaner/Cleaner;->nEntriesRead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 767
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getAndResetNReads()I

    move-result v4
    :try_end_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 768
    .local v4, "nReads":I
    if-lez v4, :cond_5

    .line 769
    :try_start_2
    iget-object v5, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v5, v5, Lcom/sleepycat/je/cleaner/Cleaner;->nDiskReads:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V
    :try_end_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1108
    .end local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v3    # "nProcessedEntries":I
    .end local v4    # "nReads":I
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_19

    .line 1103
    :catch_0
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_18

    .line 772
    .restart local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v3    # "nProcessedEntries":I
    .restart local v4    # "nReads":I
    :cond_5
    :goto_6
    :try_start_3
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastLsn()J

    move-result-wide v5

    .line 773
    .local v5, "logLsn":J
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v9

    .line 774
    .local v9, "fileOffset":J
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isLN()Z

    move-result v7

    .line 775
    .local v7, "isLN":Z
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isIN()Z

    move-result v20

    .line 776
    .local v20, "isIN":Z
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isBINDelta()Z

    move-result v27

    .line 777
    .local v27, "isBINDelta":Z
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isOldBINDelta()Z

    move-result v28

    .line 778
    .local v28, "isOldBINDelta":Z
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isDbTree()Z

    move-result v29

    .line 779
    .local v29, "isDbTree":Z
    const/16 v30, 0x0

    .line 780
    .local v30, "isObsolete":Z
    const-wide/16 v31, 0x0

    .line 783
    .local v31, "expirationTime":J
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isFileHeader()Z

    move-result v33
    :try_end_3
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-eqz v33, :cond_8

    .line 784
    :try_start_4
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getFileHeader()Lcom/sleepycat/je/log/FileHeader;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/je/log/FileHeader;->getLogVersion()I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileLogVersion:I
    :try_end_4
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 786
    if-eqz v22, :cond_7

    move-object/from16 v33, v2

    .end local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .local v33, "location":Lcom/sleepycat/je/tree/TreeLocation;
    const/16 v2, 0xc

    if-ge v0, v2, :cond_6

    .line 787
    nop

    .line 1108
    rsub-int/lit8 v0, v13, 0x0

    move-wide/from16 v35, v5

    .end local v5    # "logLsn":J
    .local v35, "logLsn":J
    int-to-long v5, v0

    invoke-virtual {v12, v5, v6}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1111
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 787
    const/4 v0, 0x1

    return v0

    .line 786
    .end local v35    # "logLsn":J
    .restart local v5    # "logLsn":J
    :cond_6
    move-wide/from16 v35, v5

    .end local v5    # "logLsn":J
    .restart local v35    # "logLsn":J
    goto :goto_7

    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "logLsn":J
    .restart local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v5    # "logLsn":J
    :cond_7
    move-object/from16 v33, v2

    move-wide/from16 v35, v5

    .end local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v5    # "logLsn":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "logLsn":J
    goto :goto_7

    .line 783
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "logLsn":J
    .restart local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v5    # "logLsn":J
    :cond_8
    move-object/from16 v33, v2

    move-wide/from16 v35, v5

    .line 792
    .end local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v5    # "logLsn":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "logLsn":J
    :goto_7
    if-nez v22, :cond_9

    :try_start_5
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosing()Z

    move-result v0
    :try_end_5
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_9

    .line 793
    nop

    .line 1108
    rsub-int/lit8 v0, v13, 0x0

    int-to-long v5, v0

    invoke-virtual {v12, v5, v6}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1111
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 793
    const/4 v0, 0x0

    return v0

    .line 797
    :cond_9
    if-nez v22, :cond_a

    .line 798
    :try_start_6
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V

    .line 802
    :cond_a
    if-lez v4, :cond_b

    .line 803
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->updateBackgroundReads(I)V
    :try_end_6
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 807
    :cond_b
    :try_start_7
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sleepAfterBackgroundIO()V
    :try_end_7
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 810
    :goto_8
    cmp-long v0, v18, v9

    if-gez v0, :cond_c

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 811
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->next()J

    move-result-wide v5

    move-wide/from16 v18, v5

    goto :goto_8

    .line 813
    :cond_c
    cmp-long v0, v18, v9

    if-nez v0, :cond_d

    .line 814
    const/16 v30, 0x1

    .line 818
    :cond_d
    if-nez v30, :cond_f

    if-nez v7, :cond_f

    if-nez v20, :cond_f

    if-nez v27, :cond_f

    if-nez v28, :cond_f

    if-nez v29, :cond_f

    .line 825
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->isFileHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 826
    const/16 v30, 0x1

    goto :goto_9

    .line 825
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .end local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .end local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v18    # "nextObsolete":J
    .end local v22    # "countOnly":Z
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v25    # "lookAheadCacheSize":I
    .end local v26    # "readBufferSize":I
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    throw v0

    .line 838
    .restart local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .restart local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .restart local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .restart local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .restart local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v18    # "nextObsolete":J
    .restart local v22    # "countOnly":Z
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v25    # "lookAheadCacheSize":I
    .restart local v26    # "readBufferSize":I
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :cond_f
    :goto_9
    const/16 v0, 0x8

    if-nez v30, :cond_10

    if-eqz v28, :cond_10

    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileLogVersion:I
    :try_end_8
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v2, v0, :cond_10

    .line 841
    const/16 v30, 0x1

    .line 845
    :cond_10
    :try_start_9
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2
    :try_end_9
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 846
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    if-eqz v2, :cond_11

    .line 847
    :try_start_a
    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 854
    :cond_11
    const/4 v5, 0x0

    .line 855
    .local v5, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    if-nez v30, :cond_14

    if-eqz v2, :cond_14

    .line 863
    :try_start_b
    iget-object v6, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v6, v6, Lcom/sleepycat/je/cleaner/Cleaner;->dbCacheClearCount:I

    rem-int v6, v3, v6
    :try_end_b
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v6, :cond_12

    .line 864
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V
    :try_end_c
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 885
    :cond_12
    move-object/from16 v6, v23

    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    :try_start_d
    invoke-virtual {v6, v2}, Lcom/sleepycat/je/cleaner/DbCache;->getDbInfo(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v23

    move-object/from16 v5, v23

    .line 886
    iget-boolean v0, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    if-nez v0, :cond_13

    iget-boolean v0, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z

    if-eqz v0, :cond_15

    .line 887
    :cond_13
    const/16 v30, 0x1

    goto :goto_a

    .line 1108
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "nProcessedEntries":I
    .end local v4    # "nReads":I
    .end local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v7    # "isLN":Z
    .end local v9    # "fileOffset":J
    .end local v20    # "isIN":Z
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "logLsn":J
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    goto/16 :goto_19

    .line 1103
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    :catch_1
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    goto/16 :goto_18

    .line 855
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "nProcessedEntries":I
    .restart local v4    # "nReads":I
    .restart local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v7    # "isLN":Z
    .restart local v9    # "fileOffset":J
    .restart local v20    # "isIN":Z
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "logLsn":J
    :cond_14
    move-object/from16 v6, v23

    .line 897
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    :cond_15
    :goto_a
    if-nez v30, :cond_16

    if-eqz v20, :cond_16

    iget-boolean v0, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    if-eqz v0, :cond_16

    iget v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileLogVersion:I
    :try_end_d
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move/from16 v43, v3

    const/16 v3, 0x8

    .end local v3    # "nProcessedEntries":I
    .local v43, "nProcessedEntries":I
    if-ge v0, v3, :cond_17

    .line 901
    const/16 v30, 0x1

    goto :goto_b

    .line 1108
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "nReads":I
    .end local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v7    # "isLN":Z
    .end local v9    # "fileOffset":J
    .end local v20    # "isIN":Z
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "logLsn":J
    .end local v43    # "nProcessedEntries":I
    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object v12, v6

    goto/16 :goto_19

    .line 1103
    :catch_2
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object v12, v6

    goto/16 :goto_18

    .line 897
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "nProcessedEntries":I
    .restart local v4    # "nReads":I
    .restart local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v7    # "isLN":Z
    .restart local v9    # "fileOffset":J
    .restart local v20    # "isIN":Z
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "logLsn":J
    :cond_16
    move/from16 v43, v3

    .line 904
    .end local v3    # "nProcessedEntries":I
    .restart local v43    # "nProcessedEntries":I
    :cond_17
    :goto_b
    if-nez v30, :cond_20

    if-eqz v7, :cond_20

    .line 906
    :try_start_e
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v0

    .line 907
    .local v0, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    iget-boolean v3, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 918
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isDeleted()Z

    move-result v3
    :try_end_e
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v3, :cond_18

    :try_start_f
    iget v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileLogVersion:I

    move/from16 v23, v4

    .end local v4    # "nReads":I
    .local v23, "nReads":I
    const/4 v4, 0x2

    if-le v3, v4, :cond_19

    .line 919
    const/16 v30, 0x1

    goto :goto_c

    .line 918
    .end local v23    # "nReads":I
    .restart local v4    # "nReads":I
    :cond_18
    move/from16 v23, v4

    .line 923
    .end local v4    # "nReads":I
    .restart local v23    # "nReads":I
    :cond_19
    :goto_c
    if-nez v30, :cond_1b

    iget-boolean v3, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->isLNImmediatelyObsolete:Z

    if-nez v3, :cond_1a

    .line 925
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v3
    :try_end_f
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v3, :cond_1b

    .line 926
    :cond_1a
    const/16 v30, 0x1

    .line 932
    :cond_1b
    if-nez v30, :cond_1e

    if-nez v22, :cond_1e

    .line 934
    nop

    .line 935
    :try_start_10
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v3

    .line 936
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v4

    .line 934
    invoke-static {v3, v4}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v3

    .line 938
    .end local v31    # "expirationTime":J
    .local v3, "expirationTime":J
    move-wide/from16 v44, v9

    .end local v9    # "fileOffset":J
    .local v44, "fileOffset":J
    iget-object v9, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 940
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlLnPurgeDelay()I

    move-result v10
    :try_end_10
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/16 v34, 0x0

    rsub-int/lit8 v10, v10, 0x0

    move-object/from16 v46, v12

    move/from16 v47, v13

    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .local v46, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v47, "adjustMem":I
    int-to-long v12, v10

    .line 938
    :try_start_11
    invoke-virtual {v9, v3, v4, v12, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(JJ)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 942
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/sleepycat/je/txn/LockManager;->isLockUncontended(Ljava/lang/Long;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 943
    iget-object v9, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    new-instance v10, Lcom/sleepycat/je/cleaner/LNInfo;

    const/16 v38, 0x0

    .line 946
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v40

    move-object/from16 v37, v10

    move-object/from16 v39, v2

    move-wide/from16 v41, v3

    invoke-direct/range {v37 .. v42}, Lcom/sleepycat/je/cleaner/LNInfo;-><init>(Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/DatabaseId;[BJ)V

    .line 943
    move-wide/from16 v12, v35

    .end local v35    # "logLsn":J
    .local v12, "logLsn":J
    invoke-virtual {v9, v12, v13, v10}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V

    .line 947
    iget v9, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    .line 948
    move-object/from16 v10, p1

    move-object/from16 v9, v24

    move-object/from16 v4, v33

    goto/16 :goto_15

    .line 951
    .end local v12    # "logLsn":J
    .restart local v35    # "logLsn":J
    :cond_1c
    move-wide/from16 v12, v35

    .end local v35    # "logLsn":J
    .restart local v12    # "logLsn":J
    const/4 v9, 0x1

    .line 952
    .end local v30    # "isObsolete":Z
    .local v9, "isObsolete":Z
    iget v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    const/16 v21, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    .line 958
    nop

    .line 960
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastEntrySize()I

    move-result v10

    .line 958
    move-wide/from16 v31, v3

    const/4 v3, 0x0

    .end local v3    # "expirationTime":J
    .restart local v31    # "expirationTime":J
    invoke-virtual {v11, v12, v13, v3, v10}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    move/from16 v30, v9

    goto :goto_d

    .line 938
    .end local v9    # "isObsolete":Z
    .end local v12    # "logLsn":J
    .end local v31    # "expirationTime":J
    .restart local v3    # "expirationTime":J
    .restart local v30    # "isObsolete":Z
    .restart local v35    # "logLsn":J
    :cond_1d
    move-wide/from16 v31, v3

    move-wide/from16 v12, v35

    const/4 v3, 0x0

    .end local v3    # "expirationTime":J
    .end local v35    # "logLsn":J
    .restart local v12    # "logLsn":J
    .restart local v31    # "expirationTime":J
    goto :goto_d

    .line 932
    .end local v44    # "fileOffset":J
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .local v9, "fileOffset":J
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .restart local v35    # "logLsn":J
    :cond_1e
    move-wide/from16 v44, v9

    move-object/from16 v46, v12

    move/from16 v47, v13

    move-wide/from16 v12, v35

    const/4 v3, 0x0

    const/16 v34, 0x0

    .line 965
    .end local v9    # "fileOffset":J
    .end local v13    # "adjustMem":I
    .end local v35    # "logLsn":J
    .local v12, "logLsn":J
    .restart local v44    # "fileOffset":J
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    :goto_d
    if-nez v30, :cond_1f

    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v9, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->name:Ljava/lang/String;

    iget-boolean v10, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    iget-boolean v3, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->internal:Z

    .line 968
    move-object/from16 v35, v5

    .end local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .local v35, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v5

    .line 966
    invoke-virtual {v4, v9, v10, v3, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Ljava/lang/String;ZZ[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-ne v3, v4, :cond_21

    .line 970
    const/16 v30, 0x1

    .line 971
    iget v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    goto :goto_e

    .line 965
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    :cond_1f
    move-object/from16 v35, v5

    .end local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    goto :goto_e

    .line 1108
    .end local v0    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "isLN":Z
    .end local v20    # "isIN":Z
    .end local v23    # "nReads":I
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v43    # "nProcessedEntries":I
    .end local v44    # "fileOffset":J
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    :catchall_3
    move-exception v0

    move/from16 v47, v13

    move-object/from16 v10, p1

    move-object v13, v12

    move-object/from16 v9, v24

    move-object v12, v6

    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    goto/16 :goto_19

    .line 1103
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .restart local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    :catch_3
    move-exception v0

    move/from16 v47, v13

    move-object/from16 v10, p1

    move-object v13, v12

    move-object/from16 v9, v24

    move-object v12, v6

    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    goto/16 :goto_18

    .line 904
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "nReads":I
    .restart local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v7    # "isLN":Z
    .restart local v9    # "fileOffset":J
    .restart local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .restart local v20    # "isIN":Z
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .local v35, "logLsn":J
    .restart local v43    # "nProcessedEntries":I
    :cond_20
    move/from16 v23, v4

    move-wide/from16 v44, v9

    move-object/from16 v46, v12

    move/from16 v47, v13

    move-wide/from16 v12, v35

    const/16 v34, 0x0

    move-object/from16 v35, v5

    .line 976
    .end local v4    # "nReads":I
    .end local v5    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v9    # "fileOffset":J
    .end local v13    # "adjustMem":I
    .local v12, "logLsn":J
    .restart local v23    # "nReads":I
    .local v35, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v44    # "fileOffset":J
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    :cond_21
    :goto_e
    if-eqz v30, :cond_26

    .line 978
    if-nez v22, :cond_25

    .line 979
    if-eqz v7, :cond_22

    .line 980
    iget v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    goto :goto_10

    .line 981
    :cond_22
    if-nez v27, :cond_24

    if-eqz v28, :cond_23

    goto :goto_f

    .line 983
    :cond_23
    if-eqz v20, :cond_25

    .line 984
    iget v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    goto :goto_10

    .line 982
    :cond_24
    :goto_f
    iget v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    .line 988
    :cond_25
    :goto_10
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->countObsolete()V
    :try_end_11
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 989
    move-object/from16 v10, p1

    move-object/from16 v9, v24

    move-object/from16 v4, v33

    goto/16 :goto_15

    .line 1108
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "isLN":Z
    .end local v12    # "logLsn":J
    .end local v20    # "isIN":Z
    .end local v23    # "nReads":I
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v43    # "nProcessedEntries":I
    .end local v44    # "fileOffset":J
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move-object v12, v6

    move-object/from16 v9, v24

    move-object/from16 v13, v46

    goto/16 :goto_19

    .line 1103
    :catch_4
    move-exception v0

    move-object/from16 v10, p1

    move-object v12, v6

    move-object/from16 v9, v24

    move-object/from16 v13, v46

    goto/16 :goto_18

    .line 993
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "isLN":Z
    .restart local v12    # "logLsn":J
    .restart local v20    # "isIN":Z
    .restart local v23    # "nReads":I
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v43    # "nProcessedEntries":I
    .restart local v44    # "fileOffset":J
    :cond_26
    :try_start_12
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->countExpired()V

    .line 996
    if-eqz v22, :cond_27

    .line 997
    move-object/from16 v10, p1

    move-object/from16 v9, v24

    move-object/from16 v4, v33

    goto/16 :goto_15

    .line 1002
    :cond_27
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V
    :try_end_12
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1006
    move-object/from16 v9, v24

    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .local v9, "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    if-eqz v9, :cond_33

    .line 1008
    if-eqz v7, :cond_29

    .line 1009
    :try_start_13
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v0

    .line 1010
    .restart local v0    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v38

    .line 1011
    .local v38, "targetLN":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v40

    .line 1016
    .local v40, "key":[B
    nop

    .line 1017
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/cleaner/LNInfo;

    move-object/from16 v37, v4

    move-object/from16 v39, v2

    move-wide/from16 v41, v31

    invoke-direct/range {v37 .. v42}, Lcom/sleepycat/je/cleaner/LNInfo;-><init>(Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/DatabaseId;[BJ)V

    .line 1016
    invoke-virtual {v9, v3, v4}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->add(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;)V

    .line 1020
    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->isFull()Z

    move-result v3
    :try_end_13
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v3, :cond_28

    .line 1021
    move-object/from16 v10, p1

    move-object/from16 v4, v33

    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .local v4, "location":Lcom/sleepycat/je/tree/TreeLocation;
    :try_start_14
    invoke-direct {v1, v10, v4, v9, v6}, Lcom/sleepycat/je/cleaner/FileProcessor;->processLN(Ljava/lang/Long;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;Lcom/sleepycat/je/cleaner/DbCache;)V

    goto :goto_11

    .line 1020
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :cond_28
    move-object/from16 v10, p1

    move-object/from16 v4, v33

    .line 1024
    .end local v0    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v38    # "targetLN":Lcom/sleepycat/je/tree/LN;
    .end local v40    # "key":[B
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :goto_11
    goto/16 :goto_14

    .line 1108
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v7    # "isLN":Z
    .end local v12    # "logLsn":J
    .end local v20    # "isIN":Z
    .end local v23    # "nReads":I
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v43    # "nProcessedEntries":I
    .end local v44    # "fileOffset":J
    :catchall_5
    move-exception v0

    move-object/from16 v10, p1

    move-object v12, v6

    move-object/from16 v13, v46

    goto/16 :goto_19

    .line 1103
    :catch_5
    move-exception v0

    move-object/from16 v10, p1

    move-object v12, v6

    move-object/from16 v13, v46

    goto/16 :goto_18

    .line 1024
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "isLN":Z
    .restart local v12    # "logLsn":J
    .restart local v20    # "isIN":Z
    .restart local v23    # "nReads":I
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v43    # "nProcessedEntries":I
    .restart local v44    # "fileOffset":J
    :cond_29
    move-object/from16 v10, p1

    move-object/from16 v4, v33

    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    if-eqz v29, :cond_2a

    .line 1025
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v12, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->rewriteMapTreeRoot(J)V

    goto :goto_14

    .line 1031
    :cond_2a
    invoke-virtual {v6, v2}, Lcom/sleepycat/je/cleaner/DbCache;->getDbImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v0

    .line 1033
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .local v0, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    iget-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z

    if-nez v3, :cond_2f

    iget-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    if-eqz v3, :cond_2b

    goto :goto_12

    .line 1044
    :cond_2b
    if-eqz v20, :cond_2c

    .line 1046
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1047
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v8, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    .line 1048
    .local v5, "targetIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v5, v3}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1050
    invoke-direct {v1, v5, v3, v12, v13}, Lcom/sleepycat/je/cleaner/FileProcessor;->processIN(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1052
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "targetIN":Lcom/sleepycat/je/tree/IN;
    goto :goto_14

    :cond_2c
    if-eqz v28, :cond_2d

    .line 1054
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getOldBINDelta()Lcom/sleepycat/je/tree/OldBINDelta;

    move-result-object v3

    .line 1055
    .local v3, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    iget-object v5, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v1, v3, v5, v12, v13}, Lcom/sleepycat/je/cleaner/FileProcessor;->processOldBINDelta(Lcom/sleepycat/je/tree/OldBINDelta;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1057
    .end local v3    # "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    goto :goto_14

    :cond_2d
    if-eqz v27, :cond_2e

    .line 1059
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getBINDelta()Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    .line 1060
    .local v3, "delta":Lcom/sleepycat/je/tree/BIN;
    iget-object v5, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v1, v3, v5, v12, v13}, Lcom/sleepycat/je/cleaner/FileProcessor;->processBINDelta(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1061
    .end local v3    # "delta":Lcom/sleepycat/je/tree/BIN;
    goto :goto_14

    .line 1062
    :cond_2e
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v18    # "nextObsolete":J
    .end local v22    # "countOnly":Z
    .end local v25    # "lookAheadCacheSize":I
    .end local v26    # "readBufferSize":I
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    throw v3

    .line 1038
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .restart local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .restart local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v18    # "nextObsolete":J
    .restart local v22    # "countOnly":Z
    .restart local v25    # "lookAheadCacheSize":I
    .restart local v26    # "readBufferSize":I
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :cond_2f
    :goto_12
    if-nez v27, :cond_31

    if-eqz v28, :cond_30

    goto :goto_13

    .line 1040
    :cond_30
    if-eqz v20, :cond_32

    .line 1041
    iget v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    goto :goto_14

    .line 1039
    :cond_31
    :goto_13
    iget v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    .line 1065
    .end local v0    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "isLN":Z
    .end local v12    # "logLsn":J
    .end local v20    # "isIN":Z
    .end local v23    # "nReads":I
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v44    # "fileOffset":J
    :cond_32
    :goto_14
    nop

    .line 762
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :goto_15
    move-object v2, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    move/from16 v0, v34

    move/from16 v3, v43

    move-object/from16 v12, v46

    move/from16 v13, v47

    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    goto/16 :goto_5

    .line 1006
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "isLN":Z
    .restart local v12    # "logLsn":J
    .restart local v20    # "isIN":Z
    .restart local v23    # "nReads":I
    .restart local v27    # "isBINDelta":Z
    .restart local v28    # "isOldBINDelta":Z
    .restart local v29    # "isDbTree":Z
    .restart local v30    # "isObsolete":Z
    .restart local v31    # "expirationTime":J
    .restart local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v44    # "fileOffset":J
    :cond_33
    move-object/from16 v10, p1

    move-object/from16 v4, v33

    .end local v33    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v18    # "nextObsolete":J
    .end local v22    # "countOnly":Z
    .end local v25    # "lookAheadCacheSize":I
    .end local v26    # "readBufferSize":I
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    throw v0
    :try_end_14
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1108
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v7    # "isLN":Z
    .end local v12    # "logLsn":J
    .end local v20    # "isIN":Z
    .end local v23    # "nReads":I
    .end local v27    # "isBINDelta":Z
    .end local v28    # "isOldBINDelta":Z
    .end local v29    # "isDbTree":Z
    .end local v30    # "isObsolete":Z
    .end local v31    # "expirationTime":J
    .end local v35    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v43    # "nProcessedEntries":I
    .end local v44    # "fileOffset":J
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .restart local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .restart local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v18    # "nextObsolete":J
    .restart local v22    # "countOnly":Z
    .restart local v25    # "lookAheadCacheSize":I
    .restart local v26    # "readBufferSize":I
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :catchall_6
    move-exception v0

    move-object v12, v6

    move-object/from16 v13, v46

    goto/16 :goto_19

    .line 1103
    :catch_6
    move-exception v0

    move-object v12, v6

    move-object/from16 v13, v46

    goto/16 :goto_18

    .line 1108
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catchall_7
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, v24

    move-object v12, v6

    move-object/from16 v13, v46

    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    goto/16 :goto_19

    .line 1103
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catch_7
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, v24

    move-object v12, v6

    move-object/from16 v13, v46

    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    goto/16 :goto_18

    .line 1108
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .local v23, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catchall_8
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    goto/16 :goto_19

    .line 1103
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .restart local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catch_8
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    goto/16 :goto_18

    .line 1068
    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v47    # "adjustMem":I
    .local v2, "location":Lcom/sleepycat/je/tree/TreeLocation;
    .local v3, "nProcessedEntries":I
    .restart local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v13    # "adjustMem":I
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :cond_34
    move-object/from16 v10, p1

    move-object v4, v2

    move-object/from16 v46, v12

    move/from16 v47, v13

    move-object/from16 v6, v23

    move-object/from16 v9, v24

    .end local v2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v12    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v13    # "adjustMem":I
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    if-eqz v22, :cond_35

    .line 1069
    nop

    .line 1108
    rsub-int/lit8 v0, v47, 0x0

    int-to-long v12, v0

    move-object/from16 v7, v46

    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v7, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    invoke-virtual {v7, v12, v13}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1111
    invoke-virtual {v6}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1069
    const/4 v0, 0x1

    return v0

    .line 1068
    .end local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :cond_35
    move-object/from16 v7, v46

    .line 1073
    .end local v46    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_16
    :try_start_15
    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->isEmpty()Z

    move-result v0
    :try_end_15
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-nez v0, :cond_36

    .line 1075
    :try_start_16
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 1077
    invoke-direct {v1, v10, v4, v9, v6}, Lcom/sleepycat/je/cleaner/FileProcessor;->processLN(Ljava/lang/Long;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;Lcom/sleepycat/je/cleaner/DbCache;)V

    .line 1079
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sleepAfterBackgroundIO()V
    :try_end_16
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_16

    .line 1108
    .end local v3    # "nProcessedEntries":I
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :catchall_9
    move-exception v0

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_19

    .line 1103
    :catch_9
    move-exception v0

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_18

    .line 1090
    .restart local v3    # "nProcessedEntries":I
    .restart local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :cond_36
    :try_start_17
    invoke-virtual {v6}, Lcom/sleepycat/je/cleaner/DbCache;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_17
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-eqz v2, :cond_38

    :try_start_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1091
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/cleaner/DbCache$DbInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    iget-boolean v5, v5, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    if-eqz v5, :cond_37

    .line 1092
    iget-object v5, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v5, v10, v12}, Lcom/sleepycat/je/cleaner/Cleaner;->addPendingDB(Ljava/lang/Long;Lcom/sleepycat/je/dbi/DatabaseId;)V
    :try_end_18
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 1094
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/cleaner/DbCache$DbInfo;>;"
    :cond_37
    goto :goto_17

    .line 1097
    :cond_38
    :try_start_19
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getNumRead()I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nEntriesReadThisRun:I

    .line 1098
    invoke-virtual {v6}, Lcom/sleepycat/je/cleaner/DbCache;->getLookups()I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nDbLookupsThisRun:I

    .line 1101
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    :try_end_19
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1108
    .end local v3    # "nProcessedEntries":I
    .end local v4    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    rsub-int/lit8 v0, v47, 0x0

    int-to-long v2, v0

    invoke-virtual {v7, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1111
    invoke-virtual {v6}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1112
    nop

    .line 1115
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 1116
    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getFirstVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v8}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1115
    move-object/from16 v3, p1

    move-object v4, v15

    move-object v12, v6

    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .local v12, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    move-object v6, v0

    move-object v13, v7

    .end local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v13, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/cleaner/FileSelector;->addCleanedFile(Ljava/lang/Long;Ljava/util/Set;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/dbi/MemoryBudget;)V

    .line 1123
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->processPending()V

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1108
    .end local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_a
    move-exception v0

    move-object v12, v6

    move-object v13, v7

    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto :goto_19

    .line 1103
    .end local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_a
    move-exception v0

    move-object v12, v6

    move-object v13, v7

    .end local v6    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v7    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto :goto_18

    .line 1108
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v47    # "adjustMem":I
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v13, "adjustMem":I
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catchall_b
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .local v12, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .local v13, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    goto :goto_19

    .line 1103
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v47    # "adjustMem":I
    .local v12, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v13, "adjustMem":I
    .restart local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    :catch_b
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v47, v13

    move-object/from16 v9, v24

    move-object v13, v12

    move-object/from16 v12, v23

    .line 1104
    .end local v23    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v24    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .local v12, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .local v13, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v47    # "adjustMem":I
    :goto_18
    :try_start_1a
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .end local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v18    # "nextObsolete":J
    .end local v22    # "countOnly":Z
    .end local v25    # "lookAheadCacheSize":I
    .end local v26    # "readBufferSize":I
    .end local v47    # "adjustMem":I
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 1108
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v8    # "reader":Lcom/sleepycat/je/log/CleanerFileReader;
    .restart local v9    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local v11    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v12    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v13    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v14    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .restart local v15    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .restart local v16    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v17    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v18    # "nextObsolete":J
    .restart local v22    # "countOnly":Z
    .restart local v25    # "lookAheadCacheSize":I
    .restart local v26    # "readBufferSize":I
    .restart local v47    # "adjustMem":I
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "fileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local p3    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local p4    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :catchall_c
    move-exception v0

    :goto_19
    rsub-int/lit8 v2, v47, 0x0

    int-to-long v2, v2

    invoke-virtual {v13, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 1111
    invoke-virtual {v12}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    throw v0
.end method

.method private processFoundLN(Lcom/sleepycat/je/cleaner/LNInfo;JJLcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/cleaner/LNInfo;
    .locals 34
    .param p1, "info"    # Lcom/sleepycat/je/cleaner/LNInfo;
    .param p2, "logLsn"    # J
    .param p4, "treeLsn"    # J
    .param p6, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p7, "index"    # I

    .line 1295
    move-object/from16 v1, p0

    move-wide/from16 v14, p2

    move-object/from16 v12, p6

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/cleaner/LNInfo;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v13

    .line 1296
    .local v13, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/cleaner/LNInfo;->getKey()[B

    move-result-object v11

    .line 1298
    .local v11, "key":[B
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    .line 1299
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v18

    .line 1302
    .local v18, "isTemporary":Z
    const/16 v19, 0x0

    .line 1303
    .local v19, "obsolete":Z
    const/16 v20, 0x0

    .line 1304
    .local v20, "migrated":Z
    const/16 v21, 0x0

    .line 1306
    .local v21, "completed":Z
    const/16 v16, 0x0

    .line 1308
    .local v16, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_0
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 1309
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    if-eqz v0, :cond_15

    .line 1332
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/16 v22, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    cmp-long v2, p4, v14

    if-nez v2, :cond_1

    :try_start_1
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileLogVersion:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1343
    const/16 v19, 0x1

    .line 1344
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    .line 1345
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->setPendingDeleted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    const/16 v17, 0x1

    .line 1347
    .end local v21    # "completed":Z
    .local v17, "completed":Z
    nop

    .line 1515
    if-eqz v16, :cond_0

    .line 1516
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v13

    move-wide/from16 v5, p2

    move/from16 v7, v17

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1347
    return-object v22

    .line 1350
    .end local v17    # "completed":Z
    .restart local v21    # "completed":Z
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    .line 1356
    :try_start_2
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    const/16 v17, 0x1

    .line 1358
    .end local v19    # "obsolete":Z
    .local v17, "obsolete":Z
    const/16 v19, 0x1

    .line 1359
    .end local v21    # "completed":Z
    .local v19, "completed":Z
    nop

    .line 1515
    if-eqz v16, :cond_2

    .line 1516
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_2
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v13

    move-wide/from16 v5, p2

    move/from16 v7, v19

    move/from16 v8, v17

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1359
    return-object v22

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v17    # "obsolete":Z
    .local v19, "obsolete":Z
    .restart local v21    # "completed":Z
    :catchall_0
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    goto/16 :goto_2

    .line 1362
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_3
    cmp-long v2, p4, v14

    if-eqz v2, :cond_5

    if-eqz v18, :cond_5

    .line 1372
    :try_start_3
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1373
    const/16 v17, 0x1

    .line 1374
    .end local v19    # "obsolete":Z
    .restart local v17    # "obsolete":Z
    const/16 v19, 0x1

    .line 1375
    .end local v21    # "completed":Z
    .local v19, "completed":Z
    nop

    .line 1515
    if-eqz v16, :cond_4

    .line 1516
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_4
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v13

    move-wide/from16 v5, p2

    move/from16 v7, v19

    move/from16 v8, v17

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1375
    return-object v22

    .line 1378
    .end local v17    # "obsolete":Z
    .local v19, "obsolete":Z
    .restart local v21    # "completed":Z
    :cond_5
    if-nez v18, :cond_9

    .line 1387
    :try_start_4
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v2

    .line 1389
    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v8, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_5
    invoke-virtual {v8, v3}, Lcom/sleepycat/je/txn/BasicLocker;->setPreemptable(Z)V

    .line 1390
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v6, 0x0

    move-object v2, v8

    move-wide/from16 v3, p4

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/txn/BasicLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v2

    move-object/from16 v16, v2

    .line 1393
    .local v16, "lockRet":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v2, v3, :cond_7

    .line 1399
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    .line 1400
    const/16 v21, 0x1

    .line 1402
    new-instance v17, Lcom/sleepycat/je/cleaner/LNInfo;

    const/4 v3, 0x0

    .line 1403
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    .line 1404
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/cleaner/LNInfo;->getExpirationTime()J

    move-result-wide v6

    move-object/from16 v2, v17

    move-object v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/cleaner/LNInfo;-><init>(Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/DatabaseId;[BJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1515
    if-eqz v8, :cond_6

    .line 1516
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_6
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v13

    move-wide/from16 v5, p2

    move/from16 v7, v21

    move-object/from16 v23, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v23, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1402
    return-object v17

    .line 1407
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_7
    move-object/from16 v23, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    cmp-long v2, p4, v14

    if-eqz v2, :cond_a

    .line 1409
    :try_start_6
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1410
    const/16 v17, 0x1

    .line 1411
    .end local v19    # "obsolete":Z
    .restart local v17    # "obsolete":Z
    const/16 v19, 0x1

    .line 1412
    .end local v21    # "completed":Z
    .local v19, "completed":Z
    nop

    .line 1515
    if-eqz v23, :cond_8

    .line 1516
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_8
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v13

    move-wide/from16 v5, p2

    move/from16 v7, v19

    move/from16 v8, v17

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1412
    return-object v22

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v16    # "lockRet":Lcom/sleepycat/je/txn/LockResult;
    .end local v17    # "obsolete":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v19, "obsolete":Z
    .restart local v21    # "completed":Z
    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    move-object/from16 v16, v23

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    goto/16 :goto_2

    .line 1378
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v16, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_9
    move-object/from16 v23, v16

    .line 1420
    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_a
    if-nez v19, :cond_14

    .line 1421
    cmp-long v2, p4, v14

    if-nez v2, :cond_13

    .line 1423
    :try_start_7
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-nez v2, :cond_12

    .line 1465
    :try_start_8
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez v2, :cond_b

    .line 1466
    :try_start_9
    invoke-virtual {v13, v10, v14, v15}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1468
    move/from16 v8, p7

    :try_start_a
    invoke-virtual {v12, v8, v13, v11}, Lcom/sleepycat/je/tree/BIN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    move-object/from16 v16, v23

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move/from16 v8, p7

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    move-object/from16 v16, v23

    goto/16 :goto_2

    .line 1465
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_b
    move/from16 v8, p7

    .line 1471
    :goto_0
    :try_start_b
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v2, :cond_d

    .line 1472
    :try_start_c
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/MapLN;

    .line 1473
    .local v2, "targetLn":Lcom/sleepycat/je/tree/MapLN;
    if-eqz v2, :cond_c

    .line 1474
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V

    .line 1476
    .end local v2    # "targetLn":Lcom/sleepycat/je/tree/MapLN;
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    goto/16 :goto_1

    .line 1473
    .restart local v2    # "targetLn":Lcom/sleepycat/je/tree/MapLN;
    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v3

    .line 1476
    .end local v2    # "targetLn":Lcom/sleepycat/je/tree/MapLN;
    .restart local v10    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :cond_d
    if-eqz v18, :cond_e

    .line 1477
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/LN;->setDirty()V

    .line 1478
    invoke-virtual {v12, v9}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V

    .line 1479
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    goto/16 :goto_1

    .line 1482
    :cond_e
    :try_start_d
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/LN;

    move-object v7, v2

    .line 1483
    .local v7, "targetLn":Lcom/sleepycat/je/tree/LN;
    if-eqz v7, :cond_11

    .line 1485
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    .line 1487
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v17

    .line 1488
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v24

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v25

    const/16 v26, 0x0

    .line 1490
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x1

    .line 1492
    invoke-static {v7}, Lcom/sleepycat/je/cleaner/Cleaner;->getMigrationRepContext(Lcom/sleepycat/je/tree/LN;)Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1485
    move-object v2, v7

    move-object v4, v10

    move-object/from16 v31, v7

    .end local v7    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .local v31, "targetLn":Lcom/sleepycat/je/tree/LN;
    move/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v32, v9

    move/from16 v9, v24

    move-object/from16 v24, v10

    .end local v10    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v24, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move/from16 v10, v25

    move-object/from16 v25, v11

    .end local v11    # "key":[B
    .local v25, "key":[B
    move/from16 v11, v26

    move-object/from16 v33, v13

    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v33, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    move-wide/from16 v12, p2

    move/from16 v14, v27

    move/from16 v15, v28

    move/from16 v16, v29

    move-object/from16 v17, v30

    :try_start_e
    invoke-virtual/range {v2 .. v17}, Lcom/sleepycat/je/tree/LN;->log(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v2

    move-object v9, v2

    .line 1494
    .local v9, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-wide v4, v9, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 1495
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v6

    iget v8, v9, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 1494
    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/tree/BIN;->updateEntry(IJJI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1499
    move-object/from16 v8, v31

    move-object/from16 v10, v33

    .end local v31    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .end local v33    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v8, "targetLn":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    if-ne v10, v8, :cond_f

    .line 1500
    :try_start_f
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1504
    :cond_f
    iget-wide v5, v9, Lcom/sleepycat/je/log/LogItem;->lsn:J

    move-object/from16 v2, v24

    move-wide/from16 v3, p2

    move-object/from16 v7, v23

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAfterLsnChange(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/txn/Locker;)V

    .line 1507
    iget v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1510
    .end local v8    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .end local v9    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :goto_1
    const/4 v11, 0x1

    .line 1511
    .end local v20    # "migrated":Z
    .local v11, "migrated":Z
    const/4 v12, 0x1

    .line 1512
    .end local v21    # "completed":Z
    .local v12, "completed":Z
    nop

    .line 1515
    if-eqz v23, :cond_10

    .line 1516
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_10
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v10

    move-wide/from16 v5, p2

    move v7, v12

    move/from16 v8, v19

    move v9, v11

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1512
    return-object v22

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v11    # "migrated":Z
    .end local v12    # "completed":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v33    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :catchall_4
    move-exception v0

    move-object/from16 v10, v33

    move-wide/from16 v11, p2

    move-object/from16 v16, v23

    .end local v33    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    goto/16 :goto_2

    .line 1483
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v7    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v11, "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :cond_11
    move-object v8, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    .end local v7    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v8    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    :try_start_10
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v2

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v8    # "targetLn":Lcom/sleepycat/je/tree/LN;
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :catchall_5
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide/from16 v11, p2

    move-object/from16 v16, v23

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    goto/16 :goto_2

    .line 1424
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :cond_12
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LN is embedded although its associated logrec (at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-wide/from16 v11, p2

    :try_start_11
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have the embedded flag on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v2

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :catchall_6
    move-exception v0

    move-wide/from16 v11, p2

    move-object/from16 v16, v23

    goto :goto_2

    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :catchall_7
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    move-object/from16 v16, v23

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    goto :goto_2

    .line 1421
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :cond_13
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v2

    .line 1420
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :cond_14
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :catchall_8
    move-exception v0

    move-object/from16 v16, v23

    goto :goto_2

    .line 1309
    .end local v23    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_15
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    :try_start_12
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v18    # "isTemporary":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "migrated":Z
    .end local v21    # "completed":Z
    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .end local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1515
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v18    # "isTemporary":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "migrated":Z
    .restart local v21    # "completed":Z
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    .restart local p1    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :catchall_9
    move-exception v0

    goto :goto_2

    .end local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v25    # "key":[B
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "key":[B
    .restart local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    :catchall_a
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v10, v13

    move-wide v11, v14

    .end local v11    # "key":[B
    .end local v13    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .local v10, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v24    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v25    # "key":[B
    :goto_2
    if-eqz v16, :cond_16

    .line 1516
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1519
    :cond_16
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v3, "CleanLN:"

    move-object v4, v10

    move-wide/from16 v5, p2

    move/from16 v7, v21

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    throw v0
.end method

.method private processIN(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 19
    .param p1, "inClone"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "logLsn"    # J

    .line 1687
    move-object/from16 v7, p0

    const/16 v16, 0x0

    .line 1688
    .local v16, "obsolete":Z
    const/16 v17, 0x0

    .line 1689
    .local v17, "dirtied":Z
    const/16 v18, 0x0

    .line 1692
    .local v18, "completed":Z
    :try_start_0
    iget v0, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    .line 1694
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 1695
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    if-eqz v0, :cond_1

    .line 1697
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/cleaner/FileProcessor;->findINInTree(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    .line 1699
    .local v1, "inInTree":Lcom/sleepycat/je/tree/IN;
    if-nez v1, :cond_0

    .line 1701
    iget v2, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    add-int/2addr v2, v8

    iput v2, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    .line 1702
    const/16 v16, 0x1

    goto :goto_0

    .line 1715
    :cond_0
    iget v2, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    add-int/2addr v2, v8

    iput v2, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    .line 1716
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/IN;->setDirty(Z)V

    .line 1717
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/IN;->setProhibitNextDelta(Z)V

    .line 1718
    iget-object v2, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v1, v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 1719
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    const/16 v17, 0x1

    .line 1723
    :goto_0
    const/4 v0, 0x1

    .line 1725
    .end local v1    # "inInTree":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "completed":Z
    .local v0, "completed":Z
    iget-object v8, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v9, "CleanIN:"

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    move v13, v0

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1727
    nop

    .line 1728
    return-void

    .line 1695
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v18    # "completed":Z
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v16    # "obsolete":Z
    .end local v17    # "dirtied":Z
    .end local v18    # "completed":Z
    .end local p1    # "inClone":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "logLsn":J
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1725
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v16    # "obsolete":Z
    .restart local v17    # "dirtied":Z
    .restart local v18    # "completed":Z
    .restart local p1    # "inClone":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "logLsn":J
    :catchall_0
    move-exception v0

    iget-object v8, v7, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v9, "CleanIN:"

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    move/from16 v13, v18

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    throw v0
.end method

.method private processLN(Ljava/lang/Long;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;Lcom/sleepycat/je/cleaner/DbCache;)V
    .locals 31
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p3, "lookAheadCache"    # Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .param p4, "dbCache"    # Lcom/sleepycat/je/cleaner/DbCache;

    .line 1140
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->nextOffset()Ljava/lang/Long;

    move-result-object v12

    .line 1141
    .local v12, "offset":Ljava/lang/Long;
    invoke-virtual {v11, v12}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->remove(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/LNInfo;

    move-result-object v13

    .line 1143
    .local v13, "info":Lcom/sleepycat/je/cleaner/LNInfo;
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/LNInfo;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v14

    .line 1144
    .local v14, "lnFromLog":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/LNInfo;->getKey()[B

    move-result-object v15

    .line 1145
    .local v15, "keyFromLog":[B
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v16

    .line 1152
    .local v16, "logLsn":J
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/LNInfo;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v8

    .line 1153
    .local v8, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move-object/from16 v7, p4

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/cleaner/DbCache;->getDbImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v6

    .line 1155
    .local v6, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    iget-boolean v0, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z

    if-nez v0, :cond_1a

    iget-boolean v0, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    if-eqz v0, :cond_0

    move-object/from16 v23, v6

    move-object/from16 v29, v8

    goto/16 :goto_c

    .line 1160
    :cond_0
    iget-object v5, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1162
    .local v5, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget v0, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    .line 1165
    const/16 v18, 0x1

    .line 1166
    .local v18, "processedHere":Z
    const/16 v19, 0x0

    .line 1167
    .local v19, "obsolete":Z
    const/16 v20, 0x0

    .line 1169
    .local v20, "completed":Z
    const/16 v21, 0x0

    .line 1170
    .local v21, "bin":Lcom/sleepycat/je/tree/BIN;
    const/16 v22, 0x0

    .line 1173
    .local v22, "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :try_start_0
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 1174
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    if-eqz v0, :cond_16

    .line 1177
    const/4 v4, 0x0

    const/16 v23, 0x0

    sget-object v24, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v1, v0

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v25, v5

    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v25, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move/from16 v5, v23

    move-object/from16 v23, v6

    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .local v23, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    move-object/from16 v6, v24

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v1

    move/from16 v24, v1

    .line 1181
    .local v24, "parentFound":Z
    iget-object v1, v10, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v6, v1

    .line 1182
    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_2
    iget v1, v10, Lcom/sleepycat/je/tree/TreeLocation;->index:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move v4, v1

    .line 1184
    .local v4, "index":I
    if-nez v24, :cond_5

    .line 1186
    :try_start_3
    iget v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1187
    const/16 v19, 0x1

    .line 1188
    const/16 v20, 0x1

    .line 1250
    if-eqz v6, :cond_1

    .line 1251
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1255
    :cond_1
    if-eqz v22, :cond_3

    .line 1256
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1257
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    iget-object v3, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 1258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object/from16 v26, v0

    move-object/from16 v21, v1

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v26, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/cleaner/LNInfo;

    .line 1257
    invoke-virtual {v3, v0, v1, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V

    .line 1259
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    move-object/from16 v1, v21

    move-object/from16 v0, v26

    goto :goto_0

    .line 1256
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_2
    move-object/from16 v26, v0

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto :goto_1

    .line 1255
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_3
    move-object/from16 v26, v0

    .line 1262
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    :goto_1
    if-eqz v18, :cond_4

    .line 1263
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const/4 v0, 0x0

    const-string v2, "CleanLN:"

    move-object v3, v14

    move/from16 v27, v4

    .end local v4    # "index":I
    .local v27, "index":I
    move-wide/from16 v4, v16

    move-object/from16 v28, v6

    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v28, "bin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v6, v20

    move/from16 v7, v19

    move-object/from16 v29, v8

    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v29, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    goto :goto_2

    .line 1262
    .end local v27    # "index":I
    .end local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "index":I
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_4
    move/from16 v27, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    .line 1189
    .end local v4    # "index":I
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v27    # "index":I
    .restart local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_2
    return-void

    .line 1250
    .end local v24    # "parentFound":Z
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v27    # "index":I
    .end local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_0
    move-exception v0

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v21, v28

    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto/16 :goto_a

    .line 1196
    .end local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "index":I
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v24    # "parentFound":Z
    :cond_5
    move-object/from16 v26, v0

    move/from16 v27, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v4    # "index":I
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v27    # "index":I
    .restart local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move/from16 v0, v27

    move-object/from16 v8, v28

    .end local v27    # "index":I
    .end local v28    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v0, "index":I
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_4
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1197
    iget v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1198
    const/16 v19, 0x1

    .line 1199
    const/16 v20, 0x1

    .line 1250
    if-eqz v8, :cond_6

    .line 1251
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1255
    :cond_6
    if-eqz v22, :cond_7

    .line 1256
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1257
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    iget-object v3, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 1258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/cleaner/LNInfo;

    .line 1257
    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V

    .line 1259
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    goto :goto_3

    .line 1262
    :cond_7
    if-eqz v18, :cond_8

    .line 1263
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const/16 v21, 0x0

    const-string v2, "CleanLN:"

    move-object v3, v14

    move-wide/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v19

    move-object v10, v8

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v10, "bin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    goto :goto_4

    .line 1262
    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_8
    move-object v10, v8

    .line 1200
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_4
    return-void

    .line 1204
    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_9
    move-object v10, v8

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    const/16 v18, 0x0

    .line 1206
    nop

    .line 1207
    :try_start_5
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide/from16 v3, v16

    move-object v7, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/FileProcessor;->processFoundLN(Lcom/sleepycat/je/cleaner/LNInfo;JJLcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/cleaner/LNInfo;

    move-result-object v1

    .line 1209
    .local v1, "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    if-eqz v1, :cond_a

    .line 1210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1211
    .end local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .local v2, "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :try_start_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v22, v2

    goto :goto_5

    .line 1250
    .end local v0    # "index":I
    .end local v1    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v24    # "parentFound":Z
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v21, v10

    goto/16 :goto_a

    .line 1214
    .end local v2    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v0    # "index":I
    .restart local v1    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v24    # "parentFound":Z
    .restart local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_a
    :goto_5
    const/16 v20, 0x1

    .line 1220
    const/4 v2, 0x0

    move-object/from16 v21, v1

    move v8, v2

    .end local v1    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .local v8, "i":I
    .local v21, "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    :goto_6
    :try_start_7
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v8, v1, :cond_12

    .line 1222
    invoke-virtual {v10, v8}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v3

    .line 1224
    .local v3, "binLsn":J
    if-eq v8, v0, :cond_11

    .line 1225
    invoke-virtual {v10, v8}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1226
    invoke-virtual {v10, v8}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1227
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_e

    .line 1229
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v7, v1

    .line 1230
    .local v7, "myOffset":Ljava/lang/Long;
    invoke-virtual {v11, v7}, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->remove(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/LNInfo;

    move-result-object v1

    move-object/from16 v27, v1

    .line 1233
    .local v27, "myInfo":Lcom/sleepycat/je/cleaner/LNInfo;
    if-eqz v27, :cond_d

    .line 1234
    iget v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    .line 1235
    iget v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    .line 1237
    nop

    .line 1238
    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-wide v5, v3

    move-object/from16 v28, v7

    .end local v7    # "myOffset":Ljava/lang/Long;
    .local v28, "myOffset":Ljava/lang/Long;
    move-object v7, v10

    move/from16 v30, v8

    .end local v8    # "i":I
    .local v30, "i":I
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/FileProcessor;->processFoundLN(Lcom/sleepycat/je/cleaner/LNInfo;JJLcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/cleaner/LNInfo;

    move-result-object v1

    .line 1240
    .end local v21    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local v1    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    if-eqz v1, :cond_c

    .line 1241
    if-nez v22, :cond_b

    .line 1242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v2    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    goto :goto_7

    .line 1241
    .end local v2    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :cond_b
    move-object/from16 v2, v22

    .line 1244
    .end local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v2    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :goto_7
    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    goto :goto_8

    .line 1240
    .end local v2    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :cond_c
    move-object/from16 v21, v1

    goto :goto_8

    .line 1233
    .end local v1    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v28    # "myOffset":Ljava/lang/Long;
    .end local v30    # "i":I
    .restart local v7    # "myOffset":Ljava/lang/Long;
    .restart local v8    # "i":I
    .restart local v21    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    :cond_d
    move-object/from16 v28, v7

    move/from16 v30, v8

    .end local v7    # "myOffset":Ljava/lang/Long;
    .end local v8    # "i":I
    .restart local v28    # "myOffset":Ljava/lang/Long;
    .restart local v30    # "i":I
    goto :goto_8

    .line 1227
    .end local v27    # "myInfo":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v28    # "myOffset":Ljava/lang/Long;
    .end local v30    # "i":I
    .restart local v8    # "i":I
    :cond_e
    move/from16 v30, v8

    .end local v8    # "i":I
    .restart local v30    # "i":I
    goto :goto_8

    .line 1226
    .end local v30    # "i":I
    .restart local v8    # "i":I
    :cond_f
    move/from16 v30, v8

    .end local v8    # "i":I
    .restart local v30    # "i":I
    goto :goto_8

    .line 1225
    .end local v30    # "i":I
    .restart local v8    # "i":I
    :cond_10
    move/from16 v30, v8

    .end local v8    # "i":I
    .restart local v30    # "i":I
    goto :goto_8

    .line 1224
    .end local v30    # "i":I
    .restart local v8    # "i":I
    :cond_11
    move/from16 v30, v8

    .line 1220
    .end local v3    # "binLsn":J
    .end local v8    # "i":I
    .restart local v30    # "i":I
    :goto_8
    add-int/lit8 v8, v30, 0x1

    .end local v30    # "i":I
    .restart local v8    # "i":I
    goto :goto_6

    :cond_12
    move/from16 v30, v8

    .line 1250
    .end local v0    # "index":I
    .end local v8    # "i":I
    .end local v21    # "pendingLN":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v24    # "parentFound":Z
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    if-eqz v10, :cond_13

    .line 1251
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1255
    :cond_13
    if-eqz v22, :cond_14

    .line 1256
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    iget-object v2, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 1258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/cleaner/LNInfo;

    .line 1257
    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V

    .line 1259
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    goto :goto_9

    .line 1262
    :cond_14
    if-eqz v18, :cond_15

    .line 1263
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const/4 v8, 0x0

    const-string v2, "CleanLN:"

    move-object v3, v14

    move-wide/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1267
    :cond_15
    return-void

    .line 1250
    :catchall_2
    move-exception v0

    move-object/from16 v21, v10

    goto :goto_a

    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_3
    move-exception v0

    move-object v10, v8

    move-object/from16 v21, v10

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_a

    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v8, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_4
    move-exception v0

    move-object v10, v6

    move-object/from16 v29, v8

    move-object/from16 v21, v10

    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_a

    .end local v10    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v21, "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_5
    move-exception v0

    move-object/from16 v29, v8

    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_a

    .line 1174
    .end local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v6, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_16
    move-object/from16 v26, v0

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move-object/from16 v29, v8

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :try_start_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v12    # "offset":Ljava/lang/Long;
    .end local v13    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v14    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .end local v15    # "keyFromLog":[B
    .end local v16    # "logLsn":J
    .end local v18    # "processedHere":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "completed":Z
    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .end local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .end local p4    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1250
    .end local v26    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v12    # "offset":Ljava/lang/Long;
    .restart local v13    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local v14    # "lnFromLog":Lcom/sleepycat/je/tree/LN;
    .restart local v15    # "keyFromLog":[B
    .restart local v16    # "logLsn":J
    .restart local v18    # "processedHere":Z
    .restart local v19    # "obsolete":Z
    .restart local v20    # "completed":Z
    .restart local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "lookAheadCache":Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
    .restart local p4    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    :catchall_6
    move-exception v0

    goto :goto_a

    .end local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_7
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move-object/from16 v29, v8

    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_a
    if-eqz v21, :cond_17

    .line 1251
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1255
    :cond_17
    if-eqz v22, :cond_18

    .line 1256
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1257
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    iget-object v3, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 1258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/cleaner/LNInfo;

    .line 1257
    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V

    .line 1259
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    goto :goto_b

    .line 1262
    :cond_18
    if-eqz v18, :cond_19

    .line 1263
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const/4 v8, 0x0

    const-string v2, "CleanLN:"

    move-object v3, v14

    move-wide/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    :cond_19
    throw v0

    .line 1155
    .end local v18    # "processedHere":Z
    .end local v19    # "obsolete":Z
    .end local v20    # "completed":Z
    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v22    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .end local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v25    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_1a
    move-object/from16 v23, v6

    move-object/from16 v29, v8

    .line 1156
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v8    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v23    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v29    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_c
    iget v0, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    .line 1157
    return-void
.end method

.method private processOldBINDelta(Lcom/sleepycat/je/tree/OldBINDelta;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 7
    .param p1, "deltaClone"    # Lcom/sleepycat/je/tree/OldBINDelta;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "logLsn"    # J

    .line 1537
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    .line 1542
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/OldBINDelta;->getSearchKey()[B

    move-result-object v0

    .line 1544
    .local v0, "searchKey":[B
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    .line 1547
    .local v2, "treeBin":Lcom/sleepycat/je/tree/BIN;
    if-nez v2, :cond_0

    .line 1549
    iget v3, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    .line 1550
    return-void

    .line 1555
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedLsn()J

    move-result-wide v3

    .line 1557
    .local v3, "treeLsn":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 1559
    iget v5, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1560
    return-void

    .line 1563
    :cond_1
    :try_start_1
    invoke-static {v3, v4, p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v5

    .line 1565
    .local v5, "cmp":I
    if-lez v5, :cond_2

    .line 1567
    iget v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1568
    return-void

    .line 1578
    :cond_2
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V

    .line 1579
    iget v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1582
    .end local v3    # "treeLsn":J
    .end local v5    # "cmp":I
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1583
    nop

    .line 1584
    return-void

    .line 1582
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v1
.end method

.method private resetPerRunCounters()V
    .locals 1

    .line 1947
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    .line 1948
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    .line 1949
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    .line 1950
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    .line 1951
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    .line 1952
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    .line 1953
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    .line 1954
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    .line 1955
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    .line 1956
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    .line 1957
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    .line 1958
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    .line 1959
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    .line 1960
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I

    .line 1961
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I

    .line 1962
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    .line 1963
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    .line 1964
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nDbLookupsThisRun:I

    .line 1965
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nEntriesReadThisRun:I

    .line 1966
    return-void
.end method


# virtual methods
.method activateOnWakeup()V
    .locals 1

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->activate:Z

    .line 253
    return-void
.end method

.method public countExpiration(J)Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .locals 6
    .param p1, "fileNum"    # J

    .line 630
    new-instance v0, Lcom/sleepycat/je/cleaner/ExpirationTracker;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;-><init>(J)V

    .line 633
    .local v0, "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    nop

    .line 634
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v2}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    new-instance v3, Lcom/sleepycat/je/cleaner/INSummary;

    invoke-direct {v3}, Lcom/sleepycat/je/cleaner/INSummary;-><init>()V

    .line 633
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sleepycat/je/cleaner/FileProcessor;->processFile(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)Z

    move-result v1

    .line 636
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 645
    .end local v1    # "result":Z
    nop

    .line 647
    return-object v0

    .line 636
    .restart local v1    # "result":Z
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .end local p1    # "fileNum":J
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v1    # "result":Z
    .restart local v0    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local p1    # "fileNum":J
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Cleaner"

    const-string v4, "countExpiration"

    const-string v5, ""

    invoke-static {v2, v3, v4, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, v3, v4, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v2
.end method

.method declared-synchronized doClean(ZZZ)I
    .locals 32
    .param p1, "invokedFromDaemon"    # Z
    .param p2, "cleanMultipleFiles"    # Z
    .param p3, "forceCleaning"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosed()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 334
    monitor-exit p0

    return v4

    .line 342
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    .line 343
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummaryMap(Z)Ljava/util/SortedMap;

    move-result-object v3

    .line 346
    .local v3, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v6

    .line 347
    .local v6, "nOriginalLogFiles":I
    const/4 v7, 0x0

    .line 352
    .local v7, "nFilesCleaned":I
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/FileProcessor;->isPaused()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v23, v6

    goto/16 :goto_10

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProcessor;
    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 353
    move/from16 v23, v6

    goto/16 :goto_10

    .line 365
    :cond_3
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_14

    .line 370
    :try_start_2
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V
    :try_end_2
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_2 .. :try_end_2} :catch_44
    .catchall {:try_start_2 .. :try_end_2} :catchall_14

    .line 376
    nop

    .line 382
    :try_start_3
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/Cleaner;->processPending()V

    .line 384
    if-lez v7, :cond_6

    .line 387
    if-nez p2, :cond_4

    .line 388
    move/from16 v23, v6

    goto/16 :goto_10

    .line 392
    :cond_4
    if-lt v7, v6, :cond_5

    .line 393
    move/from16 v23, v6

    goto/16 :goto_10

    .line 397
    :cond_5
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    .line 398
    invoke-virtual {v8, v5}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummaryMap(Z)Ljava/util/SortedMap;

    move-result-object v8

    move-object v3, v8

    .line 405
    :cond_6
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    iget-object v9, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 406
    move/from16 v10, p3

    invoke-virtual {v8, v9, v3, v10}, Lcom/sleepycat/je/cleaner/FileSelector;->selectFileForCleaning(Lcom/sleepycat/je/cleaner/UtilizationCalculator;Ljava/util/SortedMap;Z)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v8

    .line 410
    .local v8, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez v8, :cond_7

    .line 415
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/Cleaner;->processPending()V

    .line 416
    move/from16 v23, v6

    goto/16 :goto_10

    .line 419
    :cond_7
    invoke-virtual {v8}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 420
    .local v9, "fileNum":Ljava/lang/Long;
    invoke-virtual {v8}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 421
    .local v11, "requiredUtil":I
    if-ltz v11, :cond_8

    move v12, v5

    goto :goto_2

    :cond_8
    move v12, v4

    .line 423
    .local v12, "twoPass":Z
    :goto_2
    const/4 v13, 0x0

    .line 424
    .local v13, "finished":Z
    const/4 v14, 0x0

    .line 425
    .local v14, "fileDeleted":Z
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 427
    .local v17, "fileNumValue":J
    iget-object v15, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v15, v15, Lcom/sleepycat/je/cleaner/Cleaner;->totalRuns:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 428
    .local v19, "runId":J
    iget-object v15, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_14

    .line 429
    .local v15, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    add-int/lit8 v7, v7, 0x1

    .line 432
    :try_start_4
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v4, v4, Lcom/sleepycat/je/cleaner/Cleaner;->fileChosenHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 435
    const-string v4, ""
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_43
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_42
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_4 .. :try_end_4} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_40
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    .line 436
    .local v4, "passOneMsg":Ljava/lang/String;
    if-eqz v12, :cond_b

    .line 438
    :try_start_5
    new-instance v21, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct/range {v21 .. v21}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    move-object/from16 v22, v21

    .line 440
    .local v22, "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    new-instance v5, Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move/from16 v23, v6

    move/from16 v24, v7

    move-wide/from16 v6, v17

    .end local v7    # "nFilesCleaned":I
    .end local v17    # "fileNumValue":J
    .local v6, "fileNumValue":J
    .local v23, "nOriginalLogFiles":I
    .local v24, "nFilesCleaned":I
    :try_start_6
    invoke-direct {v5, v6, v7}, Lcom/sleepycat/je/cleaner/ExpirationTracker;-><init>(J)V

    .line 443
    .local v5, "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    move-object/from16 v17, v4

    .end local v4    # "passOneMsg":Ljava/lang/String;
    .local v17, "passOneMsg":Ljava/lang/String;
    new-instance v4, Lcom/sleepycat/je/cleaner/INSummary;

    invoke-direct {v4}, Lcom/sleepycat/je/cleaner/INSummary;-><init>()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v18, v8

    move-object/from16 v8, v22

    .end local v22    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v8, "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v18, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :try_start_7
    invoke-direct {v1, v9, v8, v4, v5}, Lcom/sleepycat/je/cleaner/FileProcessor;->processFile(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 446
    nop

    .line 447
    move-object v4, v3

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v4, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    :try_start_8
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getExpiredBytes(J)I

    move-result v2

    .line 449
    .local v2, "expiredSize":I
    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 451
    .local v3, "obsoleteSize":I
    add-int v10, v3, v2

    move/from16 v22, v12

    move/from16 v25, v13

    .end local v12    # "twoPass":Z
    .end local v13    # "finished":Z
    .local v22, "twoPass":Z
    .local v25, "finished":Z
    int-to-long v12, v10

    :try_start_9
    iget v10, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v27, v8

    move-object/from16 v26, v9

    .end local v8    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v9    # "fileNum":Ljava/lang/Long;
    .local v26, "fileNum":Ljava/lang/Long;
    .local v27, "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    int-to-long v8, v10

    :try_start_a
    invoke-static {v12, v13, v8, v9}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v8

    .line 454
    .local v8, "recalcUtil":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " pass1RecalcObsolete="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pass1RecalcExpired="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pass1RecalcUtil="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pass1RequiredUtil="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    .end local v17    # "passOneMsg":Ljava/lang/String;
    .local v9, "passOneMsg":Ljava/lang/String;
    if-le v8, v11, :cond_a

    .line 462
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v10, v10, Lcom/sleepycat/je/cleaner/Cleaner;->nRevisalRuns:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 464
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v10}, Lcom/sleepycat/je/cleaner/Cleaner;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v10

    invoke-virtual {v10, v5, v2}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->putFile(Lcom/sleepycat/je/cleaner/ExpirationTracker;I)V

    .line 467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CleanerRevisalRun "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-wide/from16 v12, v19

    .end local v19    # "runId":J
    .local v12, "runId":J
    :try_start_b
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v19, v2

    .end local v2    # "expiredSize":I
    .local v19, "expiredSize":I
    const-string v2, " on file 0x"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " ends:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "logMsg":Ljava/lang/String;
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    move/from16 v20, v3

    .end local v3    # "obsoleteSize":I
    .local v20, "obsoleteSize":I
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object/from16 v28, v5

    .end local v5    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .local v28, "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v10, v3, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 473
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v5, v26

    .end local v26    # "fileNum":Ljava/lang/Long;
    .local v5, "fileNum":Ljava/lang/Long;
    :try_start_c
    invoke-virtual {v3, v5, v15}, Lcom/sleepycat/je/cleaner/FileSelector;->removeFile(Ljava/lang/Long;Lcom/sleepycat/je/dbi/MemoryBudget;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 475
    const/4 v3, 0x1

    .line 610
    .end local v25    # "finished":Z
    .local v3, "finished":Z
    if-nez v3, :cond_9

    if-nez v14, :cond_9

    .line 611
    :try_start_d
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v10, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_14

    move-object/from16 v20, v4

    goto/16 :goto_e

    .line 610
    :cond_9
    move-object/from16 v20, v4

    goto/16 :goto_e

    .end local v2    # "logMsg":Ljava/lang/String;
    .end local v3    # "finished":Z
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v8    # "recalcUtil":I
    .end local v9    # "passOneMsg":Ljava/lang/String;
    .end local v19    # "expiredSize":I
    .end local v20    # "obsoleteSize":I
    .end local v27    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v28    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local v25    # "finished":Z
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object v4, v15

    move/from16 v13, v25

    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    goto/16 :goto_f

    .line 602
    .end local v5    # "fileNum":Ljava/lang/Long;
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_0
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    goto/16 :goto_9

    .line 591
    .end local v5    # "fileNum":Ljava/lang/Long;
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_1
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    goto/16 :goto_a

    .line 583
    .end local v5    # "fileNum":Ljava/lang/Long;
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_2
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    goto/16 :goto_b

    .line 560
    .end local v5    # "fileNum":Ljava/lang/Long;
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_3
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    goto/16 :goto_c

    .line 460
    .end local v12    # "runId":J
    .local v2, "expiredSize":I
    .local v3, "obsoleteSize":I
    .local v5, "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local v8    # "recalcUtil":I
    .restart local v9    # "passOneMsg":Ljava/lang/String;
    .local v19, "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    .restart local v27    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_a
    move-object/from16 v28, v5

    move-wide/from16 v12, v19

    move-object/from16 v5, v26

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "expiredSize":I
    .end local v3    # "obsoleteSize":I
    .end local v26    # "fileNum":Ljava/lang/Long;
    .local v5, "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    .local v19, "expiredSize":I
    .restart local v20    # "obsoleteSize":I
    .restart local v28    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    goto/16 :goto_3

    .line 610
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v8    # "recalcUtil":I
    .end local v9    # "passOneMsg":Ljava/lang/String;
    .end local v12    # "runId":J
    .end local v20    # "obsoleteSize":I
    .end local v27    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v28    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .local v19, "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catchall_1
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v26, v6

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    move-object v4, v15

    .end local v19    # "runId":J
    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_f

    .line 602
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v19    # "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_4
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v19    # "runId":J
    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_9

    .line 591
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v19    # "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_5
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v19    # "runId":J
    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_a

    .line 583
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v19    # "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_6
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v19    # "runId":J
    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_b

    .line 560
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v19    # "runId":J
    .restart local v26    # "fileNum":Ljava/lang/Long;
    :catch_7
    move-exception v0

    move-object/from16 v5, v26

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v19    # "runId":J
    .end local v26    # "fileNum":Ljava/lang/Long;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_c

    .line 610
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .local v9, "fileNum":Ljava/lang/Long;
    .restart local v19    # "runId":J
    :catchall_2
    move-exception v0

    move-object v5, v9

    move-object v2, v0

    move-wide/from16 v26, v6

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    move-object v4, v15

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_f

    .line 602
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v19    # "runId":J
    :catch_8
    move-exception v0

    move-object v5, v9

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_9

    .line 591
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v19    # "runId":J
    :catch_9
    move-exception v0

    move-object v5, v9

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_a

    .line 583
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v19    # "runId":J
    :catch_a
    move-exception v0

    move-object v5, v9

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_b

    .line 560
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v12    # "runId":J
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v19    # "runId":J
    :catch_b
    move-exception v0

    move-object v5, v9

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move/from16 v13, v25

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v12    # "runId":J
    goto/16 :goto_c

    .line 610
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catchall_3
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-wide/from16 v29, v19

    move-object/from16 v20, v4

    move/from16 v19, v11

    move-object v4, v15

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_f

    .line 602
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_c
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_9

    .line 591
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_d
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_a

    .line 583
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_e
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_b

    .line 560
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_f
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v4

    move/from16 v19, v11

    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_c

    .line 610
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .local v3, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catchall_4
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object v4, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_f

    .line 602
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_10
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_9

    .line 591
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_11
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_a

    .line 583
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_12
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_b

    .line 560
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_13
    move-exception v0

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_c

    .line 610
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v8, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catchall_5
    move-exception v0

    move-object/from16 v18, v8

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object v4, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_f

    .line 602
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_14
    move-exception v0

    move-object/from16 v18, v8

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_9

    .line 591
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_15
    move-exception v0

    move-object/from16 v18, v8

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_a

    .line 583
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_16
    move-exception v0

    move-object/from16 v18, v8

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_b

    .line 560
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v19    # "runId":J
    :catch_17
    move-exception v0

    move-object/from16 v18, v8

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v25    # "finished":Z
    goto/16 :goto_c

    .line 610
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .local v17, "fileNumValue":J
    .restart local v19    # "runId":J
    :catchall_6
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-object/from16 v18, v8

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object v4, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v17    # "fileNumValue":J
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    goto/16 :goto_f

    .line 602
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v17    # "fileNumValue":J
    .restart local v19    # "runId":J
    :catch_18
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-object/from16 v18, v8

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v17    # "fileNumValue":J
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    goto/16 :goto_9

    .line 591
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v17    # "fileNumValue":J
    .restart local v19    # "runId":J
    :catch_19
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-object/from16 v18, v8

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v17    # "fileNumValue":J
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    goto/16 :goto_a

    .line 583
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v17    # "fileNumValue":J
    .restart local v19    # "runId":J
    :catch_1a
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-object/from16 v18, v8

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v17    # "fileNumValue":J
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    goto/16 :goto_b

    .line 560
    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v17    # "fileNumValue":J
    .restart local v19    # "runId":J
    :catch_1b
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-object/from16 v18, v8

    move-object v2, v0

    move-wide/from16 v26, v6

    move-object/from16 v31, v15

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move/from16 v19, v11

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v17    # "fileNumValue":J
    .end local v19    # "runId":J
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    goto/16 :goto_c

    .line 436
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v4, "passOneMsg":Ljava/lang/String;
    .local v6, "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v17    # "fileNumValue":J
    .restart local v19    # "runId":J
    :cond_b
    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v6, v17

    move-wide/from16 v12, v19

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object v4, v3

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v19    # "runId":J
    .local v4, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .local v6, "fileNumValue":J
    .local v12, "runId":J
    .local v17, "passOneMsg":Ljava/lang/String;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    move-object/from16 v9, v17

    .line 480
    .end local v17    # "passOneMsg":Ljava/lang/String;
    .local v9, "passOneMsg":Ljava/lang/String;
    :goto_3
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/FileProcessor;->resetPerRunCounters()V

    .line 481
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->nCleanerRuns:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_e .. :try_end_e} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3c
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 483
    if-eqz v22, :cond_c

    .line 484
    :try_start_f
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-object v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->nTwoPassRuns:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_4

    .line 610
    .end local v9    # "passOneMsg":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object v4, v15

    move/from16 v13, v25

    goto/16 :goto_f

    .line 602
    :catch_1c
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    goto/16 :goto_9

    .line 591
    :catch_1d
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    goto/16 :goto_a

    .line 583
    :catch_1e
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    goto/16 :goto_b

    .line 560
    :catch_1f
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move/from16 v13, v25

    goto/16 :goto_c

    .line 488
    .restart local v9    # "passOneMsg":Ljava/lang/String;
    :cond_c
    :goto_4
    nop

    .line 489
    :try_start_10
    invoke-interface {v4, v5}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_10 .. :try_end_10} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3c
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    if-eqz v2, :cond_d

    .line 490
    :try_start_11
    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/FileSummary;->clone()Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_11 .. :try_end_11} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1c
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    .line 492
    .local v2, "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    :goto_5
    :try_start_12
    new-instance v8, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v8}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    .line 493
    .local v8, "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    new-instance v10, Lcom/sleepycat/je/cleaner/INSummary;

    invoke-direct {v10}, Lcom/sleepycat/je/cleaner/INSummary;-><init>()V

    .line 495
    .local v10, "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_12 .. :try_end_12} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3c
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    if-eqz v22, :cond_e

    :try_start_13
    const-string v19, "CleanerTwoPassRun "
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_6

    :cond_e
    :try_start_14
    const-string v19, "CleanerRun "
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_3f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_14 .. :try_end_14} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3c
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    :goto_6
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v20, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    :try_start_15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on file 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "msgHeader":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3a
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_15 .. :try_end_15} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_38
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    move-wide/from16 v26, v6

    .end local v6    # "fileNumValue":J
    .local v26, "fileNumValue":J
    :try_start_16
    const-string v6, " begins:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "beginMsg":Ljava/lang/String;
    iget-object v6, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_37
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_36
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_16 .. :try_end_16} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_34
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move/from16 v19, v11

    .end local v11    # "requiredUtil":I
    .local v19, "requiredUtil":I
    :try_start_17
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v6, v7, v11, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 505
    const/4 v6, 0x0

    invoke-direct {v1, v5, v8, v10, v6}, Lcom/sleepycat/je/cleaner/FileProcessor;->processFile(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)Z

    move-result v6
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_33
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_32
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_17 .. :try_end_17} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_30
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    if-nez v6, :cond_10

    .line 507
    nop

    .line 610
    if-nez v25, :cond_f

    if-nez v14, :cond_f

    .line 611
    :try_start_18
    iget-object v6, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    .line 507
    :cond_f
    monitor-exit p0

    return v24

    .line 511
    :cond_10
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/FileProcessor;->accumulatePerRunCounters()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_32
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_19 .. :try_end_19} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_30
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 512
    const/4 v6, 0x1

    .line 515
    .end local v25    # "finished":Z
    .local v6, "finished":Z
    :try_start_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ends: invokedFromDaemon="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v11, p1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v17, v3

    .end local v3    # "msgHeader":Ljava/lang/String;
    .local v17, "msgHeader":Ljava/lang/String;
    const-string v3, " finished="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " fileDeleted="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nEntriesRead="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nEntriesReadThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nDbLookups="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nDbLookupsThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nINsObsolete="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsObsoleteThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nINsCleaned="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsCleanedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nINsDead="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsDeadThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nINsMigrated="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nINsMigratedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nBINDeltasObsolete="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasObsoleteThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nBINDeltasCleaned="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasCleanedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nBINDeltasDead="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasDeadThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nBINDeltasMigrated="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nBINDeltasMigratedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsObsolete="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsObsoleteThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsCleaned="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsCleanedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsDead="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsDeadThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsExpired="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExpiredThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsExtinct="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsExtinctThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsMigrated="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMigratedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsMarked="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsMarkedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNQueueHits="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNQueueHitsThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " nLNsLocked="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->nLNsLockedThisRun:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "endMsg":Ljava/lang/String;
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v7, v3}, Lcom/sleepycat/je/log/Trace;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 542
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    move-object/from16 v28, v4

    .end local v4    # "beginMsg":Ljava/lang/String;
    .local v28, "beginMsg":Ljava/lang/String;
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v7, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_1a .. :try_end_1a} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_2c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v4, :cond_12

    .line 544
    if-eqz v2, :cond_11

    .line 545
    :try_start_1b
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization()I

    move-result v4
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_23
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_22
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_20
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_7

    .line 610
    .end local v2    # "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "endMsg":Ljava/lang/String;
    .end local v8    # "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v9    # "passOneMsg":Ljava/lang/String;
    .end local v10    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local v17    # "msgHeader":Ljava/lang/String;
    .end local v28    # "beginMsg":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v12

    move-object v4, v15

    move v13, v6

    goto/16 :goto_f

    .line 602
    :catch_20
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move v13, v6

    goto/16 :goto_9

    .line 591
    :catch_21
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move v13, v6

    goto/16 :goto_a

    .line 583
    :catch_22
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move v13, v6

    goto/16 :goto_b

    .line 560
    :catch_23
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move v13, v6

    goto/16 :goto_c

    .line 545
    .restart local v2    # "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v3    # "endMsg":Ljava/lang/String;
    .restart local v8    # "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v9    # "passOneMsg":Ljava/lang/String;
    .restart local v10    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local v17    # "msgHeader":Ljava/lang/String;
    .restart local v28    # "beginMsg":Ljava/lang/String;
    :cond_11
    const/4 v4, -0x1

    .line 547
    .local v4, "estUtil":I
    :goto_7
    nop

    .line 548
    :try_start_1c
    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization()I

    move-result v7
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2e
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_1c .. :try_end_1c} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_2c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 550
    .local v7, "recalcUtil":I
    move-wide/from16 v29, v12

    .end local v12    # "runId":J
    .local v29, "runId":J
    :try_start_1d
    iget-object v12, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    iget-object v13, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2a
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_1d .. :try_end_1d} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_28
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    move-object/from16 v31, v15

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v31, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :try_start_1e
    sget-object v15, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v25, v3

    .end local v3    # "endMsg":Ljava/lang/String;
    .local v25, "endMsg":Ljava/lang/String;
    const-string v3, " inSummary="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " estSummary="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " recalcSummary="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " estimatedUtil="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " recalcUtil="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v13, v15, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_26
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_1e .. :try_end_1e} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_24
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    goto/16 :goto_8

    .line 610
    .end local v2    # "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v4    # "estUtil":I
    .end local v7    # "recalcUtil":I
    .end local v8    # "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v9    # "passOneMsg":Ljava/lang/String;
    .end local v10    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local v17    # "msgHeader":Ljava/lang/String;
    .end local v25    # "endMsg":Ljava/lang/String;
    .end local v28    # "beginMsg":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object v2, v0

    move v13, v6

    move-object/from16 v4, v31

    goto/16 :goto_f

    .line 602
    :catch_24
    move-exception v0

    move-object v2, v0

    move v13, v6

    goto/16 :goto_9

    .line 591
    :catch_25
    move-exception v0

    move-object v2, v0

    move v13, v6

    goto/16 :goto_a

    .line 583
    :catch_26
    move-exception v0

    move-object v2, v0

    move v13, v6

    goto/16 :goto_b

    .line 560
    :catch_27
    move-exception v0

    move-object v2, v0

    move v13, v6

    goto/16 :goto_c

    .line 610
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_a
    move-exception v0

    move-object v2, v0

    move v13, v6

    move-object v4, v15

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_28
    move-exception v0

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_29
    move-exception v0

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2a
    move-exception v0

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2b
    move-exception v0

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 542
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v2    # "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v3    # "endMsg":Ljava/lang/String;
    .restart local v8    # "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v9    # "passOneMsg":Ljava/lang/String;
    .restart local v10    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v17    # "msgHeader":Ljava/lang/String;
    .restart local v28    # "beginMsg":Ljava/lang/String;
    :cond_12
    move-object/from16 v25, v3

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    .line 610
    .end local v2    # "estimatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "endMsg":Ljava/lang/String;
    .end local v8    # "recalculatedFileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v9    # "passOneMsg":Ljava/lang/String;
    .end local v10    # "inSummary":Lcom/sleepycat/je/cleaner/INSummary;
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "msgHeader":Ljava/lang/String;
    .end local v28    # "beginMsg":Ljava/lang/String;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_8
    if-nez v6, :cond_14

    if-nez v14, :cond_14

    .line 611
    :try_start_1f
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    goto/16 :goto_d

    .line 610
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_b
    move-exception v0

    move-wide/from16 v29, v12

    move-object v2, v0

    move v13, v6

    move-object v4, v15

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2c
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2d
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2e
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_2f
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move v13, v6

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 610
    .end local v6    # "finished":Z
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v25, "finished":Z
    :catchall_c
    move-exception v0

    move-wide/from16 v29, v12

    move-object v2, v0

    move-object v4, v15

    move/from16 v13, v25

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_30
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_31
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_32
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_33
    move-exception v0

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 610
    .end local v19    # "requiredUtil":I
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_d
    move-exception v0

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object v2, v0

    move-object v4, v15

    move/from16 v13, v25

    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v19    # "requiredUtil":I
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_34
    move-exception v0

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v19    # "requiredUtil":I
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_35
    move-exception v0

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v19    # "requiredUtil":I
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_36
    move-exception v0

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v19    # "requiredUtil":I
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_37
    move-exception v0

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 610
    .end local v19    # "requiredUtil":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v6, "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_e
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object v2, v0

    move-object v4, v15

    move/from16 v13, v25

    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v19    # "requiredUtil":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_38
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v19    # "requiredUtil":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_39
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v19    # "requiredUtil":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3a
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v19    # "requiredUtil":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3b
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 610
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v4, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_f
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object v2, v0

    move-object v4, v15

    move/from16 v13, v25

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3c
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_9

    .line 591
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3d
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_a

    .line 583
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3e
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_b

    .line 560
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "fileNumValue":J
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "runId":J
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catch_3f
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v26, v6

    move/from16 v19, v11

    move-wide/from16 v29, v12

    move-object/from16 v31, v15

    move-object v2, v0

    move/from16 v13, v25

    .end local v4    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "fileNumValue":J
    .end local v11    # "requiredUtil":I
    .end local v12    # "runId":J
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_c

    .line 610
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v3, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v6, "nOriginalLogFiles":I
    .local v7, "nFilesCleaned":I
    .local v8, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v9, "fileNum":Ljava/lang/Long;
    .restart local v11    # "requiredUtil":I
    .local v12, "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v17, "fileNumValue":J
    .local v19, "runId":J
    :catchall_10
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-wide/from16 v26, v17

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move-object/from16 v18, v8

    move/from16 v19, v11

    move-object v2, v0

    move-object v4, v15

    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "nOriginalLogFiles":I
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v11    # "requiredUtil":I
    .end local v12    # "twoPass":Z
    .end local v13    # "finished":Z
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "fileNumValue":J
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v19, "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v25    # "finished":Z
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    goto/16 :goto_f

    .line 602
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v25    # "finished":Z
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v17    # "fileNumValue":J
    .local v19, "runId":J
    :catch_40
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object/from16 v31, v15

    move-wide/from16 v26, v17

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move-object/from16 v18, v8

    move/from16 v19, v11

    move-object v2, v0

    .line 604
    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "nOriginalLogFiles":I
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v11    # "requiredUtil":I
    .end local v12    # "twoPass":Z
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "fileNumValue":J
    .local v2, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v19, "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_9
    :try_start_20
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v4, "Cleaner"

    const-string v6, "doClean"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    nop

    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v14    # "fileDeleted":Z
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p1    # "invokedFromDaemon":Z
    .end local p2    # "cleanMultipleFiles":Z
    .end local p3    # "forceCleaning":Z
    throw v2

    .line 591
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v14    # "fileDeleted":Z
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v17    # "fileNumValue":J
    .local v19, "runId":J
    .restart local p1    # "invokedFromDaemon":Z
    .restart local p2    # "cleanMultipleFiles":Z
    .restart local p3    # "forceCleaning":Z
    :catch_41
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object/from16 v31, v15

    move-wide/from16 v26, v17

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move-object/from16 v18, v8

    move/from16 v19, v11

    move-object v2, v0

    .line 593
    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "nOriginalLogFiles":I
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v11    # "requiredUtil":I
    .end local v12    # "twoPass":Z
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "fileNumValue":J
    .local v2, "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v19, "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_a
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleaning of file 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 595
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " aborted because of disk limit violation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 593
    invoke-static {v3, v4, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 598
    if-eqz p1, :cond_13

    .line 610
    .end local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    if-nez v13, :cond_14

    if-nez v14, :cond_14

    .line 611
    :try_start_21
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    goto/16 :goto_d

    .line 599
    .restart local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    :cond_13
    nop

    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v14    # "fileDeleted":Z
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p1    # "invokedFromDaemon":Z
    .end local p2    # "cleanMultipleFiles":Z
    .end local p3    # "forceCleaning":Z
    :try_start_22
    throw v2

    .line 583
    .end local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "twoPass":Z
    .restart local v13    # "finished":Z
    .restart local v14    # "fileDeleted":Z
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v17    # "fileNumValue":J
    .local v19, "runId":J
    .restart local p1    # "invokedFromDaemon":Z
    .restart local p2    # "cleanMultipleFiles":Z
    .restart local p3    # "forceCleaning":Z
    :catch_42
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object/from16 v31, v15

    move-wide/from16 v26, v17

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move-object/from16 v18, v8

    move/from16 v19, v11

    move-object v2, v0

    .line 585
    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "nOriginalLogFiles":I
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v11    # "requiredUtil":I
    .end local v12    # "twoPass":Z
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "fileNumValue":J
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v19, "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_b
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v4, "Cleaner"

    const-string v6, "doClean"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v6, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v14    # "fileDeleted":Z
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local p1    # "invokedFromDaemon":Z
    .end local p2    # "cleanMultipleFiles":Z
    .end local p3    # "forceCleaning":Z
    throw v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 610
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v13    # "finished":Z
    .restart local v14    # "fileDeleted":Z
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v19    # "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local p1    # "invokedFromDaemon":Z
    .restart local p2    # "cleanMultipleFiles":Z
    .restart local p3    # "forceCleaning":Z
    :catchall_11
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v31

    goto/16 :goto_f

    .line 560
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    .restart local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v9    # "fileNum":Ljava/lang/Long;
    .restart local v11    # "requiredUtil":I
    .restart local v12    # "twoPass":Z
    .restart local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v17    # "fileNumValue":J
    .local v19, "runId":J
    :catch_43
    move-exception v0

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v25, v13

    move-object/from16 v31, v15

    move-wide/from16 v26, v17

    move-wide/from16 v29, v19

    move-object/from16 v20, v3

    move-object/from16 v18, v8

    move/from16 v19, v11

    move-object v2, v0

    .line 573
    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v6    # "nOriginalLogFiles":I
    .end local v7    # "nFilesCleaned":I
    .end local v8    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v11    # "requiredUtil":I
    .end local v12    # "twoPass":Z
    .end local v15    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v17    # "fileNumValue":J
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v19, "requiredUtil":I
    .restart local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v22    # "twoPass":Z
    .restart local v23    # "nOriginalLogFiles":I
    .restart local v24    # "nFilesCleaned":I
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_c
    const/4 v14, 0x1

    .line 574
    :try_start_23
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->removeDeletedFile(Ljava/lang/Long;)V

    .line 575
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/Cleaner;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->removeFile(J)V

    .line 576
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    move-object/from16 v4, v31

    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v4, "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :try_start_24
    invoke-virtual {v3, v5, v4}, Lcom/sleepycat/je/cleaner/FileSelector;->removeFile(Ljava/lang/Long;Lcom/sleepycat/je/dbi/MemoryBudget;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 578
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing file 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ignored by cleaner"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 578
    invoke-static {v3, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    .line 610
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-nez v13, :cond_14

    if-nez v14, :cond_14

    .line 611
    :try_start_25
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V

    .line 614
    .end local v4    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v14    # "fileDeleted":Z
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v19    # "requiredUtil":I
    .end local v22    # "twoPass":Z
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    :cond_14
    :goto_d
    nop

    .line 352
    :goto_e
    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v6, v23

    move/from16 v7, v24

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 610
    .restart local v4    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v5    # "fileNum":Ljava/lang/Long;
    .restart local v13    # "finished":Z
    .restart local v14    # "fileDeleted":Z
    .restart local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v19    # "requiredUtil":I
    .restart local v22    # "twoPass":Z
    .restart local v26    # "fileNumValue":J
    .restart local v29    # "runId":J
    :catchall_12
    move-exception v0

    move-object v2, v0

    goto :goto_f

    .end local v4    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_13
    move-exception v0

    move-object/from16 v4, v31

    move-object v2, v0

    .end local v31    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v4    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_f
    if-nez v13, :cond_15

    if-nez v14, :cond_15

    .line 611
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/FileProcessor;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/cleaner/FileSelector;->putBackFileForCleaning(Ljava/lang/Long;)V

    :cond_15
    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 371
    .end local v4    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v5    # "fileNum":Ljava/lang/Long;
    .end local v13    # "finished":Z
    .end local v14    # "fileDeleted":Z
    .end local v18    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v19    # "requiredUtil":I
    .end local v20    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v22    # "twoPass":Z
    .end local v23    # "nOriginalLogFiles":I
    .end local v24    # "nFilesCleaned":I
    .end local v26    # "fileNumValue":J
    .end local v29    # "runId":J
    .restart local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v6    # "nOriginalLogFiles":I
    .restart local v7    # "nFilesCleaned":I
    :catch_44
    move-exception v0

    move/from16 v23, v6

    move-object v2, v0

    .line 372
    .end local v6    # "nOriginalLogFiles":I
    .local v2, "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v23    # "nOriginalLogFiles":I
    if-eqz p1, :cond_16

    .line 375
    nop

    .line 616
    .end local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    :goto_10
    monitor-exit p0

    return v7

    .line 373
    .restart local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    :cond_16
    :try_start_26
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    .line 332
    .end local v2    # "e":Lcom/sleepycat/je/DiskLimitException;
    .end local v3    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v7    # "nFilesCleaned":I
    .end local v23    # "nOriginalLogFiles":I
    .end local p1    # "invokedFromDaemon":Z
    .end local p2    # "cleanMultipleFiles":Z
    .end local p3    # "forceCleaning":Z
    :catchall_14
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method getDbLookupsThisRun()I
    .locals 1

    .line 1940
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->nDbLookupsThisRun:I

    return v0
.end method

.method protected nDeadlockRetries()J
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-wide v0, v0, Lcom/sleepycat/je/cleaner/Cleaner;->nDeadlockRetries:J

    return-wide v0
.end method

.method protected declared-synchronized onWakeup()V
    .locals 4

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->activate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v0

    .line 285
    .local v0, "nextLsn":J
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->lastWakeupLsn:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 292
    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->lastWakeupLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProcessor;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/Checkpointer;->wakeupAfterNoWrites()V

    .line 304
    .end local v0    # "nextLsn":J
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/sleepycat/je/cleaner/FileProcessor;->doClean(ZZZ)I

    .line 309
    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor;->activate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
