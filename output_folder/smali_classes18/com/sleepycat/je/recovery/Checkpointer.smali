.class public Lcom/sleepycat/je/recovery/Checkpointer;
.super Lcom/sleepycat/je/utilint/DaemonThread;
.source "Checkpointer.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;,
        Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;,
        Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static beforeFlushHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field static examineINForCheckpointHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation
.end field

.field private static maxFlushLevelHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

.field private checkpointId:J

.field private final flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

.field private highPriority:Z

.field private lastCheckpointEnd:J

.field private volatile lastCheckpointFirstActiveLsn:J

.field private lastCheckpointInterval:J

.field private lastCheckpointMillis:J

.field private lastCheckpointStart:J

.field private final logFileMax:J

.field private final logSizeBytesInterval:J

.field private nCheckpoints:J

.field private final timeInterval:J

.field private volatile wakeupAfterNoWrites:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 367
    nop

    .line 373
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/recovery/Checkpointer;->maxFlushLevelHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 375
    sput-object v0, Lcom/sleepycat/je/recovery/Checkpointer;->beforeFlushHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 377
    sput-object v0, Lcom/sleepycat/je/recovery/Checkpointer;->examineINForCheckpointHook:Lcom/sleepycat/je/utilint/TestHook;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "waitTime"    # J
    .param p4, "name"    # Ljava/lang/String;

    .line 412
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sleepycat/je/utilint/DaemonThread;-><init>(JLjava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    .line 415
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logSizeBytesInterval:J

    .line 416
    nop

    .line 417
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logFileMax:J

    .line 418
    iput-wide p2, p0, Lcom/sleepycat/je/recovery/Checkpointer;->timeInterval:J

    .line 419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointMillis:J

    .line 421
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->nCheckpoints:J

    .line 422
    new-instance v0, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    invoke-direct {v0}, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    .line 424
    new-instance v0, Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/recovery/DirtyINMap;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    .line 427
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/recovery/Checkpointer;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 428
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 429
    return-void
.end method

.method private static flushDirtyNodes(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/recovery/DirtyINMap;JZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V
    .locals 15
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "dirtyMap"    # Lcom/sleepycat/je/recovery/DirtyINMap;
    .param p2, "checkpointStart"    # J
    .param p4, "highPriority"    # Z
    .param p5, "fstats"    # Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    .line 1035
    move-object/from16 v8, p1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v9

    .line 1036
    .local v9, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 1039
    .local v10, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/recovery/DirtyINMap;->getNumLevels()I

    move-result v0

    if-lez v0, :cond_3

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/recovery/DirtyINMap;->getLowestLevelSet()Ljava/lang/Integer;

    move-result-object v0

    .line 1045
    .local v0, "currentLevel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v11, v1

    .line 1052
    .local v11, "currentLevelVal":I
    const/high16 v1, 0x20000

    if-ne v11, v1, :cond_0

    .line 1053
    invoke-virtual/range {p1 .. p3}, Lcom/sleepycat/je/recovery/DirtyINMap;->flushMapLNs(J)V

    .line 1058
    :cond_0
    :goto_1
    nop

    .line 1059
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->removeNextNode(Ljava/lang/Integer;)Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    move-result-object v1

    move-object v12, v1

    .line 1061
    .local v12, "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    if-nez v12, :cond_1

    .line 1062
    nop

    .line 1105
    .end local v12    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->removeLevel(Ljava/lang/Integer;)V

    .line 1106
    .end local v0    # "currentLevel":Ljava/lang/Integer;
    .end local v11    # "currentLevelVal":I
    goto :goto_0

    .line 1065
    .restart local v0    # "currentLevel":Ljava/lang/Integer;
    .restart local v11    # "currentLevelVal":I
    .restart local v12    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V

    .line 1072
    iget-object v1, v12, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    const-wide/16 v2, -0x1

    invoke-virtual {v9, v1, v2, v3, v10}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    move-object v13, v1

    .line 1075
    .local v13, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v13, :cond_2

    .line 1078
    nop

    .line 1079
    invoke-virtual {v8, v13}, Lcom/sleepycat/je/recovery/DirtyINMap;->getHighestFlushLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v1

    move v14, v1

    .line 1081
    .local v14, "maxFlushLevel":I
    if-gt v11, v14, :cond_2

    .line 1083
    const/4 v7, 0x1

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    move v4, v14

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/recovery/Checkpointer;->flushIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;Lcom/sleepycat/je/recovery/DirtyINMap;IZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;Z)V

    .line 1091
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sleepAfterBackgroundIO()V

    .line 1101
    .end local v14    # "maxFlushLevel":I
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    .end local v12    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local v13    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_1

    .line 1108
    .end local v0    # "currentLevel":Ljava/lang/Integer;
    .end local v11    # "currentLevelVal":I
    :cond_3
    invoke-virtual {v9, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1109
    nop

    .line 1116
    return-void

    .line 1108
    :catchall_0
    move-exception v0

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    throw v0
.end method

.method private static flushIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;Lcom/sleepycat/je/recovery/DirtyINMap;IZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;Z)V
    .locals 24
    .param p0, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "targetRef"    # Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .param p2, "dirtyMap"    # Lcom/sleepycat/je/recovery/DirtyINMap;
    .param p3, "maxFlushLevel"    # I
    .param p4, "highPriority"    # Z
    .param p5, "fstats"    # Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .param p6, "allowLogSubtree"    # Z

    .line 1177
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v13

    .line 1178
    .local v13, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v7

    .line 1179
    .local v7, "tree":Lcom/sleepycat/je/tree/Tree;
    iget v2, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeLevel:I

    .line 1182
    .local v2, "targetLevel":I
    if-lt v2, v11, :cond_1

    sget-object v0, Lcom/sleepycat/je/recovery/Checkpointer;->maxFlushLevelHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1183
    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1185
    :cond_1
    :goto_0
    iget-boolean v0, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->isRoot:Z

    if-eqz v0, :cond_3

    .line 1187
    new-instance v0, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;

    iget-wide v3, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    invoke-direct {v0, v8, v3, v4}, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1190
    .local v0, "flusher":Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;
    invoke-virtual {v7, v0}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedExclusive(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;

    .line 1196
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->getFlushed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 1198
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1199
    iget-wide v3, v12, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v12, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    .line 1200
    iget-wide v3, v12, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    add-long/2addr v3, v5

    iput-wide v3, v12, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    .line 1207
    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;->stillRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    return-void

    .line 1218
    .end local v0    # "flusher":Lcom/sleepycat/je/recovery/Checkpointer$RootFlusher;
    :cond_3
    const-wide/16 v15, -0x1

    iget-object v0, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->treeKey:[B

    iget v1, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeLevel:I

    iget v3, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeLevel:I

    const/4 v4, 0x1

    add-int/lit8 v19, v3, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/16 v23, 0x0

    move-object v14, v7

    move-object/from16 v17, v0

    move/from16 v18, v1

    invoke-virtual/range {v14 .. v23}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(J[BIIZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v14

    .line 1230
    .local v14, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-object v0, v14, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_4

    .line 1231
    return-void

    .line 1234
    :cond_4
    iget-object v15, v14, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 1235
    .local v15, "parent":Lcom/sleepycat/je/tree/IN;
    iget v1, v14, Lcom/sleepycat/je/tree/SearchResult;->index:I

    .line 1236
    .local v1, "index":I
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v3

    .line 1248
    .local v3, "parentLevel":I
    const v0, 0xffff

    and-int/2addr v0, v3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 1258
    .local v0, "bottomLevelTarget":Z
    :goto_1
    if-lt v2, v11, :cond_6

    .line 1259
    :try_start_0
    sget-object v5, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    .local v5, "provisional":Lcom/sleepycat/je/log/Provisional;
    goto :goto_2

    .line 1402
    .end local v0    # "bottomLevelTarget":Z
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :catchall_0
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object/from16 v18, v7

    goto/16 :goto_d

    .line 1260
    .restart local v0    # "bottomLevelTarget":Z
    :cond_6
    if-eqz v0, :cond_7

    .line 1261
    sget-object v5, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    goto :goto_2

    .line 1263
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_7
    :try_start_1
    sget-object v5, Lcom/sleepycat/je/log/Provisional;->BEFORE_CKPT_END:Lcom/sleepycat/je/log/Provisional;

    .line 1276
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :goto_2
    iget-boolean v4, v14, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v6, -0x1

    if-nez v4, :cond_9

    .line 1277
    if-le v3, v2, :cond_8

    .line 1278
    move-object/from16 v18, v7

    const/4 v4, 0x0

    const/4 v7, 0x1

    .end local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v18, "tree":Lcom/sleepycat/je/tree/Tree;
    :try_start_2
    invoke-virtual {v10, v15, v6, v4, v7}, Lcom/sleepycat/je/recovery/DirtyINMap;->addIN(Lcom/sleepycat/je/tree/IN;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1402
    .end local v0    # "bottomLevelTarget":Z
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :catchall_1
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    goto/16 :goto_d

    .line 1277
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v0    # "bottomLevelTarget":Z
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_8
    move-object/from16 v18, v7

    .line 1402
    .end local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    :goto_3
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1283
    return-void

    .line 1294
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_9
    move-object/from16 v18, v7

    .end local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_1b

    .line 1296
    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_3
    invoke-virtual {v10, v15, v6, v4, v7}, Lcom/sleepycat/je/recovery/DirtyINMap;->addIN(Lcom/sleepycat/je/tree/IN;IZZ)V

    .line 1327
    iget-wide v6, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->lsn:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v16, -0x1

    cmp-long v4, v6, v16

    if-eqz v4, :cond_a

    .line 1329
    :try_start_4
    iget-wide v6, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->lsn:J

    invoke-virtual {v15, v1}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    cmp-long v4, v6, v19

    if-eqz v4, :cond_b

    .line 1402
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1330
    return-void

    .line 1333
    :cond_a
    :try_start_5
    iget-wide v6, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    const-wide/16 v19, 0x0

    cmp-long v4, v6, v19

    if-ltz v4, :cond_1a

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1336
    invoke-virtual {v15, v1}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/IN;

    .line 1338
    .local v4, "target":Lcom/sleepycat/je/tree/IN;
    if-eqz v4, :cond_18

    iget-wide v6, v9, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    .line 1339
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v19

    cmp-long v6, v6, v19

    if-eqz v6, :cond_b

    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    goto/16 :goto_c

    .line 1345
    .end local v4    # "target":Lcom/sleepycat/je/tree/IN;
    :cond_b
    invoke-static {v13, v15, v1, v5, v12}, Lcom/sleepycat/je/recovery/Checkpointer;->logDirtyIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1352
    if-eqz v0, :cond_17

    if-nez p6, :cond_c

    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    goto/16 :goto_b

    .line 1363
    :cond_c
    if-eqz p4, :cond_d

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v4, :cond_d

    .line 1364
    const/4 v4, 0x0

    move-object v7, v4

    .local v4, "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    goto :goto_4

    .line 1366
    .end local v4    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :cond_d
    :try_start_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    .line 1369
    .local v7, "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :goto_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v6

    if-ge v4, v6, :cond_12

    .line 1371
    if-ne v4, v1, :cond_e

    .line 1372
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move v9, v4

    move-object v0, v5

    goto :goto_7

    .line 1375
    :cond_e
    invoke-virtual {v15, v4}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/tree/IN;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v19, v6

    .line 1376
    .local v19, "child":Lcom/sleepycat/je/tree/IN;
    if-eqz v19, :cond_f

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :cond_f
    move-wide/from16 v20, v16

    :goto_6
    move/from16 v22, v0

    move-object v0, v5

    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v22, "bottomLevelTarget":Z
    move-wide/from16 v5, v20

    .line 1377
    .local v5, "childId":J
    :try_start_9
    invoke-virtual {v15, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move v8, v3

    move v9, v4

    .end local v3    # "parentLevel":I
    .end local v4    # "i":I
    .local v8, "parentLevel":I
    .local v9, "i":I
    move-wide/from16 v3, v20

    .line 1379
    .local v3, "childLsn":J
    nop

    .line 1380
    move/from16 v20, v1

    .end local v1    # "index":I
    .local v20, "index":I
    move-object/from16 v1, p2

    move/from16 v21, v2

    .end local v2    # "targetLevel":I
    .local v21, "targetLevel":I
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/recovery/DirtyINMap;->removeNode(IJJ)Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    move-result-object v1

    .line 1382
    .local v1, "childRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    if-nez v1, :cond_10

    .line 1383
    goto :goto_7

    .line 1386
    :cond_10
    if-eqz v7, :cond_11

    .line 1387
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1389
    :cond_11
    invoke-static {v13, v15, v9, v0, v12}, Lcom/sleepycat/je/recovery/Checkpointer;->logDirtyIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V

    .line 1369
    .end local v1    # "childRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local v3    # "childLsn":J
    .end local v5    # "childId":J
    .end local v19    # "child":Lcom/sleepycat/je/tree/IN;
    :goto_7
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v9, p1

    move-object v5, v0

    move v3, v8

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v0, v22

    move-object/from16 v8, p0

    .end local v9    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .end local v8    # "parentLevel":I
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local v22    # "bottomLevelTarget":Z
    .local v0, "bottomLevelTarget":Z
    .local v1, "index":I
    .restart local v2    # "targetLevel":I
    .local v3, "parentLevel":I
    .local v5, "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_12
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move v9, v4

    move-object v0, v5

    .line 1394
    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v4    # "i":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    if-gt v8, v11, :cond_13

    .line 1395
    nop

    .line 1396
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v3

    .line 1397
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v5

    .line 1395
    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/recovery/DirtyINMap;->removeNode(IJJ)Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v0, v1

    .local v1, "parentRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    goto :goto_8

    .line 1399
    .end local v1    # "parentRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :cond_13
    const/4 v1, 0x0

    move-object v0, v1

    .line 1402
    .end local v22    # "bottomLevelTarget":Z
    .local v0, "parentRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :goto_8
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1403
    nop

    .line 1411
    if-eqz v7, :cond_15

    .line 1412
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    .line 1413
    .local v16, "childRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v19, "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/recovery/Checkpointer;->flushIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;Lcom/sleepycat/je/recovery/DirtyINMap;IZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;Z)V

    .line 1416
    .end local v16    # "childRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    move-object/from16 v7, v19

    goto :goto_9

    .line 1412
    .end local v19    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .restart local v7    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :cond_14
    move-object/from16 v19, v7

    .end local v7    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .restart local v19    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    goto :goto_a

    .line 1411
    .end local v19    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .restart local v7    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :cond_15
    move-object/from16 v19, v7

    .line 1425
    .end local v7    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .restart local v19    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :goto_a
    if-eqz v0, :cond_16

    .line 1426
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/recovery/Checkpointer;->flushIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;Lcom/sleepycat/je/recovery/DirtyINMap;IZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;Z)V

    .line 1430
    :cond_16
    return-void

    .line 1352
    .end local v8    # "parentLevel":I
    .end local v19    # "logSiblingsSeparately":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .local v0, "bottomLevelTarget":Z
    .local v1, "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_17
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    .line 1402
    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    :goto_b
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1353
    return-void

    .line 1338
    .end local v8    # "parentLevel":I
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local v22    # "bottomLevelTarget":Z
    .local v0, "bottomLevelTarget":Z
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .local v4, "target":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_18
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    .line 1402
    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    :goto_c
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1340
    return-void

    .line 1334
    .end local v4    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "parentLevel":I
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local v22    # "bottomLevelTarget":Z
    .local v0, "bottomLevelTarget":Z
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_19
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    :try_start_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v8    # "parentLevel":I
    .end local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local p3    # "maxFlushLevel":I
    .end local p4    # "highPriority":Z
    .end local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .end local p6    # "allowLogSubtree":Z
    throw v1

    .line 1333
    .end local v22    # "bottomLevelTarget":Z
    .local v0, "bottomLevelTarget":Z
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .restart local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .restart local p3    # "maxFlushLevel":I
    .restart local p4    # "highPriority":Z
    .restart local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .restart local p6    # "allowLogSubtree":Z
    :cond_1a
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v8    # "parentLevel":I
    .end local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local p3    # "maxFlushLevel":I
    .end local p4    # "highPriority":Z
    .end local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .end local p6    # "allowLogSubtree":Z
    throw v1

    .line 1402
    .end local v0    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .end local v22    # "bottomLevelTarget":Z
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .restart local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .restart local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .restart local p3    # "maxFlushLevel":I
    .restart local p4    # "highPriority":Z
    .restart local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .restart local p6    # "allowLogSubtree":Z
    :catchall_2
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    goto :goto_d

    .line 1294
    .end local v8    # "parentLevel":I
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .local v0, "bottomLevelTarget":Z
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .restart local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_1b
    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object v0, v5

    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .local v0, "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local v8    # "parentLevel":I
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local v22    # "bottomLevelTarget":Z
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v8    # "parentLevel":I
    .end local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .end local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local p3    # "maxFlushLevel":I
    .end local p4    # "highPriority":Z
    .end local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .end local p6    # "allowLogSubtree":Z
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1402
    .end local v0    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .end local v22    # "bottomLevelTarget":Z
    .restart local v8    # "parentLevel":I
    .restart local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v14    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    .restart local p0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "targetRef":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .restart local p2    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .restart local p3    # "maxFlushLevel":I
    .restart local p4    # "highPriority":Z
    .restart local p5    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .restart local p6    # "allowLogSubtree":Z
    :catchall_3
    move-exception v0

    goto :goto_d

    .end local v8    # "parentLevel":I
    .end local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v20    # "index":I
    .end local v21    # "targetLevel":I
    .restart local v1    # "index":I
    .restart local v2    # "targetLevel":I
    .restart local v3    # "parentLevel":I
    .local v7, "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_4
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v2

    move v8, v3

    move-object/from16 v18, v7

    .end local v1    # "index":I
    .end local v2    # "targetLevel":I
    .end local v3    # "parentLevel":I
    .end local v7    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v8    # "parentLevel":I
    .restart local v18    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v20    # "index":I
    .restart local v21    # "targetLevel":I
    :goto_d
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0
.end method

.method public static getWakeupPeriod(Lcom/sleepycat/je/dbi/DbConfigManager;)J
    .locals 7
    .param p0, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 498
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    .line 499
    .local v0, "wakeupPeriod":J
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    .line 500
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    .line 503
    .local v2, "bytePeriod":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    .line 505
    invoke-virtual {v6}, Lcom/sleepycat/je/config/LongConfigParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 507
    invoke-virtual {v6}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot both be 0. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 514
    :cond_1
    :goto_0
    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 515
    return-wide v0

    .line 517
    :cond_2
    return-wide v4
.end method

.method private isRunnable(Lcom/sleepycat/je/CheckpointConfig;)Z
    .locals 24
    .param p1, "config"    # Lcom/sleepycat/je/CheckpointConfig;

    .line 620
    move-object/from16 v1, p0

    const-string v2, " lastCkpt="

    const-string v3, " runnable="

    const-string v4, " force="

    const-string v5, " time interval="

    const-string v6, " nextLsn="

    const-string/jumbo v7, "size interval="

    const-wide/16 v8, 0x0

    .line 621
    .local v8, "useBytesInterval":J
    const-wide/16 v10, 0x0

    .line 622
    .local v10, "useTimeInterval":J
    const-wide/16 v12, -0x1

    .line 623
    .local v12, "nextLsn":J
    const/4 v14, 0x0

    .line 625
    .local v14, "runnable":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getForce()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/16 v17, 0x1

    if-eqz v0, :cond_3

    .line 626
    const/4 v0, 0x1

    .line 627
    .end local v14    # "runnable":Z
    .local v0, "runnable":Z
    nop

    .line 682
    iget-object v14, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 683
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-wide/16 v15, -0x1

    cmp-long v7, v12, v15

    if-eqz v7, :cond_0

    .line 686
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 687
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_0
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    const-wide/16 v15, -0x1

    cmp-long v6, v6, v15

    if-eqz v6, :cond_1

    .line 690
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_1
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getForce()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 697
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 627
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return v17

    .line 630
    .end local v0    # "runnable":Z
    .local v14, "runnable":Z
    :cond_3
    :try_start_1
    iget-boolean v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->wakeupAfterNoWrites:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_7

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/Checkpointer;->needCheckpointForCleanedFiles()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 631
    const/4 v0, 0x1

    .line 632
    .end local v14    # "runnable":Z
    .restart local v0    # "runnable":Z
    nop

    .line 682
    iget-object v14, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 683
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-wide/16 v15, -0x1

    cmp-long v7, v12, v15

    if-eqz v7, :cond_4

    .line 686
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 687
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_4
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    const-wide/16 v15, -0x1

    cmp-long v6, v6, v15

    if-eqz v6, :cond_5

    .line 690
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_5
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getForce()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 697
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 632
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    return v17

    .line 682
    .end local v0    # "runnable":Z
    .local v14, "runnable":Z
    :catchall_0
    move-exception v0

    move/from16 v17, v14

    goto/16 :goto_2

    .line 635
    :cond_7
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getKBytes()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_8

    .line 636
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getKBytes()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    shl-int/lit8 v0, v0, 0xa

    int-to-long v8, v0

    goto :goto_0

    .line 638
    :cond_8
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getMinutes()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v0, :cond_9

    .line 640
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getMinutes()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    goto :goto_0

    .line 642
    :cond_9
    move-wide/from16 v18, v8

    .end local v8    # "useBytesInterval":J
    .local v18, "useBytesInterval":J
    :try_start_7
    iget-wide v8, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logSizeBytesInterval:J

    cmp-long v0, v8, v15

    if-eqz v0, :cond_a

    .line 643
    nop

    .end local v18    # "useBytesInterval":J
    .restart local v8    # "useBytesInterval":J
    goto :goto_0

    .line 646
    .end local v8    # "useBytesInterval":J
    .restart local v18    # "useBytesInterval":J
    :cond_a
    iget-wide v8, v1, Lcom/sleepycat/je/recovery/Checkpointer;->timeInterval:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-wide v10, v8

    move-wide/from16 v8, v18

    .line 653
    .end local v18    # "useBytesInterval":J
    .restart local v8    # "useBytesInterval":J
    :goto_0
    cmp-long v0, v8, v15

    if-eqz v0, :cond_c

    .line 654
    :try_start_8
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 656
    .end local v12    # "nextLsn":J
    .local v18, "nextLsn":J
    :try_start_9
    iget-wide v12, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v17, v14

    .end local v14    # "runnable":Z
    .local v17, "runnable":Z
    :try_start_a
    iget-wide v14, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logFileMax:J

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    invoke-static/range {v18 .. v23}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    cmp-long v0, v12, v8

    if-ltz v0, :cond_b

    .line 660
    const/4 v14, 0x1

    move-wide/from16 v12, v18

    .end local v17    # "runnable":Z
    .restart local v14    # "runnable":Z
    goto :goto_1

    .line 656
    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    :cond_b
    move/from16 v14, v17

    move-wide/from16 v12, v18

    goto :goto_1

    .line 682
    :catchall_1
    move-exception v0

    move-wide/from16 v12, v18

    goto/16 :goto_2

    .end local v17    # "runnable":Z
    .restart local v14    # "runnable":Z
    :catchall_2
    move-exception v0

    move/from16 v17, v14

    move-wide/from16 v12, v18

    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    goto/16 :goto_2

    .end local v17    # "runnable":Z
    .end local v18    # "nextLsn":J
    .restart local v12    # "nextLsn":J
    .restart local v14    # "runnable":Z
    :catchall_3
    move-exception v0

    move/from16 v17, v14

    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    goto/16 :goto_2

    .line 663
    .end local v17    # "runnable":Z
    .restart local v14    # "runnable":Z
    :cond_c
    move/from16 v17, v14

    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    cmp-long v0, v10, v15

    if-eqz v0, :cond_d

    .line 669
    :try_start_b
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 670
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v14

    .line 672
    .local v14, "lastUsedLsn":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-wide/from16 v20, v12

    .end local v12    # "nextLsn":J
    .local v20, "nextLsn":J
    :try_start_c
    iget-wide v12, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointMillis:J

    sub-long v18, v18, v12

    cmp-long v0, v18, v10

    if-ltz v0, :cond_e

    iget-wide v12, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    .line 674
    invoke-static {v14, v15, v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v0, :cond_e

    .line 676
    const/4 v0, 0x1

    move v14, v0

    move-wide/from16 v12, v20

    .end local v17    # "runnable":Z
    .restart local v0    # "runnable":Z
    goto :goto_1

    .line 682
    .end local v0    # "runnable":Z
    .end local v14    # "lastUsedLsn":J
    .restart local v17    # "runnable":Z
    :catchall_4
    move-exception v0

    move-wide/from16 v12, v20

    goto/16 :goto_2

    .end local v20    # "nextLsn":J
    .restart local v12    # "nextLsn":J
    :catchall_5
    move-exception v0

    move-wide/from16 v20, v12

    .end local v12    # "nextLsn":J
    .restart local v20    # "nextLsn":J
    goto/16 :goto_2

    .line 663
    .end local v20    # "nextLsn":J
    .restart local v12    # "nextLsn":J
    :cond_d
    move-wide/from16 v20, v12

    .line 679
    .end local v12    # "nextLsn":J
    .restart local v20    # "nextLsn":J
    :cond_e
    move/from16 v14, v17

    move-wide/from16 v12, v20

    .end local v17    # "runnable":Z
    .end local v20    # "nextLsn":J
    .restart local v12    # "nextLsn":J
    .local v14, "runnable":Z
    :goto_1
    nop

    .line 682
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-wide/16 v15, -0x1

    cmp-long v7, v12, v15

    if-eqz v7, :cond_f

    .line 686
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 687
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_f
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    const-wide/16 v15, -0x1

    cmp-long v6, v6, v15

    if-eqz v6, :cond_10

    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getForce()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 697
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 679
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    return v14

    .line 682
    .end local v8    # "useBytesInterval":J
    .local v18, "useBytesInterval":J
    :catchall_6
    move-exception v0

    move-wide/from16 v20, v12

    move/from16 v17, v14

    move-wide/from16 v8, v18

    .end local v12    # "nextLsn":J
    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    .restart local v20    # "nextLsn":J
    goto :goto_2

    .end local v17    # "runnable":Z
    .end local v18    # "useBytesInterval":J
    .end local v20    # "nextLsn":J
    .restart local v8    # "useBytesInterval":J
    .restart local v12    # "nextLsn":J
    .restart local v14    # "runnable":Z
    :catchall_7
    move-exception v0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    move/from16 v17, v14

    .end local v14    # "runnable":Z
    .restart local v17    # "runnable":Z
    :goto_2
    iget-object v14, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 683
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-wide/16 v15, -0x1

    cmp-long v7, v12, v15

    if-eqz v7, :cond_12

    .line 686
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 687
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_12
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    const-wide/16 v15, -0x1

    cmp-long v6, v6, v15

    if-eqz v6, :cond_13

    .line 690
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_13
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getForce()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v17

    .end local v17    # "runnable":Z
    .local v3, "runnable":Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 697
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_3

    .line 682
    .end local v3    # "runnable":Z
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "runnable":Z
    :cond_14
    move/from16 v3, v17

    .line 698
    .end local v17    # "runnable":Z
    .restart local v3    # "runnable":Z
    :goto_3
    throw v0
.end method

.method private static logDirtyIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V
    .locals 18
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p3, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p4, "fstats"    # Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    .line 1445
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sleepycat/je/tree/IN;

    .line 1450
    .local v11, "child":Lcom/sleepycat/je/tree/IN;
    const/4 v0, 0x1

    if-eqz v11, :cond_4

    .line 1451
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v11, v1}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1453
    :try_start_0
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1486
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1454
    return-void

    .line 1457
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->logDirtyChildren()V

    .line 1477
    :cond_1
    invoke-virtual {v11, v0, v9, v0, v8}, Lcom/sleepycat/je/tree/IN;->log(ZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v1

    .line 1481
    .local v1, "newLsn":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 1483
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    .line 1484
    .local v3, "isBIN":Z
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->getLastDeltaLsn()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1486
    .local v0, "isDelta":Z
    :goto_0
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1487
    nop

    .line 1486
    move/from16 v12, p2

    move-wide/from16 v16, v1

    move v14, v3

    goto :goto_1

    .line 1481
    .end local v0    # "isDelta":Z
    .end local v3    # "isBIN":Z
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "child":Lcom/sleepycat/je/tree/IN;
    .end local p0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "index":I
    .end local p3    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .end local p4    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1486
    .end local v1    # "newLsn":J
    .restart local v11    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "index":I
    .restart local p3    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .restart local p4    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0

    .line 1489
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v7

    .line 1491
    .local v7, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    nop

    .line 1492
    move/from16 v12, p2

    invoke-virtual {v7, v8, v12}, Lcom/sleepycat/je/evictor/OffHeapCache;->createBINLogEntryForCheckpoint(Lcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v13

    .line 1494
    .local v13, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    if-nez v13, :cond_5

    .line 1495
    return-void

    .line 1498
    :cond_5
    const/4 v14, 0x1

    .line 1499
    .local v14, "isBIN":Z
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v15

    .line 1501
    .local v15, "isDelta":Z
    invoke-static {v13, v9, v0, v8}, Lcom/sleepycat/je/tree/IN;->logEntry(Lcom/sleepycat/je/log/entry/INLogEntry;Lcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v16

    .line 1504
    .local v16, "newLsn":J
    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v13

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->postBINLog(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/log/entry/INLogEntry;J)V

    move v0, v15

    .line 1507
    .end local v7    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v13    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    .end local v15    # "isDelta":Z
    .restart local v0    # "isDelta":Z
    :goto_1
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, v16

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/tree/IN;->updateEntry(IJJI)V

    .line 1509
    const-wide/16 v1, 0x1

    if-eqz v0, :cond_6

    .line 1510
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlushThisRun:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlushThisRun:J

    .line 1511
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlush:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlush:J

    goto :goto_2

    .line 1513
    :cond_6
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    .line 1514
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    .line 1515
    if-eqz v14, :cond_7

    .line 1516
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlush:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlush:J

    .line 1517
    iget-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlushThisRun:J

    add-long/2addr v3, v1

    iput-wide v3, v10, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlushThisRun:J

    .line 1520
    :cond_7
    :goto_2
    return-void
.end method

.method private needCheckpointForCleanedFiles()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getFileSelector()Lcom/sleepycat/je/cleaner/FileSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileSelector;->isCheckpointNeeded()Z

    move-result v0

    return v0
.end method

.method public static setBeforeFlushHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)V"
        }
    .end annotation

    .line 1016
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    sput-object p0, Lcom/sleepycat/je/recovery/Checkpointer;->beforeFlushHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1017
    return-void
.end method

.method public static setMaxFlushLevelHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)V"
        }
    .end annotation

    .line 1011
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    sput-object p0, Lcom/sleepycat/je/recovery/Checkpointer;->maxFlushLevelHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1012
    return-void
.end method

.method private trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "invokingSource"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Checkpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 957
    const-string v1, ": source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string v1, " success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 959
    const-string v1, " nFullINFlushThisRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    iget-object v1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 961
    const-string v1, " nDeltaINFlushThisRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    iget-object v1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlushThisRun:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 963
    iget-object v1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 964
    return-void
.end method


# virtual methods
.method public coordinateEvictionWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "targetLevel"    # I
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 473
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    .line 474
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/DirtyINMap;->coordinateEvictionWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;

    move-result-object v0

    .line 473
    return-object v0
.end method

.method public coordinateSplitWithCheckpoint(Lcom/sleepycat/je/tree/IN;)V
    .locals 1
    .param p1, "newSibling"    # Lcom/sleepycat/je/tree/IN;

    .line 483
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/recovery/DirtyINMap;->coordinateSplitWithCheckpoint(Lcom/sleepycat/je/tree/IN;)V

    .line 484
    return-void
.end method

.method public declared-synchronized doCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;Z)V
    .locals 53
    .param p1, "config"    # Lcom/sleepycat/je/CheckpointConfig;
    .param p2, "invokingSource"    # Ljava/lang/String;
    .param p3, "invokedFromDaemon"    # Z

    move-object/from16 v1, p0

    move-object/from16 v14, p2

    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_0

    .line 715
    monitor-exit p0

    return-void

    .line 718
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/recovery/Checkpointer;->isRunnable(Lcom/sleepycat/je/CheckpointConfig;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v0, :cond_1

    .line 719
    monitor-exit p0

    return-void

    .line 724
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V
    :try_end_2
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 730
    nop

    .line 737
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/CheckpointConfig;->getMinimizeRecoveryTime()Z

    move-result v0

    move v15, v0

    .line 744
    .local v15, "flushAll":Z
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    move-object v12, v0

    .line 746
    .local v12, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    nop

    .line 747
    invoke-virtual {v12}, Lcom/sleepycat/je/cleaner/Cleaner;->getFilesAtCheckpointStart()Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;

    move-result-object v0

    move-object v13, v0

    .line 753
    .local v13, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 754
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    move-object v10, v0

    .line 756
    .local v10, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    nop

    .line 757
    invoke-virtual {v10}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->getCompletedRecordScans()Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 759
    .local v11, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 761
    .local v9, "flushExtraLevel":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointMillis:J

    .line 762
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->resetPerRunCounters()V

    .line 765
    iget-wide v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    .line 766
    iget-wide v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->nCheckpoints:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->nCheckpoints:J

    .line 768
    const/16 v29, 0x0

    .line 769
    .local v29, "success":Z
    const/16 v30, 0x0

    .line 771
    .local v30, "traced":Z
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    move-object v6, v0

    .line 777
    .local v6, "logManager":Lcom/sleepycat/je/log/LogManager;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v0, v15, v9}, Lcom/sleepycat/je/recovery/DirtyINMap;->beginCheckpoint(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 781
    :try_start_4
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

    new-instance v3, Lcom/sleepycat/je/recovery/CheckpointStart;

    iget-wide v4, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    invoke-direct {v3, v4, v5, v14}, Lcom/sleepycat/je/recovery/CheckpointStart;-><init>(JLjava/lang/String;)V

    .line 782
    invoke-static {v0, v3}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v0

    .line 786
    .local v0, "startEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointStart;>;"
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 787
    invoke-virtual {v6, v0, v3}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v3

    move-wide v4, v3

    .line 811
    .local v4, "checkpointStart":J
    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/txn/TxnManager;->getFirstActiveLsn()J

    move-result-wide v16

    .line 812
    .local v16, "firstActiveLsn":J
    const-wide/16 v18, -0x1

    cmp-long v3, v16, v18

    if-nez v3, :cond_3

    .line 813
    move-wide/from16 v16, v4

    move-wide/from16 v31, v16

    goto :goto_1

    .line 812
    :cond_3
    move-wide/from16 v31, v16

    .line 823
    .end local v16    # "firstActiveLsn":J
    .local v31, "firstActiveLsn":J
    :goto_1
    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->awaitVLSNConsistency()V

    .line 826
    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v3}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectDirtyINsForCheckpoint()V

    .line 829
    sget-object v3, Lcom/sleepycat/je/recovery/Checkpointer;->beforeFlushHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 832
    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    iget-boolean v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->highPriority:Z

    iget-object v8, v1, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-wide/from16 v18, v4

    move/from16 v20, v2

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v21}, Lcom/sleepycat/je/recovery/Checkpointer;->flushDirtyNodes(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/recovery/DirtyINMap;JZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V

    .line 854
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/recovery/DirtyINMap;->flushMapLNs(J)V

    .line 855
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/recovery/DirtyINMap;->flushRoot(J)V

    .line 861
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preCheckpointEndFlush()V

    .line 870
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v2

    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 871
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->getTrackedFiles()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushFileUtilization(Ljava/util/Collection;)V

    .line 873
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    move-object/from16 v33, v2

    .line 874
    .local v33, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v13}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v28, 0x1

    goto :goto_2

    :cond_4
    const/16 v28, 0x0

    .line 876
    .local v28, "willDeleteFiles":Z
    :goto_2
    new-instance v34, Lcom/sleepycat/je/recovery/CheckpointEnd;

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 877
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getRootLsn()J

    move-result-wide v7

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 879
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/NodeSequence;->getLastLocalNodeId()J

    move-result-wide v16

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 880
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/NodeSequence;->getLastReplicatedNodeId()J

    move-result-wide v18

    .line 881
    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/je/dbi/DbTree;->getLastLocalDbId()J

    move-result-wide v20

    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/je/dbi/DbTree;->getLastReplicatedDbId()J

    move-result-wide v24

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 882
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/TxnManager;->getLastLocalTxnId()J

    move-result-wide v26

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 883
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/TxnManager;->getLastReplicatedTxnId()J

    move-result-wide v35

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 884
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->getLastLocalId()J

    move-result-wide v37

    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 885
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->getLastReplicatedId()J

    move-result-wide v39

    iget-wide v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J
    :try_end_4
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-wide/from16 v41, v2

    move-object/from16 v2, v34

    move-object/from16 v3, p2

    move-wide/from16 v43, v4

    .end local v4    # "checkpointStart":J
    .local v43, "checkpointStart":J
    move-object/from16 v45, v6

    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .local v45, "logManager":Lcom/sleepycat/je/log/LogManager;
    move-wide v6, v7

    move-object/from16 v47, v0

    move/from16 v46, v9

    const/4 v0, 0x1

    .end local v0    # "startEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointStart;>;"
    .end local v9    # "flushExtraLevel":Z
    .local v46, "flushExtraLevel":Z
    .local v47, "startEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointStart;>;"
    move-wide/from16 v8, v31

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    .end local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v11    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v48, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v49, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-wide/from16 v10, v16

    move-object/from16 v50, v12

    move-object/from16 v51, v13

    .end local v12    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v13    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .local v50, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v51, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    move-wide/from16 v12, v18

    move/from16 v52, v15

    .end local v15    # "flushAll":Z
    .local v52, "flushAll":Z
    move-wide/from16 v14, v20

    move-wide/from16 v16, v24

    move-wide/from16 v18, v26

    move-wide/from16 v20, v35

    move-wide/from16 v22, v37

    move-wide/from16 v24, v39

    move-wide/from16 v26, v41

    :try_start_5
    invoke-direct/range {v2 .. v28}, Lcom/sleepycat/je/recovery/CheckpointEnd;-><init>(Ljava/lang/String;JJJJJJJJJJJJZ)V

    move-object/from16 v2, v34

    .line 888
    .local v2, "ckptEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    .line 889
    invoke-static {v3, v2}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v3

    .line 899
    .local v3, "endEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointEnd;>;"
    iget-object v4, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_5
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v5, p2

    :try_start_6
    invoke-direct {v1, v4, v5, v0}, Lcom/sleepycat/je/recovery/Checkpointer;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)V

    .line 900
    const/16 v30, 0x1

    .line 902
    iget-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J

    iget-wide v8, v1, Lcom/sleepycat/je/recovery/Checkpointer;->logFileMax:J

    move-wide/from16 v16, v43

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v21}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointInterval:J

    .line 910
    sget-object v4, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;
    :try_end_6
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v6, v45

    .end local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    :try_start_7
    invoke-virtual {v6, v3, v0, v4}, Lcom/sleepycat/je/log/LogManager;->logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    .line 914
    move-wide/from16 v7, v43

    .end local v43    # "checkpointStart":J
    .local v7, "checkpointStart":J
    iput-wide v7, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J

    .line 915
    move-wide/from16 v9, v31

    .end local v31    # "firstActiveLsn":J
    .local v9, "firstActiveLsn":J
    iput-wide v9, v1, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointFirstActiveLsn:J
    :try_end_7
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 917
    const/4 v4, 0x1

    .line 918
    .end local v29    # "success":Z
    .local v4, "success":Z
    move-object/from16 v11, v50

    move-object/from16 v12, v51

    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .local v11, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v12, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :try_start_8
    invoke-virtual {v11, v12}, Lcom/sleepycat/je/cleaner/Cleaner;->updateFilesAtCheckpointEnd(Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;)V
    :try_end_8
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 919
    move-object/from16 v13, v48

    move-object/from16 v14, v49

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v13, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v14, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_9
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->deleteCompletedRecordScans(Ljava/util/Set;)V
    :try_end_9
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 943
    .end local v2    # "ckptEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    .end local v3    # "endEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointEnd;>;"
    .end local v7    # "checkpointStart":J
    .end local v9    # "firstActiveLsn":J
    .end local v28    # "willDeleteFiles":Z
    .end local v33    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v47    # "startEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/recovery/CheckpointStart;>;"
    :try_start_a
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->reset()V

    .line 945
    if-nez v30, :cond_5

    .line 946
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v0, v5, v4}, Lcom/sleepycat/je/recovery/Checkpointer;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_8

    .line 932
    .end local p0    # "this":Lcom/sleepycat/je/recovery/Checkpointer;
    :catch_0
    move-exception v0

    move/from16 v29, v4

    goto/16 :goto_6

    .line 921
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 943
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_9

    .line 932
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move/from16 v29, v4

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_6

    .line 921
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catch_3
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_7

    .line 943
    .end local v4    # "success":Z
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v29    # "success":Z
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catchall_1
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    move/from16 v4, v29

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_9

    .line 932
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catch_4
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_6

    .line 921
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catch_5
    move-exception v0

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    move/from16 v4, v29

    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_7

    .line 943
    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 932
    :catch_6
    move-exception v0

    goto :goto_4

    .line 921
    :catch_7
    move-exception v0

    goto :goto_5

    .line 943
    :catchall_3
    move-exception v0

    move-object/from16 v5, p2

    :goto_3
    move-object/from16 v6, v45

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    move/from16 v4, v29

    .end local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto/16 :goto_9

    .line 932
    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catch_8
    move-exception v0

    move-object/from16 v5, p2

    :goto_4
    move-object/from16 v6, v45

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    .end local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto :goto_6

    .line 921
    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catch_9
    move-exception v0

    move-object/from16 v5, p2

    :goto_5
    move-object/from16 v6, v45

    move-object/from16 v13, v48

    move-object/from16 v14, v49

    move-object/from16 v11, v50

    move-object/from16 v12, v51

    move/from16 v4, v29

    .end local v45    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v48    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v49    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v50    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v51    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto :goto_7

    .line 943
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    .local v9, "flushExtraLevel":Z
    .restart local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v11, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v12, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v13, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v15    # "flushAll":Z
    :catchall_4
    move-exception v0

    move/from16 v46, v9

    move-object v5, v14

    move/from16 v52, v15

    move-object v14, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v10

    move/from16 v4, v29

    .end local v9    # "flushExtraLevel":Z
    .end local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v15    # "flushAll":Z
    .local v11, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v12, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .local v13, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v46    # "flushExtraLevel":Z
    .restart local v52    # "flushAll":Z
    goto/16 :goto_9

    .line 932
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    .restart local v9    # "flushExtraLevel":Z
    .restart local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v11, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v12, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v13, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v15    # "flushAll":Z
    :catch_a
    move-exception v0

    move/from16 v46, v9

    move-object v5, v14

    move/from16 v52, v15

    move-object v14, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v10

    .line 933
    .end local v9    # "flushExtraLevel":Z
    .end local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v15    # "flushAll":Z
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    .local v11, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v12, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .local v13, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v46    # "flushExtraLevel":Z
    .restart local v52    # "flushAll":Z
    :goto_6
    :try_start_b
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Checkpointer"

    const-string v4, "doCheckpoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkpointId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v4, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 936
    nop

    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v29    # "success":Z
    .end local v30    # "traced":Z
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    .end local p1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    .end local p2    # "invokingSource":Ljava/lang/String;
    .end local p3    # "invokedFromDaemon":Z
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 943
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v29    # "success":Z
    .restart local v30    # "traced":Z
    .restart local v46    # "flushExtraLevel":Z
    .restart local v52    # "flushAll":Z
    .restart local p1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    .restart local p2    # "invokingSource":Ljava/lang/String;
    .restart local p3    # "invokedFromDaemon":Z
    :catchall_5
    move-exception v0

    move/from16 v4, v29

    goto :goto_9

    .line 921
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    .restart local v9    # "flushExtraLevel":Z
    .restart local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v11, "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v12, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v13, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v15    # "flushAll":Z
    :catch_b
    move-exception v0

    move/from16 v46, v9

    move-object v5, v14

    move/from16 v52, v15

    move-object v14, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v10

    move/from16 v4, v29

    .line 923
    .end local v9    # "flushExtraLevel":Z
    .end local v10    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v15    # "flushAll":Z
    .end local v29    # "success":Z
    .local v0, "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v4    # "success":Z
    .local v11, "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .local v12, "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .local v13, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v46    # "flushExtraLevel":Z
    .restart local v52    # "flushAll":Z
    :goto_7
    :try_start_c
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 924
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ckpt id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " success="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " aborted because of disk limit violation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 923
    invoke-static {v2, v3, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 928
    if-eqz p3, :cond_6

    .line 943
    .end local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    :try_start_d
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->reset()V

    .line 945
    if-nez v30, :cond_5

    .line 946
    iget-object v0, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v0, v5, v4}, Lcom/sleepycat/je/recovery/Checkpointer;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 949
    :cond_5
    :goto_8
    monitor-exit p0

    return-void

    .line 929
    .restart local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    :cond_6
    nop

    .end local v4    # "success":Z
    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v30    # "traced":Z
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    .end local p1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    .end local p2    # "invokingSource":Ljava/lang/String;
    .end local p3    # "invokedFromDaemon":Z
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 943
    .end local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v4    # "success":Z
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .restart local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .restart local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v30    # "traced":Z
    .restart local v46    # "flushExtraLevel":Z
    .restart local v52    # "flushAll":Z
    .restart local p1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    .restart local p2    # "invokingSource":Ljava/lang/String;
    .restart local p3    # "invokedFromDaemon":Z
    :catchall_6
    move-exception v0

    :goto_9
    :try_start_f
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointDirtyMap:Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/DirtyINMap;->reset()V

    .line 945
    if-nez v30, :cond_7

    .line 946
    iget-object v2, v1, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v5, v4}, Lcom/sleepycat/je/recovery/Checkpointer;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)V

    :cond_7
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 725
    .end local v4    # "success":Z
    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "cleaner":Lcom/sleepycat/je/cleaner/Cleaner;
    .end local v12    # "cleanerState":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .end local v13    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v14    # "completedScans":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v30    # "traced":Z
    .end local v46    # "flushExtraLevel":Z
    .end local v52    # "flushAll":Z
    :catch_c
    move-exception v0

    move-object v5, v14

    .line 726
    .restart local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    if-eqz p3, :cond_8

    .line 729
    monitor-exit p0

    return-void

    .line 727
    :cond_8
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 713
    .end local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    .end local p1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    .end local p2    # "invokingSource":Ljava/lang/String;
    .end local p3    # "invokedFromDaemon":Z
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p1, "cm"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 437
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_HIGH_PRIORITY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 438
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->highPriority:Z

    .line 439
    return-void
