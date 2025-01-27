.class public Lcom/sleepycat/je/rep/NodeState;
.super Ljava/lang/Object;
.source "NodeState.java"


# instance fields
.field private final activeFeeders:I

.field private final appState:[B

.field private final currentState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field private final currentTxnEndVLSN:J

.field private final groupName:Ljava/lang/String;

.field private final jeVersion:Lcom/sleepycat/je/JEVersion;

.field private final joinTime:J

.field private final logVersion:I

.field private final masterName:Ljava/lang/String;

.field private final masterTxnEndVLSN:J

.field private final nodeName:Ljava/lang/String;

.field private final systemLoad:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;JJJII[BD)V
    .locals 15
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "currentState"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .param p4, "masterName"    # Ljava/lang/String;
    .param p5, "jeVersion"    # Lcom/sleepycat/je/JEVersion;
    .param p6, "joinTime"    # J
    .param p8, "currentTxnEndVLSN"    # J
    .param p10, "masterTxnEndVLSN"    # J
    .param p12, "activeFeeders"    # I
    .param p13, "logVersion"    # I
    .param p14, "appState"    # [B
    .param p15, "systemLoad"    # D

    .line 97
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sleepycat/je/rep/NodeState;->nodeName:Ljava/lang/String;

    .line 99
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sleepycat/je/rep/NodeState;->groupName:Ljava/lang/String;

    .line 100
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sleepycat/je/rep/NodeState;->currentState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 101
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/sleepycat/je/rep/NodeState;->masterName:Ljava/lang/String;

    .line 102
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/sleepycat/je/rep/NodeState;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 103
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/sleepycat/je/rep/NodeState;->joinTime:J

    .line 104
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/sleepycat/je/rep/NodeState;->currentTxnEndVLSN:J

    .line 105
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/sleepycat/je/rep/NodeState;->masterTxnEndVLSN:J

    .line 106
    move/from16 v12, p12

    iput v12, v0, Lcom/sleepycat/je/rep/NodeState;->activeFeeders:I

    .line 107
    move/from16 v13, p13

    iput v13, v0, Lcom/sleepycat/je/rep/NodeState;->logVersion:I

    .line 108
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/sleepycat/je/rep/NodeState;->appState:[B

    .line 109
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/sleepycat/je/rep/NodeState;->systemLoad:D

    .line 110
    return-void
.end method


# virtual methods
.method public getActiveFeeders()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/sleepycat/je/rep/NodeState;->activeFeeders:I

    return v0
.end method

.method public getAppState()[B
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->appState:[B

    return-object v0
.end method

.method public getCurrentTxnEndVLSN()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/sleepycat/je/rep/NodeState;->currentTxnEndVLSN:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->jeVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/sleepycat/je/rep/NodeState;->joinTime:J

    return-wide v0
.end method

.method public getKnownMasterTxnEndVLSN()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/sleepycat/je/rep/NodeState;->masterTxnEndVLSN:J

    return-wide v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/sleepycat/je/rep/NodeState;->logVersion:I

    return v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->masterName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/rep/NodeState;->currentState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method public getSystemLoad()D
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/sleepycat/je/rep/NodeState;->systemLoad:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state of node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/NodeState;->nodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/NodeState;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/NodeState;->currentState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current master: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/NodeState;->masterName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current JE version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/NodeState;->jeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current log version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/je/rep/NodeState;->logVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current transaction end (abort or commit) VLSN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sleepycat/je/rep/NodeState;->currentTxnEndVLSN:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current master transaction end (abort or commit) VLSN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sleepycat/je/rep/NodeState;->masterTxnEndVLSN:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current active feeders on node: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/je/rep/NodeState;->activeFeeders:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current system load average: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sleepycat/je/rep/NodeState;->systemLoad:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
