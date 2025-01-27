.class public Lcom/sleepycat/je/dbi/MetadataStore;
.super Ljava/lang/Object;
.source "MetadataStore.java"


# static fields
.field public static final KEY_ERASER:Ljava/lang/String; = "eraser"


# instance fields
.field private db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sleepycat/je/dbi/MetadataStore;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 48
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MetadataStore;->openDb()V

    .line 50
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 51
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 53
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/MetadataStore;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1

    .line 56
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/MetadataStore;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 57
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    sget-object v4, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {v2, v0, p2, v4, v3}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 59
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 57
    return-object v3

    .line 56
    :catchall_0
    move-exception v3

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_1
    :goto_0
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_3
    move-exception v2

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v2
.end method

.method public declared-synchronized openDb()V
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MetadataStore;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MetadataStore;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/DbType;->METADATA:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->openNonRepInternalDB(Lcom/sleepycat/je/dbi/DbType;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MetadataStore;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 38
    .end local p0    # "this":Lcom/sleepycat/je/dbi/MetadataStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 65
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MetadataStore;->openDb()V

    .line 67
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 68
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 70
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/MetadataStore;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1

    .line 73
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/MetadataStore;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 74
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    sget-object v4, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    invoke-virtual {v2, v0, p2, v4, v3}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 76
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 74
    return-object v3

    .line 73
    :catchall_0
    move-exception v3

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_1
    :goto_0
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 76
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_3
    move-exception v2

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v2
.end method