.end method

.method public getLastCheckpointFirstActiveLsn()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointFirstActiveLsn:J

    return-wide v0
.end method

.method initIntervals(JJJJ)V
    .locals 0
    .param p1, "lastCheckpointStart"    # J
    .param p3, "lastCheckpointEnd"    # J
    .param p5, "lastCheckpointFirstActiveLsn"    # J
    .param p7, "lastCheckpointMillis"    # J

    .line 449
    iput-wide p1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J

    .line 450
    iput-wide p3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    .line 451
    iput-wide p5, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointFirstActiveLsn:J

    .line 452
    iput-wide p7, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointMillis:J

    .line 453
    return-void
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 533
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Checkpoints"

    const-string v2, "Dirty Btree internal nodes are written to the data log periodically to bound recovery time."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPTID:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 535
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_CHECKPOINTS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->nCheckpoints:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 536
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_INTERVAL:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointInterval:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 537
    new-instance v1, Lcom/sleepycat/je/utilint/LSNStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_START:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LSNStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 538
    new-instance v1, Lcom/sleepycat/je/utilint/LSNStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_END:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointEnd:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LSNStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 539
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iget-wide v3, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 540
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_BIN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iget-wide v3, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlush:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 541
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_DELTA_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iget-wide v3, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlush:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 543
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->nCheckpoints:J

    .line 545
    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iput-wide v1, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlush:J

    .line 546
    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iput-wide v1, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlush:J

    .line 547
    iget-object v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->flushStats:Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    iput-wide v1, v3, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlush:J

    .line 550
    :cond_0
    return-object v0
