.class public Lcom/sleepycat/je/JoinCursor;
.super Ljava/lang/Object;
.source "JoinCursor.java"

# interfaces
.implements Lcom/sleepycat/je/ForwardCursor;
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private config:Lcom/sleepycat/je/JoinConfig;

.field private cursorFetchedFirst:[Z

.field private cursorScratchEntries:[Lcom/sleepycat/je/DatabaseEntry;

.field private firstSecKey:Lcom/sleepycat/je/DatabaseEntry;

.field private priDb:Lcom/sleepycat/je/Database;

.field private scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private secCursors:[Lcom/sleepycat/je/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Database;[Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)V
    .locals 7
    .param p1, "primaryDb"    # Lcom/sleepycat/je/Database;
    .param p2, "cursors"    # [Lcom/sleepycat/je/Cursor;
    .param p3, "configParam"    # Lcom/sleepycat/je/JoinConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    .line 147
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sleepycat/je/JoinConfig;->clone()Lcom/sleepycat/je/JoinConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/JoinConfig;->DEFAULT:Lcom/sleepycat/je/JoinConfig;

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->config:Lcom/sleepycat/je/JoinConfig;

    .line 149
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 150
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->firstSecKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 151
    array-length v0, p2

    new-array v0, v0, [Lcom/sleepycat/je/DatabaseEntry;

    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->cursorScratchEntries:[Lcom/sleepycat/je/DatabaseEntry;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sleepycat/je/JoinCursor;->cursorScratchEntries:[Lcom/sleepycat/je/DatabaseEntry;

    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    aput-object v2, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_1
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    .line 156
    array-length v0, p2

    new-array v0, v0, [Lcom/sleepycat/je/Cursor;

    .line 157
    .local v0, "sortedCursors":[Lcom/sleepycat/je/Cursor;
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p0, Lcom/sleepycat/je/JoinCursor;->config:Lcom/sleepycat/je/JoinConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/JoinConfig;->getNoSort()Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    array-length v1, p2

    new-array v1, v1, [J

    .line 166
    .local v1, "counts":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 167
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->countEstimateInternal()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 168
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 168
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 170
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Lcom/sleepycat/je/JoinCursor$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/sleepycat/je/JoinCursor$1;-><init>(Lcom/sleepycat/je/JoinCursor;[Lcom/sleepycat/je/Cursor;[J)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 199
    .end local v1    # "counts":[J
    :cond_4
    :try_start_0
    array-length v1, p2

    new-array v1, v1, [Lcom/sleepycat/je/Cursor;

    iput-object v1, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 201
    iget-object v2, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 205
    .end local v1    # "i":I
    :cond_5
    goto :goto_4

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v1}, Lcom/sleepycat/je/JoinCursor;->close(Lcom/sleepycat/je/DatabaseException;)V

    .line 206
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_4
    return-void
.end method

.method private close(Lcom/sleepycat/je/DatabaseException;)V
    .locals 4
    .param p1, "firstException"    # Lcom/sleepycat/je/DatabaseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 243
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 245
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_1

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez p1, :cond_0

    .line 248
    move-object p1, v2

    .line 251
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aput-object v0, v2, v1

    .line 242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_2
    if-nez p1, :cond_3

    .line 257
    return-void

    .line 255
    :cond_3
    throw p1
.end method

.method private retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 21
    .param p1, "keyParam"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "dataParam"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    const/4 v15, 0x0

    aget-object v1, v1, v15

    .line 409
    invoke-virtual {v1, v13}, Lcom/sleepycat/je/Cursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v16

    .line 414
    .local v16, "readUncommitted":Z
    :goto_0
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aget-object v7, v1, v15

    .line 415
    .local v7, "secCursor":Lcom/sleepycat/je/Cursor;
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->cursorScratchEntries:[Lcom/sleepycat/je/DatabaseEntry;

    aget-object v12, v1, v15

    .line 417
    .local v12, "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    aget-boolean v1, v1, v15

    const/4 v8, 0x1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->firstSecKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v7, v1, v12, v13, v14}, Lcom/sleepycat/je/Cursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 421
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v16, :cond_0

    if-nez v1, :cond_0

    .line 423
    iget-object v2, v0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    aput-boolean v8, v2, v15

    .line 424
    goto :goto_0

    .line 426
    :cond_0
    iget-object v2, v0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    aput-boolean v8, v2, v15

    goto :goto_1

    .line 429
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_1
    iget-object v2, v0, Lcom/sleepycat/je/JoinCursor;->firstSecKey:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    move-object v1, v7

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 433
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_1
    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 435
    return-object v9

    .line 439
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v17, v1

    move v10, v2

    move-object/from16 v18, v7

    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v7    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v10, "i":I
    .local v17, "result":Lcom/sleepycat/je/OperationResult;
    .local v18, "secCursor":Lcom/sleepycat/je/Cursor;
    :goto_2
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    array-length v2, v1

    if-ge v10, v2, :cond_7

    .line 440
    aget-object v11, v1, v10

    .line 441
    .end local v18    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v11, "secCursor":Lcom/sleepycat/je/Cursor;
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->cursorScratchEntries:[Lcom/sleepycat/je/DatabaseEntry;

    aget-object v7, v1, v10

    .line 442
    .local v7, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    aget-boolean v1, v1, v10

    if-nez v1, :cond_5

    .line 443
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v11, v7, v1, v13, v14}, Lcom/sleepycat/je/Cursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v17

    .line 445
    if-eqz v16, :cond_4

    if-nez v17, :cond_4

    .line 448
    iget-object v3, v0, Lcom/sleepycat/je/JoinCursor;->scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 451
    .end local v17    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_3

    .line 453
    return-object v9

    .line 451
    :cond_3
    move-object/from16 v17, v1

    .line 456
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v17    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_4
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->cursorFetchedFirst:[Z

    aput-boolean v8, v1, v10

    .line 458
    :cond_5
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v7}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    .line 459
    invoke-virtual {v7}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    .line 458
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 460
    iget-object v2, v0, Lcom/sleepycat/je/JoinCursor;->scratchEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    const/16 v18, 0x1

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v19, v7

    .end local v7    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v17

    .line 463
    if-nez v17, :cond_6

    .line 465
    goto/16 :goto_0

    .line 439
    .end local v19    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v11

    goto :goto_2

    .line 470
    .end local v10    # "i":I
    .end local v11    # "secCursor":Lcom/sleepycat/je/Cursor;
    .restart local v18    # "secCursor":Lcom/sleepycat/je/Cursor;
    :cond_7
    if-eqz p2, :cond_9

    .line 471
    aget-object v1, v1, v15

    iget-object v2, v0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    iget-object v3, v0, Lcom/sleepycat/je/JoinCursor;->firstSecKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 475
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v10

    iget-object v4, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aget-object v4, v4, v15

    .line 476
    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v11

    const/16 v19, 0x0

    .line 471
    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, v16

    move-object/from16 v20, v12

    .end local v12    # "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v20, "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Lcom/sleepycat/je/Cursor;->readPrimaryAfterGet(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 478
    goto/16 :goto_0

    .line 485
    :cond_8
    iget-object v1, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aget-object v1, v1, v15

    iget-object v1, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 486
    .local v1, "firstSecCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 487
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setPriInfo(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 470
    .end local v1    # "firstSecCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v2    # "i":I
    .end local v20    # "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_9
    move-object/from16 v20, v12

    .line 490
    .end local v12    # "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "candidateKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    .line 491
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    .line 490
    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2, v3}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 492
    return-object v17
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/JoinCursor;->close(Lcom/sleepycat/je/DatabaseException;)V

    .line 231
    return-void
.end method

.method public get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 5
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 298
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    if-ne p3, v0, :cond_2

    .line 303
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 304
    invoke-virtual {p4}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 306
    .local v1, "lockMode":Lcom/sleepycat/je/LockMode;
    :goto_0
    if-eqz p4, :cond_1

    .line 307
    invoke-virtual {p4}, Lcom/sleepycat/je/ReadOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    .line 310
    .local v0, "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->checkEnv()V

    .line 311
    iget-object v2, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    aget-object v2, v2, v3

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p3}, Lcom/sleepycat/je/Get;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 313
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/je/JoinCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "E":Ljava/lang/Error;
    iget-object v3, p0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 317
    throw v2

    .line 299
    .end local v0    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local v1    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v2    # "E":Ljava/lang/Error;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    throw v0
.end method

.method public getConfig()Lcom/sleepycat/je/JoinConfig;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sleepycat/je/JoinCursor;->config:Lcom/sleepycat/je/JoinConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/JoinConfig;->clone()Lcom/sleepycat/je/JoinConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/JoinCursor;->priDb:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 378
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 379
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 378
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/JoinCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 381
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method getSortedCursors()[Lcom/sleepycat/je/Cursor;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sleepycat/je/JoinCursor;->secCursors:[Lcom/sleepycat/je/Cursor;

    return-object v0
.end method
