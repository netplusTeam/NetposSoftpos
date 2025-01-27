.class public Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;
.super Ljava/lang/Object;
.source "GlobalCBVLSN.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFUNCT_JE_VERSION:Lcom/sleepycat/je/JEVersion;


# instance fields
.field private volatile defunct:Z

.field private volatile groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final logger:Ljava/util/logging/Logger;

.field private final minRetainedVLSNs:I

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final streamTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    nop

    .line 101
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "7.5.0"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->DEFUNCT_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 3
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    .line 110
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 114
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 115
    nop

    .line 116
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REP_STREAM_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->streamTimeoutMs:J

    .line 117
    nop

    .line 118
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->MIN_RETAINED_VLSNS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->minRetainedVLSNs:I

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    .line 120
    return-void
.end method

.method private updateGroupCBVLSN(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "groupInfo"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p2, "newGroupCBVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "nodeBarrierTime"    # J
    .param p6, "latestBarrierTime"    # J

    .line 380
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-nez v0, :cond_4

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 383
    .local v1, "cbvlsnLoweredMessage":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 385
    .local v2, "oldCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-lez v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v3

    .line 393
    .local v3, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v3, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->contains(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 394
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GroupCBVLSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is outside VLSN range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Current group:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 400
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    move-object v2, v4

    .line 401
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 402
    const/4 v0, 0x1

    .line 405
    .end local v3    # "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    if-eqz v1, :cond_2

    .line 409
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 412
    :cond_2
    if-eqz v0, :cond_3

    .line 413
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Global CBVLSN changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 418
    :cond_3
    return-void

    .line 405
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 380
    .end local v0    # "changed":Z
    .end local v1    # "cbvlsnLoweredMessage":Ljava/lang/String;
    .end local v2    # "oldCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getCBVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->groupCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_0
    return-object v0
.end method

.method public getRestoreResponseVLSN(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 5
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 442
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 447
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_MAX_LAG:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 449
    .local v0, "vlsn":J
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    return-object v2
.end method

.method public init(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/JEVersion;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "minJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 142
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_CBVLSN:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->DEFUNCT_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 150
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-nez v0, :cond_3

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isDefunct()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    return v0
.end method

.method public recalculate(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 18
    .param p1, "groupInfo"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 264
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-eqz v0, :cond_0

    .line 265
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 270
    .local v0, "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const-wide/16 v1, 0x0

    .line 271
    .local v1, "latestBarrierTime":J
    const/4 v3, 0x0

    .line 272
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getDataMembers()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v0

    move-wide v10, v1

    .end local v0    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v1    # "latestBarrierTime":J
    .local v9, "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v10, "latestBarrierTime":J
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 274
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v1

    .line 275
    .local v1, "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 277
    .local v2, "cbvlsn":Lcom/sleepycat/je/utilint/VLSN;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getBarrierTime()J

    move-result-wide v5

    .line 288
    .local v5, "nodeBarrierTime":J
    invoke-virtual {v9, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v7

    if-gtz v7, :cond_4

    .line 294
    invoke-virtual {v2, v9}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_1

    :cond_3
    move-wide v12, v5

    :goto_1
    move-wide v10, v12

    .line 297
    move-object v7, v2

    .line 303
    .end local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v7, "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v9, v7

    .line 305
    .end local v0    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v1    # "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v2    # "cbvlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local v5    # "nodeBarrierTime":J
    .end local v7    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_4
    goto :goto_0

    .line 307
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_6

    .line 309
    return-void

    .line 312
    :cond_6
    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    return-void

    .line 322
    :cond_7
    move-object v0, v9

    .line 323
    .local v0, "newGroupCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const-wide/16 v1, 0x0

    .line 324
    .local v1, "nodeBarrierTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getDataMembers()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v12, v1

    move-object v14, v3

    .end local v1    # "nodeBarrierTime":J
    .end local v3    # "nodeName":Ljava/lang/String;
    .local v12, "nodeBarrierTime":J
    .local v14, "nodeName":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 326
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v2

    .line 327
    .local v2, "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    .line 329
    .local v3, "nodeCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 330
    move-wide v15, v10

    move-object v11, v9

    goto :goto_3

    .line 333
    :cond_8
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getBarrierTime()J

    move-result-wide v5

    sub-long v5, v10, v5

    move-wide v15, v10

    move-object v11, v9

    .end local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v10    # "latestBarrierTime":J
    .local v11, "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v15, "latestBarrierTime":J
    iget-wide v9, v8, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->streamTimeoutMs:J

    cmp-long v5, v5, v9

    if-gtz v5, :cond_9

    .line 335
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-lez v5, :cond_9

    .line 336
    move-object v0, v3

    .line 342
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    .line 343
    .end local v14    # "nodeName":Ljava/lang/String;
    .local v5, "nodeName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getBarrierTime()J

    move-result-wide v6

    move-object v14, v5

    move-wide v12, v6

    .line 345
    .end local v1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v2    # "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v3    # "nodeCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v5    # "nodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    :cond_9
    move-object v9, v11

    move-wide v10, v15

    goto :goto_2

    .line 329
    .end local v11    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v15    # "latestBarrierTime":J
    .restart local v1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v2    # "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .restart local v3    # "nodeCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v10    # "latestBarrierTime":J
    :cond_a
    move-wide v15, v10

    move-object v11, v9

    .line 324
    .end local v1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v2    # "nodeBarrier":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v3    # "nodeCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v10    # "latestBarrierTime":J
    .restart local v11    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v15    # "latestBarrierTime":J
    :goto_3
    move-object v9, v11

    move-wide v10, v15

    goto :goto_2

    .line 351
    .end local v11    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v15    # "latestBarrierTime":J
    .restart local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v10    # "latestBarrierTime":J
    :cond_b
    move-wide v15, v10

    move-object v11, v9

    .end local v9    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v10    # "latestBarrierTime":J
    .restart local v11    # "maxCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v15    # "latestBarrierTime":J
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    .line 352
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    iget v4, v8, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->minRetainedVLSNs:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    move-object v0, v1

    .line 354
    iget-object v1, v8, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v9

    .line 355
    .local v9, "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    if-eqz v9, :cond_c

    .line 356
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    goto :goto_4

    :cond_c
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_4
    move-object v10, v1

    .line 362
    .local v10, "rangeFirst":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-lez v1, :cond_d

    .line 363
    move-object v0, v10

    move-object/from16 v17, v0

    goto :goto_5

    .line 362
    :cond_d
    move-object/from16 v17, v0

    .line 366
    .end local v0    # "newGroupCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v17, "newGroupCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object v3, v14

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->updateGroupCBVLSN(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;JJ)V

    .line 368
    return-void
.end method

.method public setDefunctJEVersion(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 174
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_CBVLSN:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 180
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->DEFUNCT_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 186
    :goto_0
    return-void
.end method

.method public updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V
    .locals 6
    .param p1, "updateNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "barrierState"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 221
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->defunct:Z

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 226
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 227
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v1, :cond_1

    .line 229
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalCBVLSN for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setBarrierState(Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 237
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->recalculate(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 238
    return-void
.end method
