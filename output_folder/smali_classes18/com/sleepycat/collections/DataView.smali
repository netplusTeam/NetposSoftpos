.class final Lcom/sleepycat/collections/DataView;
.super Ljava/lang/Object;
.source "DataView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field btreeRecNumAccess:Z

.field btreeRecNumDb:Z

.field currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

.field cursorConfig:Lcom/sleepycat/je/CursorConfig;

.field db:Lcom/sleepycat/je/Database;

.field dupsAllowed:Z

.field dupsKey:Lcom/sleepycat/je/DatabaseEntry;

.field dupsOrdered:Z

.field dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

.field dupsView:Z

.field entityBinding:Lcom/sleepycat/bind/EntityBinding;

.field keyAssigner:Lcom/sleepycat/collections/PrimaryKeyAssigner;

.field keyBinding:Lcom/sleepycat/bind/EntryBinding;

.field keyRangesAllowed:Z

.field keysRenumbered:Z

.field ordered:Z

.field range:Lcom/sleepycat/util/keyrange/KeyRange;

.field readUncommittedAllowed:Z

.field recNumAccess:Z

.field recNumAllowed:Z

.field recNumRenumber:Z

.field secDb:Lcom/sleepycat/je/SecondaryDatabase;

.field secKeyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

.field transactional:Z

.field valueBinding:Lcom/sleepycat/bind/EntryBinding;

