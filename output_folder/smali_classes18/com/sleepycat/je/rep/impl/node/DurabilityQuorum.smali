.class public Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;
.super Ljava/lang/Object;
.source "DurabilityQuorum.java"


# instance fields
.field private final logger:Ljava/util/logging/Logger;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 1
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->logger:Ljava/util/logging/Logger;

    .line 43
    return-void
.end method


# virtual methods
.method public ensureReplicasForCommit(Lcom/sleepycat/je/rep/txn/MasterTxn;I)V
    .locals 7
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p2, "insufficientReplicasTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/InsufficientReplicasException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 68
    .local v0, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isMaster()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    nop

    .line 73
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getDefaultDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v1

    .line 74
    .local v1, "ackPolicy":Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v2

    .line 75
    .local v2, "requiredReplicaAckCount":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Txn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": checking that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " feeders exist before starting commit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 83
    :cond_1
    if-nez v2, :cond_2

    .line 84
    return-void

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    int-to-long v4, p2

    .line 88
    invoke-virtual {v3, v2, v4, v5}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->awaitFeederReplicaConnections(IJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    return-void

    .line 97
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isMaster()Z

    move-result v3

    if-nez v3, :cond_4

    .line 104
    return-void

    .line 107
    :cond_4
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->activateArbitration()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    return-void

    .line 112
    :cond_5
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->ALL:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 113
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 114
    .local v3, "includeArbiters":Z
    new-instance v4, Lcom/sleepycat/je/rep/InsufficientReplicasException;

    .line 116
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeAckReplicas(Z)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, p1, v1, v2, v5}, Lcom/sleepycat/je/rep/InsufficientReplicasException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;ILjava/util/Set;)V

    throw v4
.end method

.method public ensureSufficientAcks(Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;I)V
    .locals 10
    .param p1, "txnInfo"    # Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientAcksException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getPendingAcks()I

    move-result v0

    .line 143
    .local v0, "pendingAcks":I
    if-nez v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getTxn()Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v1

    .line 148
    .local v1, "txn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    nop

    .line 149
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v2

    .line 150
    .local v2, "requiredAcks":I
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v3

    sub-int/2addr v3, v2

    .line 151
    .local v3, "requiredAckDelta":I
    if-lt v3, v0, :cond_1

    .line 158
    return-void

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpAckFeederState()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "dumpState":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 177
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v5

    .line 178
    .local v5, "feederManager":Lcom/sleepycat/je/rep/impl/node/FeederManager;
    nop

    .line 179
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getNumCurrentAckFeeders(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v6

    .line 180
    .local v6, "currentFeederCount":I
    if-lt v6, v2, :cond_2

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "txn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " commit vlsn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acknowledged after explicit feeder check latch count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 184
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->getPendingAcks()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " required acks:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v8, v9, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 189
    return-void

    .line 202
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->activationPossible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 203
    return-void

    .line 205
    :cond_3
    new-instance v7, Lcom/sleepycat/je/rep/InsufficientAcksException;

    invoke-direct {v7, v1, v0, p2, v4}, Lcom/sleepycat/je/rep/InsufficientAcksException;-><init>(Lcom/sleepycat/je/rep/txn/MasterTxn;IILjava/lang/String;)V

    throw v7
.end method

.method public getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I
    .locals 4
    .param p1, "ackPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 230
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 231
    .local v0, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    nop

    .line 232
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->getElectableGroupSizeOverride()I

    move-result v1

    .line 233
    .local v1, "electableGroupSizeOverride":I
    if-lez v1, :cond_0

    .line 239
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->minAckNodes(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v2

    .line 243
    .local v2, "arbiter":Lcom/sleepycat/je/rep/arbitration/Arbiter;
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->isApplicable(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->getAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v3

    return v3

    .line 247
    :cond_1
    nop

    .line 248
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAckGroupSize()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->minAckNodes(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 247
    return v3
.end method

.method public replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z
    .locals 1
    .param p1, "replica"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 129
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v0

    return v0
.end method
