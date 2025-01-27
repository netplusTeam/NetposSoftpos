.class public final Lcom/sleepycat/je/tree/MapLN;
.super Lcom/sleepycat/je/tree/LN;
.source "MapLN.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_TAG:Ljava/lang/String; = "<mapLN>"

.field private static final END_TAG:Ljava/lang/String; = "</mapLN>"


# instance fields
.field private final databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private deleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/sleepycat/je/tree/LN;-><init>()V

    .line 134
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 124
    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-direct {p0, v1}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    .line 125
    iput-object p1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 126
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    .line 127
    return-void
.end method

.method private isEvictableInexact()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 169
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 170
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Tree;->isRootResident()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0
.end method


# virtual methods
.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 256
    const-string v0, "<mapLN>"

    return-object v0
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 340
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 341
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, "<deleted val=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    iget-object v1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 261
    const-string v0, "</mapLN>"

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 295
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->getLogSize(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 296
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 295
    return v0
.end method

.method protected getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isInsert"    # Z
    .param p2, "isTransactional"    # Z
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 289
    if-nez p2, :cond_0

    .line 290
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getMemorySizeIncludedByParent()J
    .locals 2

    .line 242
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->MAPLN_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDirty()Z

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
    return v0
.end method

.method isEvictable(J)Z
    .locals 10
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    .line 187
    .local v0, "evictable":Z
    iget-object v1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 188
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-static {v1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v8

    .line 189
    .local v8, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbTree;->getIdDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v9

    .line 191
    .local v9, "idDatabaseImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    const/4 v6, 0x0

    .line 192
    move-object v2, v8

    move-wide v3, p1

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/txn/BasicLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v2

    .line 199
    .local v2, "lockResult":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v3, v4, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/sleepycat/je/tree/MapLN;->isEvictableInexact()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 218
    .end local v2    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    :cond_0
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 219
    nop

    .line 221
    return v0

    .line 218
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    throw v2
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method makeDeleted()V
    .locals 3

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    .line 147
    iget-object v1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/je/tree/Tree;->setRoot(Lcom/sleepycat/je/tree/ChildReference;Z)V

    .line 148
    return-void
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "sourceLsn"    # J

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 232
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setEnvironmentImpl(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 233
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 312
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 315
    .local v0, "booleans":B
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    .line 321
    const/16 v2, 0x10

    if-lt p2, v2, :cond_1

    if-nez v1, :cond_2

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearDbFileSummaries()V

    .line 324
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/MapLN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 304
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/LN;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 305
    iget-object v0, p0, Lcom/sleepycat/je/tree/MapLN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 306
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/MapLN;->deleted:Z

    int-to-byte v0, v0

    .line 307
    .local v0, "booleans":B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 308
    return-void
.end method
