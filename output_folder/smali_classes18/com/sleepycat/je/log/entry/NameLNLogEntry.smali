.class public Lcom/sleepycat/je/log/entry/NameLNLogEntry;
.super Lcom/sleepycat/je/log/entry/LNLogEntry;
.source "NameLNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/LNLogEntry<",
        "Lcom/sleepycat/je/tree/NameLN;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0xc


# instance fields
.field private operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

.field private replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

.field private truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    const-class v0, Lcom/sleepycat/je/tree/NameLN;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;-><init>(Ljava/lang/Class;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;JZ[BLcom/sleepycat/je/tree/NameLN;IJLcom/sleepycat/je/log/ReplicationContext;)V
    .locals 21
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p4, "abortLsn"    # J
    .param p6, "abortKD"    # Z
    .param p7, "key"    # [B
    .param p8, "nameLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p9, "priorSize"    # I
    .param p10, "priorLsn"    # J
    .param p12, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v18, p9

    move-wide/from16 v19, p10

    .line 127
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/sleepycat/je/log/entry/LNLogEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BLcom/sleepycat/je/tree/LN;ZIZIJ)V

    .line 137
    move-object/from16 v0, p12

    .line 139
    .local v0, "operationContext":Lcom/sleepycat/je/log/ReplicationContext;
    invoke-virtual/range {p12 .. p12}, Lcom/sleepycat/je/log/ReplicationContext;->getDbOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v1

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 140
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/DbOpReplicationContext;

    .line 142
    invoke-virtual {v1}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    move-result-object v1

    iput-object v1, v2, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 145
    :cond_0
    iget-object v1, v2, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v3, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v1, v3, :cond_1

    .line 146
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/DbOpReplicationContext;

    .line 147
    invoke-virtual {v1}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    iput-object v1, v2, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 191
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/entry/DbOperationType;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 194
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 201
    :cond_1
    return-object p1
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 298
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->dumpRep(Ljava/lang/StringBuilder;)V

    .line 299
    const-string v0, " dbop="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    return-void
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    .line 212
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getEmbeddedLoggables()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/log/VersionedWriteLoggable;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sleepycat/je/log/VersionedWriteLoggable;

    new-instance v2, Lcom/sleepycat/je/tree/NameLN;

    invoke-direct {v2}, Lcom/sleepycat/je/tree/NameLN;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 216
    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 2

    .line 206
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLastFormatChange()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v0
.end method

.method public getReplicatedCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    return-object v0
.end method

.method public getSize(IZ)I
    .locals 3
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getBaseLNEntrySize(IZZ)I

    move-result v0

    .line 226
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/log/entry/DbOperationType;->getLogSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-static {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->getLogSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v2, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->getLogSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1
    return v0
.end method

.method public getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 263
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 266
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 267
    .local v0, "otherEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/entry/DbOperationType;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    return v1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 272
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseId;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    return v1

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    if-eqz v2, :cond_3

    .line 277
    iget-object v3, v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 278
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    return v1

    .line 281
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->readBaseLNEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;Z)V

    .line 167
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    .line 168
    .local v0, "version":I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 169
    invoke-static {p3, v0}, Lcom/sleepycat/je/log/entry/DbOperationType;->readTypeFromLog(Ljava/nio/ByteBuffer;I)Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 171
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 173
    invoke-virtual {v1, p3, v0}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v2, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v1, v2, :cond_2

    .line 177
    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 178
    invoke-virtual {v1, p3, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 183
    :cond_2
    :goto_0
    return-void
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->writeBaseLNEntry(Ljava/nio/ByteBuffer;IZZ)V

    .line 248
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/DbOperationType;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 250
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->replicatedCreateConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->operationType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DatabaseId;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 258
    :cond_1
    return-void
.end method
