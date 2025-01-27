.class Lcom/sleepycat/persist/SubIndex;
.super Ljava/lang/Object;
.source "SubIndex.java"

# interfaces
.implements Lcom/sleepycat/persist/EntityIndex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/EntityIndex<",
        "TPK;TE;>;"
    }
.end annotation


# instance fields
.field private concurrentDB:Z

.field private db:Lcom/sleepycat/je/SecondaryDatabase;

.field private emptyPKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

.field private entityAdapter:Lcom/sleepycat/persist/ValueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TE;>;"
        }
    .end annotation
.end field

.field private entityBinding:Lcom/sleepycat/bind/EntityBinding;

.field private keyAdapter:Lcom/sleepycat/persist/ValueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TPK;>;"
        }
    .end annotation
.end field

.field private keyEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private keyObject:Ljava/lang/Object;

.field private locking:Z

.field private map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TPK;TE;>;"
        }
    .end annotation
.end field

.field private pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

.field private secIndex:Lcom/sleepycat/persist/SecondaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "*TPK;TE;>;"
        }
    .end annotation
.end field

.field private singleKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

.field private sortedDups:Z

.field private transactional:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/SecondaryIndex;Lcom/sleepycat/bind/EntityBinding;Ljava/lang/Object;)V
    .locals 5
    .param p2, "entityBinding"    # Lcom/sleepycat/bind/EntityBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SK:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "TSK;TPK;TE;>;",
            "Lcom/sleepycat/bind/EntityBinding;",
            "TSK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "secIndex":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p3, "key":Ljava/lang/Object;, "TSK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sleepycat/persist/SubIndex;->secIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 88
    invoke-virtual {p1}, Lcom/sleepycat/persist/SecondaryIndex;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    .line 89
    iget-boolean v0, p1, Lcom/sleepycat/persist/SecondaryIndex;->transactional:Z

    iput-boolean v0, p0, Lcom/sleepycat/persist/SubIndex;->transactional:Z

    .line 90
    iget-boolean v0, p1, Lcom/sleepycat/persist/SecondaryIndex;->sortedDups:Z

    iput-boolean v0, p0, Lcom/sleepycat/persist/SubIndex;->sortedDups:Z

    .line 91
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    .line 92
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/persist/SubIndex;->locking:Z

    .line 93
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    .line 94
    .local v0, "env":Lcom/sleepycat/je/Environment;
    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/persist/SubIndex;->concurrentDB:Z

    .line 95
    iput-object p3, p0, Lcom/sleepycat/persist/SubIndex;->keyObject:Ljava/lang/Object;

    .line 96
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 97
    iget-object v1, p1, Lcom/sleepycat/persist/SecondaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-interface {v1, p3, v2}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 98
    iget-object v1, p1, Lcom/sleepycat/persist/SecondaryIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/SubIndex;->singleKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 100
    invoke-virtual {p1}, Lcom/sleepycat/persist/SecondaryIndex;->getPrimaryIndex()Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v1

    .line 101
    .local v1, "priIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    iget-object v2, v1, Lcom/sleepycat/persist/PrimaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iput-object v2, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 102
    iget-object v2, v1, Lcom/sleepycat/persist/PrimaryIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iput-object v2, p0, Lcom/sleepycat/persist/SubIndex;->emptyPKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 103
    iput-object p2, p0, Lcom/sleepycat/persist/SubIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 105
    new-instance v2, Lcom/sleepycat/persist/PrimaryKeyValueAdapter;

    iget-object v3, v1, Lcom/sleepycat/persist/PrimaryIndex;->keyClass:Ljava/lang/Class;

    iget-object v4, v1, Lcom/sleepycat/persist/PrimaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/persist/PrimaryKeyValueAdapter;-><init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V

    iput-object v2, p0, Lcom/sleepycat/persist/SubIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    .line 107
    iget-object v2, p1, Lcom/sleepycat/persist/SecondaryIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    iput-object v2, p0, Lcom/sleepycat/persist/SubIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    .line 108
    return-void
.end method

.method private cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "pkeyRange"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p4, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/util/keyrange/KeyRange;",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p3, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0, p1, p4}, Lcom/sleepycat/je/SecondaryDatabase;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object v0

    .line 406
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    new-instance v1, Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->singleKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v3, p0, Lcom/sleepycat/persist/SubIndex;->sortedDups:Z

    invoke-direct {v1, v2, p2, v3, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V

    .line 408
    .local v1, "rangeCursor":Lcom/sleepycat/util/keyrange/RangeCursor;
    new-instance v2, Lcom/sleepycat/persist/SubIndexCursor;

    invoke-direct {v2, v1, p3}, Lcom/sleepycat/persist/SubIndexCursor;-><init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;)V

    return-object v2
.end method

