.class public Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
        ">;"
    }
.end annotation


# static fields
.field static final APPROX_MAX_SIZE:I = 0x7a

.field private static final V2_MAX_NODE_TYPE:I = 0x1


# instance fields
.field private final groupFormatVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "groupFormatVersion"    # I

    .line 1142
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    .line 1143
    iput p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    .line 1144
    return-void
.end method

.method public static supportsObjectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Z
    .locals 2
    .param p0, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p1, "groupFormatVersion"    # I

    .line 1181
    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 1182
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/NodeType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1181
    :goto_1
    return v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 16
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 1148
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->deserialize(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v11

    .line 1149
    .local v11, "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readByte()B

    move-result v12

    .line 1150
    .local v12, "versionOrNodeType":I
    const/4 v1, 0x1

    if-gt v12, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v13, v1

    .line 1151
    .local v13, "v2":Z
    if-nez v13, :cond_2

    iget v1, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    if-gt v12, v1, :cond_1

    goto :goto_1

    .line 1152
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node entry version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1154
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is illegal because it is newer than group version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readByte()B

    move-result v1

    :goto_2
    move v14, v1

    .line 1159
    .local v14, "nodeTypeNum":I
    new-instance v15, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1161
    invoke-static {}, Lcom/sleepycat/je/rep/NodeType;->values()[Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    aget-object v3, v1, v14

    .line 1162
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readBoolean()Z

    move-result v4

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readBoolean()Z

    move-result v5

    .line 1164
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1165
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v7

    new-instance v8, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v9

    invoke-direct {v8, v1, v9, v10}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;-><init>(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 1168
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v9

    if-eqz v13, :cond_4

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_3

    .line 1169
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->parseJEVersion(Ljava/lang/String;)Lcom/sleepycat/je/JEVersion;

    move-result-object v1

    move-object v10, v1

    :goto_3
    move-object v1, v15

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;ZZLjava/lang/String;ILcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;ILcom/sleepycat/je/JEVersion;)V

    .line 1159
    return-object v15
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 4
    .param p1, "mi"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1188
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->supportsObjectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1194
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1196
    .local v0, "v2":Z
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v1

    .line 1197
    .local v1, "syncState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->serialize(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 1198
    if-nez v0, :cond_1

    .line 1199
    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1201
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeType;->ordinal()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1202
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1203
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1204
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1205
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1206
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1207
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getBarrierTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1208
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getChangeVersion()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1209
    if-nez v0, :cond_2

    .line 1210
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->jeVersionString(Lcom/sleepycat/je/JEVersion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1212
    :cond_2
    return-void

    .line 1189
    .end local v0    # "v2":Z
    .end local v1    # "syncState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1190
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported for group version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->groupFormatVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 1115
    check-cast p1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->objectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
