.class public Lcom/sleepycat/je/cleaner/ExpirationProfile;
.super Ljava/lang/Object;
.source "ExpirationProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static PAIR_OF_ZEROS:Lcom/sleepycat/je/utilint/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anyExpirationInHours:Z

.field private final completedTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/ExpirationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private lastRefreshDay:I

.field private lastRefreshHour:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    nop

    .line 57
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->PAIR_OF_ZEROS:Lcom/sleepycat/je/utilint/Pair;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/cleaner/ExpirationProfile;)V
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/cleaner/ExpirationProfile;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshHour:I

    .line 75
    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshDay:I

    .line 107
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 108
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 109
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 110
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshHour:I

    .line 75
    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshDay:I

    .line 100
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    .line 103
    return-void
.end method


# virtual methods
.method public addCompletedTracker(Lcom/sleepycat/je/cleaner/ExpirationTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 344
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getFileNum()J

    move-result-wide v0

    .line 350
    .local v0, "fileNum":J
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 353
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    monitor-exit v2

    .line 355
    return-void

    .line 351
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "fileNum":J
    .end local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    throw v3

    .line 354
    .restart local v0    # "fileNum":J
    .restart local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :catchall_0
    move-exception v3

    goto :goto_0
.end method

.method public getExpiredBytes(J)I
    .locals 3
    .param p1, "fileNum"    # J

    .line 484
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    .line 486
    .local v1, "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 487
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExpiredBytes(JJ)Lcom/sleepycat/je/utilint/Pair;
    .locals 11
    .param p1, "fileNum"    # J
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    .line 513
    .local v1, "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    if-nez v1, :cond_0

    .line 514
    sget-object v2, Lcom/sleepycat/je/cleaner/ExpirationProfile;->PAIR_OF_ZEROS:Lcom/sleepycat/je/utilint/Pair;

    monitor-exit v0

    return-object v2

    .line 517
    :cond_0
    iget v2, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    iget v3, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->previousExpiredBytes:I

    sub-int/2addr v2, v3

    .line 520
    .local v2, "newlyExpiredBytes":I
    if-nez v2, :cond_1

    .line 521
    new-instance v3, Lcom/sleepycat/je/utilint/Pair;

    iget v4, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    .line 522
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    .line 521
    return-object v3

    .line 525
    :cond_1
    iget-boolean v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->anyExpirationInHours:Z

    if-eqz v3, :cond_2

    const-wide/32 v3, 0x36ee80

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x5265c00

    .line 528
    .local v3, "intervalMs":J
    :goto_0
    rem-long v5, p3, v3

    .line 530
    .local v5, "currentMs":J
    iget v7, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->previousExpiredBytes:I

    int-to-long v8, v2

    mul-long/2addr v8, v5

    div-long/2addr v8, v3

    long-to-int v8, v8

    add-int/2addr v7, v8

    .line 533
    .local v7, "gradualBytes":I
    new-instance v8, Lcom/sleepycat/je/utilint/Pair;

    iget v9, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v8

    .line 534
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    .end local v2    # "newlyExpiredBytes":I
    .end local v3    # "intervalMs":J
    .end local v5    # "currentMs":J
    .end local v7    # "gradualBytes":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public populateCache(Lcom/sleepycat/je/dbi/StartupTracker$Counter;Lcom/sleepycat/je/ProgressListener;)V
    .locals 27
    .param p1, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/StartupTracker$Counter;",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_d

    .line 132
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    sget-object v3, Lcom/sleepycat/je/dbi/DbType;->EXPIRATION:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/DbTree;->openNonRepInternalDB(Lcom/sleepycat/je/dbi/DbType;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 136
    if-nez v0, :cond_0

    .line 138
    monitor-exit v2

    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v3, v0

    .line 142
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v4, v0

    .line 145
    .local v4, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 146
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    .line 149
    .local v5, "existingFiles":[Ljava/lang/Long;
    array-length v0, v5

    new-array v0, v0, [Z

    move-object v6, v0

    .line 157
    .local v6, "filesHaveRecords":[Z
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->createProcessor()Lcom/sleepycat/je/cleaner/FileProcessor;

    move-result-object v0

    move-object v7, v0

    .line 158
    .local v7, "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getCurrentFileNum()J

    move-result-wide v8

    .line 160
    .local v8, "lastFileNum":J
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_2

    .line 161
    array-length v0, v5

    if-lez v0, :cond_1

    .line 164
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->flushLog(Z)V

    .line 166
    nop

    .line 167
    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/cleaner/FileProcessor;->countExpiration(J)Lcom/sleepycat/je/cleaner/ExpirationTracker;

    move-result-object v0

    .line 169
    .local v0, "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    iget-object v11, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/sleepycat/je/log/LogManager;->initExpirationTracker(Lcom/sleepycat/je/cleaner/ExpirationTracker;)V

    .line 170
    .end local v0    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    new-instance v11, Lcom/sleepycat/je/cleaner/ExpirationTracker;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/cleaner/ExpirationTracker;-><init>(J)V

    invoke-virtual {v0, v11}, Lcom/sleepycat/je/log/LogManager;->initExpirationTracker(Lcom/sleepycat/je/cleaner/ExpirationTracker;)V

    .line 182
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v10}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v11, v0

    .line 185
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 186
    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v13, v0

    .line 185
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 188
    :goto_1
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {v13, v3, v4, v0, v12}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 192
    nop

    .line 193
    invoke-static {v3}, Lcom/sleepycat/bind/tuple/SortedPackedLongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 195
    .local v14, "fileNum":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "i":I
    if-ltz v0, :cond_4

    aget-object v16, v5, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v8

    if-gez v16, :cond_4

    .line 199
    const/16 v16, 0x1

    aput-boolean v16, v6, v0

    .line 201
    invoke-virtual {v4}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v16

    move-object/from16 v17, v16

    .line 203
    .local v17, "serializedForm":[B
    move-object/from16 v12, v17

    .end local v17    # "serializedForm":[B
    .local v12, "serializedForm":[B
    array-length v10, v12

    if-lez v10, :cond_3

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 205
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    .line 206
    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v19, v3

    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "key":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_3
    new-instance v3, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v20, "data":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_4
    invoke-direct {v3, v12, v4}, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;-><init>([BI)V

    .line 205
    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 185
    .end local v12    # "serializedForm":[B
    .end local v14    # "fileNum":J
    .end local v18    # "i":I
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    move-object v3, v0

    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_6

    .line 203
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v0    # "i":I
    .restart local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "serializedForm":[B
    .restart local v14    # "fileNum":J
    :cond_3
    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v0    # "i":I
    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v18    # "i":I
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_2

    .line 197
    .end local v12    # "serializedForm":[B
    .end local v18    # "i":I
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v0    # "i":I
    .restart local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 209
    .end local v0    # "i":I
    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v18    # "i":I
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V

    .line 211
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 209
    :cond_5
    :goto_2
    nop

    .line 213
    .end local v14    # "fileNum":J
    .end local v18    # "i":I
    :goto_3
    move-object/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_1

    .line 185
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_6

    .line 214
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz v13, :cond_7

    :try_start_5
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 215
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_7
    :try_start_6
    invoke-virtual {v11}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 216
    nop

    .line 223
    const/4 v0, 0x0

    .line 224
    .restart local v0    # "i":I
    :goto_4
    array-length v3, v5

    if-ge v0, v3, :cond_a

    aget-object v3, v5, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_a

    .line 227
    aget-boolean v3, v6, v0

    if-eqz v3, :cond_8

    .line 228
    goto :goto_5

    .line 231
    :cond_8
    aget-object v3, v5, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 233
    .local v3, "fileNum":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    .line 235
    if-eqz p2, :cond_9

    .line 236
    sget-object v22, Lcom/sleepycat/je/RecoveryProgress;->POPULATE_EXPIRATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

    const-wide/16 v23, 0x1

    const-wide/16 v25, -0x1

    move-object/from16 v21, p2

    invoke-interface/range {v21 .. v26}, Lcom/sleepycat/je/ProgressListener;->progress(Ljava/lang/Enum;JJ)Z

    .line 241
    :cond_9
    nop

    .line 242
    invoke-virtual {v7, v3, v4}, Lcom/sleepycat/je/cleaner/FileProcessor;->countExpiration(J)Lcom/sleepycat/je/cleaner/ExpirationTracker;

    move-result-object v10

    .line 244
    .local v10, "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    const/4 v12, 0x0

    invoke-virtual {v1, v10, v12}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->putFile(Lcom/sleepycat/je/cleaner/ExpirationTracker;I)V

    .line 246
    iget-object v13, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 247
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v13

    iget-object v14, v1, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded missing expiration data from file 0x"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 249
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 246
    invoke-static {v13, v14, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 225
    .end local v3    # "fileNum":J
    .end local v10    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 251
    .end local v0    # "i":I
    .end local v5    # "existingFiles":[Ljava/lang/Long;
    .end local v6    # "filesHaveRecords":[Z
    .end local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v8    # "lastFileNum":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_a
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 252
    return-void

    .line 185
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "existingFiles":[Ljava/lang/Long;
    .restart local v6    # "filesHaveRecords":[Z
    .restart local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .restart local v8    # "lastFileNum":J
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v3, v0

    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "existingFiles":[Ljava/lang/Long;
    .end local v6    # "filesHaveRecords":[Z
    .end local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v8    # "lastFileNum":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :goto_6
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 214
    .restart local v5    # "existingFiles":[Ljava/lang/Long;
    .restart local v6    # "filesHaveRecords":[Z
    .restart local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .restart local v8    # "lastFileNum":J
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :catchall_3
    move-exception v0

    move-object v4, v0

    if-eqz v13, :cond_b

    :try_start_8
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v10, v0

    :try_start_9
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "existingFiles":[Ljava/lang/Long;
    .end local v6    # "filesHaveRecords":[Z
    .end local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v8    # "lastFileNum":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :cond_b
    :goto_7
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 215
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v5    # "existingFiles":[Ljava/lang/Long;
    .restart local v6    # "filesHaveRecords":[Z
    .restart local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .restart local v8    # "lastFileNum":J
    .restart local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :catchall_5
    move-exception v0

    goto :goto_8

    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_6
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :goto_8
    :try_start_a
    invoke-virtual {v11}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    throw v0

    .line 132
    .end local v5    # "existingFiles":[Ljava/lang/Long;
    .end local v6    # "filesHaveRecords":[Z
    .end local v7    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v8    # "lastFileNum":J
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    throw v0

    .line 131
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    throw v0

    .line 251
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local p2    # "listener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_9
.end method

.method processCompletedTrackers()V
    .locals 8

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    .line 381
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    nop

    .line 382
    .local v2, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/cleaner/ExpirationTracker;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 386
    .local v3, "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->hasPendingTrackCalls()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    goto :goto_1

    .line 391
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->putFile(Lcom/sleepycat/je/cleaner/ExpirationTracker;I)V

    .line 393
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 394
    :try_start_3
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->completedTrackers:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getFileNum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    monitor-exit v4

    .line 396
    .end local v3    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    goto :goto_1

    .line 395
    .restart local v3    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 397
    .end local v2    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/cleaner/ExpirationTracker;>;"
    .end local v3    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 398
    return-void

    .line 382
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 397
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method putFile(Lcom/sleepycat/je/cleaner/ExpirationTracker;I)V
    .locals 11
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .param p2, "expiredSize"    # I

    .line 268
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getFileNum()J

    move-result-wide v0

    .line 269
    .local v0, "fileNum":J
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->serialize()[B

    move-result-object v2

    .line 271
    .local v2, "serializedForm":[B
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    .line 274
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 275
    .local v4, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 277
    .local v5, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v0, v1, v4}, Lcom/sleepycat/bind/tuple/SortedPackedLongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 279
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 281
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 284
    .local v6, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 285
    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 284
    .local v7, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 287
    :try_start_2
    sget-object v9, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    invoke-virtual {v7, v4, v5, v9, v8}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 290
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_0
    :try_start_4
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 291
    goto :goto_1

    .line 284
    .restart local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v8

    .end local v0    # "fileNum":J
    .end local v2    # "serializedForm":[B
    .end local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .end local p2    # "expiredSize":I
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    .restart local v0    # "fileNum":J
    .restart local v2    # "serializedForm":[B
    .restart local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local p2    # "expiredSize":I
    :catchall_1
    move-exception v9

    if-eqz v7, :cond_1

    :try_start_6
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v10

    :try_start_7
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileNum":J
    .end local v2    # "serializedForm":[B
    .end local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .end local p2    # "expiredSize":I
    :cond_1
    :goto_0
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 290
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "fileNum":J
    .restart local v2    # "serializedForm":[B
    .restart local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local p2    # "expiredSize":I
    :catchall_3
    move-exception v7

    :try_start_8
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local v0    # "fileNum":J
    .end local v2    # "serializedForm":[B
    .end local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .end local p2    # "expiredSize":I
    throw v7

    .line 294
    .end local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v0    # "fileNum":J
    .restart local v2    # "serializedForm":[B
    .restart local p1    # "tracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .restart local p2    # "expiredSize":I
    :cond_2
    :goto_1
    array-length v4, v2

    if-lez v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    invoke-direct {v6, v2, p2}, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;-><init>([BI)V

    .line 295
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_3
    monitor-exit v3

    .line 300
    return-void

    .line 299
    :catchall_4
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v4
.end method

.method public refresh(J)V
    .locals 8
    .param p1, "time"    # J

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->processCompletedTrackers()V

    .line 435
    const-wide/32 v1, 0x36ee80

    div-long v1, p1, v1

    long-to-int v1, v1

    .line 438
    .local v1, "hourLimit":I
    iget v2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshHour:I

    if-ne v1, v2, :cond_1

    .line 439
    monitor-exit v0

    return-void

    .line 442
    :cond_1
    div-int/lit8 v2, v1, 0x18

    .line 443
    .local v2, "dayLimit":I
    iget v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshDay:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 445
    .local v3, "newDayLimit":Z
    :goto_0
    iput v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshHour:I

    .line 446
    iput v2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->lastRefreshDay:I

    .line 447
    iput-boolean v5, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->anyExpirationInHours:Z

    .line 449
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    .line 450
    .local v6, "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    iget-object v7, v6, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->serializedForm:[B

    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->isExpirationInHours([B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 452
    iput-boolean v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->anyExpirationInHours:Z

    .line 453
    goto :goto_2

    .line 455
    .end local v6    # "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    :cond_3
    goto :goto_1

    .line 461
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    iget-boolean v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->anyExpirationInHours:Z

    if-nez v4, :cond_5

    .line 462
    monitor-exit v0

    return-void

    .line 469
    :cond_5
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    .line 471
    .local v5, "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    iget v6, v5, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    iput v6, v5, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->previousExpiredBytes:I

    .line 473
    iget-object v6, v5, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->serializedForm:[B

    invoke-static {v6, v2, v1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getExpiredBytes([BII)I

    move-result v6

    iput v6, v5, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    .line 475
    .end local v5    # "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    goto :goto_3

    .line 476
    .end local v1    # "hourLimit":I
    .end local v2    # "dayLimit":I
    .end local v3    # "newDayLimit":Z
    :cond_6
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeFile(J)V
    .locals 7
    .param p1, "fileNum"    # J

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 316
    .local v1, "key":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, p2, v1}, Lcom/sleepycat/bind/tuple/SortedPackedLongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 318
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 321
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 322
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 321
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 324
    :try_start_2
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    sget-object v6, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 326
    invoke-virtual {v6}, Lcom/sleepycat/je/LockMode;->toReadOptions()Lcom/sleepycat/je/ReadOptions;

    move-result-object v6

    .line 324
    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 328
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Cursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 331
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 332
    nop

    .line 333
    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 334
    return-void

    .line 321
    .restart local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v4

    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "fileNum":J
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 330
    .restart local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "fileNum":J
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "fileNum":J
    :cond_3
    :goto_0
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 331
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "fileNum":J
    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local p1    # "fileNum":J
    throw v3

    .line 333
    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "fileNum":J
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 308
    :cond_4
    :goto_1
    return-void
.end method

.method public toString(J)Ljava/lang/String;
    .locals 3
    .param p1, "fileNum"    # J

    .line 538
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;

    .line 540
    .local v1, "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "NoExpInfo"

    :goto_0
    monitor-exit v0

    return-object v2

    .line 541
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