.end method

.method protected nDeadlockRetries()J
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 559
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    int-to-long v0, v0

    .line 558
    return-wide v0
.end method

.method protected onWakeup()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    sget-object v0, Lcom/sleepycat/je/CheckpointConfig;->DEFAULT:Lcom/sleepycat/je/CheckpointConfig;

    const/4 v1, 0x1

    const-string v2, "daemon"

    invoke-virtual {p0, v0, v2, v1}, Lcom/sleepycat/je/recovery/Checkpointer;->doCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;Z)V

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->wakeupAfterNoWrites:Z

    .line 576
    return-void
.end method

.method declared-synchronized setCheckpointId(J)V
    .locals 0
    .param p1, "lastCheckpointId"    # J

    monitor-enter p0

    .line 525
    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/je/recovery/Checkpointer;->checkpointId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 524
    .end local p0    # "this":Lcom/sleepycat/je/recovery/Checkpointer;
    .end local p1    # "lastCheckpointId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public syncDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "flushLog"    # Z

    .line 973
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    return-void

    .line 977
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V

    .line 979
    new-instance v0, Lcom/sleepycat/je/recovery/DirtyINMap;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/recovery/DirtyINMap;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 980
    .local v0, "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    new-instance v6, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;

    invoke-direct {v6}, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;-><init>()V

    .line 984
    .local v6, "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectDirtyINsForDbSync(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 986
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->getNumEntries()I

    move-result v1

    if-lez v1, :cond_1

    .line 988
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/recovery/Checkpointer;->flushDirtyNodes(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/recovery/DirtyINMap;JZLcom/sleepycat/je/recovery/Checkpointer$FlushStats;)V

    .line 993
    if-eqz p3, :cond_1

    .line 994
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogManager;->flushSync()V
    :try_end_0
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->reset()V

    .line 1006
    nop

    .line 1007
    return-void

    .line 1005
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_1
    const-string v2, "Checkpointer"

    const-string/jumbo v3, "syncDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1002
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1001
    invoke-static {p1, v2, v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    nop

    .end local v0    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local v6    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "flushLog":Z
    throw v1

    .line 997
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v0    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .restart local v6    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "flushLog":Z
    :catch_1
    move-exception v1

    .line 998
    .local v1, "e":Lcom/sleepycat/je/DiskLimitException;
    nop

    .end local v0    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local v6    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "flushLog":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    .end local v1    # "e":Lcom/sleepycat/je/DiskLimitException;
    .restart local v0    # "dirtyMap":Lcom/sleepycat/je/recovery/DirtyINMap;
    .restart local v6    # "fstats":Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "flushLog":Z
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->reset()V

    throw v1
.end method

.method public wakeupAfterNoWrites()V
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/Checkpointer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sleepycat/je/recovery/Checkpointer;->needCheckpointForCleanedFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->wakeupAfterNoWrites:Z

    .line 607
    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/Checkpointer;->wakeup()V

    .line 609
    :cond_0
    return-void
.end method

.method public wakeupAfterWrite()V
    .locals 9

    .line 585
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logSizeBytesInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/Checkpointer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sleepycat/je/recovery/Checkpointer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v7

    .line 589
    .local v7, "nextLsn":J
    iget-wide v3, p0, Lcom/sleepycat/je/recovery/Checkpointer;->lastCheckpointStart:J

    iget-wide v5, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logFileMax:J

    move-wide v1, v7

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/Checkpointer;->logSizeBytesInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/Checkpointer;->wakeup()V

    .line 596
    .end local v7    # "nextLsn":J
    :cond_0
    return-void
.end method