.field writeAllowed:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V
    .locals 5
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p2, "keyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .param p3, "valueBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .param p4, "entityBinding"    # Lcom/sleepycat/bind/EntityBinding;
    .param p5, "writeAllowed"    # Z
    .param p6, "keyAssigner"    # Lcom/sleepycat/collections/PrimaryKeyAssigner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p1, :cond_e

    .line 92
    iput-object p1, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    .line 94
    nop

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction;->getInstanceInternal(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    instance-of v1, v0, Lcom/sleepycat/je/SecondaryDatabase;

    if-eqz v1, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/SecondaryDatabase;

    iput-object v0, p0, Lcom/sleepycat/collections/DataView;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 99
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getSecondaryConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    .line 100
    .local v0, "secConfig":Lcom/sleepycat/je/SecondaryConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/collections/DataView;->secKeyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    .line 101
    nop

    .line 102
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    goto :goto_0

    .line 103
    .end local v0    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 105
    .restart local v0    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :goto_0
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeHash(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->ordered:Z

    .line 106
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->keyRangesAllowed:Z

    .line 107
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeQueue(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeRecno(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getBtreeRecordNumbers(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->recNumAllowed:Z

    .line 110
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRenumbering(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->recNumRenumber:Z

    .line 111
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getSortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getUnsortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    .line 113
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getSortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->dupsOrdered:Z

    .line 114
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v1}, Lcom/sleepycat/collections/CurrentTransaction;->isTxnMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->transactional:Z

    .line 116
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getReadUncommitted(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->readUncommittedAllowed:Z

    .line 117
    iget-boolean v1, p0, Lcom/sleepycat/collections/DataView;->recNumAllowed:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/sleepycat/collections/DataView;->btreeRecNumDb:Z

    .line 118
    new-instance v1, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    nop

    .line 122
    iput-boolean p5, p0, Lcom/sleepycat/collections/DataView;->writeAllowed:Z

    .line 123
    iput-object p2, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 124
    iput-object p3, p0, Lcom/sleepycat/collections/DataView;->valueBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 125
    iput-object p4, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 126
    iput-object p6, p0, Lcom/sleepycat/collections/DataView;->keyAssigner:Lcom/sleepycat/collections/PrimaryKeyAssigner;

    .line 127
    sget-object v0, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    iput-object v0, p0, Lcom/sleepycat/collections/DataView;->cursorConfig:Lcom/sleepycat/je/CursorConfig;

    .line 129
    if-eqz p3, :cond_9

    if-nez p4, :cond_8

    goto :goto_8

    .line 130
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "both valueBinding and entityBinding are non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_9
    :goto_8
    instance-of v0, p2, Lcom/sleepycat/bind/RecordNumberBinding;

    if-eqz v0, :cond_b

    .line 134
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->recNumAllowed:Z

    if-eqz v0, :cond_a

    .line 139
    iput-boolean v3, p0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    .line 140
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->btreeRecNumDb:Z

    if-eqz v0, :cond_b

    .line 141
    iput-boolean v3, p0, Lcom/sleepycat/collections/DataView;->btreeRecNumAccess:Z

    goto :goto_9

    .line 135
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RecordNumberBinding requires DB_BTREE/DB_RECNUM, DB_RECNO, or DB_QUEUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_b
    :goto_9
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->recNumRenumber:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->btreeRecNumAccess:Z

    if-eqz v0, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    iput-boolean v2, p0, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    .line 145
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 90
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "database is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cloneView()Lcom/sleepycat/collections/DataView;
    .locals 2

    .line 153
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/DataView;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private makeRangeKey(Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 677
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 678
    .local v0, "thang":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    goto :goto_0

    .line 681
    :cond_0
    invoke-virtual {p0, v2, p1, v0, v2}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    .line 683
    :goto_0
    return-object v0
.end method

.method private returnPrimaryKeyAndValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "keyThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "valueThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "retPrimaryKey"    # [Ljava/lang/Object;
    .param p4, "retValue"    # [Ljava/lang/Object;

    .line 480
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 481
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p1}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "returning key requires unindexed view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "returning key requires primary key binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/collections/DataView;->makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    .line 494
    :cond_3
    return-void
.end method

.method private setRange(Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 7
    .param p1, "beginKey"    # Ljava/lang/Object;
    .param p2, "beginInclusive"    # Z
    .param p3, "endKey"    # Ljava/lang/Object;
    .param p4, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 282
    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->keyRangesAllowed:Z

    if-eqz v0, :cond_3

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->useSubRange()Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 287
    .local v0, "useRange":Lcom/sleepycat/util/keyrange/KeyRange;
    nop

    .line 288
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v1, :cond_2

    .line 290
    iput-object v0, p0, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    goto :goto_0

    .line 292
    :cond_2
    iput-object v0, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 294
    :goto_0
    return-void

    .line 283
    .end local v0    # "useRange":Lcom/sleepycat/util/keyrange/KeyRange;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Key ranges allowed only for BTREE databases"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "retPrimaryKey"    # [Ljava/lang/Object;
    .param p3, "retValue"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 357
    .local v0, "keyThang":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 358
    .local v1, "valueThang":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 360
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->keyAssigner:Lcom/sleepycat/collections/PrimaryKeyAssigner;

    if-eqz v2, :cond_1

    .line 361
    invoke-interface {v2, v0}, Lcom/sleepycat/collections/PrimaryKeyAssigner;->assignKey(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 362
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v2, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    .line 368
    .local v2, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/collections/DataCursor;->getCursor()Lcom/sleepycat/util/keyrange/RangeCursor;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/util/keyrange/RangeCursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    invoke-virtual {v2}, Lcom/sleepycat/collections/DataCursor;->close()V

    .line 372
    nop

    .line 373
    .end local v2    # "cursor":Lcom/sleepycat/collections/DataCursor;
    goto :goto_0

    .line 371
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v2    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/collections/DataCursor;->close()V

    throw v3

    .line 363
    .end local v2    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "assigned key out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    iget-object v3, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v2, v3}, Lcom/sleepycat/collections/CurrentTransaction;->isCDBCursorOpen(Lcom/sleepycat/je/Database;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 379
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->useTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/sleepycat/compat/DbCompat;->append(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 381
    .restart local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v2, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->useTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/sleepycat/je/Database;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 383
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "appended record number out of range"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_3
    :goto_0
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v2, :cond_4

    .line 388
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sleepycat/collections/DataView;->returnPrimaryKeyAndValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 391
    :cond_4
    return-object v3

    .line 376
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot open CDB write cursor when read cursor is open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final canDeriveKeyFromValue()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 410
    new-instance v0, Lcom/sleepycat/collections/DataCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    .line 412
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    .line 413
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    :cond_0
    :goto_0
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_2

    .line 414
    iget-boolean v3, p0, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    if-eqz v3, :cond_1

    .line 415
    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 417
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getNext(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v2, v3

    .line 419
    :goto_1
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->close()V

    .line 425
    nop

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->close()V

    throw v1
.end method

.method configuredView(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/DataView;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;

    .line 260
    invoke-direct {p0}, Lcom/sleepycat/collections/DataView;->cloneView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 261
    .local v0, "view":Lcom/sleepycat/collections/DataView;
    if-eqz p1, :cond_0

    .line 262
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat;->cloneCursorConfig(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/CursorConfig;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    :goto_0
    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->cursorConfig:Lcom/sleepycat/je/CursorConfig;

    .line 263
    return-object v0
.end method

.method duplicatesView(Ljava/lang/Object;Lcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;
    .locals 2
    .param p1, "secondaryKey"    # Ljava/lang/Object;
    .param p2, "primaryKeyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/sleepycat/collections/DataView;->cloneView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 248
    .local v0, "view":Lcom/sleepycat/collections/DataView;
    iget-object v1, v0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 249
    invoke-virtual {v1}, Lcom/sleepycat/util/keyrange/KeyRange;->getSingleKey()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->dupsKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    .line 251
    iput-object p2, v0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 252
    return-object v0

    .line 245
    .end local v0    # "view":Lcom/sleepycat/collections/DataView;
    :cond_0
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only allowed for maps on secondary databases"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurrentTxn()Lcom/sleepycat/collections/CurrentTransaction;
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->transactional:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getEnv()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    return-object v0
.end method

.method getSingleKeyThang()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->getSingleKey()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 330
    new-instance v0, Lcom/sleepycat/collections/DataCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    .line 332
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->close()V

    .line 332
    return v1

    .line 334
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->close()V

    throw v1
.end method

.method final isSecondary()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method join([Lcom/sleepycat/collections/DataCursor;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/collections/DataCursor;
    .locals 2
    .param p1, "indexCursors"    # [Lcom/sleepycat/collections/DataCursor;
    .param p2, "joinConfig"    # Lcom/sleepycat/je/JoinConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/sleepycat/collections/DataCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;[Lcom/sleepycat/collections/DataCursor;Lcom/sleepycat/je/JoinConfig;Z)V

    return-object v0
.end method

.method join([Lcom/sleepycat/collections/DataView;[Ljava/lang/Object;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/collections/DataCursor;
    .locals 7
    .param p1, "indexViews"    # [Lcom/sleepycat/collections/DataView;
    .param p2, "indexKeys"    # [Ljava/lang/Object;
    .param p3, "joinConfig"    # Lcom/sleepycat/je/JoinConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "joinCursor":Lcom/sleepycat/collections/DataCursor;
    array-length v1, p1

    new-array v1, v1, [Lcom/sleepycat/collections/DataCursor;

    .line 439
    .local v1, "indexCursors":[Lcom/sleepycat/collections/DataCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 440
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    aget-object v4, p1, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    aput-object v3, v1, v2

    .line 441
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, p3, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;[Lcom/sleepycat/collections/DataCursor;Lcom/sleepycat/je/JoinConfig;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 444
    nop

    .line 446
    nop

    .line 444
    return-object v0

    .line 446
    :catchall_0
    move-exception v2

    if-nez v0, :cond_2

    .line 448
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 449
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 450
    :try_start_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sleepycat/collections/DataCursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    goto :goto_2

    .line 451
    :catch_0
    move-exception v4

    .line 448
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    throw v2
.end method

.method keySetView()Lcom/sleepycat/collections/DataView;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/sleepycat/collections/DataView;->cloneView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 171
    .local v0, "view":Lcom/sleepycat/collections/DataView;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->valueBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 172
    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 173
    return-object v0

    .line 168
    .end local v0    # "view":Lcom/sleepycat/collections/DataView;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have keyBinding"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method makeKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p1, "keyThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "priKeyThang"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 586
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v0, :cond_2

    .line 589
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 590
    .local v0, "thang":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 591
    const/4 v1, 0x0

    return-object v1

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, v0}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 587
    .end local v0    # "thang":Lcom/sleepycat/je/DatabaseEntry;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p1, "primaryKeyThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "valueThang"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 604
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->valueBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0, p2}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 606
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_1

    .line 607
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 610
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Requires valueBinding or entityBinding"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;)Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 1
    .param p1, "useRange"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p2, "singleKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 622
    invoke-direct {p0, p2}, Lcom/sleepycat/collections/DataView;->makeRangeKey(Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    return-object v0
.end method

.method subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 3
    .param p1, "useRange"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p2, "beginKey"    # Ljava/lang/Object;
    .param p3, "beginInclusive"    # Z
    .param p4, "endKey"    # Ljava/lang/Object;
    .param p5, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 633
    if-ne p2, p4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    return-object v0

    .line 636
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->ordered:Z

    if-eqz v0, :cond_3

    .line 640
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 641
    invoke-direct {p0, p2}, Lcom/sleepycat/collections/DataView;->makeRangeKey(Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 642
    .local v1, "beginThang":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    if-eqz p4, :cond_2

    .line 643
    invoke-direct {p0, p4}, Lcom/sleepycat/collections/DataView;->makeRangeKey(Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    goto :goto_1

    :cond_2
    nop

    .line 645
    .local v0, "endThang":Lcom/sleepycat/je/DatabaseEntry;
    :goto_1
    invoke-virtual {p1, v1, p3, v0, p5}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v2

    return-object v2

    .line 637
    .end local v0    # "endThang":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "beginThang":Lcom/sleepycat/je/DatabaseEntry;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot use key ranges on an unsorted database"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;
    .locals 1
    .param p1, "beginKey"    # Ljava/lang/Object;
    .param p2, "beginInclusive"    # Z
    .param p3, "endKey"    # Ljava/lang/Object;
    .param p4, "endInclusive"    # Z
    .param p5, "keyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/sleepycat/collections/DataView;->cloneView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 228
    .local v0, "view":Lcom/sleepycat/collections/DataView;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sleepycat/collections/DataView;->setRange(Ljava/lang/Object;ZLjava/lang/Object;Z)V

    .line 229
    if-eqz p5, :cond_0

    iput-object p5, v0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 230
    :cond_0
    return-object v0
.end method

.method useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "keyThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "checkRange"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 503
    if-eqz p1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v0, :cond_0

    .line 508
    invoke-interface {v0, p1, p3}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-null key with null key binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    if-eqz p2, :cond_6

    .line 513
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_5

    .line 517
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 519
    .local v0, "primaryKeyThang":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntityBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 520
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 521
    .local v1, "valueThang":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v2, p2, v1}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 522
    iget-object v2, p0, Lcom/sleepycat/collections/DataView;->secKeyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    iget-object v3, p0, Lcom/sleepycat/collections/DataView;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-interface {v2, v3, v0, v1, p3}, Lcom/sleepycat/je/SecondaryKeyCreator;->createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    .line 524
    .end local v0    # "primaryKeyThang":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "valueThang":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v0, p2, p3}, Lcom/sleepycat/bind/EntityBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 528
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 529
    return v1

    .line 531
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4, p3}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 532
    return v1

    .line 534
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EntityBinding required to derive key from value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null key and null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method useSubRange()Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 657
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_1

    .line 658
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 661
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimaryDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 662
    .local v0, "config":Lcom/sleepycat/je/DatabaseConfig;
    new-instance v1, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 664
    .end local v0    # "config":Lcom/sleepycat/je/DatabaseConfig;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    return-object v0
.end method

.method useTransaction()Lcom/sleepycat/je/Transaction;
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataView;->transactional:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "valueThang"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "checkKeyThang"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 553
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->valueBinding:Lcom/sleepycat/bind/EntryBinding;

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_3

    .line 557
    if-eqz p1, :cond_2

    .line 561
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 562
    if-eqz p3, :cond_4

    .line 563
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 564
    .local v0, "thang":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v1, p1, v0}, Lcom/sleepycat/bind/EntityBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 565
    invoke-static {v0, p3}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    .end local v0    # "thang":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_0

    .line 566
    .restart local v0    # "thang":Lcom/sleepycat/je/DatabaseEntry;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot change primary key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    .end local v0    # "thang":Lcom/sleepycat/je/DatabaseEntry;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value with entity binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3
    if-nez p1, :cond_5

    .line 575
    sget-object v0, Lcom/sleepycat/util/keyrange/KeyRange;->ZERO_LENGTH_BYTE_ARRAY:[B

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 577
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setSize(I)V

    .line 579
    :cond_4
    :goto_0
    return-void

    .line 572
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-null value with null value/entity binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method valueSetView()Lcom/sleepycat/collections/DataView;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->valueBinding:Lcom/sleepycat/bind/EntryBinding;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have valueBinding or entityBinding"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/collections/DataView;->cloneView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 189
    .local v0, "view":Lcom/sleepycat/collections/DataView;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sleepycat/collections/DataView;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 190
    return-object v0
.end method

.method valueSetView(Ljava/lang/Object;)Lcom/sleepycat/collections/DataView;
    .locals 2
    .param p1, "singleKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 213
    .local v0, "singleKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->valueSetView()Lcom/sleepycat/collections/DataView;

    move-result-object v1

    .line 214
    .local v1, "view":Lcom/sleepycat/collections/DataView;
    iput-object v0, v1, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 215
    return-object v1
.end method
