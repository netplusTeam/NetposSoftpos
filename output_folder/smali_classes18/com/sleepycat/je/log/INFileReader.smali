.class public Lcom/sleepycat/je/log/INFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "INFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ckptEnd:J

.field private fromLogType:Lcom/sleepycat/je/log/LogEntryType;

.field private idTrackingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/log/entry/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private idTrackingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            ">;"
        }
    .end annotation
.end field

.field private isProvisional:Z

.field private lastEntryWasDelete:Z

.field private lastEntryWasDupDelete:Z

.field private logVersion8UpgradeDbs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maxDbId:J

.field private maxExtinctionId:J

.field private maxNodeId:J

.field private maxTxnId:J

.field private minReplicatedDbId:J

.field private minReplicatedExtinctionId:J

.field private minReplicatedNodeId:J

.field private minReplicatedTxnId:J

.field private partialCkptStart:J

.field private targetEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/log/entry/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private trackIds:Z

.field private tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

.field private vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V
    .locals 15
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "trackIds"    # Z
    .param p8, "partialCkptStart"    # J
    .param p10, "ckptEnd"    # J
    .param p12, "tracker"    # Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 107
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Lcom/sleepycat/je/log/INFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJZJJLcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 14
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "trackIds"    # Z
    .param p8, "partialCkptStart"    # J
    .param p10, "ckptEnd"    # J
    .param p12, "tracker"    # Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;
    .param p14, "logVersion8UpgradeDeltas"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "IJJZJJ",
            "Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 132
    .local p13, "logVersion8UpgradeDbs":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    move-object v12, p0

    move/from16 v13, p7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v4, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJZ)V

    .line 135
    iput-boolean v13, v12, Lcom/sleepycat/je/log/INFileReader;->trackIds:Z

    .line 136
    move-wide/from16 v0, p10

    iput-wide v0, v12, Lcom/sleepycat/je/log/INFileReader;->ckptEnd:J

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v12, Lcom/sleepycat/je/log/INFileReader;->targetEntryMap:Ljava/util/Map;

    .line 139
    if-eqz v13, :cond_2

    .line 140
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->maxNodeId:J

    .line 141
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->maxDbId:J

    .line 142
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->maxTxnId:J

    .line 143
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->minReplicatedNodeId:J

    .line 144
    const-wide/16 v4, -0x100

    iput-wide v4, v12, Lcom/sleepycat/je/log/INFileReader;->minReplicatedDbId:J

    .line 145
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->minReplicatedTxnId:J

    .line 146
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->minReplicatedExtinctionId:J

    .line 147
    iput-wide v2, v12, Lcom/sleepycat/je/log/INFileReader;->maxExtinctionId:J

    .line 148
    move-object/from16 v2, p12

    iput-object v2, v12, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 149
    move-wide/from16 v3, p8

    iput-wide v3, v12, Lcom/sleepycat/je/log/INFileReader;->partialCkptStart:J

    .line 151
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    .line 152
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingMap:Ljava/util/Map;

    .line 163
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/log/LogEntryType;

    .line 164
    .local v6, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryType;->isNodeType()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    iget-object v7, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v6    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    iget-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getVLSNProxy()Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    move-result-object v5

    iput-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    .line 173
    iget-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    move-object/from16 v5, p13

    iput-object v5, v12, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDbs:Ljava/util/Set;

    .line 177
    move-object/from16 v6, p14

    iput-object v6, v12, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_1

    .line 139
    :cond_2
    move-wide/from16 v3, p8

    move-object/from16 v2, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    .line 179
    :goto_1
    return-void
.end method


# virtual methods
.method public addTargetType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 2
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->targetEntryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/INContainingEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/INContainingEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/INContainingEntry;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/log/entry/INContainingEntry;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDbId()J
    .locals 2

    .line 575
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->maxDbId:J

    return-wide v0
.end method

.method public getMaxExtinctionId()J
    .locals 2

    .line 597
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->maxExtinctionId:J

    return-wide v0
.end method

.method public getMaxNodeId()J
    .locals 2

    .line 564
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->maxNodeId:J

    return-wide v0
.end method

.method public getMaxTxnId()J
    .locals 2

    .line 586
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->maxTxnId:J

    return-wide v0
.end method

.method public getMinReplicatedDbId()J
    .locals 2

    .line 579
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedDbId:J

    return-wide v0
.end method

