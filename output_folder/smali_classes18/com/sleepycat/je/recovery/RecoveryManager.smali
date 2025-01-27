.class public Lcom/sleepycat/je/recovery/RecoveryManager;
.super Ljava/lang/Object;
.source "RecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;,
        Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;,
        Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TRACE_IN_REPLACE:Ljava/lang/String; = "INRecover:"

.field private static final TRACE_LN_REDO:Ljava/lang/String; = "LNRedo:"

.field private static final TRACE_LN_UNDO:Ljava/lang/String; = "LNUndo"

.field private static final TRACE_ROOT_REPLACE:Ljava/lang/String; = "RootRecover:"


# instance fields
.field private final abortedTxnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final committedTxnIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final expectDeletedMapLNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private final expectRenamedMapLNs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inListBuildDbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private final info:Lcom/sleepycat/je/recovery/RecoveryInfo;

.field private final logVersion8UpgradeDbs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private final logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Ljava/util/logging/Logger;

.field private nOpsSinceDiskLimitRecalc:I

.field private final preparedTxns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/PreparedTxn;",
            ">;"
        }
    .end annotation
.end field

.field private final readBufferSize:I

.field private final resurrectedLsns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

.field private final startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

.field private final tempDbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private final tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->nOpsSinceDiskLimitRecalc:I

    .line 282
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 283
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 284
    .local v1, "cm":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 285
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->committedTxnIds:Ljava/util/Map;

    .line 287
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->abortedTxnIds:Ljava/util/Set;

    .line 288
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->resurrectedLsns:Ljava/util/Set;

    .line 290
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->inListBuildDbIds:Ljava/util/Set;

    .line 291
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->tempDbIds:Ljava/util/Set;

    .line 292
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->expectDeletedMapLNs:Ljava/util/Set;

    .line 293
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->expectRenamedMapLNs:Ljava/util/Map;

    .line 294
    new-instance v2, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-direct {v2, p1}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    .line 296
    new-instance v2, Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {v2, p1}, Lcom/sleepycat/je/recovery/RollbackTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 297
    new-instance v2, Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-direct {v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 298
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDbs:Ljava/util/Set;

    .line 299
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    .line 302
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->setRecoveryInfo(Lcom/sleepycat/je/recovery/RecoveryInfo;)V

    .line 303
    return-void
.end method

.method public static abortUndo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;J)V
    .locals 17
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "traceLevel"    # Ljava/util/logging/Level;
    .param p2, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p5, "logLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/logging/Level;",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;J)V"
        }
    .end annotation

    .local p4, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    .line 2001
    nop

    .line 2002
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v9

    .line 2004
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKey()[B

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortData()[B

    move-result-object v12

    .line 2005
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortVLSN()J

    move-result-wide v13

    .line 2006
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortExpiration()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isAbortExpirationInHours()Z

    move-result v16

    .line 2001
    const/4 v10, 0x0

    invoke-static/range {v0 .. v16}, Lcom/sleepycat/je/recovery/RecoveryManager;->undo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JJZZ[B[BJIZ)V

    .line 2007
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/recovery/RecoveryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 233
    iget v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/recovery/RecoveryManager;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/recovery/RecoveryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/recovery/RecoveryManager;)Lcom/sleepycat/je/dbi/StartupTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RecoveryManager;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    return-object v0
.end method

.method private buildINList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3293
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->enable()V

    .line 3294
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/evictor/Evictor;->setEnabled(Z)V

    .line 3295
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->rebuildINListMapDb()V

    .line 3298
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->inListBuildDbIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3300
    .local v1, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    sget-object v2, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3301
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 3303
    .local v2, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v2, :cond_0

    .line 3305
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3306
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/Tree;->rebuildINList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3310
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3313
    .end local v1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_1
    goto :goto_0

    .line 3314
    :cond_2
    return-void
.end method

.method private buildINs(ZLcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/RecoveryProgress;Lcom/sleepycat/je/RecoveryProgress;)V
    .locals 1
    .param p1, "mappingTree"    # Z
    .param p2, "phaseA"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .param p3, "phaseB"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .param p4, "progressA"    # Lcom/sleepycat/je/RecoveryProgress;
    .param p5, "progressB"    # Lcom/sleepycat/je/RecoveryProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1051
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p4}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->readRootINsAndTrackIds(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->readRootINs(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 1058
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1063
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p3}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1064
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p5}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 1066
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p3}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->readNonRootINs(ZLcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 1068
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-virtual {v0, p3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1069
    return-void
.end method

.method private buildTree()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BUILD_TREE:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 869
    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->READ_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    sget-object v6, Lcom/sleepycat/je/RecoveryProgress;->READ_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

    sget-object v7, Lcom/sleepycat/je/RecoveryProgress;->REDO_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/recovery/RecoveryManager;->buildINs(ZLcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/RecoveryProgress;Lcom/sleepycat/je/RecoveryProgress;)V

    .line 880
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 881
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/RecoveryProgress;->UNDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 883
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 884
    .local v0, "mapLNSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 886
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_PREPARE:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 891
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v2

    .line 890
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->undoLNs(Ljava/util/Set;ZLcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 893
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 901
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v2, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileManager;->startFileCacheWarmer(J)V

    .line 908
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 909
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/RecoveryProgress;->REDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 911
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 912
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/recovery/RecoveryManager;->redoLNs(Ljava/util/Set;Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 916
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 922
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->checkLogVersion8UpgradeViolations()V

    .line 927
    const/4 v4, 0x0

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->READ_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    sget-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    sget-object v7, Lcom/sleepycat/je/RecoveryProgress;->READ_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

    sget-object v8, Lcom/sleepycat/je/RecoveryProgress;->REDO_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/recovery/RecoveryManager;->buildINs(ZLcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/RecoveryProgress;Lcom/sleepycat/je/RecoveryProgress;)V

    .line 939
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->buildINList()V

    .line 940
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/evictor/Evictor;->addEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->invokeEvictor()V

    .line 950
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 951
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/RecoveryProgress;->UNDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 953
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 954
    .local v1, "lnSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/LogEntryType;

    .line 955
    .local v3, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 956
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 957
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v3    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_1
    goto :goto_0

    .line 961
    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 962
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v3

    .line 961
    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/recovery/RecoveryManager;->undoLNs(Ljava/util/Set;ZLcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 964
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 967
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 968
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/RecoveryProgress;->REDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 970
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/LogEntryType;

    .line 971
    .restart local v3    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 972
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 973
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 975
    .end local v3    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_3
    goto :goto_1

    .line 977
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->redoLNs(Ljava/util/Set;Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V

    .line 979
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 981
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/RollbackTracker;->recoveryEndFsyncInvisible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    .end local v0    # "mapLNSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    .end local v1    # "lnSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BUILD_TREE:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 984
    nop

    .line 985
    return-void

    .line 983
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BUILD_TREE:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v0
.end method

.method private checkLogVersion8UpgradeViolations()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 3502
    const/4 v0, 0x0

    .line 3503
    .local v0, "v8DupNodes":Z
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDbs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3504
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    .line 3505
    .local v3, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 3513
    .local v4, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v4, :cond_0

    .line 3522
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 3517
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3518
    const/4 v0, 0x1

    .line 3522
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3523
    nop

    .line 3524
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 3522
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v1

    .line 3526
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 3528
    .local v1, "v8Deltas":Z
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 3540
    :cond_3
    return-void

    .line 3529
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    const-string v2, "JE 4.1 duplicate DB entries"

    goto :goto_3

    :cond_5
    const-string v2, "JE 4.1 BINDeltas"

    .line 3532
    .local v2, "illegalEntries":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " were found in the recovery interval. Before upgrading to JE 5.0, the following utility must be run using JE 4.1 (4.1.20 or later): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3536
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "DbRepPreUpgrade_4_1 "

    goto :goto_4

    :cond_6
    const-string v4, "DbPreUpgrade_4_1 "

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". See the change log."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3533
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private convertOldMapLNs()V
    .locals 5

    .line 3441
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastFileLogVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3443
    return-void

    .line 3446
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 3448
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    nop

    .line 3449
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->getNameDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v3, 0x0

    new-instance v4, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/recovery/RecoveryManager;Lcom/sleepycat/je/dbi/DbTree;)V

    .line 3448
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->traverseDbWithCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/CursorImpl$WithCursor;)V

    .line 3483
    return-void
.end method

.method private createReplayTxn(J)V
    .locals 3
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->replayTxns:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->replayTxns:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createReplayTxn(J)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :cond_0
    return-void
.end method

.method private eligibleForRedo(Lcom/sleepycat/je/log/LNFileReader;)Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .locals 8
    .param p1, "reader"    # Lcom/sleepycat/je/log/LNFileReader;

    .line 2253
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->isLN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    sget-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->NOT:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    return-object v0

    .line 2257
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2258
    sget-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->NOT:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    return-object v0

    .line 2269
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 2271
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v2, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2278
    .local v0, "afterCheckpointStart":Z
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getTxnId()Ljava/lang/Long;

    move-result-object v1

    .line 2279
    .local v1, "txnId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/Txn;

    .line 2280
    .local v2, "preparedTxn":Lcom/sleepycat/je/txn/Txn;
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v3, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->replayTxns:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/Txn;

    .line 2282
    .local v3, "replayTxn":Lcom/sleepycat/je/txn/Txn;
    if-eqz v2, :cond_4

    .line 2283
    new-instance v4, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    invoke-direct {v4, v2}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;-><init>(Lcom/sleepycat/je/txn/Txn;)V

    return-object v4

    .line 2284
    :cond_4
    if-eqz v3, :cond_5

    .line 2285
    new-instance v4, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    invoke-direct {v4, v3}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;-><init>(Lcom/sleepycat/je/txn/Txn;)V

    return-object v4

    .line 2287
    :cond_5
    if-eqz v0, :cond_7

    .line 2288
    if-nez v1, :cond_6

    .line 2290
    sget-object v4, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->ELIGIBLE_NON_TXNAL:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    return-object v4

    .line 2292
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->committedTxnIds:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2293
    .local v4, "commitLongLsn":Ljava/lang/Long;
    if-eqz v4, :cond_7

    .line 2295
    new-instance v5, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;-><init>(J)V

    return-object v5

    .line 2299
    .end local v4    # "commitLongLsn":Ljava/lang/Long;
    :cond_7
    sget-object v4, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->NOT:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    return-object v4
.end method

.method private ensureDbExtinction()V
    .locals 4

    .line 3378
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3379
    return-void

    .line 3382
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->expectDeletedMapLNs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3384
    .local v1, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 3385
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v2, :cond_1

    .line 3386
    goto :goto_0

    .line 3394
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->ensureDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3395
    .end local v1    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 3396
    :cond_2
    return-void
.end method

.method private static fetchLNSize(Lcom/sleepycat/je/dbi/DatabaseImpl;IJ)I
    .locals 3
    .param p0, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "size"    # I
    .param p2, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3269
    if-eqz p1, :cond_0

    .line 3270
    return p1

    .line 3272
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 3273
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/cleaner/Cleaner;->getFetchObsoleteSize(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3274
    return v2

    .line 3277
    :cond_1
    nop

    .line 3278
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/je/log/LogManager;->getWholeLogEntry(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v1

    .line 3279
    .local v1, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 3280
    .end local v1    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3283
    :goto_0
    return v2
.end method

.method private findEndOfLog(Z)V
    .locals 10
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_END_OF_LOG:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 652
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/RecoveryProgress;->FIND_END_OF_LOG:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 653
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_END_OF_LOG:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    .line 655
    .local v0, "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    .line 656
    .local v1, "fileManager":Lcom/sleepycat/je/log/FileManager;
    new-instance v2, Lcom/sleepycat/je/log/LastFileReader;

    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/log/LastFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    move-object v9, v2

    .line 663
    .local v9, "reader":Lcom/sleepycat/je/log/LastFileReader;
    :goto_0
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->readNextEntry()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 664
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 665
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 667
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getEntryType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v2

    .line 669
    .local v2, "type":Lcom/sleepycat/je/log/LogEntryType;
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastLsn()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    .line 671
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iput-wide v4, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    goto :goto_1

    .line 672
    :cond_0
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v6, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    .line 674
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastLsn()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    goto :goto_1

    .line 676
    :cond_1
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastLsn()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    goto :goto_1

    .line 678
    :cond_2
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_IMMUTABLE_FILE:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 679
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->forceNewLogFile()V

    goto :goto_1

    .line 680
    :cond_3
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESTORE_REQUIRED:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 687
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getRestoreRequired()Lcom/sleepycat/je/log/entry/RestoreRequired;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->handleRestoreRequired(Lcom/sleepycat/je/log/entry/RestoreRequired;)V

    .line 689
    .end local v2    # "type":Lcom/sleepycat/je/log/LogEntryType;
    :cond_4
    :goto_1
    goto :goto_0

    .line 696
    :cond_5
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 701
    if-nez p1, :cond_6

    .line 702
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->setEndOfFile()V

    .line 706
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 707
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    .line 708
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getNRepeatIteratorReads()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V

    .line 709
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v3, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 711
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getPrevOffset()J

    move-result-wide v7

    .line 709
    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/log/FileManager;->setLastPosition(JJJ)V

    .line 713
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v3, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 714
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v3

    .line 713
    invoke-virtual {v1, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFileLogVersion(J)I

    move-result v3

    iput v3, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastFileLogVersion:I

    .line 716
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_END_OF_LOG:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 717
    return-void

    .line 696
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 697
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private findLastCheckpoint()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_LAST_CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 727
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/RecoveryProgress;->FIND_LAST_CKPT:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 728
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_LAST_CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    .line 736
    .local v0, "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 742
    new-instance v1, Lcom/sleepycat/je/log/CheckpointFileReader;

    iget-object v6, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v7, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v9, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    const-wide/16 v11, -0x1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v13, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Lcom/sleepycat/je/log/CheckpointFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJJJ)V

    .line 747
    .local v1, "searcher":Lcom/sleepycat/je/log/CheckpointFileReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->readNextEntry()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 749
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 756
    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->getLastLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    .line 763
    goto :goto_1

    .line 764
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointStart()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->getLastLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->isDbTree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->getLastLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    goto :goto_0

    .line 782
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/log/CheckpointFileReader;->getNRepeatIteratorReads()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V

    .line 789
    .end local v1    # "searcher":Lcom/sleepycat/je/log/CheckpointFileReader;
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 790
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iput-wide v3, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 791
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iput-wide v3, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    goto :goto_2

    .line 794
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 795
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    invoke-virtual {v1, v5, v6}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 796
    .local v1, "checkpointEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iput-object v1, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 797
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getCheckpointStartLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 798
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getFirstActiveLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 804
    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getRootLsn()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    .line 806
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getRootLsn()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    .line 810
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/sleepycat/je/recovery/Checkpointer;->setCheckpointId(J)V

    .line 818
    .end local v1    # "checkpointEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    invoke-virtual {v1, v5, v6}, Lcom/sleepycat/je/recovery/RollbackTracker;->setCheckpointStart(J)V

    .line 820
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_LAST_CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 822
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 833
    return-void

    .line 823
    :cond_7
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v4, "This environment\'s log file has no root. Since the root is the first entry written into a log at environment creation, this should only happen if the initial creation of the environment was never checkpointed or synced. Please move aside the existing log files to allow the creation of a new environment"

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v1
.end method

.method private handlePrepare(Lcom/sleepycat/je/log/LNFileReader;)V
    .locals 11
    .param p1, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1872
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getTxnPrepareId()J

    move-result-wide v0

    .line 1873
    .local v0, "prepareId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1874
    .local v2, "prepareIdL":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->committedTxnIds:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->abortedTxnIds:Ljava/util/Set;

    .line 1875
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1876
    new-instance v3, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1877
    .local v3, "txnConf":Lcom/sleepycat/je/TransactionConfig;
    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1878
    invoke-static {v4, v3, v0, v1}, Lcom/sleepycat/je/txn/PreparedTxn;->createPreparedTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;J)Lcom/sleepycat/je/txn/PreparedTxn;

    move-result-object v4

    .line 1884
    .local v4, "preparedTxn":Lcom/sleepycat/je/txn/PreparedTxn;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/txn/PreparedTxn;->setLockTimeout(J)V

    .line 1885
    iget-object v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/PreparedTxn;->setPrepared(Z)V

    .line 1887
    iget-object v6, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v6

    .line 1888
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getTxnPrepareXid()Ljavax/transaction/xa/Xid;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v5}, Lcom/sleepycat/je/txn/TxnManager;->registerXATxn(Ljavax/transaction/xa/Xid;Lcom/sleepycat/je/txn/Txn;Z)V

    .line 1889
    iget-object v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found unfinished prepare record: id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1891
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getTxnPrepareId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Xid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1892
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->getTxnPrepareXid()Ljavax/transaction/xa/Xid;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1889
    invoke-static {v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1894
    .end local v3    # "txnConf":Lcom/sleepycat/je/TransactionConfig;
    .end local v4    # "preparedTxn":Lcom/sleepycat/je/txn/PreparedTxn;
    :cond_0
    return-void
.end method

.method private invokeEvictor()V
    .locals 2

    .line 845
    iget v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->nOpsSinceDiskLimitRecalc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->nOpsSinceDiskLimitRecalc:I

    .line 846
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->freshenLogSizeStats()V

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->nOpsSinceDiskLimitRecalc:I

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeEvictor()V

    .line 852
    return-void
.end method

.method private isReplicatedUncommittedLN(Lcom/sleepycat/je/log/LNFileReader;Ljava/lang/Long;)Z
    .locals 2
    .param p1, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .param p2, "txnId"    # Ljava/lang/Long;

    .line 1827
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1828
    return v1

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->abortedTxnIds:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    return v1

    .line 1835
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LNFileReader;->entryIsReplicated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    const/4 v0, 0x1

    return v0

    .line 1839
    :cond_2
    return v1
.end method

.method private printTrackList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3546
    .local p1, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    if-eqz p1, :cond_1

    .line 3547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3548
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3549
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    const-string v2, "Trace list:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3551
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3553
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3555
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3557
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private readNonRootINs(ZLcom/sleepycat/je/dbi/StartupTracker$Counter;)V
    .locals 15
    .param p1, "mappingTree"    # Z
    .param p2, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1280
    move-object v1, p0

    new-instance v0, Lcom/sleepycat/je/log/INFileReader;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v10, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v12, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/sleepycat/je/log/INFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V

    .line 1289
    .local v2, "reader":Lcom/sleepycat/je/log/INFileReader;
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1290
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1291
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1292
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1297
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    move-object v3, v0

    .line 1299
    .local v3, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->readNextEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1301
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 1303
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    move-object v4, v0

    .line 1305
    .local v4, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    sget-object v0, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v5, p1

    if-eq v5, v0, :cond_0

    .line 1306
    goto :goto_0

    .line 1309
    :cond_0
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v6, v0

    .line 1311
    .local v6, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v6, :cond_1

    .line 1313
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1314
    goto :goto_0

    .line 1318
    :cond_1
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/sleepycat/je/log/INFileReader;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 1327
    :try_start_3
    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1322
    :cond_2
    :try_start_4
    invoke-direct {p0, v2, v6}, Lcom/sleepycat/je/recovery/RecoveryManager;->replayOneIN(Lcom/sleepycat/je/log/INFileReader;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1327
    :try_start_5
    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1328
    nop

    .line 1329
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 1327
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .end local p1    # "mappingTree":Z
    .end local p2    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v0

    .line 1331
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .restart local p1    # "mappingTree":Z
    .restart local p2    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :cond_3
    move/from16 v5, p1

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getNRepeatIteratorReads()J

    move-result-wide v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1334
    .end local v3    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_3

    .line 1332
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v5, p1

    :goto_1
    move-object/from16 v4, p2

    .line 1333
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v6

    const-string/jumbo v3, "readNonMapIns"

    invoke-direct {p0, v6, v7, v3, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1335
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private readRootINs(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V
    .locals 14
    .param p1, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1214
    new-instance v13, Lcom/sleepycat/je/log/INFileReader;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v3, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v8, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v10, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/log/INFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V

    .line 1223
    .local v0, "reader":Lcom/sleepycat/je/log/INFileReader;
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1231
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 1233
    .local v1, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/INFileReader;->readNextEntry()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1235
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 1237
    invoke-virtual {v0}, Lcom/sleepycat/je/log/INFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    .line 1239
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    sget-object v3, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1240
    goto :goto_0

    .line 1243
    :cond_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 1245
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v3, :cond_1

    .line 1247
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    goto :goto_0

    .line 1252
    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/log/INFileReader;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 1261
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1256
    :cond_2
    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/sleepycat/je/recovery/RecoveryManager;->replayOneIN(Lcom/sleepycat/je/log/INFileReader;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1258
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1261
    :try_start_4
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1262
    nop

    .line 1263
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 1261
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v4

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v0    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v4

    .line 1265
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/log/INFileReader;->getNRepeatIteratorReads()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1268
    .end local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_1

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v2

    const-string/jumbo v4, "readNonMapIns"

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/sleepycat/je/recovery/RecoveryManager;->traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private readRootINsAndTrackIds(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V
    .locals 18
    .param p1, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1082
    move-object/from16 v1, p0

    new-instance v0, Lcom/sleepycat/je/log/INFileReader;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v10, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v12, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    iget-object v14, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    iget-object v15, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDbs:Ljava/util/Set;

    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x1

    move-object v2, v0

    move-object/from16 v17, v9

    move/from16 v9, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/sleepycat/je/log/INFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1093
    .local v2, "reader":Lcom/sleepycat/je/log/INFileReader;
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1096
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/INFileReader;->setAlwaysValidateChecksum(Z)V

    .line 1099
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    move-object v3, v0

    .line 1102
    .local v3, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->readNextEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 1106
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    move-object v4, v0

    .line 1108
    .local v4, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    sget-object v0, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 1114
    .local v5, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v5, :cond_2

    .line 1117
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/log/INFileReader;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1126
    :try_start_2
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1121
    :cond_1
    :try_start_3
    invoke-direct {v1, v2, v5}, Lcom/sleepycat/je/recovery/RecoveryManager;->replayOneIN(Lcom/sleepycat/je/log/INFileReader;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1126
    :try_start_4
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1127
    nop

    .line 1128
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 1126
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v0

    .line 1114
    .restart local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .end local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v0

    .line 1130
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v2    # "reader":Lcom/sleepycat/je/log/INFileReader;
    .restart local p1    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :cond_3
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getNRepeatIteratorReads()J

    move-result-wide v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v6, p1

    :try_start_5
    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V

    .line 1137
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMinReplicatedNodeId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedNodeId:J

    .line 1138
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMaxNodeId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxNodeId:J

    .line 1140
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMinReplicatedDbId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedDbId:J

    .line 1141
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMaxDbId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxDbId:J

    .line 1143
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMinReplicatedTxnId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedTxnId:J

    .line 1144
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMaxTxnId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxTxnId:J

    .line 1146
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1147
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMinReplicatedExtinctionId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedExtinctionId:J

    .line 1148
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getMaxExtinctionId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxExtinctionId:J

    .line 1150
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

    if-eqz v0, :cond_b

    .line 1151
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v0, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 1153
    .local v0, "ckptEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedNodeId:J

    .line 1154
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedNodeId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_4

    .line 1155
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1156
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedNodeId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedNodeId:J

    .line 1158
    :cond_4
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxNodeId:J

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalNodeId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-gez v4, :cond_5

    .line 1159
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalNodeId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxNodeId:J

    .line 1162
    :cond_5
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedDbId:J

    .line 1163
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedDbId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_6

    .line 1164
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1165
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedDbId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedDbId:J

    .line 1167
    :cond_6
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxDbId:J

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalDbId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-gez v4, :cond_7

    .line 1168
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalDbId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxDbId:J

    .line 1171
    :cond_7
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedTxnId:J

    .line 1172
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedTxnId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_8

    .line 1173
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1174
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedTxnId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedTxnId:J

    .line 1176
    :cond_8
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxTxnId:J

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalTxnId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-gez v4, :cond_9

    .line 1177
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalTxnId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxTxnId:J

    .line 1179
    :cond_9
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxExtinctionId:J

    .line 1180
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalExtinctionId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-gez v4, :cond_a

    .line 1181
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1182
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastLocalExtinctionId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxExtinctionId:J

    .line 1184
    :cond_a
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedExtinctionId:J

    .line 1185
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedExtinctionId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_b

    .line 1186
    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 1187
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getLastReplicatedExtinctionId()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedExtinctionId:J

    .line 1191
    .end local v0    # "ckptEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    :cond_b
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v0

    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedNodeId:J

    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxNodeId:J

    .line 1192
    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sleepycat/je/dbi/NodeSequence;->setLastNodeId(JJ)V

    .line 1193
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedDbId:J

    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxDbId:J

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sleepycat/je/dbi/DbTree;->setLastDbId(JJ)V

    .line 1195
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedTxnId:J

    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxTxnId:J

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sleepycat/je/txn/TxnManager;->setLastTxnId(JJ)V

    .line 1197
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    iget-object v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v4, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedExtinctionId:J

    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxExtinctionId:J

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->setLastIds(JJ)V

    .line 1200
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getVLSNProxy()Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    move-result-object v4

    iput-object v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1203
    .end local v3    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_2

    .line 1201
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 1202
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v3

    const-string/jumbo v5, "readMapIns"

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private recoverChildIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;JLjava/util/List;)V
    .locals 36
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "inFromLog"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "logLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/tree/IN;",
            "J",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1559
    .local p5, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    move-object/from16 v1, p0

    move-wide/from16 v13, p3

    const/16 v18, 0x0

    .line 1560
    .local v18, "replaced":Z
    const-wide/16 v19, -0x1

    .line 1561
    .local v19, "treeLsn":J
    const/16 v21, 0x0

    .line 1562
    .local v21, "finished":Z
    new-instance v0, Lcom/sleepycat/je/tree/SearchResult;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/SearchResult;-><init>()V

    move-object v2, v0

    .line 1565
    .local v2, "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    move-wide/from16 v32, v3

    .line 1566
    .local v32, "targetNodeId":J
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v25

    .line 1567
    .local v25, "targetKey":[B
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1569
    .local v0, "exclusiveLevel":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1571
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v22

    const/16 v26, -0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    sget-object v30, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    move-wide/from16 v23, v32

    move/from16 v27, v0

    move-object/from16 v31, p5

    invoke-virtual/range {v22 .. v31}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(J[BIIZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v15, v3

    .line 1588
    .end local v2    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v15, "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_1
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_1

    .line 1589
    const/16 v21, 0x1

    .line 1626
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v2, :cond_0

    .line 1627
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1630
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v9, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget-boolean v10, v15, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    const/4 v12, 0x0

    const-wide/16 v16, -0x1

    iget v11, v15, Lcom/sleepycat/je/tree/SearchResult;->index:I

    const-string v4, "INRecover:"

    move-object/from16 v3, p1

    move/from16 v5, v21

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v22, v11

    move/from16 v11, v18

    move-wide/from16 v13, v19

    move-object/from16 v34, v15

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v34, "result":Lcom/sleepycat/je/tree/SearchResult;
    move-wide/from16 v15, v16

    move/from16 v17, v22

    invoke-static/range {v2 .. v17}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 1590
    return-void

    .line 1593
    .end local v34    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :cond_1
    move-object/from16 v34, v15

    :try_start_2
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    move-object v8, v2

    .line 1594
    .local v8, "parent":Lcom/sleepycat/je/tree/IN;
    iget v2, v15, Lcom/sleepycat/je/tree/SearchResult;->index:I

    move v9, v2

    .line 1596
    .local v9, "idx":I
    iget-boolean v2, v15, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v2, :cond_7

    .line 1597
    iget v2, v15, Lcom/sleepycat/je/tree/SearchResult;->index:I

    if-ltz v2, :cond_6

    .line 1598
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    cmp-long v2, v32, v2

    if-nez v2, :cond_5

    .line 1601
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v2

    move-wide/from16 v13, p3

    cmp-long v2, v2, v13

    if-nez v2, :cond_2

    goto :goto_0

    .line 1606
    :cond_2
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide v10, v2

    .line 1609
    .end local v19    # "treeLsn":J
    .local v10, "treeLsn":J
    :try_start_3
    invoke-static {v10, v11, v13, v14}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gez v2, :cond_3

    .line 1616
    const/4 v7, 0x0

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/tree/IN;->recoverIN(ILcom/sleepycat/je/tree/Node;JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1619
    const/16 v18, 0x1

    move-wide/from16 v19, v10

    goto :goto_0

    .line 1626
    .end local v0    # "exclusiveLevel":I
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "idx":I
    .end local v25    # "targetKey":[B
    .end local v32    # "targetNodeId":J
    :catchall_0
    move-exception v0

    move-object/from16 v22, v0

    move-wide/from16 v19, v10

    move-object v0, v15

    goto/16 :goto_1

    .line 1609
    .restart local v0    # "exclusiveLevel":I
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "idx":I
    .restart local v25    # "targetKey":[B
    .restart local v32    # "targetNodeId":J
    :cond_3
    move-wide/from16 v19, v10

    .line 1623
    .end local v10    # "treeLsn":J
    .restart local v19    # "treeLsn":J
    :goto_0
    const/4 v0, 0x1

    .line 1626
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "idx":I
    .end local v21    # "finished":Z
    .end local v25    # "targetKey":[B
    .end local v32    # "targetNodeId":J
    .local v0, "finished":Z
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v2, :cond_4

    .line 1627
    iget-object v2, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1630
    :cond_4
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v9, v15, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget-boolean v10, v15, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    const/4 v12, 0x0

    const-wide/16 v16, -0x1

    iget v11, v15, Lcom/sleepycat/je/tree/SearchResult;->index:I

    const-string v4, "INRecover:"

    move-object/from16 v3, p1

    move v5, v0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v21, v11

    move/from16 v11, v18

    move-wide/from16 v13, v19

    move-object/from16 v22, v15

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v22, "result":Lcom/sleepycat/je/tree/SearchResult;
    move-wide/from16 v15, v16

    move/from16 v17, v21

    invoke-static/range {v2 .. v17}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 1635
    nop

    .line 1636
    return-void

    .line 1626
    .end local v0    # "finished":Z
    .end local v19    # "treeLsn":J
    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v10    # "treeLsn":J
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v21    # "finished":Z
    :catchall_1
    move-exception v0

    move-object/from16 v22, v15

    move-wide/from16 v19, v10

    move-object/from16 v35, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v35

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    goto :goto_1

    .line 1598
    .end local v10    # "treeLsn":J
    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v0, "exclusiveLevel":I
    .restart local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "idx":I
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v19    # "treeLsn":J
    .restart local v25    # "targetKey":[B
    .restart local v32    # "targetNodeId":J
    :cond_5
    move-object/from16 v22, v15

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :try_start_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "replaced":Z
    .end local v19    # "treeLsn":J
    .end local v21    # "finished":Z
    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "logLsn":J
    .end local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v2

    .line 1597
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v18    # "replaced":Z
    .restart local v19    # "treeLsn":J
    .restart local v21    # "finished":Z
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "logLsn":J
    .restart local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_6
    move-object/from16 v22, v15

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "replaced":Z
    .end local v19    # "treeLsn":J
    .end local v21    # "finished":Z
    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "logLsn":J
    .end local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v2

    .line 1596
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v18    # "replaced":Z
    .restart local v19    # "treeLsn":J
    .restart local v21    # "finished":Z
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "logLsn":J
    .restart local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_7
    move-object/from16 v22, v15

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v18    # "replaced":Z
    .end local v19    # "treeLsn":J
    .end local v21    # "finished":Z
    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "logLsn":J
    .end local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1626
    .end local v0    # "exclusiveLevel":I
    .end local v8    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "idx":I
    .end local v25    # "targetKey":[B
    .end local v32    # "targetNodeId":J
    .restart local v18    # "replaced":Z
    .restart local v19    # "treeLsn":J
    .restart local v21    # "finished":Z
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "logLsn":J
    .restart local p5    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v35, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v35

    goto :goto_1

    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v15

    move-object/from16 v35, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v35

    .end local v15    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    goto :goto_1

    .end local v22    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v2    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catchall_4
    move-exception v0

    move-object/from16 v22, v0

    move-object v0, v2

    .end local v2    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v0, "result":Lcom/sleepycat/je/tree/SearchResult;
    :goto_1
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-eqz v2, :cond_8

    .line 1627
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1630
    :cond_8
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v9, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget-boolean v10, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    const/4 v12, 0x0

    const-wide/16 v15, -0x1

    iget v13, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    const-string v4, "INRecover:"

    move-object/from16 v3, p1

    move/from16 v5, v21

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v11, v18

    move/from16 v17, v13

    move-wide/from16 v13, v19

    invoke-static/range {v2 .. v17}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    throw v22
.end method

.method private recoverIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V
    .locals 11
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "inFromLog"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "logLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1380
    const-string v0, " inFromLog = "

    const-string v1, "LSN = "

    const/4 v2, 0x0

    .line 1390
    .local v2, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1391
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RecoveryManager;->recoverRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V

    goto :goto_0

    .line 1399
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1400
    .end local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .local v10, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-wide v8, p3

    :try_start_1
    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/recovery/RecoveryManager;->recoverChildIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;JLjava/util/List;)V
    :try_end_1
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v10

    .line 1416
    .end local v10    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .restart local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :goto_0
    sget-boolean v4, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v4, :cond_1

    .line 1417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1419
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-static {v3, v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(ILjava/lang/String;)V

    .line 1422
    :cond_1
    return-void

    .line 1416
    .end local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .restart local v10    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :catchall_0
    move-exception v4

    move-object v2, v10

    goto :goto_3

    .line 1405
    :catch_0
    move-exception v4

    move-object v2, v10

    goto :goto_1

    .line 1402
    :catch_1
    move-exception v4

    move-object v2, v10

    goto :goto_2

    .line 1416
    .end local v10    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .restart local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 1405
    :catch_2
    move-exception v4

    .line 1406
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->printTrackList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1407
    .local v5, "trace":Ljava/lang/String;
    nop

    .line 1408
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    const-string v7, "RecoveryManager"

    const-string/jumbo v8, "recoverIN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " lsnFromLog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1409
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1407
    invoke-static {v6, v7, v8, v9, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1412
    new-instance v6, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v7, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lsnFromLog="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1414
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "logLsn":J
    throw v6

    .line 1402
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "trace":Ljava/lang/String;
    .restart local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "logLsn":J
    :catch_3
    move-exception v4

    .line 1404
    .local v4, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :goto_2
    nop

    .end local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "logLsn":J
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1416
    .end local v4    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    .restart local v2    # "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "logLsn":J
    :goto_3
    sget-boolean v5, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v5, :cond_2

    .line 1417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1419
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-static {v3, v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(ILjava/lang/String;)V

    :cond_2
    throw v4
.end method

.method private recoverRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V
    .locals 37
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "inFromLog"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1436
    move-object/from16 v1, p0

    const/16 v18, 0x1

    .line 1437
    .local v18, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v15

    .line 1438
    .local v15, "tree":Lcom/sleepycat/je/tree/Tree;
    new-instance v0, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;

    move-object/from16 v13, p2

    move-wide/from16 v11, p3

    invoke-direct {v0, v15, v13, v11, v12}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;-><init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/IN;J)V

    move-object v14, v0

    .line 1441
    .local v14, "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    :try_start_0
    invoke-virtual {v15, v14}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedExclusive(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;

    .line 1444
    invoke-virtual {v14}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->updateDone()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1451
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1459
    :catchall_0
    move-exception v0

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto/16 :goto_2

    .line 1453
    :catch_0
    move-exception v0

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto :goto_1

    .line 1459
    :cond_0
    :goto_0
    invoke-virtual {v14}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getInFromLogIsLatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1463
    :cond_1
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1468
    invoke-virtual {v14}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getReplaced()Z

    move-result v0

    .line 1469
    invoke-virtual {v14}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getInserted()Z

    move-result v16

    .line 1470
    invoke-virtual {v14}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getOriginalLsn()J

    move-result-wide v19

    const-wide/16 v21, -0x1

    const/16 v17, -0x1

    .line 1463
    const-string v4, "RootRecover:"

    move-object/from16 v3, p1

    move/from16 v5, v18

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move v11, v0

    move/from16 v12, v16

    move-object/from16 v35, v14

    .end local v14    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .local v35, "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    move-wide/from16 v13, v19

    move-object/from16 v36, v15

    .end local v15    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v36, "tree":Lcom/sleepycat/je/tree/Tree;
    move-wide/from16 v15, v21

    invoke-static/range {v2 .. v17}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 1473
    nop

    .line 1474
    return-void

    .line 1459
    .end local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .end local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v14    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .restart local v15    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_1
    move-exception v0

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .end local v14    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .end local v15    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .restart local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto :goto_2

    .line 1453
    .end local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .end local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v14    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .restart local v15    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catch_1
    move-exception v0

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 1454
    .end local v14    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .end local v15    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .restart local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    :goto_1
    const/16 v18, 0x0

    .line 1455
    :try_start_2
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lsnFromLog="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1457
    invoke-static/range {p3 .. p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v18    # "success":Z
    .end local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .end local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "lsn":J
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1459
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v18    # "success":Z
    .restart local v35    # "rootUpdater":Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;
    .restart local v36    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "inFromLog":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "lsn":J
    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual/range {v35 .. v35}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getInFromLogIsLatched()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1460
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1463
    :cond_2
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    const/16 v26, 0x0

    const/16 v27, 0x1

    .line 1468
    invoke-virtual/range {v35 .. v35}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getReplaced()Z

    move-result v28

    .line 1469
    invoke-virtual/range {v35 .. v35}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getInserted()Z

    move-result v29

    .line 1470
    invoke-virtual/range {v35 .. v35}, Lcom/sleepycat/je/recovery/RecoveryManager$RootUpdater;->getOriginalLsn()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    const/16 v34, -0x1

    .line 1463
    const-string v21, "RootRecover:"

    move-object/from16 v19, v2

    move-object/from16 v20, p1

    move/from16 v22, v18

    move-object/from16 v23, p2

    move-wide/from16 v24, p3

    invoke-static/range {v19 .. v34}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    throw v0
.end method

.method private recoveryUndo(Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;J)V
    .locals 18
    .param p1, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "logLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;J)V"
        }
    .end annotation

    .local p3, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 1985
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 1986
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v9

    .line 1988
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKey()[B

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortData()[B

    move-result-object v12

    .line 1989
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortVLSN()J

    move-result-wide v13

    .line 1990
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortExpiration()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isAbortExpirationInHours()Z

    move-result v16

    .line 1985
    const/16 v17, 0x0

    move/from16 v10, v17

    invoke-static/range {v0 .. v16}, Lcom/sleepycat/je/recovery/RecoveryManager;->undo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JJZZ[B[BJIZ)V

    .line 1991
    return-void
.end method

.method private redo(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/log/entry/LNLogEntry;JILcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;I)J
    .locals 45
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p4, "logrecLsn"    # J
    .param p6, "logrecSize"    # I
    .param p7, "eligible"    # Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .param p8, "logVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;JI",
            "Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;",
            "I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2564
    .local p3, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-wide/from16 v14, p4

    move/from16 v13, p6

    move-object/from16 v12, p7

    const/16 v25, 0x0

    .line 2565
    .local v25, "foundNotKD":Z
    const/16 v26, 0x0

    .line 2566
    .local v26, "replaced":Z
    const/16 v27, 0x0

    .line 2567
    .local v27, "inserted":Z
    const/16 v28, 0x0

    .line 2569
    .local v28, "success":Z
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v11

    .line 2570
    .local v11, "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v29

    .line 2571
    .local v29, "logrecLN":Lcom/sleepycat/je/tree/LN;
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v9

    .line 2572
    .local v9, "logrecVLSN":J
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v30

    .line 2573
    .local v30, "isDeletion":Z
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v31

    .line 2574
    .local v31, "logrecKey":[B
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getEmbeddedData()[B

    move-result-object v32

    .line 2575
    .local v32, "logrecData":[B
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v7

    .line 2576
    .local v7, "expiration":I
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v6

    .line 2578
    .local v6, "expirationInHours":Z
    const-wide/16 v33, -0x1

    .line 2593
    .local v33, "treeLsn":J
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindOps()Z

    move-result v0

    .line 2614
    .local v0, "blindInsertions":Z
    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v2, 0x10

    move/from16 v5, p8

    if-ge v5, v2, :cond_2

    .line 2615
    nop

    .line 2616
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 2617
    invoke-virtual {v11, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 2618
    invoke-virtual {v11, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, v16

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v2, v17

    :goto_1
    and-int/2addr v0, v2

    move/from16 v35, v0

    goto :goto_2

    .line 2614
    :cond_2
    move/from16 v35, v0

    .line 2626
    .end local v0    # "blindInsertions":Z
    .local v35, "blindInsertions":Z
    :goto_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/TreeLocation;->reset()V

    .line 2628
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v2

    const/4 v0, 0x1

    sget-object v18, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    move-object/from16 v3, p2

    move-object/from16 v4, v31

    move v5, v0

    move/from16 v36, v6

    .end local v6    # "expirationInHours":Z
    .local v36, "expirationInHours":Z
    move/from16 v6, v35

    move/from16 v37, v7

    .end local v7    # "expiration":I
    .local v37, "expiration":I
    move-object/from16 v7, v18

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 2632
    .local v0, "found":Z
    if-nez v0, :cond_4

    :try_start_2
    iget-object v4, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_4

    .line 2638
    const/4 v4, 0x1

    .line 2639
    .end local v28    # "success":Z
    .local v4, "success":Z
    nop

    .line 2812
    iget-object v5, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v5, :cond_3

    .line 2813
    iget-object v5, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2816
    :cond_3
    iget-object v5, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-wide v2, v8, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    const-wide/16 v22, -0x1

    iget v7, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    const-string v16, "LNRedo:"

    move-wide/from16 v39, v9

    .end local v9    # "logrecVLSN":J
    .local v39, "logrecVLSN":J
    move-object v9, v5

    move-object/from16 v10, p1

    move-object v5, v11

    .end local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .local v5, "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    move-object/from16 v11, v16

    move-object/from16 v41, v5

    move-object v5, v12

    .end local v5    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .local v41, "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    move v12, v4

    move/from16 v28, v4

    move v4, v13

    .end local v4    # "success":Z
    .restart local v28    # "success":Z
    move-object/from16 v13, v29

    move-wide v4, v14

    move-wide/from16 v14, p4

    move-object/from16 v16, v6

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, v27

    move-wide/from16 v20, v2

    move/from16 v24, v7

    invoke-static/range {v9 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 2639
    const-wide/16 v2, -0x1

    return-wide v2

    .line 2812
    .end local v0    # "found":Z
    .end local v39    # "logrecVLSN":J
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v9    # "logrecVLSN":J
    .restart local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    :catchall_0
    move-exception v0

    move-object/from16 v41, v11

    move-wide v4, v14

    move/from16 v7, p6

    move-object/from16 v6, p7

    move-wide v3, v9

    move/from16 v38, v36

    move/from16 v5, v37

    .end local v9    # "logrecVLSN":J
    .end local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    goto/16 :goto_e

    .line 2632
    .end local v39    # "logrecVLSN":J
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v0    # "found":Z
    .restart local v9    # "logrecVLSN":J
    .restart local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_4
    move-wide/from16 v39, v9

    move-object/from16 v41, v11

    move-wide v4, v14

    .line 2642
    .end local v9    # "logrecVLSN":J
    .end local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    :try_start_3
    iget-object v2, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2643
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    iget v3, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    .line 2645
    .local v3, "index":I
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_5

    move/from16 v16, v17

    goto :goto_3

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    :catchall_1
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v6, p7

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2645
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    :cond_5
    :goto_3
    move/from16 v25, v16

    .line 2647
    if-eqz v25, :cond_f

    .line 2649
    :try_start_5
    iget-wide v6, v8, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2651
    .end local v33    # "treeLsn":J
    .local v6, "treeLsn":J
    :try_start_6
    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v22, v9

    .line 2656
    .local v22, "lsnCmp":I
    if-ltz v22, :cond_d

    .line 2664
    const/4 v9, 0x0

    .line 2665
    .local v9, "redoKD":Z
    const/4 v10, 0x0

    .line 2666
    .local v10, "redoPD":Z
    if-eqz v30, :cond_7

    .line 2667
    move-object/from16 v15, p7

    :try_start_7
    iget-object v11, v15, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v11, :cond_6

    .line 2668
    const/4 v10, 0x1

    move/from16 v23, v9

    move/from16 v24, v10

    goto :goto_4

    .line 2670
    :cond_6
    const/4 v9, 0x1

    move/from16 v23, v9

    move/from16 v24, v10

    goto :goto_4

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .end local v9    # "redoKD":Z
    .end local v10    # "redoPD":Z
    .end local v22    # "lsnCmp":I
    :catchall_2
    move-exception v0

    move-wide/from16 v33, v6

    move-object v6, v15

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    move/from16 v7, p6

    goto/16 :goto_e

    .line 2666
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    .restart local v9    # "redoKD":Z
    .restart local v10    # "redoPD":Z
    .restart local v22    # "lsnCmp":I
    :cond_7
    move-object/from16 v15, p7

    move/from16 v23, v9

    move/from16 v24, v10

    .line 2683
    .end local v9    # "redoKD":Z
    .end local v10    # "redoPD":Z
    .local v23, "redoKD":Z
    .local v24, "redoPD":Z
    :goto_4
    if-lez v22, :cond_8

    .line 2684
    move-object v9, v2

    move v10, v3

    move-wide/from16 v11, p4

    move/from16 v13, v23

    move/from16 v14, v24

    move-wide/from16 v33, v6

    move-object v6, v15

    .end local v6    # "treeLsn":J
    .restart local v33    # "treeLsn":J
    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-wide/from16 v17, v39

    move/from16 v19, p6

    move/from16 v20, v37

    move/from16 v21, v36

    :try_start_8
    invoke-virtual/range {v9 .. v21}, Lcom/sleepycat/je/tree/BIN;->recoverRecord(IJZZ[B[BJIIZ)V

    .line 2689
    const/16 v26, 0x1

    goto :goto_5

    .line 2691
    .end local v33    # "treeLsn":J
    .restart local v6    # "treeLsn":J
    :cond_8
    move-wide/from16 v33, v6

    move-object v6, v15

    .end local v6    # "treeLsn":J
    .restart local v33    # "treeLsn":J
    if-eqz v30, :cond_c

    .line 2692
    if-eqz v23, :cond_9

    .line 2693
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2694
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->setKnownDeleted(I)V

    goto :goto_5

    .line 2697
    :cond_9
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2698
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v33    # "treeLsn":J
    .end local v35    # "blindInsertions":Z
    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v7

    .line 2697
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v33    # "treeLsn":J
    .restart local v35    # "blindInsertions":Z
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :cond_b
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v33    # "treeLsn":J
    .end local v35    # "blindInsertions":Z
    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v7

    .line 2707
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v33    # "treeLsn":J
    .restart local v35    # "blindInsertions":Z
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :cond_c
    :goto_5
    if-eqz v30, :cond_e

    .line 2708
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    goto :goto_6

    .line 2656
    .end local v23    # "redoKD":Z
    .end local v24    # "redoPD":Z
    .end local v33    # "treeLsn":J
    .restart local v6    # "treeLsn":J
    :cond_d
    move-wide/from16 v33, v6

    move-object/from16 v6, p7

    .line 2712
    .end local v6    # "treeLsn":J
    .end local v22    # "lsnCmp":I
    .restart local v33    # "treeLsn":J
    :cond_e
    :goto_6
    move/from16 v7, p6

    move/from16 v14, v36

    move/from16 v5, v37

    move-wide/from16 v36, v33

    move/from16 v33, v27

    move/from16 v27, v26

    move/from16 v26, v3

    move-wide/from16 v3, v39

    goto/16 :goto_c

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .end local v33    # "treeLsn":J
    .restart local v6    # "treeLsn":J
    :catchall_3
    move-exception v0

    move-wide/from16 v33, v6

    move-object/from16 v6, p7

    move/from16 v7, p6

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    .end local v6    # "treeLsn":J
    .restart local v33    # "treeLsn":J
    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v6, p7

    move/from16 v7, p6

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2712
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    :cond_f
    move-object/from16 v6, p7

    if-eqz v0, :cond_15

    .line 2714
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-wide v14, v9

    .line 2721
    .end local v33    # "treeLsn":J
    .local v14, "treeLsn":J
    if-nez v30, :cond_12

    .line 2723
    const-wide/16 v9, -0x1

    cmp-long v7, v14, v9

    if-eqz v7, :cond_11

    .line 2724
    :try_start_9
    invoke-static {v4, v5, v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-lez v7, :cond_10

    goto :goto_7

    :cond_10
    move-wide v9, v14

    goto/16 :goto_8

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    :catchall_5
    move-exception v0

    move/from16 v7, p6

    move-wide/from16 v33, v14

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2725
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    :cond_11
    :goto_7
    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v9, v2

    move v10, v3

    move-wide/from16 v11, p4

    move-wide v4, v14

    .end local v14    # "treeLsn":J
    .local v4, "treeLsn":J
    move v14, v7

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-wide/from16 v17, v39

    move/from16 v19, p6

    move/from16 v20, v37

    move/from16 v21, v36

    :try_start_a
    invoke-virtual/range {v9 .. v21}, Lcom/sleepycat/je/tree/BIN;->recoverRecord(IJZZ[B[BJIIZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2730
    const/16 v27, 0x1

    move/from16 v7, p6

    move/from16 v33, v27

    move/from16 v14, v36

    move/from16 v27, v26

    move/from16 v26, v3

    move-wide/from16 v43, v4

    move/from16 v5, v37

    move-wide/from16 v36, v43

    move-wide/from16 v3, v39

    goto/16 :goto_c

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    :catchall_6
    move-exception v0

    move/from16 v7, p6

    move-wide/from16 v33, v4

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2733
    .end local v4    # "treeLsn":J
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    .restart local v14    # "treeLsn":J
    :cond_12
    move-wide v4, v14

    .end local v14    # "treeLsn":J
    .restart local v4    # "treeLsn":J
    :try_start_b
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 2739
    const-wide/16 v9, -0x1

    cmp-long v7, v4, v9

    if-eqz v7, :cond_14

    .line 2740
    move-wide v9, v4

    move-wide/from16 v4, p4

    .end local v4    # "treeLsn":J
    .local v9, "treeLsn":J
    :try_start_c
    invoke-static {v4, v5, v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v7

    if-gtz v7, :cond_13

    goto :goto_8

    .line 2739
    :cond_13
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "treeLsn":J
    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v35    # "blindInsertions":Z
    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .restart local v9    # "treeLsn":J
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v35    # "blindInsertions":Z
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :catchall_7
    move-exception v0

    move/from16 v7, p6

    move-wide/from16 v33, v9

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2739
    .end local v9    # "treeLsn":J
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    .restart local v4    # "treeLsn":J
    :cond_14
    move-wide v9, v4

    move-wide/from16 v4, p4

    .line 2808
    .end local v4    # "treeLsn":J
    .restart local v14    # "treeLsn":J
    :goto_8
    move/from16 v7, p6

    move/from16 v33, v27

    move/from16 v14, v36

    move/from16 v5, v37

    move-wide/from16 v36, v9

    move/from16 v27, v26

    move/from16 v26, v3

    move-wide/from16 v3, v39

    .end local v14    # "treeLsn":J
    .restart local v9    # "treeLsn":J
    goto/16 :goto_c

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .end local v9    # "treeLsn":J
    .restart local v4    # "treeLsn":J
    :catchall_8
    move-exception v0

    move-wide v9, v4

    move-wide/from16 v4, p4

    move/from16 v7, p6

    move-wide/from16 v33, v9

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    .end local v4    # "treeLsn":J
    .restart local v9    # "treeLsn":J
    goto/16 :goto_e

    .end local v9    # "treeLsn":J
    .restart local v33    # "treeLsn":J
    :catchall_9
    move-exception v0

    move/from16 v7, p6

    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    goto/16 :goto_e

    .line 2743
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    :cond_15
    :try_start_d
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    const/high16 v16, 0x20000

    const v17, -0x20001

    if-eqz v7, :cond_1b

    .line 2745
    if-eqz v35, :cond_1a

    .line 2747
    const/4 v10, 0x0

    const/4 v15, 0x1

    move-object v9, v2

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move-wide/from16 v13, p4

    :try_start_e
    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/je/tree/BIN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJZ)I

    move-result v7

    move v3, v7

    .line 2751
    and-int v7, v3, v16

    if-eqz v7, :cond_19

    .line 2753
    const/16 v27, 0x1

    .line 2754
    and-int v3, v3, v17

    .line 2755
    iput v3, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 2757
    move/from16 v7, p6

    :try_start_f
    invoke-virtual {v2, v3, v7}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSize(II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 2758
    move/from16 v13, v36

    move/from16 v15, v37

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .local v13, "expirationInHours":Z
    .local v15, "expiration":I
    :try_start_10
    invoke-virtual {v2, v3, v15, v13}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 2760
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v9, :cond_16

    .line 2761
    move-wide/from16 v11, v39

    .end local v39    # "logrecVLSN":J
    .local v11, "logrecVLSN":J
    :try_start_11
    invoke-virtual {v2, v3, v11, v12}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    goto :goto_9

    .line 2760
    .end local v11    # "logrecVLSN":J
    .restart local v39    # "logrecVLSN":J
    :cond_16
    move-wide/from16 v11, v39

    .line 2768
    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    :goto_9
    if-eqz v30, :cond_18

    .line 2769
    iget-object v9, v6, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    if-nez v9, :cond_17

    .line 2770
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->setKnownDeleted(I)V

    goto :goto_a

    .line 2772
    :cond_17
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->setPendingDeleted(I)V

    .line 2778
    :goto_a
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    .line 2808
    :cond_18
    move v14, v13

    move v5, v15

    move-wide/from16 v36, v33

    move/from16 v33, v27

    move/from16 v27, v26

    move/from16 v26, v3

    move-wide v3, v11

    goto/16 :goto_c

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .end local v11    # "logrecVLSN":J
    .restart local v39    # "logrecVLSN":J
    :catchall_a
    move-exception v0

    move/from16 v38, v13

    move v5, v15

    move-wide/from16 v3, v39

    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    goto/16 :goto_e

    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    :catchall_b
    move-exception v0

    goto :goto_b

    .line 2751
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    :cond_19
    move/from16 v7, p6

    move/from16 v13, v36

    move/from16 v15, v37

    move-wide/from16 v11, v39

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v33    # "treeLsn":J
    .end local v35    # "blindInsertions":Z
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v9

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v33    # "treeLsn":J
    .restart local v35    # "blindInsertions":Z
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :catchall_c
    move-exception v0

    move/from16 v7, p6

    :goto_b
    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    goto/16 :goto_e

    .line 2745
    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    :cond_1a
    move/from16 v7, p6

    move/from16 v13, v36

    move/from16 v15, v37

    move-wide/from16 v11, v39

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v33    # "treeLsn":J
    .end local v35    # "blindInsertions":Z
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "index":I
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v33    # "treeLsn":J
    .restart local v35    # "blindInsertions":Z
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :catchall_d
    move-exception v0

    move-wide v3, v11

    move/from16 v38, v13

    move v5, v15

    goto/16 :goto_e

    .line 2787
    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "index":I
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    :cond_1b
    move/from16 v7, p6

    move/from16 v13, v36

    move/from16 v15, v37

    move-wide/from16 v11, v39

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    if-nez v30, :cond_1e

    .line 2789
    const/4 v10, 0x0

    const/16 v18, 0x0

    move-object v9, v2

    move v5, v3

    move-wide v3, v11

    .end local v11    # "logrecVLSN":J
    .local v3, "logrecVLSN":J
    .local v5, "index":I
    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move/from16 v42, v13

    .end local v13    # "expirationInHours":Z
    .local v42, "expirationInHours":Z
    move-wide/from16 v13, p4

    move/from16 v19, v5

    move v5, v15

    .end local v15    # "expiration":I
    .local v5, "expiration":I
    .local v19, "index":I
    move/from16 v15, v18

    :try_start_12
    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/je/tree/BIN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJZ)I

    move-result v9

    .line 2793
    .end local v19    # "index":I
    .local v9, "index":I
    and-int v10, v9, v16

    if-eqz v10, :cond_1d

    .line 2795
    const/16 v27, 0x1

    .line 2796
    and-int v9, v9, v17

    .line 2797
    iput v9, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    .line 2799
    invoke-virtual {v2, v9, v7}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSize(II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .line 2800
    move/from16 v14, v42

    .end local v42    # "expirationInHours":Z
    .local v14, "expirationInHours":Z
    :try_start_13
    invoke-virtual {v2, v9, v5, v14}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 2802
    invoke-virtual {v2, v9}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2803
    invoke-virtual {v2, v9, v3, v4}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    .line 2808
    :cond_1c
    move-wide/from16 v36, v33

    move/from16 v33, v27

    move/from16 v27, v26

    move/from16 v26, v9

    goto :goto_c

    .line 2793
    .end local v14    # "expirationInHours":Z
    .restart local v42    # "expirationInHours":Z
    :cond_1d
    move/from16 v14, v42

    .end local v42    # "expirationInHours":Z
    .restart local v14    # "expirationInHours":Z
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "logrecVLSN":J
    .end local v5    # "expiration":I
    .end local v14    # "expirationInHours":Z
    .end local v25    # "foundNotKD":Z
    .end local v26    # "replaced":Z
    .end local v27    # "inserted":Z
    .end local v28    # "success":Z
    .end local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .end local v30    # "isDeletion":Z
    .end local v31    # "logrecKey":[B
    .end local v32    # "logrecData":[B
    .end local v33    # "treeLsn":J
    .end local v35    # "blindInsertions":Z
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p4    # "logrecLsn":J
    .end local p6    # "logrecSize":I
    .end local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local p8    # "logVersion":I
    throw v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v9    # "index":I
    .restart local v3    # "logrecVLSN":J
    .restart local v5    # "expiration":I
    .restart local v14    # "expirationInHours":Z
    .restart local v25    # "foundNotKD":Z
    .restart local v26    # "replaced":Z
    .restart local v27    # "inserted":Z
    .restart local v28    # "success":Z
    .restart local v29    # "logrecLN":Lcom/sleepycat/je/tree/LN;
    .restart local v30    # "isDeletion":Z
    .restart local v31    # "logrecKey":[B
    .restart local v32    # "logrecData":[B
    .restart local v33    # "treeLsn":J
    .restart local v35    # "blindInsertions":Z
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p4    # "logrecLsn":J
    .restart local p6    # "logrecSize":I
    .restart local p7    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local p8    # "logVersion":I
    :catchall_e
    move-exception v0

    move/from16 v38, v14

    goto/16 :goto_e

    .end local v14    # "expirationInHours":Z
    .restart local v42    # "expirationInHours":Z
    :catchall_f
    move-exception v0

    move/from16 v38, v42

    .end local v42    # "expirationInHours":Z
    .restart local v14    # "expirationInHours":Z
    goto/16 :goto_e

    .line 2787
    .end local v5    # "expiration":I
    .end local v14    # "expirationInHours":Z
    .restart local v0    # "found":Z
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v3, "index":I
    .restart local v11    # "logrecVLSN":J
    .restart local v13    # "expirationInHours":Z
    .restart local v15    # "expiration":I
    :cond_1e
    move/from16 v19, v3

    move-wide v3, v11

    move v14, v13

    move v5, v15

    .end local v11    # "logrecVLSN":J
    .end local v13    # "expirationInHours":Z
    .end local v15    # "expiration":I
    .local v3, "logrecVLSN":J
    .restart local v5    # "expiration":I
    .restart local v14    # "expirationInHours":Z
    .restart local v19    # "index":I
    move-wide/from16 v36, v33

    move/from16 v33, v27

    move/from16 v27, v26

    move/from16 v26, v19

    .line 2808
    .end local v19    # "index":I
    .local v26, "index":I
    .local v27, "replaced":Z
    .local v33, "inserted":Z
    .local v36, "treeLsn":J
    :goto_c
    const/16 v28, 0x1

    .line 2809
    nop

    .line 2812
    iget-object v9, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v9, :cond_1f

    .line 2813
    iget-object v9, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2816
    :cond_1f
    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v15, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-wide v12, v8, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    const-wide/16 v22, -0x1

    iget v11, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    const-string v16, "LNRedo:"

    move-object/from16 v10, p1

    move/from16 v24, v11

    move-object/from16 v11, v16

    move-wide/from16 v20, v12

    move/from16 v12, v28

    move-object/from16 v13, v29

    move/from16 v38, v14

    move-object/from16 v16, v15

    .end local v14    # "expirationInHours":Z
    .local v38, "expirationInHours":Z
    move-wide/from16 v14, p4

    move/from16 v17, v25

    move/from16 v18, v27

    move/from16 v19, v33

    invoke-static/range {v9 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 2809
    return-wide v36

    .line 2812
    .end local v0    # "found":Z
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "logrecVLSN":J
    .end local v5    # "expiration":I
    .end local v38    # "expirationInHours":Z
    .local v26, "replaced":Z
    .local v27, "inserted":Z
    .local v33, "treeLsn":J
    .local v36, "expirationInHours":Z
    .restart local v37    # "expiration":I
    .restart local v39    # "logrecVLSN":J
    :catchall_10
    move-exception v0

    move/from16 v7, p6

    goto :goto_d

    :catchall_11
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v6, p7

    :goto_d
    move/from16 v38, v36

    move/from16 v5, v37

    move-wide/from16 v3, v39

    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .end local v39    # "logrecVLSN":J
    .restart local v3    # "logrecVLSN":J
    .restart local v5    # "expiration":I
    .restart local v38    # "expirationInHours":Z
    goto :goto_e

    .end local v3    # "logrecVLSN":J
    .end local v5    # "expiration":I
    .end local v38    # "expirationInHours":Z
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .local v9, "logrecVLSN":J
    .local v11, "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v36    # "expirationInHours":Z
    .restart local v37    # "expiration":I
    :catchall_12
    move-exception v0

    move-wide v3, v9

    move-object/from16 v41, v11

    move-object v6, v12

    move v7, v13

    move/from16 v38, v36

    move/from16 v5, v37

    .end local v9    # "logrecVLSN":J
    .end local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v36    # "expirationInHours":Z
    .end local v37    # "expiration":I
    .restart local v3    # "logrecVLSN":J
    .restart local v5    # "expiration":I
    .restart local v38    # "expirationInHours":Z
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    goto :goto_e

    .end local v3    # "logrecVLSN":J
    .end local v5    # "expiration":I
    .end local v38    # "expirationInHours":Z
    .end local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .local v6, "expirationInHours":Z
    .restart local v7    # "expiration":I
    .restart local v9    # "logrecVLSN":J
    .restart local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    :catchall_13
    move-exception v0

    move/from16 v38, v6

    move v5, v7

    move-wide v3, v9

    move-object/from16 v41, v11

    move-object v6, v12

    move v7, v13

    .end local v6    # "expirationInHours":Z
    .end local v7    # "expiration":I
    .end local v9    # "logrecVLSN":J
    .end local v11    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v3    # "logrecVLSN":J
    .restart local v5    # "expiration":I
    .restart local v38    # "expirationInHours":Z
    .restart local v41    # "logrecType":Lcom/sleepycat/je/log/LogEntryType;
    :goto_e
    iget-object v2, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_20

    .line 2813
    iget-object v2, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2816
    :cond_20
    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-wide v14, v8, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    const-wide/16 v22, -0x1

    iget v13, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    const-string v11, "LNRedo:"

    move-object/from16 v10, p1

    move/from16 v12, v28

    move/from16 v24, v13

    move-object/from16 v13, v29

    move-wide/from16 v20, v14

    move-wide/from16 v14, p4

    move-object/from16 v16, v2

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, v27

    invoke-static/range {v9 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    throw v0
.end method

.method private redoLNs(Ljava/util/Set;Lcom/sleepycat/je/dbi/StartupTracker$Counter;)V
    .locals 24
    .param p2, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            ">;",
            "Lcom/sleepycat/je/dbi/StartupTracker$Counter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2143
    .local p1, "lnTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    .line 2144
    .local v7, "endOfFileLsn":J
    iget-object v0, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v4, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 2168
    .local v4, "firstActiveLsn":J
    new-instance v0, Lcom/sleepycat/je/log/LNFileReader;

    iget-object v12, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v13, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    iget-object v1, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const/16 v16, 0x1

    const-wide/16 v17, -0x1

    const/16 v21, 0x0

    move-object v11, v0

    move-wide v14, v4

    move-wide/from16 v19, v7

    move-wide/from16 v22, v1

    invoke-direct/range {v11 .. v23}, Lcom/sleepycat/je/log/LNFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJZJJLjava/lang/Long;J)V

    .line 2173
    .local v11, "reader":Lcom/sleepycat/je/log/LNFileReader;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/LogEntryType;

    .line 2174
    .local v1, "lt":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v11, v1}, Lcom/sleepycat/je/log/LNFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 2175
    .end local v1    # "lt":Lcom/sleepycat/je/log/LogEntryType;
    goto :goto_0

    .line 2177
    :cond_0
    iget-object v0, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v12

    .line 2178
    .local v12, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v9, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v9}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 2185
    .local v9, "location":Lcom/sleepycat/je/tree/TreeLocation;
    :goto_1
    :try_start_0
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->readNextEntry()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_3

    .line 2187
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 2189
    invoke-direct {v10, v11}, Lcom/sleepycat/je/recovery/RecoveryManager;->eligibleForRedo(Lcom/sleepycat/je/log/LNFileReader;)Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    move-result-object v0

    move-object v13, v0

    .line 2191
    .local v13, "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    iget-boolean v0, v13, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isEligible:Z

    if-nez v0, :cond_1

    .line 2192
    goto :goto_1

    .line 2199
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->invokeEvictor()V

    .line 2201
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    move-object v14, v0

    .line 2202
    .local v14, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v12, v14}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v15, v0

    .line 2204
    .local v15, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2210
    .local v17, "logrecLsn":J
    if-nez v15, :cond_2

    .line 2211
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V

    .line 2213
    iget-object v0, v10, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/16 v21, 0x0

    .line 2215
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getLastEntrySize()I

    move-result v22

    const/16 v23, 0x0

    .line 2213
    move-object/from16 v16, v0

    move-wide/from16 v19, v17

    invoke-virtual/range {v16 .. v23}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2217
    goto :goto_1

    .line 2235
    .end local v13    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local v14    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "logrecLsn":J
    :catch_0
    move-exception v0

    move-object/from16 v2, p2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    goto :goto_3

    .line 2221
    .restart local v13    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local v14    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v17    # "logrecLsn":J
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v0

    .line 2222
    .local v0, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v0, v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2224
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2226
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    move-wide/from16 v19, v4

    .end local v4    # "firstActiveLsn":J
    .local v19, "firstActiveLsn":J
    move-wide/from16 v4, v17

    move-object v6, v14

    move-wide/from16 v21, v7

    .end local v7    # "endOfFileLsn":J
    .local v21, "endOfFileLsn":J
    move-object v7, v15

    move-object v8, v13

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/recovery/RecoveryManager;->redoOneLN(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/log/entry/LNLogEntry;JLcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;Lcom/sleepycat/je/tree/TreeLocation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2229
    .end local v0    # "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    :try_start_5
    invoke-virtual {v12, v15}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2230
    nop

    .line 2231
    .end local v13    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local v14    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "logrecLsn":J
    move-wide/from16 v4, v19

    move-wide/from16 v7, v21

    goto :goto_1

    .line 2229
    .restart local v13    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .restart local v14    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v17    # "logrecLsn":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v19    # "firstActiveLsn":J
    .end local v21    # "endOfFileLsn":J
    .restart local v4    # "firstActiveLsn":J
    .restart local v7    # "endOfFileLsn":J
    :catchall_1
    move-exception v0

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    .end local v4    # "firstActiveLsn":J
    .end local v7    # "endOfFileLsn":J
    .restart local v19    # "firstActiveLsn":J
    .restart local v21    # "endOfFileLsn":J
    :goto_2
    invoke-virtual {v12, v15}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v9    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v11    # "reader":Lcom/sleepycat/je/log/LNFileReader;
    .end local v12    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v19    # "firstActiveLsn":J
    .end local v21    # "endOfFileLsn":J
    .end local p1    # "lnTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    .end local p2    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v0

    .line 2235
    .end local v13    # "eligible":Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .end local v14    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "logrecLsn":J
    .restart local v4    # "firstActiveLsn":J
    .restart local v7    # "endOfFileLsn":J
    .restart local v9    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local v11    # "reader":Lcom/sleepycat/je/log/LNFileReader;
    .restart local v12    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local p1    # "lnTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    .restart local p2    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :catch_1
    move-exception v0

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    move-object/from16 v2, p2

    goto :goto_3

    .line 2233
    :cond_3
    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    .end local v4    # "firstActiveLsn":J
    .end local v7    # "endOfFileLsn":J
    .restart local v19    # "firstActiveLsn":J
    .restart local v21    # "endOfFileLsn":J
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getNRepeatIteratorReads()J

    move-result-wide v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v2, p2

    :try_start_6
    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2237
    goto :goto_4

    .line 2235
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_3

    .end local v19    # "firstActiveLsn":J
    .end local v21    # "endOfFileLsn":J
    .restart local v4    # "firstActiveLsn":J
    .restart local v7    # "endOfFileLsn":J
    :catch_4
    move-exception v0

    move-object/from16 v2, p2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    .line 2236
    .end local v4    # "firstActiveLsn":J
    .end local v7    # "endOfFileLsn":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "firstActiveLsn":J
    .restart local v21    # "endOfFileLsn":J
    :goto_3
    invoke-virtual {v11}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v3

    const-string/jumbo v1, "redoLns"

    invoke-direct {v10, v3, v4, v1, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 2238
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private redoOneLN(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/log/entry/LNLogEntry;JLcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;Lcom/sleepycat/je/tree/TreeLocation;)V
    .locals 25
    .param p1, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .param p3, "logrecLsn"    # J
    .param p5, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p6, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p7, "eligible"    # Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
    .param p8, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LNFileReader;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;J",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2357
    .local p2, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    move-object/from16 v12, p7

    move-object/from16 v11, p8

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getLastEntrySize()I

    move-result v16

    .line 2358
    .local v16, "logrecSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getLogVersion()I

    move-result v9

    .line 2359
    .local v9, "logVersion":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v10

    .line 2361
    .local v10, "ln":Lcom/sleepycat/je/tree/LN;
    move-object/from16 v8, p6

    invoke-virtual {v10, v8, v14, v15}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 2363
    iget-object v0, v12, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v1, v12, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/recovery/RecoveryManager;->relock(Lcom/sleepycat/je/txn/Txn;JLcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2373
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, v16

    move-object/from16 v7, p7

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/recovery/RecoveryManager;->redo(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/log/entry/LNLogEntry;JILcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;I)J

    move-result-wide v17

    .line 2380
    .local v17, "treeLsn":J
    iget-object v0, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->inListBuildDbIds:Ljava/util/Set;

    move-object/from16 v8, p5

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2389
    instance-of v0, v10, Lcom/sleepycat/je/tree/MapLN;

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    .line 2390
    move-object v0, v10

    check-cast v0, Lcom/sleepycat/je/tree/MapLN;

    .line 2392
    .local v0, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2393
    iget-object v2, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->tempDbIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2396
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v9, v1, :cond_2

    .line 2397
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    iget-object v3, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual {v2, v3, v14, v15}, Lcom/sleepycat/je/dbi/DatabaseImpl;->countObsoleteOldVersionDb(Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;J)V

    .line 2417
    .end local v0    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    :cond_2
    iget-object v0, v12, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    if-nez v0, :cond_6

    .line 2418
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getNameLNLogEntry()Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    move-result-object v0

    .line 2420
    .local v0, "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    if-eqz v0, :cond_6

    .line 2421
    sget-object v2, Lcom/sleepycat/je/recovery/RecoveryManager$1;->$SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/DbOperationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2434
    :pswitch_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2435
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/NameLN;

    .line 2436
    .local v2, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getKey()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    .line 2437
    .local v3, "name":Ljava/lang/String;
    iget-object v4, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->expectRenamedMapLNs:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    goto :goto_0

    .line 2434
    .end local v2    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2428
    :pswitch_1
    nop

    .line 2429
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    .line 2430
    .local v2, "truncateId":Lcom/sleepycat/je/dbi/DatabaseId;
    if-eqz v2, :cond_4

    .line 2431
    iget-object v3, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->expectDeletedMapLNs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2432
    goto :goto_0

    .line 2430
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2423
    .end local v2    # "truncateId":Lcom/sleepycat/je/dbi/DatabaseId;
    :pswitch_2
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2424
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/NameLN;

    .line 2425
    .local v2, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    iget-object v3, v13, Lcom/sleepycat/je/recovery/RecoveryManager;->expectDeletedMapLNs:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2426
    goto :goto_0

    .line 2423
    .end local v2    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2445
    .end local v0    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :cond_6
    :goto_0
    if-ge v9, v1, :cond_a

    .line 2446
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    .line 2448
    .local v0, "treeLsnIsImmediatelyObsolete":Z
    if-nez v0, :cond_9

    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-eqz v1, :cond_9

    .line 2449
    iget-boolean v1, v11, Lcom/sleepycat/je/tree/TreeLocation;->isEmbedded:Z

    if-nez v1, :cond_8

    iget-boolean v1, v11, Lcom/sleepycat/je/tree/TreeLocation;->isKD:Z

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    move/from16 v19, v0

    goto :goto_3

    .line 2453
    :cond_9
    move/from16 v19, v0

    .end local v0    # "treeLsnIsImmediatelyObsolete":Z
    .local v19, "treeLsnIsImmediatelyObsolete":Z
    :goto_3
    iget v7, v11, Lcom/sleepycat/je/tree/TreeLocation;->childLoggedSize:I

    iget-wide v5, v12, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    .line 2456
    invoke-virtual/range {p7 .. p7}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isCommitted()Z

    move-result v20

    .line 2453
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-wide/from16 v3, p3

    move-wide/from16 v21, v5

    move-wide/from16 v5, v17

    move/from16 v23, v7

    move/from16 v7, v19

    move/from16 v8, v23

    move/from16 v23, v9

    move-object/from16 v24, v10

    .end local v9    # "logVersion":I
    .end local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v23, "logVersion":I
    .local v24, "ln":Lcom/sleepycat/je/tree/LN;
    move-wide/from16 v9, v21

    move/from16 v11, v20

    move-object v13, v12

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/recovery/RecoveryManager;->redoUtilizationInfoOldLogVersion(Lcom/sleepycat/je/log/entry/LNLogEntry;IJJZIJZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2457
    .end local v19    # "treeLsnIsImmediatelyObsolete":Z
    goto :goto_4

    .line 2458
    .end local v23    # "logVersion":I
    .end local v24    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v9    # "logVersion":I
    .restart local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_a
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object v13, v12

    .end local v9    # "logVersion":I
    .end local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v23    # "logVersion":I
    .restart local v24    # "ln":Lcom/sleepycat/je/tree/LN;
    iget-wide v5, v13, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    .line 2460
    invoke-virtual/range {p7 .. p7}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isCommitted()Z

    move-result v7

    .line 2458
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-wide/from16 v3, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/recovery/RecoveryManager;->redoUtilizationInfo(Lcom/sleepycat/je/log/entry/LNLogEntry;IJJZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2463
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private redoUtilizationInfo(Lcom/sleepycat/je/log/entry/LNLogEntry;IJJZLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 14
    .param p2, "logrecSize"    # I
    .param p3, "logrecLsn"    # J
    .param p5, "commitLsn"    # J
    .param p7, "isCommitted"    # Z
    .param p8, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;IJJZ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")V"
        }
    .end annotation

    .line 2864
    .local p1, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2866
    iget-object v4, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p3

    move/from16 v10, p2

    invoke-virtual/range {v4 .. v11}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 2878
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2879
    return-void

    .line 2887
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->countPriorVersionObsolete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2888
    return-void

    .line 2891
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getPriorVersionSize()I

    move-result v3

    .line 2892
    .local v3, "priorSize":I
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getPriorVersionLsn()J

    move-result-wide v12

    .line 2894
    .local v12, "priorLsn":J
    if-eqz v3, :cond_6

    .line 2895
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    if-eqz v4, :cond_5

    .line 2897
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v4

    cmp-long v4, v12, v4

    if-nez v4, :cond_3

    .line 2904
    if-eqz p7, :cond_4

    .line 2905
    iget-object v4, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-wide v5, v12

    move-wide/from16 v7, p5

    move v10, v3

    invoke-virtual/range {v4 .. v11}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    goto :goto_0

    .line 2916
    :cond_3
    iget-object v4, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-wide v5, v12

    move-wide/from16 v7, p3

    move v10, v3

    invoke-virtual/range {v4 .. v11}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 2920
    :cond_4
    :goto_0
    return-void

    .line 2895
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2894
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private redoUtilizationInfoOldLogVersion(Lcom/sleepycat/je/log/entry/LNLogEntry;IJJZIJZLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 24
    .param p2, "logrecSize"    # I
    .param p3, "logrecLsn"    # J
    .param p5, "treeLsn"    # J
    .param p7, "treeLsnIsImmediatelyObsolete"    # Z
    .param p8, "treeLNLoggedSize"    # I
    .param p9, "commitLsn"    # J
    .param p11, "isCommitted"    # Z
    .param p12, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;IJJZIJZ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")V"
        }
    .end annotation

    .line 3006
    .local p1, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p5

    move-object/from16 v12, p12

    invoke-virtual {v1, v12}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3008
    iget-object v13, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move/from16 v19, p2

    invoke-virtual/range {v13 .. v20}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 3020
    :cond_0
    invoke-virtual/range {p12 .. p12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3021
    return-void

    .line 3025
    :cond_1
    const-wide/16 v13, -0x1

    cmp-long v2, v10, v13

    if-eqz v2, :cond_3

    .line 3027
    invoke-static/range {p3 .. p6}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v15

    .line 3029
    .local v15, "cmpLogLsnToTreeLsn":I
    if-gez v15, :cond_2

    .line 3068
    invoke-virtual {v1, v12}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3070
    iget-object v2, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/4 v7, 0x0

    .line 3072
    move/from16 v9, p2

    move-wide/from16 v5, p3

    invoke-static {v12, v9, v5, v6}, Lcom/sleepycat/je/recovery/RecoveryManager;->fetchLNSize(Lcom/sleepycat/je/dbi/DatabaseImpl;IJ)I

    move-result v8

    iget-object v3, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->resurrectedLsns:Ljava/util/Set;

    .line 3073
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3070
    xor-int/lit8 v16, v3, 0x1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v9, v16

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    goto :goto_0

    .line 3076
    :cond_2
    if-lez v15, :cond_3

    .line 3104
    if-nez p7, :cond_3

    .line 3106
    iget-object v2, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/4 v7, 0x0

    .line 3108
    move/from16 v9, p8

    invoke-static {v12, v9, v10, v11}, Lcom/sleepycat/je/recovery/RecoveryManager;->fetchLNSize(Lcom/sleepycat/je/dbi/DatabaseImpl;IJ)I

    move-result v8

    .line 3106
    move-wide/from16 v3, p5

    move-wide/from16 v5, p3

    move/from16 v9, p11

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 3205
    .end local v15    # "cmpLogLsnToTreeLsn":I
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v2

    .line 3206
    .local v2, "abortLsn":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v4

    .line 3208
    .local v4, "abortKD":Z
    cmp-long v5, p9, v13

    if-eqz v5, :cond_5

    cmp-long v5, v2, v13

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 3211
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortData()[B

    move-result-object v5

    if-nez v5, :cond_5

    .line 3213
    cmp-long v5, v10, v13

    if-eqz v5, :cond_4

    .line 3214
    invoke-static/range {p3 .. p6}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v5

    if-gtz v5, :cond_5

    iget-object v5, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v5, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 3215
    invoke-static {v2, v3, v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v5

    if-gez v5, :cond_5

    .line 3217
    :cond_4
    iget-object v5, v0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v16, v5

    move-wide/from16 v17, v2

    move-wide/from16 v19, p9

    invoke-virtual/range {v16 .. v23}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 3221
    :cond_5
    return-void
.end method

.method private relock(Lcom/sleepycat/je/txn/Txn;JLcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 16
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "logLsn"    # J
    .param p5, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Txn;",
            "J",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2476
    .local p4, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual/range {p1 .. p3}, Lcom/sleepycat/je/txn/Txn;->addLogInfo(J)V

    .line 2483
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/txn/Txn;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 2486
    .local v0, "result":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    const-string v3, " abortLsn="

    const-string v4, " logLsn="

    if-eq v1, v2, :cond_1

    .line 2498
    nop

    .line 2499
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v8

    .line 2500
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKey()[B

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortData()[B

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortVLSN()J

    move-result-wide v11

    .line 2501
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortExpiration()I

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isAbortExpirationInHours()Z

    move-result v14

    .line 2498
    move-object v5, v0

    move-object/from16 v15, p5

    invoke-virtual/range {v5 .. v15}, Lcom/sleepycat/je/txn/LockResult;->setAbortInfo(JZ[B[BJIZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2504
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getWriteLockInfo()Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v1

    .line 2506
    .local v1, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    if-eqz v1, :cond_0

    .line 2513
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortLogSize(I)V

    .line 2514
    return-void

    .line 2507
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resurrected lock has no write info txn="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2508
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2509
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2510
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2507
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 2487
    .end local v1    # "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resurrected lock denied txn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2488
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2489
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2490
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2487
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private removeTempDbs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3325
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 3326
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/RecoveryProgress;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 3327
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v0

    .line 3329
    .local v0, "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 3330
    .local v1, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3331
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2

    .line 3332
    .local v2, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    const/4 v3, 0x0

    .line 3334
    .local v3, "operationOk":Z
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->tempDbIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3335
    .local v5, "tempDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 3336
    invoke-virtual {v1, v5}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    .line 3337
    .local v6, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v1, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3338
    if-eqz v6, :cond_2

    .line 3339
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3340
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 3342
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 3343
    iget-object v7, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v7

    .line 3344
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3345
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v9

    .line 3343
    invoke-virtual {v7, v2, v8, v9}, Lcom/sleepycat/je/dbi/DbTree;->dbRemove(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_1
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3353
    goto :goto_1

    .line 3350
    :catch_0
    move-exception v4

    .line 3351
    .local v4, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    nop

    .line 3352
    :try_start_2
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    .end local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v3    # "operationOk":Z
    throw v7

    .line 3346
    .end local v4    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .restart local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v3    # "operationOk":Z
    :catch_1
    move-exception v4

    .line 3348
    .local v4, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v7, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3349
    invoke-static {v7, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    .end local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v3    # "operationOk":Z
    throw v7

    .line 3355
    .end local v4    # "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    .restart local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v3    # "operationOk":Z
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumDeleted()V

    goto :goto_1

    .line 3339
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v3    # "operationOk":Z
    throw v4
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3358
    .end local v5    # "tempDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v3    # "operationOk":Z
    :cond_2
    :goto_1
    goto :goto_0

    .line 3359
    :cond_3
    const/4 v3, 0x1

    .line 3364
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd(Z)V

    .line 3365
    iget-object v4, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 3366
    nop

    .line 3367
    return-void

    .line 3364
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 3360
    :catch_2
    move-exception v4

    .line 3361
    .local v4, "E":Ljava/lang/Error;
    :try_start_3
    iget-object v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 3362
    nop

    .end local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .end local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v3    # "operationOk":Z
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3364
    .end local v4    # "E":Ljava/lang/Error;
    .restart local v0    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .restart local v1    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v3    # "operationOk":Z
    :goto_2
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd(Z)V

    .line 3365
    iget-object v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v4
.end method

.method private renameMapLNs()V
    .locals 7

    .line 3406
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 3409
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->expectRenamedMapLNs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3411
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3412
    .local v3, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3413
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    .line 3416
    .local v5, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 3421
    :cond_0
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    .line 3423
    iget-object v6, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3424
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3428
    :cond_1
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3429
    nop

    .line 3430
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    .end local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 3428
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    .restart local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v1

    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 3431
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    .end local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_3
    return-void
.end method

.method private replayOneIN(Lcom/sleepycat/je/log/INFileReader;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 5
    .param p1, "reader"    # Lcom/sleepycat/je/log/INFileReader;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p1}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v0

    .line 1353
    .local v0, "logLsn":J
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/log/INFileReader;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v2

    .line 1354
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v2, p2, v0, v1}, Lcom/sleepycat/je/tree/IN;->postRecoveryInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1355
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->latch()V

    .line 1357
    invoke-direct {p0, p2, v2, v0, v1}, Lcom/sleepycat/je/recovery/RecoveryManager;->recoverIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V

    .line 1364
    iget-object v3, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->inListBuildDbIds:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    return-void
.end method

.method public static rollbackUndo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JLcom/sleepycat/je/txn/TxnChain$RevertInfo;)V
    .locals 19
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "traceLevel"    # Ljava/util/logging/Level;
    .param p2, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p5, "undoLsn"    # J
    .param p7, "revertTo"    # Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/logging/Level;",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;J",
            "Lcom/sleepycat/je/txn/TxnChain$RevertInfo;",
            ")V"
        }
    .end annotation

    .local p4, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2018
    iget-wide v8, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertLsn:J

    iget-boolean v10, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKD:Z

    iget-boolean v11, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertPD:Z

    iget-object v12, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKey:[B

    iget-object v13, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertData:[B

    iget-wide v14, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertVLSN:J

    move-object/from16 v18, v1

    iget v1, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpiration:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpirationInHours:Z

    move/from16 v17, v1

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lcom/sleepycat/je/recovery/RecoveryManager;->undo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JJZZ[B[BJIZ)V

    .line 2023
    return-void
.end method

.method private static trace(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V
    .locals 17
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "debugType"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p5, "logLsn"    # J
    .param p7, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p8, "found"    # Z
    .param p9, "replaced"    # Z
    .param p10, "inserted"    # Z
    .param p11, "replacedLsn"    # J
    .param p13, "abortLsn"    # J
    .param p15, "index"    # I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    .line 3579
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static/range {v0 .. v16}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 3581
    return-void
.end method

.method private static trace(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V
    .locals 12
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "debugType"    # Ljava/lang/String;
    .param p4, "success"    # Z
    .param p5, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p6, "logLsn"    # J
    .param p8, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p9, "found"    # Z
    .param p10, "replaced"    # Z
    .param p11, "inserted"    # Z
    .param p12, "replacedLsn"    # J
    .param p14, "abortLsn"    # J
    .param p16, "index"    # I

    .line 3597
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object v3, p1

    .line 3598
    .local v3, "useLevel":Ljava/util/logging/Level;
    if-nez v1, :cond_0

    .line 3599
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 3601
    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3603
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v5, p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    const-string v6, " success="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3605
    instance-of v6, v2, Lcom/sleepycat/je/tree/IN;

    if-eqz v6, :cond_1

    .line 3606
    const-string v6, " node="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3607
    move-object v6, v2

    check-cast v6, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3609
    :cond_1
    const-string v6, " lsn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    invoke-static/range {p6 .. p7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3611
    if-eqz p8, :cond_2

    .line 3612
    const-string v6, " parent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3614
    :cond_2
    const-string v6, " found="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3615
    move/from16 v6, p9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3616
    const-string v7, " replaced="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3617
    move/from16 v7, p10

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3618
    const-string v8, " inserted="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    move/from16 v8, p11

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3620
    const-wide/16 v9, -0x1

    cmp-long v11, p12, v9

    if-eqz v11, :cond_3

    .line 3621
    const-string v11, " replacedLsn="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-static/range {p12 .. p13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    :cond_3
    cmp-long v9, p14, v9

    if-eqz v9, :cond_4

    .line 3625
    const-string v9, " abortLsn="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3626
    invoke-static/range {p14 .. p15}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3628
    :cond_4
    const-string v9, " index="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v10, p16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3629
    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v9}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3630
    nop

    .line 3631
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3630
    invoke-static {p0, v9, v3, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 3633
    :cond_5
    nop

    .line 3634
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3633
    invoke-static {p0, v9, v3, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 3601
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move-object v5, p3

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v10, p16

    .line 3637
    :goto_0
    return-void
.end method

.method private traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "badLsn"    # J
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "originalException"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3644
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    .line 3645
    .local v0, "badLsnString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last LSN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecoveryManager"

    invoke-static {v1, v3, p3, v2, p4}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3648
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last LSN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static undo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JJZZ[B[BJIZ)V
    .locals 27
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "traceLevel"    # Ljava/util/logging/Level;
    .param p2, "location"    # Lcom/sleepycat/je/tree/TreeLocation;
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p5, "logLsn"    # J
    .param p7, "revertLsn"    # J
    .param p9, "revertKD"    # Z
    .param p10, "revertPD"    # Z
    .param p11, "revertKey"    # [B
    .param p12, "revertData"    # [B
    .param p13, "revertVLSN"    # J
    .param p15, "revertExpiration"    # I
    .param p16, "revertExpirationInHours"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/logging/Level;",
            "Lcom/sleepycat/je/tree/TreeLocation;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;JJZZ[B[BJIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2042
    .local p4, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v7, p2

    move-wide/from16 v14, p7

    const/4 v8, 0x0

    .line 2043
    .local v8, "found":Z
    const/16 v25, 0x0

    .line 2044
    .local v25, "replaced":Z
    const/16 v26, 0x0

    .line 2049
    .local v26, "success":Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/TreeLocation;->reset()V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    .line 2052
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 2051
    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v1, v0

    .line 2055
    .end local v8    # "found":Z
    .local v1, "found":Z
    if-eqz v1, :cond_8

    .line 2058
    :try_start_1
    iget-object v0, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2059
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    .line 2060
    .local v2, "slotIdx":I
    iget-wide v3, v7, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    .line 2062
    .local v3, "slotLsn":J
    const-wide/16 v5, -0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_3

    .line 2074
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2075
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2076
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a NULL_LSN but the slot is not empty. KD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2079
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2081
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2076
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v1    # "found":Z
    .end local v25    # "replaced":Z
    .end local v26    # "success":Z
    .end local p0    # "logger":Ljava/util/logging/Logger;
    .end local p1    # "traceLevel":Ljava/util/logging/Level;
    .end local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local p5    # "logLsn":J
    .end local p7    # "revertLsn":J
    .end local p9    # "revertKD":Z
    .end local p10    # "revertPD":Z
    .end local p11    # "revertKey":[B
    .end local p12    # "revertData":[B
    .end local p13    # "revertVLSN":J
    .end local p15    # "revertExpiration":I
    .end local p16    # "revertExpirationInHours":Z
    throw v5

    .line 2084
    .restart local v1    # "found":Z
    .restart local v25    # "replaced":Z
    .restart local v26    # "success":Z
    .restart local p0    # "logger":Ljava/util/logging/Logger;
    .restart local p1    # "traceLevel":Ljava/util/logging/Level;
    .restart local p2    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .restart local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local p5    # "logLsn":J
    .restart local p7    # "revertLsn":J
    .restart local p9    # "revertKD":Z
    .restart local p10    # "revertPD":Z
    .restart local p11    # "revertKey":[B
    .restart local p12    # "revertData":[B
    .restart local p13    # "revertVLSN":J
    .restart local p15    # "revertExpiration":I
    .restart local p16    # "revertExpirationInHours":Z
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2085
    const/4 v5, 0x1

    .line 2122
    .end local v26    # "success":Z
    .local v5, "success":Z
    iget-object v6, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v6, :cond_2

    .line 2123
    iget-object v6, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2126
    :cond_2
    nop

    .line 2127
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v13

    iget-object v6, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object/from16 v16, v6

    const/16 v19, 0x0

    iget-wide v8, v7, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    move-wide/from16 v20, v8

    iget v6, v7, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    move/from16 v24, v6

    .line 2126
    const-string v11, "LNUndo"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move v12, v5

    move-wide/from16 v14, p5

    move/from16 v17, v1

    move/from16 v18, v25

    move-wide/from16 v22, p7

    invoke-static/range {v8 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 2086
    return-void

    .line 2089
    .end local v5    # "success":Z
    .restart local v26    # "success":Z
    :cond_3
    move-wide/from16 v14, p5

    :try_start_2
    invoke-static {v14, v15, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v9

    :goto_1
    move/from16 v21, v8

    .line 2091
    .local v21, "updateEntry":Z
    if-eqz v21, :cond_7

    .line 2093
    const/4 v8, 0x0

    .line 2094
    .local v8, "revertLogrecSize":I
    move-wide/from16 v12, p7

    cmp-long v5, v12, v5

    if-eqz v5, :cond_6

    .line 2095
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_5

    if-nez p12, :cond_5

    .line 2097
    move-object/from16 v5, p3

    :try_start_3
    invoke-static {v5, v9, v12, v13}, Lcom/sleepycat/je/recovery/RecoveryManager;->fetchLNSize(Lcom/sleepycat/je/dbi/DatabaseImpl;IJ)I

    move-result v6

    move v8, v6

    goto :goto_3

    .line 2095
    :cond_5
    move-object/from16 v5, p3

    goto :goto_2

    .line 2094
    :cond_6
    move-object/from16 v5, p3

    .line 2100
    :goto_2
    move v6, v8

    .end local v8    # "revertLogrecSize":I
    .local v6, "revertLogrecSize":I
    :goto_3
    move-object v8, v0

    move v9, v2

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-wide/from16 v16, p13

    move/from16 v18, v6

    move/from16 v19, p15

    move/from16 v20, p16

    invoke-virtual/range {v8 .. v20}, Lcom/sleepycat/je/tree/BIN;->recoverRecord(IJZZ[B[BJIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2105
    const/16 v25, 0x1

    goto :goto_4

    .line 2122
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "slotIdx":I
    .end local v3    # "slotLsn":J
    .end local v6    # "revertLogrecSize":I
    .end local v21    # "updateEntry":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2091
    .restart local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "slotIdx":I
    .restart local v3    # "slotLsn":J
    .restart local v21    # "updateEntry":Z
    :cond_7
    move-object/from16 v5, p3

    goto :goto_4

    .line 2122
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "slotIdx":I
    .end local v3    # "slotLsn":J
    .end local v21    # "updateEntry":Z
    :catchall_1
    move-exception v0

    move-object/from16 v5, p3

    goto :goto_5

    .line 2055
    :cond_8
    move-object/from16 v5, p3

    .line 2118
    :goto_4
    const/4 v0, 0x1

    .line 2122
    .end local v26    # "success":Z
    .local v0, "success":Z
    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_9

    .line 2123
    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2126
    :cond_9
    nop

    .line 2127
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v13

    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object/from16 v16, v2

    const/16 v19, 0x0

    iget-wide v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    move-wide/from16 v20, v2

    iget v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    move/from16 v24, v2

    .line 2126
    const-string v11, "LNUndo"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move v12, v0

    move-wide/from16 v14, p5

    move/from16 v17, v1

    move/from16 v18, v25

    move-wide/from16 v22, p7

    invoke-static/range {v8 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    .line 2129
    nop

    .line 2130
    return-void

    .line 2122
    .end local v0    # "success":Z
    .end local v1    # "found":Z
    .local v8, "found":Z
    .restart local v26    # "success":Z
    :catchall_2
    move-exception v0

    move-object/from16 v5, p3

    move v1, v8

    .end local v8    # "found":Z
    .restart local v1    # "found":Z
    :goto_5
    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_a

    .line 2123
    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2126
    :cond_a
    nop

    .line 2127
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v13

    iget-object v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object/from16 v16, v2

    const/16 v19, 0x0

    iget-wide v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    move-wide/from16 v20, v2

    iget v2, v7, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    move/from16 v24, v2

    .line 2126
    const-string v11, "LNUndo"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v12, v26

    move-wide/from16 v14, p5

    move/from16 v17, v1

    move/from16 v18, v25

    move-wide/from16 v22, p7

    invoke-static/range {v8 .. v24}, Lcom/sleepycat/je/recovery/RecoveryManager;->trace(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;ZLcom/sleepycat/je/tree/Node;JLcom/sleepycat/je/tree/IN;ZZZJJI)V

    throw v0
.end method

.method private undoLNs(Ljava/util/Set;ZLcom/sleepycat/je/dbi/StartupTracker$Counter;)V
    .locals 23
    .param p2, "firstUndoPass"    # Z
    .param p3, "counter"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            ">;Z",
            "Lcom/sleepycat/je/dbi/StartupTracker$Counter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1667
    .local p1, "logTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v13, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 1668
    .local v13, "firstActiveLsn":J
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v10, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 1669
    .local v10, "lastUsedLsn":J
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v8, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    .line 1672
    .local v8, "endOfFileLsn":J
    new-instance v0, Lcom/sleepycat/je/log/LNFileReader;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v4, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->readBufferSize:I

    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v2, v0

    move-wide v15, v5

    move-wide v5, v10

    move-wide/from16 v17, v8

    .end local v8    # "endOfFileLsn":J
    .local v17, "endOfFileLsn":J
    move-wide/from16 v19, v10

    .end local v10    # "lastUsedLsn":J
    .local v19, "lastUsedLsn":J
    move-wide v10, v13

    move-wide/from16 v21, v13

    .end local v13    # "firstActiveLsn":J
    .local v21, "firstActiveLsn":J
    move-wide v13, v15

    invoke-direct/range {v2 .. v14}, Lcom/sleepycat/je/log/LNFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJZJJLjava/lang/Long;J)V

    .line 1677
    .local v2, "reader":Lcom/sleepycat/je/log/LNFileReader;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/LogEntryType;

    .line 1678
    .local v3, "lt":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/LNFileReader;->addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 1679
    .end local v3    # "lt":Lcom/sleepycat/je/log/LogEntryType;
    goto :goto_0

    .line 1681
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    .line 1705
    .local v3, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/recovery/RollbackTracker;->setFirstPass(Z)V

    .line 1706
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->getScanner()Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;

    move-result-object v5

    .line 1714
    .local v5, "rollbackScanner":Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->readNextEntry()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1715
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumRead()V

    .line 1716
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isLN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1719
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getTxnId()Ljava/lang/Long;

    move-result-object v0

    .line 1722
    .local v0, "txnId":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 1723
    goto :goto_1

    .line 1726
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v6

    .line 1727
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1726
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->positionAndCheck(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1734
    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual {v5, v0, v2, v6}, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->rollback(Ljava/lang/Long;Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V

    .line 1735
    goto :goto_1

    .line 1739
    :cond_2
    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->committedTxnIds:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1740
    goto :goto_1

    .line 1744
    :cond_3
    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1745
    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->resurrectedLsns:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1746
    goto :goto_1

    .line 1753
    :cond_4
    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->isReplicatedUncommittedLN(Lcom/sleepycat/je/log/LNFileReader;Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1754
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lcom/sleepycat/je/recovery/RecoveryManager;->createReplayTxn(J)V

    .line 1755
    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->resurrectedLsns:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1756
    goto :goto_1

    .line 1759
    :cond_5
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/recovery/RecoveryManager;->undoUncommittedLN(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/dbi/DbTree;)V

    .line 1760
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumProcessed()V

    .line 1762
    .end local v0    # "txnId":Ljava/lang/Long;
    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1763
    invoke-direct {v1, v2}, Lcom/sleepycat/je/recovery/RecoveryManager;->handlePrepare(Lcom/sleepycat/je/log/LNFileReader;)V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    goto :goto_1

    .line 1766
    :cond_7
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isAbort()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1768
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->abortedTxnIds:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getTxnAbortId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1769
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    goto/16 :goto_1

    .line 1771
    :cond_8
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isCommit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1780
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v6

    .line 1781
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getTxnCommitId()J

    move-result-wide v8

    .line 1780
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/sleepycat/je/recovery/RollbackTracker;->checkCommit(JJ)V

    .line 1783
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->committedTxnIds:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getTxnCommitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1784
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1783
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    goto/16 :goto_1

    .line 1787
    :cond_9
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isRollbackStart()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1788
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 1789
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getMainItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/txn/RollbackStart;

    .line 1790
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    .line 1788
    invoke-virtual {v0, v6, v7, v8}, Lcom/sleepycat/je/recovery/RollbackTracker;->register(Lcom/sleepycat/je/txn/RollbackStart;J)V

    .line 1791
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    goto/16 :goto_1

    .line 1793
    :cond_a
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->isRollbackEnd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1794
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 1795
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getMainItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/txn/RollbackEnd;

    .line 1796
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    .line 1794
    invoke-virtual {v0, v6, v7, v8}, Lcom/sleepycat/je/recovery/RollbackTracker;->register(Lcom/sleepycat/je/txn/RollbackEnd;J)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->incNumAux()V

    goto/16 :goto_1

    .line 1800
    :cond_b
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LNreader should not have picked up type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1803
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->dumpCurrentHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1800
    invoke-static {v0, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v2    # "reader":Lcom/sleepycat/je/log/LNFileReader;
    .end local v3    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v5    # "rollbackScanner":Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
    .end local v17    # "endOfFileLsn":J
    .end local v19    # "lastUsedLsn":J
    .end local v21    # "firstActiveLsn":J
    .end local p1    # "logTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    .end local p2    # "firstUndoPass":Z
    .end local p3    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    throw v0

    .line 1806
    .restart local v2    # "reader":Lcom/sleepycat/je/log/LNFileReader;
    .restart local v3    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v5    # "rollbackScanner":Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
    .restart local v17    # "endOfFileLsn":J
    .restart local v19    # "lastUsedLsn":J
    .restart local v21    # "firstActiveLsn":J
    .restart local p1    # "logTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/log/LogEntryType;>;"
    .restart local p2    # "firstUndoPass":Z
    .restart local p3    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    :cond_c
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getNRepeatIteratorReads()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p3

    :try_start_1
    invoke-virtual {v8, v6, v7}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setRepeatIteratorReads(J)V

    .line 1807
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackTracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->singlePassSetInvisible()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1811
    goto :goto_3

    .line 1809
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p3

    .line 1810
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v6

    const-string/jumbo v9, "undoLNs"

    invoke-direct {v1, v6, v7, v9, v0}, Lcom/sleepycat/je/recovery/RecoveryManager;->traceAndThrowException(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1812
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    return-void
.end method

.method private undoUncommittedLN(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/dbi/DbTree;)V
    .locals 17
    .param p1, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .param p2, "dbMapTree"    # Lcom/sleepycat/je/dbi/DbTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1903
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->invokeEvictor()V

    .line 1905
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v11

    .line 1906
    .local v11, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v10, v11}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v12

    .line 1909
    .local v12, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v12, :cond_0

    .line 1910
    return-void

    .line 1913
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v13

    .line 1914
    .local v13, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v13, v12}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1916
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v14

    .line 1917
    .local v14, "ln":Lcom/sleepycat/je/tree/LN;
    new-instance v2, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v2}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 1918
    .local v2, "location":Lcom/sleepycat/je/tree/TreeLocation;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v7

    .line 1922
    .local v7, "logLsn":J
    :try_start_0
    invoke-virtual {v14, v12, v7, v8}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 1924
    move-object/from16 v1, p0

    move-object v3, v12

    move-object v4, v13

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/recovery/RecoveryManager;->recoveryUndo(Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;J)V

    .line 1927
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LNFileReader;->getLastEntrySize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    move-object v4, v13

    move-object v5, v12

    move-wide v15, v7

    .end local v7    # "logLsn":J
    .local v15, "logLsn":J
    move-wide v6, v15

    move v8, v0

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/recovery/RecoveryManager;->undoUtilizationInfo(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;JI)V

    .line 1934
    iget-object v0, v9, Lcom/sleepycat/je/recovery/RecoveryManager;->inListBuildDbIds:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1940
    instance-of v0, v14, Lcom/sleepycat/je/tree/MapLN;

    if-eqz v0, :cond_1

    .line 1941
    move-object v0, v14

    check-cast v0, Lcom/sleepycat/je/tree/MapLN;

    .line 1942
    .local v0, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1943
    iget-object v1, v9, Lcom/sleepycat/je/recovery/RecoveryManager;->tempDbIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    .end local v0    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    :cond_1
    invoke-virtual {v10, v12}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1948
    nop

    .line 1949
    return-void

    .line 1947
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v15    # "logLsn":J
    .restart local v7    # "logLsn":J
    :catchall_1
    move-exception v0

    move-wide v15, v7

    .end local v7    # "logLsn":J
    .restart local v15    # "logLsn":J
    :goto_0
    invoke-virtual {v10, v12}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0
.end method

.method private undoUtilizationInfo(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;JI)V
    .locals 8
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "logrecLsn"    # J
    .param p5, "logrecSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "JI)V"
        }
    .end annotation

    .line 3258
    .local p1, "logrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 3260
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v1

    .line 3258
    xor-int/lit8 v7, v1, 0x1

    const/4 v5, 0x0

    move-wide v1, p3

    move-wide v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteIfUncounted(JJLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 3261
    return-void
.end method


# virtual methods
.method synthetic lambda$convertOldMapLNs$0$com-sleepycat-je-recovery-RecoveryManager(Lcom/sleepycat/je/dbi/DbTree;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 6
    .param p1, "dbTree"    # Lcom/sleepycat/je/dbi/DbTree;
    .param p2, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 3452
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    .line 3453
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/NameLN;

    .line 3455
    .local v0, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3456
    return v1

    .line 3459
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    .line 3461
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    nop

    .line 3462
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    .line 3464
    .local v3, "dbName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 3466
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 3471
    :cond_1
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    .line 3473
    iget-object v5, p0, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3474
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3478
    :cond_2
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3479
    nop

    .line 3481
    return v1

    .line 3478
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v1

    .line 3467
    :cond_3
    :goto_0
    nop

    .line 3478
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3467
    return v1
.end method

.method public recover(Z)Lcom/sleepycat/je/recovery/RecoveryInfo;
    .locals 17
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 314
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_RECOVERY:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 316
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    move-object v2, v0

    .line 317
    .local v2, "fileManager":Lcom/sleepycat/je/log/FileManager;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    move-object v3, v0

    .line 324
    .local v3, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY_FORCE_NEW_FILE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->forceNewLogFile()V

    .line 328
    const/4 v0, 0x1

    move v4, v0

    .local v0, "forceCheckpoint":Z
    goto :goto_0

    .line 330
    .end local v0    # "forceCheckpoint":Z
    :cond_0
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY_FORCE_CHECKPOINT:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    move v4, v0

    .line 334
    .local v4, "forceCheckpoint":Z
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->filesExist()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/recovery/RecoveryManager;->findEndOfLog(Z)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery underway, valid end of log = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v6, v6, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    .line 353
    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 355
    .local v6, "endOfLogMsg":Ljava/lang/String;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v6}, Lcom/sleepycat/je/log/Trace;->traceLazily(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->findLastCheckpoint()V

    .line 363
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 364
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/log/LogManager;->setLastLsnAtRecovery(J)V

    .line 367
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->readMapTreeFromLog(J)V

    .line 373
    new-instance v0, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;-><init>(Lcom/sleepycat/je/recovery/RecoveryManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v0

    .line 377
    .local v7, "verifyThread":Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
    :try_start_1
    invoke-virtual {v7}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->start()V

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->buildTree()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    nop

    .line 388
    :try_start_2
    invoke-virtual {v7}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->finish()V

    .line 389
    .end local v6    # "endOfLogMsg":Ljava/lang/String;
    .end local v7    # "verifyThread":Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
    goto :goto_1

    .line 382
    .restart local v6    # "endOfLogMsg":Ljava/lang/String;
    .restart local v7    # "verifyThread":Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
    :catchall_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v7, v5}, Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 384
    nop

    .end local p1    # "readOnly":Z
    throw v0

    .line 395
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "endOfLogMsg":Ljava/lang/String;
    .end local v7    # "verifyThread":Lcom/sleepycat/je/recovery/RecoveryManager$VerifyCheckpointInterval;
    .restart local p1    # "readOnly":Z
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v8, "Recovery w/no files."

    .line 396
    invoke-static {v0, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 399
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->enable()V

    .line 400
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/evictor/Evictor;->setEnabled(Z)V

    .line 402
    if-nez p1, :cond_2

    .line 403
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logMapTreeRoot()V

    .line 407
    :cond_2
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    iget-object v6, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/evictor/Evictor;->addEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 414
    :cond_3
    const/4 v4, 0x1

    .line 417
    :goto_1
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    move v6, v0

    .line 418
    .local v6, "ptSize":I
    if-lez v6, :cond_7

    .line 419
    if-ne v6, v5, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 420
    .local v0, "singular":Z
    :goto_2
    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v0, :cond_5

    const-string v11, "is "

    goto :goto_3

    :cond_5
    const-string v11, "are "

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prepared but unfinished "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v0, :cond_6

    const-string/jumbo v11, "txn."

    goto :goto_4

    :cond_6
    const-string/jumbo v11, "txns."

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 429
    iget-object v7, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->preparedTxns:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 436
    .end local v0    # "singular":Z
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->convertOldMapLNs()V

    .line 438
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 439
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    move-object v7, v0

    .line 442
    .local v7, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-static {v7}, Lcom/sleepycat/je/DbInternal;->getCreateUP(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 449
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_UP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 451
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/RecoveryProgress;->POPULATE_UTILIZATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 454
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    iget-object v8, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v9, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_UP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 455
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v8

    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 454
    invoke-virtual {v0, v8, v9}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->populateCache(Lcom/sleepycat/je/dbi/StartupTracker$Counter;Lcom/sleepycat/je/recovery/RecoveryInfo;)V

    .line 457
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_UP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 459
    :cond_8
    invoke-static {v7}, Lcom/sleepycat/je/DbInternal;->getCreateEP(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_EP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 466
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/RecoveryProgress;->POPULATE_EXPIRATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 469
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v0

    iget-object v8, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v9, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_EP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 470
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v8

    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 471
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getRecoveryProgressListener()Lcom/sleepycat/je/ProgressListener;

    move-result-object v9

    .line 469
    invoke-virtual {v0, v8, v9}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->populateCache(Lcom/sleepycat/je/dbi/StartupTracker$Counter;Lcom/sleepycat/je/ProgressListener;)V

    .line 473
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_EP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 477
    :cond_9
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    iget-object v8, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 478
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v8

    .line 477
    invoke-virtual {v0, v8}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->transferToUtilizationTracker(Lcom/sleepycat/je/cleaner/UtilizationTracker;)V

    .line 484
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoverIncompleteTasks()V

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->removeTempDbs()V

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->ensureDbExtinction()V

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/recovery/RecoveryManager;->renameMapLNs()V

    .line 508
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v8, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preRecoveryCheckpointInit(Lcom/sleepycat/je/recovery/RecoveryInfo;)V

    .line 514
    if-nez p1, :cond_b

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 515
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->getLastLsnAtRecovery()J

    move-result-wide v8

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v10, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_a

    if-eqz v4, :cond_b

    .line 519
    :cond_a
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    move-object v8, v0

    .line 520
    .local v8, "config":Lcom/sleepycat/je/CheckpointConfig;
    invoke-virtual {v8, v5}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 521
    invoke-virtual {v8, v5}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 523
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v5, Lcom/sleepycat/je/RecoveryProgress;->CKPT:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    .line 524
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 526
    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string/jumbo v5, "recovery"

    invoke-virtual {v0, v8, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    goto :goto_5

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Lcom/sleepycat/je/DiskLimitException;
    :try_start_4
    iget-object v5, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->logger:Ljava/util/logging/Logger;

    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recovery checkpoint failed due to disk limit violation but environment can still service reads: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v9, v10, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 533
    .end local v0    # "e":Lcom/sleepycat/je/DiskLimitException;
    :goto_5
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    iget-object v9, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 535
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/recovery/Checkpointer;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v9

    .line 534
    invoke-virtual {v0, v5, v9}, Lcom/sleepycat/je/dbi/StartupTracker;->setStats(Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 536
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 537
    .end local v8    # "config":Lcom/sleepycat/je/CheckpointConfig;
    goto :goto_6

    .line 539
    :cond_b
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v8

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v9, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v11, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v13, v0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 539
    invoke-virtual/range {v8 .. v16}, Lcom/sleepycat/je/recovery/Checkpointer;->initIntervals(JJJJ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 549
    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v3    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v4    # "forceCheckpoint":Z
    .end local v6    # "ptSize":I
    .end local v7    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :goto_6
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_RECOVERY:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 550
    nop

    .line 552
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    return-object v0

    .line 549
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 543
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "RecoveryManager"

    const-string/jumbo v4, "recover"

    const-string v5, "Couldn\'t recover"

    invoke-static {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local p1    # "readOnly":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "readOnly":Z
    :goto_7
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RecoveryManager;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_RECOVERY:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v0
.end method
