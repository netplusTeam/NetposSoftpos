.class public Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BinaryNodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryNodeStateResponse"
.end annotation


# instance fields
.field private final activeFeeders:I

.field private final appState:[B

.field private final commitVLSN:J

.field private final groupName:Ljava/lang/String;

.field private final jeVersion:Lcom/sleepycat/je/JEVersion;

.field private final joinTime:J

.field private final logVersion:I

.field private final masterCommitVLSN:J

.field private final masterName:Ljava/lang/String;

.field private final nodeName:Ljava/lang/String;

.field private final nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field private final systemLoad:D

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;JJII[BD)V
    .locals 15
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "masterName"    # Ljava/lang/String;
    .param p5, "jeVersion"    # Lcom/sleepycat/je/JEVersion;
    .param p6, "joinTime"    # J
    .param p8, "nodeState"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .param p9, "commitVLSN"    # J
    .param p11, "masterCommitVLSN"    # J
    .param p13, "activeFeeders"    # I
    .param p14, "logVersion"    # I
    .param p15, "appState"    # [B
    .param p16, "systemLoad"    # D

    .line 139
    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 140
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 141
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeName:Ljava/lang/String;

    .line 142
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->groupName:Ljava/lang/String;

    .line 147
    if-nez p4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    iput-object v4, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterName:Ljava/lang/String;

    .line 148
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 149
    move-wide/from16 v5, p6

    iput-wide v5, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->joinTime:J

    .line 150
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 151
    move-wide/from16 v8, p9

    iput-wide v8, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->commitVLSN:J

    .line 152
    move-wide/from16 v10, p11

    iput-wide v10, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterCommitVLSN:J

    .line 153
    move/from16 v12, p13

    iput v12, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->activeFeeders:I

    .line 154
    move/from16 v13, p14

    iput v13, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->logVersion:I

    .line 155
    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->appState:[B

    .line 156
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->systemLoad:D

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 159
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 160
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 161
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->groupName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterName:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 165
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->joinTime:J

    .line 166
    const-class v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 167
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->commitVLSN:J

    .line 168
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterCommitVLSN:J

    .line 169
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->activeFeeders:I

    .line 170
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->logVersion:I

    .line 171
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->appState:[B

    .line 172
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getDouble(Ljava/nio/ByteBuffer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->systemLoad:D

    .line 173
    return-void
.end method


# virtual methods
.method public convertToNodeState()Lcom/sleepycat/je/rep/NodeState;
    .locals 21

    .line 257
    move-object/from16 v0, p0

    new-instance v18, Lcom/sleepycat/je/rep/NodeState;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->groupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterName:Ljava/lang/String;

    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->jeVersion:Lcom/sleepycat/je/JEVersion;

    iget-wide v7, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->joinTime:J

    iget-wide v9, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->commitVLSN:J

    iget-wide v11, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterCommitVLSN:J

    iget v13, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->activeFeeders:I

    iget v14, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->logVersion:I

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->getAppState()[B

    move-result-object v15

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->systemLoad:D

    move-wide/from16 v16, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Lcom/sleepycat/je/rep/NodeState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;JJJII[BD)V

    .line 257
    return-object v18
.end method

.method public getActiveFeeders()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->activeFeeders:I

    return v0
.end method

.method public getAppState()[B
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->appState:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method public getCommitVLSN()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->commitVLSN:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->jeVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->joinTime:J

    return-wide v0
.end method

.method public getKnownMasterCommitVLSN()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterCommitVLSN:J

    return-wide v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->logVersion:I

    return v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 229
    sget-object v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getSystemLoad()D
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->systemLoad:D

    return-wide v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->appState:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 241
    .local v0, "realAppState":[B
    :cond_0
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeName:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->groupName:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterName:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 244
    invoke-virtual {v3}, Lcom/sleepycat/je/JEVersion;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->joinTime:J

    .line 245
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->commitVLSN:J

    .line 247
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->masterCommitVLSN:J

    .line 248
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->activeFeeders:I

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    iget v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->logVersion:I

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    aput-object v0, v2, v1

    const/16 v1, 0xb

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->systemLoad:D

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    .line 241
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method
