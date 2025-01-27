.class public Lcom/sleepycat/je/cleaner/UtilizationCalculator;
.super Ljava/lang/Object;
.source "UtilizationCalculator.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# instance fields
.field private final cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field private volatile currentMaxUtilization:I

.field private volatile currentMinUtilization:I

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private filesToMigrate:Lcom/sleepycat/je/cleaner/FilesToMigrate;

.field private final logger:Ljava/util/logging/Logger;

.field private volatile predictedMaxUtilization:I

.field private volatile predictedMinUtilization:I


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cleaner"    # Lcom/sleepycat/je/cleaner/Cleaner;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMinUtilization:I

    .line 104
    iput v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMaxUtilization:I

    .line 105
    iput v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMinUtilization:I

    .line 106
    iput v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMaxUtilization:I

    .line 109
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 110
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->logger:Ljava/util/logging/Logger;

    .line 112
    new-instance v0, Lcom/sleepycat/je/cleaner/FilesToMigrate;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/cleaner/FilesToMigrate;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->filesToMigrate:Lcom/sleepycat/je/cleaner/FilesToMigrate;

    .line 113
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 114
    return-void
.end method


# virtual methods
.method public declared-synchronized envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 2
    .param p1, "cm"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    monitor-enter p0

    .line 493
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/cleaner/FilesToMigrate;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/FilesToMigrate;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->filesToMigrate:Lcom/sleepycat/je/cleaner/FilesToMigrate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 492
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    .end local p1    # "cm":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local p2    # "ignore":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getBestFile(Ljava/util/SortedMap;Z)Lcom/sleepycat/je/utilint/Pair;
    .locals 65
    .param p2, "forceCleaning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;Z)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .local p1, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 153
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->logger:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "Can\'t clean, map is empty."

    invoke-static {v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-object v3

    .line 158
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/Cleaner;->getFileSelector()Lcom/sleepycat/je/cleaner/FileSelector;

    move-result-object v2

    .line 159
    .local v2, "fileSelector":Lcom/sleepycat/je/cleaner/FileSelector;
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/FileSelector;->getInProgressFiles()Ljava/util/NavigableSet;

    move-result-object v4

    .line 162
    .local v4, "inProgressFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v5}, Lcom/sleepycat/je/cleaner/Cleaner;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v5

    .line 163
    .local v5, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v6

    .line 164
    .local v6, "currentTime":J
    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->refresh(J)V

    .line 174
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v8, v8, Lcom/sleepycat/je/cleaner/Cleaner;->minUtilization:I

    .line 175
    .local v8, "totalThreshold":I
    iget-object v9, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v9, v9, Lcom/sleepycat/je/cleaner/Cleaner;->minFileUtilization:I

    .line 176
    .local v9, "fileThreshold":I
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v10, v10, Lcom/sleepycat/je/cleaner/Cleaner;->twoPassThreshold:I

    .line 177
    .local v10, "twoPassThreshold":I
    iget-object v11, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v11, v11, Lcom/sleepycat/je/cleaner/Cleaner;->twoPassGap:I

    .line 178
    .local v11, "twoPassGap":I
    iget-object v12, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v12, v12, Lcom/sleepycat/je/cleaner/Cleaner;->minAge:I

    .line 179
    .local v12, "minAge":I
    iget-object v13, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-boolean v13, v13, Lcom/sleepycat/je/cleaner/Cleaner;->gradualExpiration:Z

    .line 180
    .local v13, "gradualExpiration":Z
    iget-object v14, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isExpirationEnabled()Z

    move-result v14

    .line 207
    .local v14, "expirationEnabled":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 208
    .local v15, "firstActiveFile":J
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/txn/TxnManager;->getFirstActiveLsn()J

    move-result-wide v18

    .line 210
    .local v18, "firstActiveTxnLsn":J
    const-wide/16 v20, -0x1

    cmp-long v3, v18, v20

    if-eqz v3, :cond_1

    .line 212
    nop

    .line 213
    invoke-static/range {v18 .. v19}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v20

    .line 215
    .local v20, "firstActiveTxnFile":J
    cmp-long v3, v15, v20

    if-lez v3, :cond_1

    .line 216
    move-wide/from16 v15, v20

    .line 224
    .end local v20    # "firstActiveTxnFile":J
    :cond_1
    move-object/from16 v20, v2

    .end local v2    # "fileSelector":Lcom/sleepycat/je/cleaner/FileSelector;
    .local v20, "fileSelector":Lcom/sleepycat/je/cleaner/FileSelector;
    int-to-long v2, v12

    sub-long v2, v15, v2

    .line 251
    .local v2, "lastFileToClean":J
    const/16 v21, 0x0

    .line 252
    .local v21, "bestFile":Ljava/lang/Long;
    const/16 v22, 0x65

    .line 253
    .local v22, "bestFileAvgUtil":I
    const/16 v23, 0x0

    .line 254
    .local v23, "bestFileMinUtil":I
    const/16 v24, 0x0

    .line 255
    .local v24, "bestFileMaxUtil":I
    const/16 v25, 0x0

    .line 256
    .local v25, "bestGradualFile":Ljava/lang/Long;
    const/16 v26, 0x65

    .line 257
    .local v26, "bestGradualFileMaxUtil":I
    const-wide/16 v27, 0x0

    .line 258
    .local v27, "currentTotalSize":J
    const-wide/16 v29, 0x0

    .line 259
    .local v29, "currentMinObsoleteSize":J
    const-wide/16 v31, 0x0

    .line 260
    .local v31, "currentMaxObsoleteSize":J
    const-wide/16 v33, 0x0

    .line 261
    .local v33, "predictedTotalSize":J
    const-wide/16 v35, 0x0

    .line 262
    .local v35, "predictedMinObsoleteSize":J
    const-wide/16 v37, 0x0

    .line 265
    .local v37, "predictedMaxObsoleteSize":J
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    move/from16 v40, v12

    move-object/from16 v12, v21

    move-wide/from16 v41, v33

    move-wide/from16 v43, v35

    move-wide/from16 v45, v37

    move/from16 v58, v26

    move/from16 v26, v8

    move-wide/from16 v59, v27

    move/from16 v27, v9

    move/from16 v28, v23

    move-wide/from16 v8, v59

    move/from16 v23, v10

    move-wide/from16 v61, v15

    move/from16 v16, v11

    move/from16 v15, v22

    move-wide/from16 v10, v29

    move-wide/from16 v21, v61

    move/from16 v29, v58

    move-wide/from16 v63, v2

    move-wide/from16 v2, v31

    move-wide/from16 v30, v63

    .end local v9    # "fileThreshold":I
    .end local v11    # "twoPassGap":I
    .end local v22    # "bestFileAvgUtil":I
    .end local v31    # "currentMaxObsoleteSize":J
    .end local v33    # "predictedTotalSize":J
    .end local v35    # "predictedMinObsoleteSize":J
    .end local v37    # "predictedMaxObsoleteSize":J
    .local v2, "currentMaxObsoleteSize":J
    .local v8, "currentTotalSize":J
    .local v10, "currentMinObsoleteSize":J
    .local v12, "bestFile":Ljava/lang/Long;
    .local v15, "bestFileAvgUtil":I
    .local v16, "twoPassGap":I
    .local v21, "firstActiveFile":J
    .local v23, "twoPassThreshold":I
    .local v26, "totalThreshold":I
    .local v27, "fileThreshold":I
    .local v28, "bestFileMinUtil":I
    .local v29, "bestGradualFileMaxUtil":I
    .local v30, "lastFileToClean":J
    .local v40, "minAge":I
    .local v41, "predictedTotalSize":J
    .local v43, "predictedMinObsoleteSize":J
    .local v45, "predictedMaxObsoleteSize":J
    :goto_0
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 267
    .local v32, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    move-object/from16 v34, v33

    .line 268
    .local v34, "file":Ljava/lang/Long;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    move-wide/from16 v37, v35

    .line 270
    .local v37, "fileNum":J
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    move/from16 v33, v15

    move-object/from16 v15, v34

    .end local v34    # "file":Ljava/lang/Long;
    .local v15, "file":Ljava/lang/Long;
    .local v33, "bestFileAvgUtil":I
    invoke-virtual {v0, v15}, Lcom/sleepycat/je/cleaner/FileProtector;->isActiveOrNewFile(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    move-object/from16 v0, p1

    move/from16 v15, v33

    goto :goto_0

    .line 274
    :cond_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 279
    .local v0, "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    if-eqz v14, :cond_4

    .line 281
    nop

    .line 282
    move/from16 v34, v14

    move-object/from16 v35, v15

    move-wide/from16 v14, v37

    .end local v15    # "file":Ljava/lang/Long;
    .end local v37    # "fileNum":J
    .local v14, "fileNum":J
    .local v34, "expirationEnabled":Z
    .local v35, "file":Ljava/lang/Long;
    invoke-virtual {v5, v14, v15, v6, v7}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->getExpiredBytes(JJ)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v36

    .line 284
    .local v36, "expiredSizes":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 285
    invoke-virtual/range {v36 .. v36}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    move-object/from16 v38, v5

    .end local v5    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .local v38, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-wide/from16 v47, v6

    .end local v6    # "currentTime":J
    .local v47, "currentTime":J
    iget v6, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 284
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 287
    .local v5, "expiredSize":I
    if-eqz v13, :cond_3

    .line 288
    invoke-virtual/range {v36 .. v36}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v5

    .line 291
    .end local v36    # "expiredSizes":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v6, "expiredGradualSize":I
    :goto_1
    goto :goto_2

    .line 292
    .end local v34    # "expirationEnabled":Z
    .end local v35    # "file":Ljava/lang/Long;
    .end local v38    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .end local v47    # "currentTime":J
    .local v5, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .local v6, "currentTime":J
    .local v14, "expirationEnabled":Z
    .restart local v15    # "file":Ljava/lang/Long;
    .restart local v37    # "fileNum":J
    :cond_4
    move-wide/from16 v47, v6

    move/from16 v34, v14

    move-object/from16 v35, v15

    move-wide/from16 v14, v37

    move-object/from16 v38, v5

    .end local v5    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .end local v6    # "currentTime":J
    .end local v15    # "file":Ljava/lang/Long;
    .end local v37    # "fileNum":J
    .local v14, "fileNum":J
    .restart local v34    # "expirationEnabled":Z
    .restart local v35    # "file":Ljava/lang/Long;
    .restart local v38    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .restart local v47    # "currentTime":J
    const/4 v5, 0x0

    .line 293
    .local v5, "expiredSize":I
    const/4 v6, 0x0

    .line 300
    .local v6, "expiredGradualSize":I
    :goto_2
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result v7

    .line 302
    .local v7, "obsoleteSize":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v37, v36

    .line 305
    .local v37, "minObsoleteSize":I
    move/from16 v36, v13

    .end local v13    # "gradualExpiration":Z
    .local v36, "gradualExpiration":Z
    add-int v13, v7, v5

    move/from16 v49, v5

    .end local v5    # "expiredSize":I
    .local v49, "expiredSize":I
    iget v5, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 309
    .local v5, "maxObsoleteSize":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 312
    .local v13, "minGradualObsoleteSize":I
    move-object/from16 v50, v12

    .end local v12    # "bestFile":Ljava/lang/Long;
    .local v50, "bestFile":Ljava/lang/Long;
    add-int v12, v7, v6

    move/from16 v51, v6

    .end local v6    # "expiredGradualSize":I
    .local v51, "expiredGradualSize":I
    iget v6, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 316
    .local v6, "maxGradualObsoleteSize":I
    iget v12, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    move-wide/from16 v52, v14

    .end local v14    # "fileNum":J
    .local v52, "fileNum":J
    int-to-long v14, v12

    add-long/2addr v8, v14

    .line 317
    move/from16 v12, v37

    .end local v37    # "minObsoleteSize":I
    .local v12, "minObsoleteSize":I
    int-to-long v14, v12

    add-long/2addr v10, v14

    .line 318
    int-to-long v14, v5

    add-long/2addr v2, v14

    .line 328
    move-object/from16 v14, v35

    .end local v35    # "file":Ljava/lang/Long;
    .local v14, "file":Ljava/lang/Long;
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 329
    iget v15, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    sub-int/2addr v15, v12

    .line 330
    .local v15, "utilizedSize":I
    move-wide/from16 v54, v2

    .end local v2    # "currentMaxObsoleteSize":J
    .local v54, "currentMaxObsoleteSize":J
    int-to-long v2, v15

    move-wide/from16 v56, v10

    move-wide/from16 v10, v41

    .end local v41    # "predictedTotalSize":J
    .local v10, "predictedTotalSize":J
    .local v56, "currentMinObsoleteSize":J
    add-long v41, v10, v2

    .line 331
    .end local v10    # "predictedTotalSize":J
    .restart local v41    # "predictedTotalSize":J
    move-object/from16 v0, p1

    move/from16 v15, v33

    move/from16 v14, v34

    move/from16 v13, v36

    move-object/from16 v5, v38

    move-wide/from16 v6, v47

    move-object/from16 v12, v50

    move-wide/from16 v2, v54

    move-wide/from16 v10, v56

    goto/16 :goto_0

    .line 334
    .end local v15    # "utilizedSize":I
    .end local v54    # "currentMaxObsoleteSize":J
    .end local v56    # "currentMinObsoleteSize":J
    .restart local v2    # "currentMaxObsoleteSize":J
    .local v10, "currentMinObsoleteSize":J
    :cond_5
    move-wide/from16 v54, v2

    move-wide/from16 v56, v10

    move-wide/from16 v10, v41

    .end local v2    # "currentMaxObsoleteSize":J
    .end local v41    # "predictedTotalSize":J
    .local v10, "predictedTotalSize":J
    .restart local v54    # "currentMaxObsoleteSize":J
    .restart local v56    # "currentMinObsoleteSize":J
    iget v2, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v2, v2

    add-long v41, v10, v2

    .line 335
    .end local v10    # "predictedTotalSize":J
    .restart local v41    # "predictedTotalSize":J
    int-to-long v2, v13

    move-wide/from16 v10, v43

    .end local v43    # "predictedMinObsoleteSize":J
    .local v10, "predictedMinObsoleteSize":J
    add-long v43, v10, v2

    .line 336
    .end local v10    # "predictedMinObsoleteSize":J
    .restart local v43    # "predictedMinObsoleteSize":J
    int-to-long v2, v6

    move-wide/from16 v10, v45

    .end local v45    # "predictedMaxObsoleteSize":J
    .local v10, "predictedMaxObsoleteSize":J
    add-long v45, v10, v2

    .line 339
    .end local v10    # "predictedMaxObsoleteSize":J
    .restart local v45    # "predictedMaxObsoleteSize":J
    cmp-long v2, v52, v30

    if-lez v2, :cond_6

    .line 340
    move-object/from16 v0, p1

    move/from16 v15, v33

    move/from16 v14, v34

    move/from16 v13, v36

    move-object/from16 v5, v38

    move-wide/from16 v6, v47

    move-object/from16 v12, v50

    move-wide/from16 v2, v54

    move-wide/from16 v10, v56

    goto/16 :goto_0

    .line 347
    :cond_6
    int-to-long v2, v5

    iget v10, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v10, v10

    invoke-static {v2, v3, v10, v11}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v2

    .line 350
    .local v2, "thisMinUtil":I
    int-to-long v10, v12

    iget v3, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    move v15, v5

    move/from16 v35, v6

    .end local v5    # "maxObsoleteSize":I
    .end local v6    # "maxGradualObsoleteSize":I
    .local v15, "maxObsoleteSize":I
    .local v35, "maxGradualObsoleteSize":I
    int-to-long v5, v3

    invoke-static {v10, v11, v5, v6}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v3

    .line 353
    .local v3, "thisMaxUtil":I
    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    .line 355
    .local v5, "thisAvgUtil":I
    if-eqz v50, :cond_7

    move/from16 v6, v33

    .end local v33    # "bestFileAvgUtil":I
    .local v6, "bestFileAvgUtil":I
    if-ge v5, v6, :cond_8

    goto :goto_3

    .end local v6    # "bestFileAvgUtil":I
    .restart local v33    # "bestFileAvgUtil":I
    :cond_7
    move/from16 v6, v33

    .line 356
    .end local v33    # "bestFileAvgUtil":I
    .restart local v6    # "bestFileAvgUtil":I
    :goto_3
    move-object v10, v14

    .line 357
    .end local v50    # "bestFile":Ljava/lang/Long;
    .local v10, "bestFile":Ljava/lang/Long;
    move v6, v5

    .line 358
    move v11, v2

    .line 359
    .end local v28    # "bestFileMinUtil":I
    .local v11, "bestFileMinUtil":I
    move/from16 v24, v3

    move-object/from16 v50, v10

    move/from16 v28, v11

    .line 366
    .end local v10    # "bestFile":Ljava/lang/Long;
    .end local v11    # "bestFileMinUtil":I
    .restart local v28    # "bestFileMinUtil":I
    .restart local v50    # "bestFile":Ljava/lang/Long;
    :cond_8
    int-to-long v10, v13

    move/from16 v33, v2

    .end local v2    # "thisMinUtil":I
    .local v33, "thisMinUtil":I
    iget v2, v0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    move/from16 v37, v3

    .end local v3    # "thisMaxUtil":I
    .local v37, "thisMaxUtil":I
    int-to-long v2, v2

    invoke-static {v10, v11, v2, v3}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v2

    .line 369
    .local v2, "thisGradualMaxUtil":I
    if-eqz v25, :cond_a

    move/from16 v3, v29

    .end local v29    # "bestGradualFileMaxUtil":I
    .local v3, "bestGradualFileMaxUtil":I
    if-ge v2, v3, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v29, v3

    goto :goto_5

    .end local v3    # "bestGradualFileMaxUtil":I
    .restart local v29    # "bestGradualFileMaxUtil":I
    :cond_a
    move/from16 v3, v29

    .line 372
    .end local v29    # "bestGradualFileMaxUtil":I
    .restart local v3    # "bestGradualFileMaxUtil":I
    :goto_4
    move-object v10, v14

    .line 373
    .end local v25    # "bestGradualFile":Ljava/lang/Long;
    .local v10, "bestGradualFile":Ljava/lang/Long;
    move v3, v2

    move/from16 v29, v3

    move-object/from16 v25, v10

    .line 375
    .end local v0    # "summary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v2    # "thisGradualMaxUtil":I
    .end local v3    # "bestGradualFileMaxUtil":I
    .end local v5    # "thisAvgUtil":I
    .end local v7    # "obsoleteSize":I
    .end local v10    # "bestGradualFile":Ljava/lang/Long;
    .end local v12    # "minObsoleteSize":I
    .end local v13    # "minGradualObsoleteSize":I
    .end local v14    # "file":Ljava/lang/Long;
    .end local v15    # "maxObsoleteSize":I
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v33    # "thisMinUtil":I
    .end local v35    # "maxGradualObsoleteSize":I
    .end local v37    # "thisMaxUtil":I
    .end local v49    # "expiredSize":I
    .end local v51    # "expiredGradualSize":I
    .end local v52    # "fileNum":J
    .restart local v25    # "bestGradualFile":Ljava/lang/Long;
    .restart local v29    # "bestGradualFileMaxUtil":I
    :goto_5
    move-object/from16 v0, p1

    move v15, v6

    move/from16 v14, v34

    move/from16 v13, v36

    move-object/from16 v5, v38

    move-wide/from16 v6, v47

    move-object/from16 v12, v50

    move-wide/from16 v2, v54

    move-wide/from16 v10, v56

    goto/16 :goto_0

    .line 377
    .end local v34    # "expirationEnabled":Z
    .end local v36    # "gradualExpiration":Z
    .end local v38    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .end local v47    # "currentTime":J
    .end local v50    # "bestFile":Ljava/lang/Long;
    .end local v54    # "currentMaxObsoleteSize":J
    .end local v56    # "currentMinObsoleteSize":J
    .local v2, "currentMaxObsoleteSize":J
    .local v5, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .local v6, "currentTime":J
    .local v10, "currentMinObsoleteSize":J
    .local v12, "bestFile":Ljava/lang/Long;
    .local v13, "gradualExpiration":Z
    .local v14, "expirationEnabled":Z
    .local v15, "bestFileAvgUtil":I
    :cond_b
    move-object/from16 v38, v5

    move-wide/from16 v47, v6

    move-object/from16 v50, v12

    move/from16 v36, v13

    move/from16 v34, v14

    move/from16 v33, v15

    move/from16 v0, v29

    move-wide/from16 v5, v43

    move-wide/from16 v14, v45

    move-wide v12, v10

    move-wide/from16 v10, v41

    .end local v6    # "currentTime":J
    .end local v13    # "gradualExpiration":Z
    .end local v15    # "bestFileAvgUtil":I
    .end local v29    # "bestGradualFileMaxUtil":I
    .end local v41    # "predictedTotalSize":J
    .end local v43    # "predictedMinObsoleteSize":J
    .end local v45    # "predictedMaxObsoleteSize":J
    .local v0, "bestGradualFileMaxUtil":I
    .local v5, "predictedMinObsoleteSize":J
    .local v10, "predictedTotalSize":J
    .local v12, "currentMinObsoleteSize":J
    .local v14, "predictedMaxObsoleteSize":J
    .local v33, "bestFileAvgUtil":I
    .restart local v34    # "expirationEnabled":Z
    .restart local v36    # "gradualExpiration":Z
    .restart local v38    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .restart local v47    # "currentTime":J
    .restart local v50    # "bestFile":Ljava/lang/Long;
    invoke-static {v2, v3, v8, v9}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v7

    .line 380
    .local v7, "currentMinUtil":I
    invoke-static {v12, v13, v8, v9}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v29

    move/from16 v32, v29

    .line 383
    .local v32, "currentMaxUtil":I
    invoke-static {v14, v15, v10, v11}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v29

    move/from16 v35, v29

    .line 386
    .local v35, "predictedMinUtil":I
    invoke-static {v5, v6, v10, v11}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v29

    move/from16 v37, v29

    .line 389
    .local v37, "predictedMaxUtil":I
    iput v7, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMinUtilization:I

    .line 390
    move-wide/from16 v41, v2

    move/from16 v2, v32

    .end local v32    # "currentMaxUtil":I
    .local v2, "currentMaxUtil":I
    .local v41, "currentMaxObsoleteSize":J
    iput v2, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMaxUtilization:I

    .line 391
    move/from16 v3, v35

    .end local v35    # "predictedMinUtil":I
    .local v3, "predictedMinUtil":I
    iput v3, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMinUtilization:I

    .line 392
    move-wide/from16 v43, v5

    move/from16 v5, v37

    .end local v37    # "predictedMaxUtil":I
    .local v5, "predictedMaxUtil":I
    .restart local v43    # "predictedMinObsoleteSize":J
    iput v5, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMaxUtilization:I

    .line 409
    move/from16 v6, v26

    .end local v26    # "totalThreshold":I
    .local v6, "totalThreshold":I
    if-ge v3, v6, :cond_c

    .line 411
    move-object/from16 v26, v50

    .line 412
    .local v26, "fileChosen":Ljava/lang/Long;
    const-string v29, "predicted min util is below minUtilization"

    move-object/from16 v32, v4

    move-object/from16 v4, v29

    move/from16 v29, v27

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v26, v6

    move-object/from16 v6, p1

    .local v29, "reason":Ljava/lang/String;
    goto :goto_6

    .line 414
    .end local v26    # "fileChosen":Ljava/lang/Long;
    .end local v29    # "reason":Ljava/lang/String;
    :cond_c
    move/from16 v26, v6

    move/from16 v6, v27

    .end local v27    # "fileThreshold":I
    .local v6, "fileThreshold":I
    .local v26, "totalThreshold":I
    if-ge v0, v6, :cond_d

    .line 416
    move-object/from16 v27, v25

    .line 417
    .local v27, "fileChosen":Ljava/lang/Long;
    const-string v29, "file has avg util below minFileUtilization"

    move-object/from16 v32, v4

    move-object/from16 v4, v29

    move/from16 v29, v6

    move-object/from16 v6, p1

    move-object/from16 v58, v27

    move/from16 v27, v0

    move-object/from16 v0, v58

    .restart local v29    # "reason":Ljava/lang/String;
    goto :goto_6

    .line 419
    .end local v27    # "fileChosen":Ljava/lang/Long;
    .end local v29    # "reason":Ljava/lang/String;
    :cond_d
    move/from16 v27, v0

    .end local v0    # "bestGradualFileMaxUtil":I
    .local v27, "bestGradualFileMaxUtil":I
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->filesToMigrate:Lcom/sleepycat/je/cleaner/FilesToMigrate;

    move/from16 v29, v6

    move-object/from16 v6, p1

    .end local v6    # "fileThreshold":I
    .local v29, "fileThreshold":I
    invoke-virtual {v0, v6, v4}, Lcom/sleepycat/je/cleaner/FilesToMigrate;->hasNext(Ljava/util/SortedMap;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 421
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->filesToMigrate:Lcom/sleepycat/je/cleaner/FilesToMigrate;

    invoke-virtual {v0, v6, v4}, Lcom/sleepycat/je/cleaner/FilesToMigrate;->next(Ljava/util/SortedMap;Ljava/util/Set;)J

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 422
    .local v0, "fileChosen":Ljava/lang/Long;
    const-string v32, "there are more forceCleanFiles"

    move-object/from16 v58, v32

    move-object/from16 v32, v4

    move-object/from16 v4, v58

    .local v32, "reason":Ljava/lang/String;
    goto :goto_6

    .line 424
    .end local v0    # "fileChosen":Ljava/lang/Long;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_e
    if-eqz p2, :cond_f

    .line 426
    move-object/from16 v0, v50

    .line 427
    .restart local v0    # "fileChosen":Ljava/lang/Long;
    const-string v32, "forced for testing"

    move-object/from16 v58, v32

    move-object/from16 v32, v4

    move-object/from16 v4, v58

    .restart local v32    # "reason":Ljava/lang/String;
    goto :goto_6

    .line 430
    .end local v0    # "fileChosen":Ljava/lang/Long;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_f
    const/4 v0, 0x0

    .line 431
    .restart local v0    # "fileChosen":Ljava/lang/Long;
    const-string v32, "no file selected"

    move-object/from16 v58, v32

    move-object/from16 v32, v4

    move-object/from16 v4, v58

    .line 434
    .local v4, "reason":Ljava/lang/String;
    .local v32, "inProgressFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_6
    const-string v35, ""

    .line 435
    .local v35, "bestFileMsg":Ljava/lang/String;
    const-string v37, ""

    .line 436
    .local v37, "twoPassMsg":Ljava/lang/String;
    const/16 v39, -0x1

    .line 438
    .local v39, "pass1RequiredUtil":I
    if-eqz v0, :cond_12

    move-object/from16 v6, v50

    .end local v50    # "bestFile":Ljava/lang/Long;
    .local v6, "bestFile":Ljava/lang/Long;
    invoke-virtual {v0, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_11

    .line 440
    move-object/from16 v50, v6

    .end local v6    # "bestFile":Ljava/lang/Long;
    .restart local v50    # "bestFile":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v45, v8

    .end local v8    # "currentTotalSize":J
    .local v45, "currentTotalSize":J
    const-string v8, ", chose file with util min: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v8, v28

    .end local v28    # "bestFileMinUtil":I
    .local v8, "bestFileMinUtil":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " max: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v9, v24

    .end local v24    # "bestFileMaxUtil":I
    .local v9, "bestFileMaxUtil":I
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v51, v10

    .end local v10    # "predictedTotalSize":J
    .local v51, "predictedTotalSize":J
    const-string v10, " avg: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v10, v33

    .end local v33    # "bestFileAvgUtil":I
    .local v10, "bestFileAvgUtil":I
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v35, v6

    .line 453
    move/from16 v6, v23

    .end local v23    # "twoPassThreshold":I
    .local v6, "twoPassThreshold":I
    if-le v9, v6, :cond_10

    sub-int v11, v9, v8

    move/from16 v23, v8

    move/from16 v8, v16

    .end local v16    # "twoPassGap":I
    .local v8, "twoPassGap":I
    .local v23, "bestFileMinUtil":I
    if-lt v11, v8, :cond_13

    .line 456
    move/from16 v39, v6

    .line 457
    const-string v11, ", 2-pass cleaning"

    move-object/from16 v37, v11

    move/from16 v16, v6

    move-object/from16 v11, v35

    move-object/from16 v6, v37

    goto :goto_8

    .line 453
    .end local v23    # "bestFileMinUtil":I
    .local v8, "bestFileMinUtil":I
    .restart local v16    # "twoPassGap":I
    :cond_10
    move/from16 v23, v8

    move/from16 v8, v16

    .end local v16    # "twoPassGap":I
    .local v8, "twoPassGap":I
    .restart local v23    # "bestFileMinUtil":I
    goto :goto_7

    .line 438
    .end local v9    # "bestFileMaxUtil":I
    .end local v45    # "currentTotalSize":J
    .end local v50    # "bestFile":Ljava/lang/Long;
    .end local v51    # "predictedTotalSize":J
    .local v6, "bestFile":Ljava/lang/Long;
    .local v8, "currentTotalSize":J
    .local v10, "predictedTotalSize":J
    .restart local v16    # "twoPassGap":I
    .local v23, "twoPassThreshold":I
    .restart local v24    # "bestFileMaxUtil":I
    .restart local v28    # "bestFileMinUtil":I
    .restart local v33    # "bestFileAvgUtil":I
    :cond_11
    move-object/from16 v50, v6

    move-wide/from16 v45, v8

    move-wide/from16 v51, v10

    move/from16 v8, v16

    move/from16 v6, v23

    move/from16 v9, v24

    move/from16 v23, v28

    move/from16 v10, v33

    .end local v16    # "twoPassGap":I
    .end local v24    # "bestFileMaxUtil":I
    .end local v28    # "bestFileMinUtil":I
    .end local v33    # "bestFileAvgUtil":I
    .local v6, "twoPassThreshold":I
    .local v8, "twoPassGap":I
    .restart local v9    # "bestFileMaxUtil":I
    .local v10, "bestFileAvgUtil":I
    .local v23, "bestFileMinUtil":I
    .restart local v45    # "currentTotalSize":J
    .restart local v50    # "bestFile":Ljava/lang/Long;
    .restart local v51    # "predictedTotalSize":J
    goto :goto_7

    .end local v6    # "twoPassThreshold":I
    .end local v9    # "bestFileMaxUtil":I
    .end local v45    # "currentTotalSize":J
    .end local v51    # "predictedTotalSize":J
    .local v8, "currentTotalSize":J
    .local v10, "predictedTotalSize":J
    .restart local v16    # "twoPassGap":I
    .local v23, "twoPassThreshold":I
    .restart local v24    # "bestFileMaxUtil":I
    .restart local v28    # "bestFileMinUtil":I
    .restart local v33    # "bestFileAvgUtil":I
    :cond_12
    move-wide/from16 v45, v8

    move-wide/from16 v51, v10

    move/from16 v8, v16

    move/from16 v6, v23

    move/from16 v9, v24

    move/from16 v23, v28

    move/from16 v10, v33

    .line 461
    .end local v16    # "twoPassGap":I
    .end local v24    # "bestFileMaxUtil":I
    .end local v28    # "bestFileMinUtil":I
    .end local v33    # "bestFileAvgUtil":I
    .restart local v6    # "twoPassThreshold":I
    .local v8, "twoPassGap":I
    .restart local v9    # "bestFileMaxUtil":I
    .local v10, "bestFileAvgUtil":I
    .local v23, "bestFileMinUtil":I
    .restart local v45    # "currentTotalSize":J
    .restart local v51    # "predictedTotalSize":J
    :cond_13
    :goto_7
    move/from16 v16, v6

    move-object/from16 v11, v35

    move-object/from16 v6, v37

    .end local v35    # "bestFileMsg":Ljava/lang/String;
    .end local v37    # "twoPassMsg":Ljava/lang/String;
    .local v6, "twoPassMsg":Ljava/lang/String;
    .local v11, "bestFileMsg":Ljava/lang/String;
    .local v16, "twoPassThreshold":I
    :goto_8
    if-eqz v0, :cond_14

    sget-object v24, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_9

    :cond_14
    sget-object v24, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_9
    move-object/from16 v28, v24

    .line 463
    .local v28, "logLevel":Ljava/util/logging/Level;
    move/from16 v24, v8

    .end local v8    # "twoPassGap":I
    .local v24, "twoPassGap":I
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->logger:Ljava/util/logging/Logger;

    move/from16 v33, v9

    move-object/from16 v9, v28

    .end local v28    # "logLevel":Ljava/util/logging/Level;
    .local v9, "logLevel":Ljava/util/logging/Level;
    .local v33, "bestFileMaxUtil":I
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 465
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->logger:Ljava/util/logging/Logger;

    move/from16 v28, v10

    .end local v10    # "bestFileAvgUtil":I
    .local v28, "bestFileAvgUtil":I
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-wide/from16 v53, v12

    .end local v12    # "currentMinObsoleteSize":J
    .local v53, "currentMinObsoleteSize":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clean file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v0, :cond_15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v55, v14

    .end local v14    # "predictedMaxObsoleteSize":J
    .local v55, "predictedMaxObsoleteSize":J
    const-string v14, "0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 469
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .end local v55    # "predictedMaxObsoleteSize":J
    .restart local v14    # "predictedMaxObsoleteSize":J
    :cond_15
    move-wide/from16 v55, v14

    .end local v14    # "predictedMaxObsoleteSize":J
    .restart local v55    # "predictedMaxObsoleteSize":J
    const-string v13, "none"

    :goto_a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current util min: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " max: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", predicted util min: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " max: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 465
    invoke-static {v8, v10, v9, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_b

    .line 463
    .end local v28    # "bestFileAvgUtil":I
    .end local v53    # "currentMinObsoleteSize":J
    .end local v55    # "predictedMaxObsoleteSize":J
    .restart local v10    # "bestFileAvgUtil":I
    .restart local v12    # "currentMinObsoleteSize":J
    .restart local v14    # "predictedMaxObsoleteSize":J
    :cond_16
    move/from16 v28, v10

    move-wide/from16 v53, v12

    move-wide/from16 v55, v14

    .line 478
    .end local v10    # "bestFileAvgUtil":I
    .end local v12    # "currentMinObsoleteSize":J
    .end local v14    # "predictedMaxObsoleteSize":J
    .restart local v28    # "bestFileAvgUtil":I
    .restart local v53    # "currentMinObsoleteSize":J
    .restart local v55    # "predictedMaxObsoleteSize":J
    :goto_b
    if-eqz v0, :cond_17

    new-instance v8, Lcom/sleepycat/je/utilint/Pair;

    .line 479
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v8

    goto :goto_c

    :cond_17
    const/16 v17, 0x0

    .line 478
    :goto_c
    monitor-exit p0

    return-object v17

    .line 151
    .end local v0    # "fileChosen":Ljava/lang/Long;
    .end local v2    # "currentMaxUtil":I
    .end local v3    # "predictedMinUtil":I
    .end local v4    # "reason":Ljava/lang/String;
    .end local v5    # "predictedMaxUtil":I
    .end local v6    # "twoPassMsg":Ljava/lang/String;
    .end local v7    # "currentMinUtil":I
    .end local v9    # "logLevel":Ljava/util/logging/Level;
    .end local v11    # "bestFileMsg":Ljava/lang/String;
    .end local v16    # "twoPassThreshold":I
    .end local v18    # "firstActiveTxnLsn":J
    .end local v20    # "fileSelector":Lcom/sleepycat/je/cleaner/FileSelector;
    .end local v21    # "firstActiveFile":J
    .end local v23    # "bestFileMinUtil":I
    .end local v24    # "twoPassGap":I
    .end local v25    # "bestGradualFile":Ljava/lang/Long;
    .end local v26    # "totalThreshold":I
    .end local v27    # "bestGradualFileMaxUtil":I
    .end local v28    # "bestFileAvgUtil":I
    .end local v29    # "fileThreshold":I
    .end local v30    # "lastFileToClean":J
    .end local v32    # "inProgressFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v33    # "bestFileMaxUtil":I
    .end local v34    # "expirationEnabled":Z
    .end local v36    # "gradualExpiration":Z
    .end local v38    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .end local v39    # "pass1RequiredUtil":I
    .end local v40    # "minAge":I
    .end local v41    # "currentMaxObsoleteSize":J
    .end local v43    # "predictedMinObsoleteSize":J
    .end local v45    # "currentTotalSize":J
    .end local v47    # "currentTime":J
    .end local v50    # "bestFile":Ljava/lang/Long;
    .end local v51    # "predictedTotalSize":J
    .end local v53    # "currentMinObsoleteSize":J
    .end local v55    # "predictedMaxObsoleteSize":J
    .end local p1    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local p2    # "forceCleaning":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurrentMaxUtilization()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMaxUtilization:I

    return v0
.end method

.method getCurrentMinUtilization()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->currentMinUtilization:I

    return v0
.end method

.method getPredictedMaxUtilization()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMaxUtilization:I

    return v0
.end method

.method getPredictedMinUtilization()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->predictedMinUtilization:I

    return v0
.end method
