.class public Lcom/sleepycat/je/rep/impl/RepNodeImpl;
.super Ljava/lang/Object;
.source "RepNodeImpl.java"

# interfaces
.implements Lcom/sleepycat/je/rep/ReplicationNode;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NULL_CHANGE:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private barrierState:Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

.field private changeVersion:I

.field private hostName:Ljava/lang/String;

.field private isRemoved:Z

.field private volatile jeVersion:Lcom/sleepycat/je/JEVersion;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private port:I

.field private quorumAck:Z

.field private final type:Lcom/sleepycat/je/rep/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationConfig;)V
    .locals 6
    .param p1, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 162
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 163
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostname()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodePort()I

    move-result v4

    sget-object v5, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 162
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V
    .locals 9
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "type"    # Lcom/sleepycat/je/rep/NodeType;
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 153
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;ZZLjava/lang/String;IILcom/sleepycat/je/JEVersion;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;ZZLjava/lang/String;IILcom/sleepycat/je/JEVersion;)V
    .locals 10
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "type"    # Lcom/sleepycat/je/rep/NodeType;
    .param p3, "quorumAck"    # Z
    .param p4, "isRemoved"    # Z
    .param p5, "hostName"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "changeVersion"    # I
    .param p8, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 139
    new-instance v7, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v7, v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;-><init>(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;ZZLjava/lang/String;ILcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;ILcom/sleepycat/je/JEVersion;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;ZZLjava/lang/String;ILcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;ILcom/sleepycat/je/JEVersion;)V
    .locals 2
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "type"    # Lcom/sleepycat/je/rep/NodeType;
    .param p3, "quorumAck"    # Z
    .param p4, "isRemoved"    # Z
    .param p5, "hostName"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "barrierState"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .param p8, "changeVersion"    # I
    .param p9, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->changeVersion:I

    .line 100
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$GROUP_KEY$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    if-eqz p5, :cond_3

    .line 110
    if-eqz p2, :cond_2

    .line 115
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 116
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->type:Lcom/sleepycat/je/rep/NodeType;

    .line 117
    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->quorumAck:Z

    .line 118
    iput-boolean p4, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved:Z

    .line 119
    iput-object p5, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    .line 120
    iput p6, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    .line 121
    iput-object p7, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->barrierState:Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 122
    iput p8, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->changeVersion:I

    .line 123
    iput-object p9, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 124
    return-void

    .line 111
    :cond_2
    nop

    .line 112
    const-string v0, "The nodeType argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 106
    :cond_3
    nop

    .line 107
    const-string v0, "The hostname argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Member node ID is the reserved key value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V
    .locals 6
    .param p1, "mi"    # Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;

    .line 188
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port()I

    move-result v4

    .line 192
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    .line 188
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V
    .locals 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 178
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 180
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 407
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 408
    return v0

    .line 410
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 411
    return v1

    .line 413
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    if-nez v2, :cond_2

    .line 414
    return v1

    .line 416
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 417
    .local v2, "other":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 418
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 419
    return v1

    .line 421
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 422
    return v1

    .line 424
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 425
    return v1

    .line 427
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 428
    return v1

    .line 430
    :cond_6
    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    iget v4, v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    if-eq v3, v4, :cond_7

    .line 431
    return v1

    .line 433
    :cond_7
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v3

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v4

    if-eq v3, v4, :cond_8

    .line 434
    return v1

    .line 436
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    if-nez v3, :cond_9

    .line 437
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    if-eqz v3, :cond_a

    .line 438
    return v1

    .line 440
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/JEVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 441
    return v1

    .line 443
    :cond_a
    return v0
.end method

.method public equivalent(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z
    .locals 4
    .param p1, "mi"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 354
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 355
    return v0

    .line 358
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 359
    return v1

    .line 362
    :cond_1
    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    iget v3, p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    if-eq v2, v3, :cond_2

    .line 363
    return v1

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 367
    iget-object v2, p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 368
    return v1

    .line 370
    :cond_3
    iget-object v3, p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    return v1

    .line 375
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 376
    return v1

    .line 379
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 380
    return v1

    .line 388
    :cond_6
    return v0
.end method

.method public getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->barrierState:Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    return-object v0
.end method

.method public getChangeVersion()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->changeVersion:I

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    iget v1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 200
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->type:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 393
    const/16 v0, 0x1f

    .line 394
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 395
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 397
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 398
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    add-int/2addr v2, v3

    .line 399
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v1, v3

    .line 400
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 401
    invoke-virtual {v3}, Lcom/sleepycat/je/JEVersion;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 402
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public isQuorumAck()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->quorumAck:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 2

    .line 213
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->type:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Nodes with transient IDs are never marked removed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 215
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved:Z

    return v0
.end method

.method public setBarrierState(Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .locals 0
    .param p1, "barrierState"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 283
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->barrierState:Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    return-object p1
.end method

.method public setChangeVersion(I)V
    .locals 0
    .param p1, "changeVersion"    # I

    .line 219
    iput p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->changeVersion:I

    .line 220
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->hostName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 271
    iput p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->port:I

    .line 272
    return-void
.end method

.method public setQuorumAck(Z)V
    .locals 0
    .param p1, "quorumAck"    # Z

    .line 287
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->quorumAck:Z

    .line 288
    return-void
.end method

.method public setRemoved(Z)V
    .locals 0
    .param p1, "isRemoved"    # Z

    .line 291
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved:Z

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 317
    const-string v0, " (is member)"

    .line 319
    .local v0, "acked":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->quorumAck:Z

    if-nez v1, :cond_0

    .line 320
    const-string v0, " (not yet a durable member)"

    .line 323
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved:Z

    if-eqz v1, :cond_1

    .line 324
    const-string v0, " (is removed)"

    .line 327
    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->type:Lcom/sleepycat/je/rep/NodeType;

    .line 331
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->type:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 332
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getChangeVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->barrierState:Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " jeVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    aput-object v4, v1, v2

    .line 328
    const-string v2, "Node:%s %s:%d%s%s changeVersion:%d %s%s\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "info":Ljava/lang/String;
    return-object v1
.end method

.method public updateJEVersion(Lcom/sleepycat/je/JEVersion;)V
    .locals 0
    .param p1, "otherJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 309
    if-eqz p1, :cond_0

    .line 310
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 312
    :cond_0
    return-void
.end method