.method private cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p7, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;ZTPK;Z",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TPK;"
    .local p4, "toKey":Ljava/lang/Object;, "TPK;"
    .local p6, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    const/4 v0, 0x0

    .line 385
    .local v0, "fromEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz p2, :cond_0

    .line 386
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v0, v1

    .line 387
    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 389
    :cond_0
    const/4 v1, 0x0

    .line 390
    .local v1, "toEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz p4, :cond_1

    .line 391
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v1, v2

    .line 392
    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v2, p4, v1}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->emptyPKeyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 395
    invoke-virtual {v2, v0, p3, v1, p5}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v2

    .line 396
    .local v2, "pkeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    invoke-direct {p0, p1, v2, p6, p7}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v3

    return-object v3
.end method

.method private deleteInternal(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/compat/DbCompat$OpWriteOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 17
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "options"    # Lcom/sleepycat/compat/DbCompat$OpWriteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
            "Lcom/sleepycat/compat/DbCompat$OpWriteOptions;",
            ")",
            "Lcom/sleepycat/compat/DbCompat$OpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v9, v0

    .line 244
    .local v9, "pkeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v10, Lcom/sleepycat/persist/BasicIndex;->NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;

    .line 245
    .local v10, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v1, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    move-object/from16 v11, p2

    invoke-interface {v0, v11, v9}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "autoCommit":Z
    iget-object v3, v1, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v3}, Lcom/sleepycat/je/SecondaryDatabase;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v12

    .line 249
    .local v12, "env":Lcom/sleepycat/je/Environment;
    iget-boolean v3, v1, Lcom/sleepycat/persist/SubIndex;->transactional:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 251
    invoke-static {v12}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    if-nez v3, :cond_0

    .line 252
    const/4 v3, 0x0

    iget-object v4, v1, Lcom/sleepycat/persist/SubIndex;->secIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 253
    invoke-virtual {v4}, Lcom/sleepycat/persist/SecondaryIndex;->getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    .line 254
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v0, 0x1

    move v14, v0

    move-object v13, v3

    goto :goto_0

    .line 257
    .end local v3    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    :cond_0
    move-object/from16 v13, p1

    move v14, v0

    .end local v0    # "autoCommit":Z
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .local v13, "txn":Lcom/sleepycat/je/Transaction;
    .local v14, "autoCommit":Z
    :goto_0
    const/4 v15, 0x1

    .line 258
    .local v15, "failed":Z
    const/4 v0, 0x0

    .line 259
    .local v0, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    iget-boolean v3, v1, Lcom/sleepycat/persist/SubIndex;->concurrentDB:Z

    if-eqz v3, :cond_1

    .line 260
    new-instance v3, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    move-object v0, v3

    .line 261
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/sleepycat/compat/DbCompat;->setWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)V

    move-object v8, v0

    goto :goto_1

    .line 259
    :cond_1
    move-object v8, v0

    .line 263
    .end local v0    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v8, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_1
    iget-object v0, v1, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0, v13, v8}, Lcom/sleepycat/je/SecondaryDatabase;->openSecondaryCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object v7

    .line 268
    .local v7, "cursor":Lcom/sleepycat/je/SecondaryCursor;
    :try_start_0
    iget-object v0, v2, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->jeOptions:Lcom/sleepycat/je/WriteOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, v2, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->jeOptions:Lcom/sleepycat/je/WriteOptions;

    .line 269
    invoke-virtual {v0}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    .line 271
    .local v0, "readOptions":Lcom/sleepycat/je/ReadOptions;
    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    .line 272
    iget-object v3, v2, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->jeOptions:Lcom/sleepycat/je/WriteOptions;

    invoke-virtual {v3}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/ReadOptions;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 295
    .end local v0    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object/from16 v16, v8

    goto :goto_4

    .line 274
    :cond_2
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0}, Lcom/sleepycat/je/LockMode;->toReadOptions()Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    .line 276
    .restart local v0    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    :goto_2
    iget-object v4, v1, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v16, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v7

    move-object v5, v9

    move-object v6, v10

    move-object v1, v7

    .end local v7    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .local v1, "cursor":Lcom/sleepycat/je/SecondaryCursor;
    move-object/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v16, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    move-object v8, v0

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    .line 279
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v3, :cond_3

    .line 280
    iget-object v4, v2, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->jeOptions:Lcom/sleepycat/je/WriteOptions;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/SecondaryCursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4

    move-object v3, v4

    .line 282
    :cond_3
    const/4 v15, 0x0

    .line 283
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryCursor;->close()V

    .line 296
    if-eqz v14, :cond_5

    .line 297
    if-eqz v15, :cond_4

    .line 298
    invoke-virtual {v13}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_3

    .line 300
    :cond_4
    invoke-virtual {v13}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 283
    :cond_5
    :goto_3
    return-object v4

    .line 295
    .end local v0    # "readOptions":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .end local v16    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v7    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .restart local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object/from16 v16, v8

    .end local v7    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .end local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .restart local v16    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_4
    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryCursor;->close()V

    .line 296
    if-eqz v14, :cond_7

    .line 297
    if-eqz v15, :cond_6

    .line 298
    invoke-virtual {v13}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_5

    .line 300
    :cond_6
    invoke-virtual {v13}, Lcom/sleepycat/je/Transaction;->commit()V

    :cond_7
    :goto_5
    throw v0
