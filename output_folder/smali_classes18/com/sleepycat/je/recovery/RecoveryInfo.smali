.class public Lcom/sleepycat/je/recovery/RecoveryInfo;
.super Ljava/lang/Object;
.source "RecoveryInfo.java"


# instance fields
.field public checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

.field public checkpointEndLsn:J

.field public checkpointStartLsn:J

.field public firstActiveLsn:J

.field public lastFileLogVersion:I

.field public lastMissingFileNumber:J

.field public lastMissingFileVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field public lastUsedLsn:J

.field public nextAvailableLsn:J

.field public partialCheckpointStartLsn:J

.field public final replayTxns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/Txn;",
            ">;"
        }
    .end annotation
.end field

.field public useMaxDbId:J

.field public useMaxExtinctionId:J

.field public useMaxNodeId:J

.field public useMaxTxnId:J

.field public useMinReplicatedDbId:J

.field public useMinReplicatedExtinctionId:J

.field public useMinReplicatedNodeId:J

.field public useMinReplicatedTxnId:J

.field public useRootLsn:J

.field public vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 31
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    .line 32
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 33
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 34
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    .line 35
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    .line 36
    const/4 v2, -0x1

    iput v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastFileLogVersion:I

    .line 42
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->partialCheckpointStartLsn:J

    .line 67
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileNumber:J

    .line 68
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->replayTxns:Ljava/util/Map;

    return-void
.end method

.method private appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lsn"    # J

    .line 100
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Recovery Info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    const-string v3, " firstActive="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 81
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    const-string v3, " ckptStart="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 82
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    const-string v3, " ckptEnd="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 83
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    const-string v3, " lastUsed="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 84
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->nextAvailableLsn:J

    const-string v3, " nextAvail="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 85
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useRootLsn:J

    const-string v3, " useRoot="

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sleepycat/je/recovery/RecoveryInfo;->appendLsn(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, " useMinReplicatedNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedNodeId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, " useMaxNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxNodeId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, " useMinReplicatedDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedDbId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, " useMaxDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxDbId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, " useMinReplicatedTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedTxnId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, " useMaxTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxTxnId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, " useMaxExtinctionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMaxExtinctionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " useMinReplicatedExtinctionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RecoveryInfo;->useMinReplicatedExtinctionId:J

    .line 95
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
