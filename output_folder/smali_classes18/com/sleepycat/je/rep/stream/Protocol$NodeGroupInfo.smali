.class public Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeGroupInfo"
.end annotation


# instance fields
.field private final designatedPrimary:Z

.field private final groupName:Ljava/lang/String;

.field private final hostName:Ljava/lang/String;

.field private final jeVersion:Ljava/lang/String;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private final port:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Ljava/lang/String;ILcom/sleepycat/je/rep/NodeType;ZLcom/sleepycat/je/JEVersion;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p5, "hostName"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .param p8, "designatedPrimary"    # Z
    .param p9, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 885
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 887
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->groupName:Ljava/lang/String;

    .line 888
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->uuid:Ljava/util/UUID;

    .line 889
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 890
    iput-object p5, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->hostName:Ljava/lang/String;

    .line 891
    iput p6, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port:I

    .line 892
    iput-object p7, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 893
    iput-boolean p8, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->designatedPrimary:Z

    .line 894
    if-eqz p9, :cond_0

    .line 895
    invoke-virtual {p9}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->jeVersion:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 927
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 928
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->groupName:Ljava/lang/String;

    .line 929
    new-instance v0, Ljava/util/UUID;

    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 930
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->uuid:Ljava/util/UUID;

    .line 931
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getNameIdPair(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 932
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->hostName:Ljava/lang/String;

    .line 933
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port:I

    .line 934
    const-class v0, Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/NodeType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 935
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->designatedPrimary:Z

    .line 936
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->jeVersion:Ljava/lang/String;

    .line 937
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->jeVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sleepycat/je/JEVersion;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->jeVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 901
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isDesignatedPrimary()Z
    .locals 1

    .line 971
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->designatedPrimary:Z

    return v0
.end method

.method public port()I
    .locals 1

    .line 964
    iget v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port:I

    return v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 8

    .line 906
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 907
    .local v0, "repGroupV3":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    sget-object v5, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/NodeType;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 908
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node type not supported before group version 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_2
    :goto_1
    const/16 v4, 0x8

    if-eqz v0, :cond_3

    const/16 v5, 0x9

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    .line 913
    .local v5, "args":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->groupName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 914
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 915
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 916
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    aput-object v2, v5, v1

    .line 917
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->hostName:Ljava/lang/String;

    aput-object v2, v5, v1

    .line 918
    iget v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    .line 919
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    aput-object v2, v5, v1

    .line 920
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->designatedPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 921
    if-eqz v0, :cond_4

    .line 922
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->jeVersion:Ljava/lang/String;

    aput-object v1, v5, v4

    .line 924
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method
