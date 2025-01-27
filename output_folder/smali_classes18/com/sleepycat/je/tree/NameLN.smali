.class public final Lcom/sleepycat/je/tree/NameLN;
.super Lcom/sleepycat/je/tree/LN;
.source "NameLN.java"


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "<nameLN>"

.field private static final END_TAG:Ljava/lang/String; = "</nameLN>"


# instance fields
.field private deleted:Z

.field private id:Lcom/sleepycat/je/dbi/DatabaseId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/sleepycat/je/tree/LN;-><init>()V

    .line 58
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 2
    .param p1, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 48
    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    .line 49
    iput-object p1, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 50
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    .line 51
    return-void
.end method


# virtual methods
.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "<nameLN>"

    return-object v0
.end method

.method createLogEntry(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BZIZIJLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/entry/LNLogEntry;
    .locals 14
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p4, "abortLsn"    # J
    .param p6, "abortKD"    # Z
    .param p7, "abortKey"    # [B
    .param p8, "abortData"    # [B
    .param p9, "abortVLSN"    # J
    .param p11, "abortExpiration"    # I
    .param p12, "abortExpirationInHours"    # Z
    .param p13, "newKey"    # [B
    .param p14, "newEmbeddedLN"    # Z
    .param p15, "newExpiration"    # I
    .param p16, "newExpirationInHours"    # Z
    .param p17, "priorSize"    # I
    .param p18, "priorLsn"    # J
    .param p20, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/txn/Txn;",
            "JZ[B[BJIZ[BZIZIJ",
            "Lcom/sleepycat/je/log/ReplicationContext;",
            ")",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation

    .line 221
    new-instance v13, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 222
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p13

    move-object v8, p0

    move/from16 v9, p17

    move-wide/from16 v10, p18

    move-object/from16 v12, p20

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;JZ[BLcom/sleepycat/je/tree/NameLN;IJLcom/sleepycat/je/log/ReplicationContext;)V

    .line 221
    return-object v13
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 194
    iget-object v0, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 195
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 5
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "<deleted val=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, "<id val=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "</nameLN>"

    return-object v0
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    invoke-super {p0}, Lcom/sleepycat/je/tree/LN;->getEmbeddedLoggables()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/log/VersionedWriteLoggable;>;"
    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method public getId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 139
    nop

    .line 140
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->getLogSize(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 141
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->getLogSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 139
    return v0
.end method

.method protected getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isInsert"    # Z
    .param p2, "isTransactional"    # Z
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 125
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_0
    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 167
    instance-of v0, p1, Lcom/sleepycat/je/tree/NameLN;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    return v1

    .line 171
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/NameLN;

    .line 173
    .local v0, "otherLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-super {p0, v0}, Lcom/sleepycat/je/tree/LN;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    return v1

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    iget-object v3, v0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    return v1

    .line 181
    :cond_2
    iget-boolean v2, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    iget-boolean v3, v0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    if-eq v2, v3, :cond_3

    .line 182
    return v1

    .line 185
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method makeDeleted()V
    .locals 1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    .line 69
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 158
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 159
    iget-object v0, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 161
    .local v0, "booleans":B
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    .line 162
    return-void
.end method

.method public setId(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 76
    iput-object p1, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/NameLN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/LN;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/tree/NameLN;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DatabaseId;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 151
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/NameLN;->deleted:Z

    int-to-byte v0, v0

    .line 152
    .local v0, "booleans":B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method
