.class public Lcom/sleepycat/je/log/LNFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "LNFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ckptEnd:J

.field protected targetEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/log/entry/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJZJJLjava/lang/Long;J)V
    .locals 13
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "redo"    # Z
    .param p6, "endOfFileLsn"    # J
    .param p8, "finishLsn"    # J
    .param p10, "singleFileNum"    # Ljava/lang/Long;
    .param p11, "ckptEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 80
    move-object v12, p0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p5

    move-wide/from16 v4, p3

    move-object/from16 v6, p10

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJZ)V

    .line 84
    move-wide/from16 v0, p11

    iput-wide v0, v12, Lcom/sleepycat/je/log/LNFileReader;->ckptEnd:J

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v12, Lcom/sleepycat/je/log/LNFileReader;->targetEntryMap:Ljava/util/Map;

    .line 86
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

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetEntryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public dumpCurrentHeader()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAbortKnownDeleted()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v0

    return v0
.end method

.method public getAbortLsn()J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    return-object v0
.end method

.method public getMainItem()Ljava/lang/Object;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNameLNLogEntry()Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    instance-of v1, v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTxnAbortId()J
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnAbort;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnAbort;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnCommitId()J
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnCommit;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnCommit;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnId()Ljava/lang/Long;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getTxnId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTxnPrepareId()J
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnPrepare;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnPrepare;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnPrepareXid()Ljavax/transaction/xa/Xid;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnPrepare;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnPrepare;->getXid()Ljavax/transaction/xa/Xid;

    move-result-object v0

    return-object v0
.end method

.method public getVLSN()J
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LNFileReader;->entryIsReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    return-wide v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isAbort()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/TxnAbort;

    return v0
.end method

.method public isCommit()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/TxnCommit;

    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    return v0
.end method

.method public isLN()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    instance-of v0, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    return v0
.end method

.method public isPrepare()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/TxnPrepare;

    return v0
.end method

.method public isRollbackEnd()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/RollbackEnd;

    return v0
.end method

.method public isRollbackStart()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/txn/RollbackStart;

    return v0
.end method

.method protected isTargetEntry()Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getProvisional()Lcom/sleepycat/je/log/Provisional;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sleepycat/je/log/LNFileReader;->ckptEnd:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/log/Provisional;->isProvisional(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    iget-object v1, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 106
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;-><init>(B)V

    .line 109
    .local v0, "fromLogType":Lcom/sleepycat/je/log/LogEntryType;
    iget-object v1, p0, Lcom/sleepycat/je/log/LNFileReader;->targetEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/entry/LogEntry;

    iput-object v1, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 111
    .end local v0    # "fromLogType":Lcom/sleepycat/je/log/LogEntryType;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/log/LNFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v1, p0, Lcom/sleepycat/je/log/LNFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/log/LNFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method