.method public getMinReplicatedExtinctionId()J
    .locals 2

    .line 604
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedExtinctionId:J

    return-wide v0
.end method

.method public getMinReplicatedNodeId()J
    .locals 2

    .line 568
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedNodeId:J

    return-wide v0
.end method

.method public getMinReplicatedTxnId()J
    .locals 2

    .line 590
    iget-wide v0, p0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedTxnId:J

    return-wide v0
.end method

.method public getVLSNProxy()Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    return-object v0
.end method

.method public isBINDelta()Z
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 626
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 627
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 625
    :goto_1
    return v0
.end method

.method public isDeleteInfo()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDelete:Z

    return v0
.end method

.method public isDupDeleteInfo()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDupDelete:Z

    return v0
.end method

.method protected isTargetEntry()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDelete:Z

    .line 233
    iput-boolean v0, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDupDelete:Z

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 235
    iget-object v2, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getProvisional()Lcom/sleepycat/je/log/Provisional;

    move-result-object v2

    .line 236
    invoke-virtual {p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/log/INFileReader;->ckptEnd:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/log/Provisional;->isProvisional(JJ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/log/INFileReader;->isProvisional:Z

    .line 239
    iget-object v2, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    .line 240
    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->targetEntryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/entry/LogEntry;

    .line 243
    .local v2, "possibleTarget":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-boolean v3, p0, Lcom/sleepycat/je/log/INFileReader;->isProvisional:Z

    if-nez v3, :cond_0

    .line 244
    iput-object v2, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 248
    :cond_0
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN_DELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v4, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 249
    iput-boolean v4, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDelete:Z

    .line 251
    :cond_1
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN_DUPDELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v5, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    iput-boolean v4, p0, Lcom/sleepycat/je/log/INFileReader;->lastEntryWasDupDelete:Z

    .line 256
    :cond_2
    iget-boolean v3, p0, Lcom/sleepycat/je/log/INFileReader;->trackIds:Z

    if-nez v3, :cond_4

    .line 257
    iget-object v1, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    if-eqz v1, :cond_3

    move v0, v4

    :cond_3
    return v0

    .line 266
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isNodeType()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 267
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 268
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v5, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    .line 269
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual {p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v8, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 272
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v8

    iget-object v9, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 273
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 270
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countNewLogEntry(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 277
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 278
    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    invoke-virtual {p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v5, v6, v7, v1}, Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;->trackMapping(JLcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V

    .line 284
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    .line 285
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v0, v4

    .line 284
    :cond_8
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 23
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 301
    .local v2, "useEntry":Z
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    if-eqz v3, :cond_0

    .line 302
    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v4, v5, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 303
    const/4 v2, 0x1

    .line 307
    :cond_0
    iget-boolean v3, v0, Lcom/sleepycat/je/log/INFileReader;->trackIds:Z

    if-nez v3, :cond_1

    .line 308
    return v2

    .line 312
    :cond_1
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    if-nez v3, :cond_4

    .line 313
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->idTrackingSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->idTrackingMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/entry/LogEntry;

    iput-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 316
    if-nez v3, :cond_2

    .line 317
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v3

    iput-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 318
    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->idTrackingMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_2
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v4, v5, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 313
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 328
    :cond_4
    :goto_0
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isNodeType()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 329
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 330
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 331
    :cond_5
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v7, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 332
    invoke-virtual {v7}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v7

    iget-object v8, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 333
    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v8

    add-int/2addr v7, v8

    .line 331
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countNewLogEntry(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 337
    :cond_6
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v7, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;->trackMapping(JLcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V

    .line 344
    :cond_7
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 346
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v3, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 358
    .local v3, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 360
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getMainItem()Lcom/sleepycat/je/tree/LN;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/MapLN;

    .line 361
    .local v4, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    .line 364
    .local v5, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v6

    .line 365
    .local v6, "dbIdVal":J
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxDbId:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_8

    move-wide v8, v6

    :cond_8
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxDbId:J

    .line 366
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedDbId:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_9

    move-wide v8, v6

    :cond_9
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedDbId:J

    .line 371
    .end local v4    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .end local v5    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "dbIdVal":J
    :cond_a
    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 372
    invoke-virtual {v4, v6}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 375
    :cond_b
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 376
    .local v4, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 377
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserKeyData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 378
    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->materializeKey(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v6

    .line 380
    .local v6, "id":J
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxExtinctionId:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxExtinctionId:J

    .line 381
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedExtinctionId:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedExtinctionId:J

    .line 386
    .end local v4    # "entry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "id":J
    :cond_c
    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 387
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getTxnId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 388
    .local v6, "txnId":J
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxTxnId:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_d

    move-wide v8, v6

    :cond_d
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxTxnId:J

    .line 389
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedTxnId:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_e

    move-wide v8, v6

    :cond_e
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedTxnId:J

    .line 403
    .end local v6    # "txnId":J
    :cond_f
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILESUMMARYLN:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v6, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v4, v6}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 405
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 407
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v4

    .line 409
    .local v4, "fileNum":J
    iget-object v6, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->resetFileInfo(J)V

    .line 411
    iget-object v6, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v7

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->saveLastLoggedFileSummaryLN(JJ)V

    .line 421
    .end local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v4    # "fileNum":J
    :cond_10
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isINType()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_14

    .line 422
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v3, Lcom/sleepycat/je/log/entry/INLogEntry;

    .line 425
    .local v3, "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/INLogEntry;->getNodeId()J

    move-result-wide v6

    .line 426
    .local v6, "nodeId":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_13

    .line 428
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxNodeId:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_11

    move-wide v8, v6

    :cond_11
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->maxNodeId:J

    .line 430
    iget-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedNodeId:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_12

    move-wide v8, v6

    :cond_12
    iput-wide v8, v0, Lcom/sleepycat/je/log/INFileReader;->minReplicatedNodeId:J

    goto :goto_1

    .line 426
    :cond_13
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 435
    .end local v3    # "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .end local v6    # "nodeId":J
    :cond_14
    :goto_1
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isINType()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 436
    invoke-virtual {v3, v6}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 438
    :cond_15
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v3, Lcom/sleepycat/je/log/entry/INContainingEntry;

    .line 439
    .local v3, "inEntry":Lcom/sleepycat/je/log/entry/INContainingEntry;
    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/INContainingEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v6

    .line 441
    .local v6, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/INFileReader;->getLastLsn()J

    move-result-wide v13

    .line 462
    .local v13, "newLsn":J
    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/INContainingEntry;->getPrevFullLsn()J

    move-result-wide v15

    .line 464
    .local v15, "oldLsn":J
    cmp-long v7, v15, v4

    if-eqz v7, :cond_16

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/INContainingEntry;->isBINDelta()Z

    move-result v7

    if-nez v7, :cond_16

    .line 465
    iget-object v7, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    iget-object v10, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v8, v15

    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteUnconditional(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 469
    :cond_16
    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/INContainingEntry;->getPrevDeltaLsn()J

    move-result-wide v15

    .line 471
    cmp-long v7, v15, v4

    if-eqz v7, :cond_17

    .line 472
    iget-object v7, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    iget-object v8, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v7

    move-wide/from16 v18, v15

    move-object/from16 v20, v8

    invoke-virtual/range {v17 .. v22}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteUnconditional(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 516
    :cond_17
    iget-boolean v7, v0, Lcom/sleepycat/je/log/INFileReader;->isProvisional:Z

    if-eqz v7, :cond_18

    iget-wide v7, v0, Lcom/sleepycat/je/log/INFileReader;->partialCkptStart:J

    cmp-long v4, v7, v4

    if-eqz v4, :cond_18

    .line 518
    invoke-static {v7, v8, v13, v14}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v4

    if-gez v4, :cond_18

    .line 519
    iget-object v7, v0, Lcom/sleepycat/je/log/INFileReader;->tracker:Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    iget-object v10, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v8, v13

    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteUnconditional(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 528
    .end local v3    # "inEntry":Lcom/sleepycat/je/log/entry/INContainingEntry;
    .end local v6    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v13    # "newLsn":J
    .end local v15    # "oldLsn":J
    :cond_18
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1b

    .line 529
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDbs:Ljava/util/Set;

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    .line 530
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isNodeType()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 531
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDbs:Ljava/util/Set;

    iget-object v4, v0, Lcom/sleepycat/je/log/INFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v4}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_19
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 534
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->fromLogType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_DUP_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 535
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 536
    :cond_1a
    iget-object v3, v0, Lcom/sleepycat/je/log/INFileReader;->logVersion8UpgradeDeltas:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 541
    :cond_1b
    return v2
.end method