.end method


# virtual methods
.method public contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
            "Lcom/sleepycat/je/LockMode;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 124
    .local v0, "pkeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v7, Lcom/sleepycat/persist/BasicIndex;->NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;

    .line 125
    .local v7, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 127
    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    iget-object v3, p0, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 128
    move-object v2, p1

    move-object v4, v0

    move-object v5, v7

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryDatabase;->getSearchBoth(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 129
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TPK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/SubIndex;->contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    return v0
.end method

.method public count()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    iget-boolean v0, p0, Lcom/sleepycat/persist/SubIndex;->locking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/CursorConfig;->READ_UNCOMMITTED:Lcom/sleepycat/je/CursorConfig;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 194
    .local v0, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/persist/SubIndex;->keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v1

    .line 196
    .local v1, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<TPK;>;"
    :try_start_0
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    .line 202
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 197
    return-wide v2

    .line 199
    :cond_1
    const-wide/16 v2, 0x0

    .line 202
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 199
    return-wide v2

    .line 202
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    throw v2
.end method

.method public count(J)J
    .locals 2
    .param p1, "memoryLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SubIndex;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "options"    # Lcom/sleepycat/je/WriteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
            "Lcom/sleepycat/je/WriteOptions;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    invoke-static {p3}, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->make(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/persist/SubIndex;->deleteInternal(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/compat/DbCompat$OpWriteOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    iget-object v0, v0, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    return-object v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/persist/SubIndex;->deleteInternal(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/compat/DbCompat$OpWriteOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TPK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/SubIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entities()Lcom/sleepycat/persist/EntityCursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;ZTPK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TPK;"
    .local p4, "toKey":Ljava/lang/Object;, "TPK;"
    iget-object v6, p0, Lcom/sleepycat/persist/SubIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;ZTPK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TPK;"
    .local p3, "toKey":Ljava/lang/Object;, "TPK;"
    iget-object v6, p0, Lcom/sleepycat/persist/SubIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 9
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
            "Lcom/sleepycat/je/Get;",
            "Lcom/sleepycat/je/ReadOptions;",
            ")",
            "Lcom/sleepycat/persist/EntityResult<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    invoke-static {p3}, Lcom/sleepycat/persist/BasicIndex;->checkGetType(Lcom/sleepycat/je/Get;)V

    .line 172
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 173
    .local v0, "pkeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v8, v1

    .line 174
    .local v8, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 176
    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    iget-object v3, p0, Lcom/sleepycat/persist/SubIndex;->keyEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    move-object v2, p1

    move-object v4, v0

    move-object v5, v8

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 179
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_0

    .line 180
    new-instance v2, Lcom/sleepycat/persist/EntityResult;

    iget-object v3, p0, Lcom/sleepycat/persist/SubIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 181
    invoke-interface {v3, v0, v8}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/persist/EntityResult;-><init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V

    .line 180
    return-object v2

    .line 184
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
            "Lcom/sleepycat/je/LockMode;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 144
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 143
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/SubIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    .line 145
    .local v0, "result":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TE;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/persist/EntityResult;->value()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TPK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/SubIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 111
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->db:Lcom/sleepycat/je/SecondaryDatabase;

    return-object v0
.end method

.method public keys()Lcom/sleepycat/persist/EntityCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sleepycat/persist/SubIndex;->keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;ZTPK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TPK;"
    .local p4, "toKey":Ljava/lang/Object;, "TPK;"
    iget-object v6, p0, Lcom/sleepycat/persist/SubIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;ZTPK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TPK;"
    .local p3, "toKey":Ljava/lang/Object;, "TPK;"
    iget-object v6, p0, Lcom/sleepycat/persist/SubIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/SubIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TPK;TE;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SubIndex;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sortedMap()Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TPK;TE;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->map:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->secIndex:Lcom/sleepycat/persist/SecondaryIndex;

    invoke-virtual {v0}, Lcom/sleepycat/persist/SecondaryIndex;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/StoredSortedMap;

    iget-object v1, p0, Lcom/sleepycat/persist/SubIndex;->keyObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sleepycat/persist/SubIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/collections/StoredSortedMap;->duplicatesMap(Ljava/lang/Object;Lcom/sleepycat/bind/EntryBinding;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/sleepycat/persist/SubIndex;->map:Ljava/util/SortedMap;

    .line 420
    .end local p0    # "this":Lcom/sleepycat/persist/SubIndex;, "Lcom/sleepycat/persist/SubIndex<TPK;TE;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/SubIndex;->map:Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
