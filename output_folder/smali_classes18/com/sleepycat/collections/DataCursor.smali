.class final Lcom/sleepycat/collections/DataCursor;
.super Ljava/lang/Object;
.source "DataCursor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final REPOS_EOF:I = 0x2

.field static final REPOS_EXACT:I = 0x0

.field static final REPOS_NEXT:I = 0x1


# instance fields
.field private cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

.field private indexCursorsToClose:[Lcom/sleepycat/collections/DataCursor;

.field private joinCursor:Lcom/sleepycat/je/JoinCursor;

.field private keyThang:Lcom/sleepycat/je/DatabaseEntry;

.field private otherThang:Lcom/sleepycat/je/DatabaseEntry;

.field private primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

.field private range:Lcom/sleepycat/util/keyrange/KeyRange;

.field private readUncommitted:Z

.field private valueThang:Lcom/sleepycat/je/DatabaseEntry;

.field private view:Lcom/sleepycat/collections/DataView;

.field private writeAllowed:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/collections/DataCursor;->init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;)V
    .locals 1
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "writeAllowed"    # Z
    .param p3, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/collections/DataCursor;->init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/collections/DataView;ZLjava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "writeAllowed"    # Z
    .param p3, "singleKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {p1, v0, p3}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/collections/DataCursor;->init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/collections/DataView;ZLjava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 6
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "writeAllowed"    # Z
    .param p3, "beginKey"    # Ljava/lang/Object;
    .param p4, "beginInclusive"    # Z
    .param p5, "endKey"    # Ljava/lang/Object;
    .param p6, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v1, p1, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 99
    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/collections/DataView;->subRange(Lcom/sleepycat/util/keyrange/KeyRange;Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/collections/DataCursor;->init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/collections/DataView;[Lcom/sleepycat/collections/DataCursor;Lcom/sleepycat/je/JoinConfig;Z)V
    .locals 3
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "indexCursors"    # [Lcom/sleepycat/collections/DataCursor;
    .param p3, "joinConfig"    # Lcom/sleepycat/je/JoinConfig;
    .param p4, "closeIndexCursors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    array-length v0, p2

    new-array v0, v0, [Lcom/sleepycat/je/Cursor;

    .line 115
    .local v0, "cursors":[Lcom/sleepycat/je/Cursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, p2, v1

    iget-object v2, v2, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v1, v0, p3}, Lcom/sleepycat/je/Database;->join([Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/je/JoinCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/sleepycat/collections/DataCursor;->init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V

    .line 120
    if-eqz p4, :cond_1

    .line 121
    iput-object p2, p0, Lcom/sleepycat/collections/DataCursor;->indexCursorsToClose:[Lcom/sleepycat/collections/DataCursor;

    .line 123
    :cond_1
    return-void

    .line 110
    .end local v0    # "cursors":[Lcom/sleepycat/je/Cursor;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The primary collection in a join must not be a secondary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNoJoinCursor()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    if-nez v0, :cond_0

    .line 915
    return-void

    .line 912
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed with a join cursor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkWriteAllowed(Z)V
    .locals 2
    .param p1, "allowSecondary"    # Z

    .line 923
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 925
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataCursor;->writeAllowed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    :cond_0
    return-void

    .line 926
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doGetSearchKey(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 617
    .local v0, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->btreeRecNumAccess:Z

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchRecordNumber(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 618
    return-object v1

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 621
    return-object v1
.end method

.method private init(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;Lcom/sleepycat/util/keyrange/KeyRange;)V
    .locals 3
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "writeAllowed"    # Z
    .param p3, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p4, "range"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 167
    if-nez p3, :cond_0

    .line 168
    iget-object p3, p1, Lcom/sleepycat/collections/DataView;->cursorConfig:Lcom/sleepycat/je/CursorConfig;

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    .line 171
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-boolean v2, p1, Lcom/sleepycat/collections/DataView;->writeAllowed:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/sleepycat/collections/DataCursor;->writeAllowed:Z

    .line 172
    if-eqz p4, :cond_2

    move-object v2, p4

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    :goto_1
    iput-object v2, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 173
    invoke-virtual {p3}, Lcom/sleepycat/je/CursorConfig;->getReadUncommitted()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    .line 174
    invoke-virtual {v2}, Lcom/sleepycat/collections/CurrentTransaction;->isReadUncommitted()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    iput-boolean v0, p0, Lcom/sleepycat/collections/DataCursor;->readUncommitted:Z

    .line 175
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->initThangs()V

    .line 177
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    if-nez v0, :cond_5

    .line 178
    new-instance v0, Lcom/sleepycat/collections/MyRangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v2, p0, Lcom/sleepycat/collections/DataCursor;->writeAllowed:Z

    invoke-direct {v0, v1, p3, p1, v2}, Lcom/sleepycat/collections/MyRangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/je/CursorConfig;Lcom/sleepycat/collections/DataView;Z)V

    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 181
    :cond_5
    return-void
.end method

.method private initForPut(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "oldValue"    # [Ljava/lang/Object;
    .param p4, "useCurrentKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 853
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/DataCursor;->checkWriteAllowed(Z)V

    .line 854
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 858
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 859
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-nez v1, :cond_2

    .line 860
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/collections/DataCursor;->doGetSearchKey(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 861
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_2

    .line 862
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p3, v0

    .line 866
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, p2, v1, v2}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 867
    return-void
.end method

.method private initThangs()V
    .locals 1

    .line 187
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 188
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 190
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 191
    return-void
.end method

.method private setThangs([B[B[B)V
    .locals 2
    .param p1, "keyBytes"    # [B
    .param p2, "priKeyBytes"    # [B
    .param p3, "valueBytes"    # [B

    .line 200
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p1}, Lcom/sleepycat/util/keyrange/KeyRange;->copyBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 202
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    if-eq v0, v1, :cond_0

    .line 203
    invoke-static {p2}, Lcom/sleepycat/util/keyrange/KeyRange;->copyBytes([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p3}, Lcom/sleepycat/util/keyrange/KeyRange;->copyBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 207
    return-void
.end method


# virtual methods
.method cloneCursor()Lcom/sleepycat/collections/DataCursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/DataCursor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v0, "o":Lcom/sleepycat/collections/DataCursor;
    nop

    .line 140
    invoke-direct {v0}, Lcom/sleepycat/collections/DataCursor;->initThangs()V

    .line 141
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, v0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 142
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, v0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 143
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    if-eq v1, v2, :cond_0

    .line 144
    iget-object v2, v0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->dup(Z)Lcom/sleepycat/util/keyrange/RangeCursor;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 148
    return-object v0

    .line 136
    .end local v0    # "o":Lcom/sleepycat/collections/DataCursor;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "neverHappens":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    .line 217
    .local v0, "toClose":Lcom/sleepycat/je/JoinCursor;
    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    .line 218
    invoke-virtual {v0}, Lcom/sleepycat/je/JoinCursor;->close()V

    .line 220
    .end local v0    # "toClose":Lcom/sleepycat/je/JoinCursor;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 222
    .local v0, "toClose":Lcom/sleepycat/je/Cursor;
    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 223
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, v2, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/CurrentTransaction;->closeCursor(Lcom/sleepycat/je/Cursor;)V

    .line 225
    .end local v0    # "toClose":Lcom/sleepycat/je/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->indexCursorsToClose:[Lcom/sleepycat/collections/DataCursor;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->indexCursorsToClose:[Lcom/sleepycat/collections/DataCursor;

    .line 227
    .local v0, "toClose":[Lcom/sleepycat/collections/DataCursor;
    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->indexCursorsToClose:[Lcom/sleepycat/collections/DataCursor;

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 229
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sleepycat/collections/DataCursor;->close()V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "toClose":[Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 732
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 733
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->count()I

    move-result v0

    return v0
.end method

.method delete()Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 886
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/DataCursor;->checkWriteAllowed(Z)V

    .line 887
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method findBoth(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 657
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 658
    invoke-virtual {p0, p3}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 659
    .local v0, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 660
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, v1, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 662
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, v1, Lcom/sleepycat/collections/DataView;->dupsKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 663
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v1, :cond_0

    .line 664
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 668
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 669
    invoke-static {v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    return-object v1

    .line 672
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    goto :goto_1

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 674
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 675
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v1, :cond_3

    .line 676
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 679
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 680
    .restart local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_5

    .line 681
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 682
    return-object v1

    .line 684
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    goto :goto_0

    .line 689
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_5
    goto :goto_1

    .line 690
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 690
    return-object v1

    .line 694
    :cond_7
    :goto_1
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    return-object v1
.end method

.method findValue(Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "findFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 704
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 706
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-nez v0, :cond_1

    .line 708
    :cond_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/sleepycat/collections/DataCursor;->findBoth(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_2

    .line 711
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, p1, v3, v1}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 714
    if-eqz p2, :cond_3

    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/DataCursor;->getLast(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    :goto_0
    nop

    .line 716
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    :goto_1
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v1, :cond_6

    .line 717
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    goto :goto_3

    .line 720
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/DataCursor;->getNext(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/DataCursor;->getPrev(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    :goto_2
    move-object v0, v1

    goto :goto_1

    .line 722
    :cond_6
    :goto_3
    return-object v0
.end method

.method getCurrent(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 456
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 458
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 456
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 456
    return-object v0
.end method

.method getCurrentKey()Ljava/lang/Object;
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/collections/DataView;->makeKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getCurrentRecordNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->btreeRecNumDb:Z

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v2

    .line 440
    invoke-static {v0, v1, v2}, Lcom/sleepycat/compat/DbCompat;->getCurrentRecordNumber(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    .line 442
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    return v0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    return v0
.end method

.method getCurrentValue()Ljava/lang/Object;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/collections/DataView;->makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getCursor()Lcom/sleepycat/util/keyrange/RangeCursor;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    return-object v0
.end method

.method getFirst(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 468
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    if-eqz v1, :cond_0

    .line 469
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    return-object v1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 473
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v5

    .line 471
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 471
    return-object v1
.end method

.method getKeyThang()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    return-object v0
.end method

.method getLast(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 535
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 537
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 535
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 535
    return-object v0
.end method

.method getLockMode(Z)Lcom/sleepycat/je/LockMode;
    .locals 1
    .param p1, "lockForWrite"    # Z

    .line 897
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataCursor;->readUncommitted:Z

    if-eqz v0, :cond_0

    .line 898
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    return-object v0

    .line 899
    :cond_0
    if-eqz p1, :cond_1

    .line 900
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->getWriteLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v0

    return-object v0

    .line 902
    :cond_1
    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    return-object v0
.end method

.method getNext(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 484
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    if-eqz v1, :cond_0

    .line 485
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    return-object v1

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 489
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v5

    .line 487
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 487
    return-object v1
.end method

.method getNextDup(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 519
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 524
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 522
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 522
    return-object v0
.end method

.method getNextNoDup(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 500
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v1

    .line 501
    .local v1, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    if-eqz v2, :cond_0

    .line 502
    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v4, v0}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    return-object v2

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v2, v2, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 505
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 504
    return-object v2

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 508
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 507
    return-object v2
.end method

.method getPrev(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 546
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 547
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 549
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 547
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 547
    return-object v0
.end method

.method getPrevDup(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 576
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 581
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 579
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 579
    return-object v0
.end method

.method getPrevNoDup(Z)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 559
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 560
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v1

    .line 561
    .local v1, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v2, v2, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v2, :cond_0

    .line 562
    const/4 v2, 0x0

    return-object v2

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 564
    return-object v2
.end method

.method getPrimaryKeyThang()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    return-object v0
.end method

.method getRange()Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    return-object v0
.end method

.method getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 593
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 594
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, v0, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->dupsKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 597
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 599
    invoke-virtual {p0, p3}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 597
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 597
    return-object v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-direct {p0, p3}, Lcom/sleepycat/collections/DataCursor;->doGetSearchKey(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 606
    :cond_1
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    return-object v0
.end method

.method getSearchKeyRange(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lcom/sleepycat/collections/DataCursor;->checkNoJoinCursor()V

    .line 634
    invoke-virtual {p0, p3}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 635
    .local v0, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->dupsView:Z

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, v1, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, v1, Lcom/sleepycat/collections/DataView;->dupsKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 638
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 639
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 638
    return-object v1

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataView;->useKey(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/util/keyrange/KeyRange;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 643
    return-object v1

    .line 647
    :cond_1
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    return-object v1
.end method

.method getValueThang()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    return-object v0
.end method

.method getView()Lcom/sleepycat/collections/DataView;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    return-object v0
.end method

.method hasRecNumAccess()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    return v0
.end method

.method isWriteAllowed()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/sleepycat/collections/DataCursor;->writeAllowed:Z

    return v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "oldValue"    # [Ljava/lang/Object;
    .param p4, "useCurrentKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 801
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/collections/DataCursor;->initForPut(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)V

    .line 802
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method putAfter(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 777
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/DataCursor;->checkWriteAllowed(Z)V

    .line 778
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 779
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putAfter(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/DataCursor;->checkWriteAllowed(Z)V

    .line 789
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 790
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putBefore(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method putCurrent(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/DataCursor;->checkWriteAllowed(Z)V

    .line 747
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sleepycat/collections/DataView;->useValue(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 753
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->dupsOrdered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->ordered:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 754
    .local v0, "hashWorkaround":Z
    :cond_0
    if-eqz v0, :cond_3

    .line 755
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v1, :cond_1

    .line 756
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 760
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->otherThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    return-object v1

    .line 763
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Current data differs from put data with sorted duplicates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    return-object v1
.end method

.method putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "oldValue"    # [Ljava/lang/Object;
    .param p4, "useCurrentKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 825
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/collections/DataCursor;->initForPut(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)V

    .line 826
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsOrdered:Z

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v4, 0x0

    .line 833
    invoke-virtual {p0, v4}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 831
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->status()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 834
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v1, :cond_1

    .line 835
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    return-object v1

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/RangeCursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    return-object v1

    .line 841
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method putNoOverwrite(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "useCurrentKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/collections/DataCursor;->initForPut(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)V

    .line 814
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method repositionExact([B[B[BZ)Z
    .locals 5
    .param p1, "keyBytes"    # [B
    .param p2, "priKeyBytes"    # [B
    .param p3, "valueBytes"    # [B
    .param p4, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p4}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 345
    .local v0, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/collections/DataCursor;->setThangs([B[B[B)V

    .line 348
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->recNumRenumber:Z

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .local v1, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    goto :goto_0

    .line 353
    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 357
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    return v2
.end method

.method repositionRange([B[B[BZ)I
    .locals 11
    .param p1, "lastKeyBytes"    # [B
    .param p2, "lastPriKeyBytes"    # [B
    .param p3, "lastValueBytes"    # [B
    .param p4, "lockForWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p4}, Lcom/sleepycat/collections/DataCursor;->getLockMode(Z)Lcom/sleepycat/je/LockMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 250
    .local v0, "options":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/collections/DataCursor;->setThangs([B[B[B)V

    .line 254
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v6, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 262
    .local v1, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    return v3

    .line 266
    :cond_0
    const/4 v6, 0x0

    array-length v7, p1

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 268
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v9

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v10

    .line 266
    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes([BII[BII)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 278
    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v6, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 281
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    .line 284
    invoke-virtual {v3}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 286
    .local v3, "thang":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->view:Lcom/sleepycat/collections/DataView;

    .line 287
    invoke-virtual {v4}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    goto :goto_1

    :cond_3
    move-object v4, p3

    .line 289
    .local v4, "bytes":[B
    :goto_1
    const/4 v6, 0x0

    array-length v7, v4

    .line 291
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v9

    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v10

    .line 289
    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes([BII[BII)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 302
    .end local v3    # "thang":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "bytes":[B
    :cond_4
    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v6, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v7, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_5

    .line 306
    return v3

    .line 313
    :cond_5
    const/4 v6, 0x0

    array-length v7, p1

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    .line 314
    invoke-virtual {v4}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v4}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v9

    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v4}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v10

    .line 313
    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes([BII[BII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 316
    iget-object v4, p0, Lcom/sleepycat/collections/DataCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v5, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v6, p0, Lcom/sleepycat/collections/DataCursor;->primaryKeyThang:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v7, p0, Lcom/sleepycat/collections/DataCursor;->valueThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_6

    .line 320
    return v3

    .line 324
    :cond_6
    return v2
.end method

.method useRangeKey()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/sleepycat/collections/DataCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->getSingleKey()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/collections/DataCursor;->keyThang:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 878
    return-void

    .line 875
    :cond_0
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
