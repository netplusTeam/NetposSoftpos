.class public Lcom/sleepycat/je/DiskOrderedCursor;
.super Ljava/lang/Object;
.source "DiskOrderedCursor.java"

# interfaces
.implements Lcom/sleepycat/je/ForwardCursor;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final config:Lcom/sleepycat/je/DiskOrderedCursorConfig;

.field private final dbHandles:[Lcom/sleepycat/je/Database;

.field private final dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 130
    return-void
.end method

.method constructor <init>([Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V
    .locals 6
    .param p1, "dbHandles"    # [Lcom/sleepycat/je/Database;
    .param p2, "config"    # Lcom/sleepycat/je/DiskOrderedCursorConfig;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbHandles:[Lcom/sleepycat/je/Database;

    .line 147
    iput-object p2, p0, Lcom/sleepycat/je/DiskOrderedCursor;->config:Lcom/sleepycat/je/DiskOrderedCursorConfig;

    .line 149
    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    .line 151
    array-length v0, p1

    new-array v0, v0, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    iput-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "dups":Z
    const/4 v1, 0x0

    .line 157
    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 159
    aget-object v2, p1, v1

    .line 162
    .local v2, "db":Lcom/sleepycat/je/Database;
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/sleepycat/je/Database;->addCursor(Lcom/sleepycat/je/ForwardCursor;)V

    .line 164
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 165
    .local v3, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v3, :cond_2

    .line 169
    if-nez v1, :cond_0

    .line 170
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v4

    move v0, v4

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v4

    if-ne v4, v0, :cond_1

    .line 179
    :goto_1
    iget-object v4, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    aput-object v3, v4, v1

    .line 157
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .restart local v2    # "db":Lcom/sleepycat/je/Database;
    .restart local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "In a multi-database disk ordered cursor either all or none of the databases should support duplicates"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dups":Z
    .end local v1    # "i":I
    .end local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .end local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    throw v4

    .line 167
    .restart local v0    # "dups":Z
    .restart local v1    # "i":I
    .restart local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .restart local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "dups":Z
    .end local v1    # "i":I
    .end local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .end local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "dups":Z
    .restart local v1    # "i":I
    .restart local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .restart local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "dups":Z
    .end local v1    # "i":I
    .end local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .end local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :try_start_4
    throw v3

    .line 182
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    .restart local v0    # "dups":Z
    .restart local v1    # "i":I
    .restart local p1    # "dbHandles":[Lcom/sleepycat/je/Database;
    .restart local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :cond_3
    new-instance v2, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    iget-object v3, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v2, v3, p2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V

    iput-object v2, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 184
    iget-object v2, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/DiskOrderedCursor;->logger:Ljava/util/logging/Logger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    nop

    .line 193
    return-void

    .line 186
    :catchall_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 188
    aget-object v4, p1, v3

    invoke-virtual {v4, p0}, Lcom/sleepycat/je/Database;->removeCursor(Lcom/sleepycat/je/ForwardCursor;)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    .end local v3    # "j":I
    :cond_4
    throw v2

    .line 149
    .end local v0    # "dups":Z
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private checkLockMode(Lcom/sleepycat/je/LockMode;)V
    .locals 2
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 343
    if-eqz p1, :cond_1

    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lockMode must be null or LockMode.READ_UNCOMMITTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    :goto_0
    return-void
.end method

.method private checkState()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->checkEnv()V

    .line 358
    return-void
.end method

.method private trace(Ljava/util/logging/Level;Lcom/sleepycat/je/Get;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "getType"    # Lcom/sleepycat/je/Get;

    .line 367
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 369
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sleepycat/je/Get;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->checkEnv()V

    .line 232
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->close()V

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbHandles:[Lcom/sleepycat/je/Database;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 235
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/Database;->removeCursor(Lcom/sleepycat/je/ForwardCursor;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_1
    nop

    .line 242
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 240
    throw v0
.end method

.method public get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/DiskOrderedCursor;->checkState()V

    .line 260
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/DiskOrderedCursor;->checkLockMode(Lcom/sleepycat/je/LockMode;)V

    .line 261
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p3}, Lcom/sleepycat/je/DiskOrderedCursor;->trace(Ljava/util/logging/Level;Lcom/sleepycat/je/Get;)V

    .line 263
    sget-object v0, Lcom/sleepycat/je/DiskOrderedCursor$1;->$SwitchMap$com$sleepycat$je$Get:[I

    invoke-virtual {p3}, Lcom/sleepycat/je/Get;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 269
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get type not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "getType":Lcom/sleepycat/je/Get;
    .end local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "getType":Lcom/sleepycat/je/Get;
    .restart local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 275
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConfig()Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 3

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->config:Lcom/sleepycat/je/DiskOrderedCursorConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->clone()Lcom/sleepycat/je/DiskOrderedCursorConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 338
    throw v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 299
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    .line 300
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 299
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/DiskOrderedCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 302
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method getCursorImpl()Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dbHandles:[Lcom/sleepycat/je/Database;

    iget-object v1, p0, Lcom/sleepycat/je/DiskOrderedCursor;->dosCursorImpl:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->getCurrDb()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 318
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 319
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 318
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/DiskOrderedCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 321
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method
