.class public Lcom/sleepycat/je/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/je/ForwardCursor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;

.field static final DEFAULT_WRITE_OPTIONS:Lcom/sleepycat/je/WriteOptions;

.field private static final EMPTY_DUP_DATA:Lcom/sleepycat/je/DatabaseEntry;

.field static final NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;


# instance fields
.field config:Lcom/sleepycat/je/CursorConfig;

.field cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

.field private dbHandle:Lcom/sleepycat/je/Database;

.field private dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private defaultCacheMode:Lcom/sleepycat/je/CacheMode;

.field private includeInOpStats:Z

.field private logger:Ljava/util/logging/Logger;

.field private nonSticky:Z

.field private rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

.field private readUncommittedDefault:Z

.field private serializableIsolationDefault:Z

.field private transaction:Lcom/sleepycat/je/Transaction;

.field private updateOperationsProhibited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    nop

    .line 146
    new-instance v0, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sput-object v0, Lcom/sleepycat/je/Cursor;->DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;

    .line 147
    new-instance v0, Lcom/sleepycat/je/WriteOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/WriteOptions;-><init>()V

    sput-object v0, Lcom/sleepycat/je/Cursor;->DEFAULT_WRITE_OPTIONS:Lcom/sleepycat/je/WriteOptions;

    .line 149
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    sput-object v0, Lcom/sleepycat/je/Cursor;->EMPTY_DUP_DATA:Lcom/sleepycat/je/DatabaseEntry;

    .line 152
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    sput-object v0, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 156
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Cursor;Z)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "samePosition"    # Z

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 363
    iget-boolean v0, p1, Lcom/sleepycat/je/Cursor;->readUncommittedDefault:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->readUncommittedDefault:Z

    .line 364
    iget-boolean v0, p1, Lcom/sleepycat/je/Cursor;->serializableIsolationDefault:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->serializableIsolationDefault:Z

    .line 365
    iget-boolean v0, p1, Lcom/sleepycat/je/Cursor;->updateOperationsProhibited:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->updateOperationsProhibited:Z

    .line 367
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 368
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 369
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Database;->addCursor(Lcom/sleepycat/je/ForwardCursor;)V

    .line 373
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->config:Lcom/sleepycat/je/CursorConfig;

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->config:Lcom/sleepycat/je/CursorConfig;

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    .line 375
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    .line 376
    iget-boolean v0, p1, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 377
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)V
    .locals 8
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 214
    if-nez p3, :cond_0

    .line 215
    sget-object p3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    .line 222
    .local v6, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 223
    invoke-virtual {p3}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v0

    .line 222
    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v7

    .line 225
    .local v7, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->init(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    .line 227
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    .locals 7
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 238
    if-nez p3, :cond_0

    .line 239
    sget-object p3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    .line 245
    .local v6, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 246
    invoke-virtual {p3}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v0

    .line 245
    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object p2

    .line 248
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->init(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    .line 250
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V
    .locals 7
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p4, "retainNonTxnLocks"    # Z

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 265
    if-nez p3, :cond_0

    .line 266
    sget-object p3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    .line 272
    .local v6, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->init(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    .line 273
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V
    .locals 6
    .param p1, "databaseImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p4, "retainNonTxnLocks"    # Z

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 289
    if-nez p3, :cond_0

    .line 290
    sget-object p3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 298
    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->init(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/Cursor;

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method private beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;
    .locals 1
    .param p1, "samePosition"    # Z
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 5259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    return-object v0
.end method

.method private beginMoveCursor(ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;
    .locals 2
    .param p1, "samePosition"    # Z
    .param p2, "forceClone"    # Z
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 5232
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 5238
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5239
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 5240
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    return-object v0

    .line 5243
    :cond_3
    iget-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 5244
    if-eqz p1, :cond_4

    .line 5245
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->beforeNonStickyOp()V

    goto :goto_2

    .line 5247
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->reset()V

    .line 5249
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    return-object v0

    .line 5252
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    .line 5253
    .local v0, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setClosingLocker(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 5254
    return-object v0
.end method

.method private beginUseExistingCursor(Lcom/sleepycat/je/CacheMode;)V
    .locals 2
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 5318
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 5320
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 5321
    return-void
.end method

.method private checkDataMatch(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 9
    .param p1, "data1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 4653
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v6

    .line 4654
    .local v6, "size1":I
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v7

    .line 4655
    .local v7, "size2":I
    const/4 v8, 0x0

    if-eq v6, v7, :cond_0

    .line 4656
    return v8

    .line 4658
    :cond_0
    nop

    .line 4659
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    .line 4660
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v4

    .line 4658
    move v2, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method private checkRangeConstraint(Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 513
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 516
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/dbi/RangeConstraint;->inBounds([B)Z

    move-result v0

    return v0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private checkTxnState()V
    .locals 2

    .line 5499
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->transaction:Lcom/sleepycat/je/Transaction;

    if-nez v0, :cond_0

    .line 5500
    return-void

    .line 5502
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 5503
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->transaction:Lcom/sleepycat/je/Transaction;

    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Txn;->checkState(Z)V

    .line 5504
    return-void
.end method

.method private checkUpdatesAllowed()V
    .locals 3

    .line 5396
    iget-boolean v0, p0, Lcom/sleepycat/je/Cursor;->updateOperationsProhibited:Z

    if-nez v0, :cond_2

    .line 5400
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5402
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5403
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    .line 5405
    .local v0, "diskLimitViolation":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0

    .line 5406
    :cond_0
    new-instance v1, Lcom/sleepycat/je/DiskLimitException;

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 5407
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/DiskLimitException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    throw v1

    .line 5410
    .end local v0    # "diskLimitViolation":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 5397
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/Cursor;->updatesProhibitedException(Lcom/sleepycat/je/txn/Locker;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method private checkUpdatesAllowed(Lcom/sleepycat/je/dbi/ExpirationInfo;)V
    .locals 1
    .param p1, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 5384
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkUpdatesAllowed()V

    .line 5386
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    if-lez v0, :cond_0

    .line 5390
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkTTLAvailable()V

    .line 5392
    :cond_0
    return-void
.end method

.method private static cloneEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;
    .locals 1
    .param p0, "from"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 5600
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 5601
    .local v0, "to":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p0, v0}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 5602
    return-object v0
.end method

.method private countEstimateHandleDups()J
    .locals 17

    .line 4746
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v2

    .line 4747
    .local v2, "currentKey":[B
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DupKeyData;->removeData([B)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v10

    .line 4749
    .local v10, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v11

    .line 4750
    .local v11, "c1":Lcom/sleepycat/je/Cursor;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v11, v0}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 4751
    invoke-direct {v1, v11, v2}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V

    .line 4754
    sget-object v12, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    sget-object v8, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v9, 0x0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 4759
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    const-wide/16 v13, 0x0

    if-nez v3, :cond_1

    .line 4760
    nop

    .line 4808
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4760
    :cond_0
    return-wide v13

    .line 4764
    :cond_1
    :try_start_1
    invoke-virtual {v11, v0}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v9, v4

    .line 4765
    .local v9, "c2":Lcom/sleepycat/je/Cursor;
    :try_start_2
    invoke-virtual {v9, v0}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 4767
    sget-object v4, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    sget-object v5, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-direct {v9, v10, v12, v4, v5}, Lcom/sleepycat/je/Cursor;->dupsGetNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v4

    .line 4772
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .local v15, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v15, :cond_2

    .line 4773
    const/4 v3, 0x0

    .local v3, "c2Inclusive":Z
    goto :goto_0

    .line 4775
    .end local v3    # "c2Inclusive":Z
    :cond_2
    const/16 v16, 0x1

    .line 4783
    .local v16, "c2Inclusive":Z
    :try_start_3
    sget-object v6, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/Cursor;->positionNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4787
    .end local v15    # "result":Lcom/sleepycat/je/OperationResult;
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v3, :cond_5

    .line 4788
    nop

    .line 4807
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 4808
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4788
    :cond_4
    return-wide v13

    .line 4787
    :cond_5
    move-object v12, v3

    .line 4791
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .local v12, "result":Lcom/sleepycat/je/OperationResult;
    :cond_6
    :try_start_5
    invoke-direct {v1, v10, v2}, Lcom/sleepycat/je/Cursor;->haveSameDupPrefix(Lcom/sleepycat/je/DatabaseEntry;[B)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4792
    sget-object v5, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    sget-object v8, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v12, v3

    .line 4797
    if-nez v12, :cond_6

    .line 4798
    nop

    .line 4807
    if-eqz v9, :cond_7

    :try_start_6
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 4808
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4798
    :cond_8
    return-wide v13

    .line 4791
    :cond_9
    move-object v15, v12

    move/from16 v3, v16

    .line 4804
    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v16    # "c2Inclusive":Z
    .local v3, "c2Inclusive":Z
    .restart local v15    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    :try_start_7
    iget-object v4, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v5, v11, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v6, v9, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-static {v4, v5, v0, v6, v3}, Lcom/sleepycat/je/tree/CountEstimator;->count(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;ZLcom/sleepycat/je/dbi/CursorImpl;Z)J

    move-result-wide v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4807
    if-eqz v9, :cond_a

    :try_start_8
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 4808
    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4804
    :cond_b
    return-wide v4

    .line 4764
    .end local v3    # "c2Inclusive":Z
    .end local v15    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v12    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v3, v12

    goto :goto_1

    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v15    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v3, v15

    goto :goto_1

    .end local v15    # "result":Lcom/sleepycat/je/OperationResult;
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    :catchall_2
    move-exception v0

    move-object v4, v0

    .end local v2    # "currentKey":[B
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v9    # "c2":Lcom/sleepycat/je/Cursor;
    .end local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :goto_1
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4807
    .restart local v2    # "currentKey":[B
    .restart local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v9    # "c2":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :catchall_3
    move-exception v0

    move-object v5, v0

    if-eqz v9, :cond_c

    :try_start_a
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "currentKey":[B
    .end local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :cond_c
    :goto_2
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 4749
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v9    # "c2":Lcom/sleepycat/je/Cursor;
    .restart local v2    # "currentKey":[B
    .restart local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :catchall_5
    move-exception v0

    move-object v3, v0

    .end local v2    # "currentKey":[B
    .end local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 4808
    .restart local v2    # "currentKey":[B
    .restart local v10    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "c1":Lcom/sleepycat/je/Cursor;
    :catchall_6
    move-exception v0

    move-object v4, v0

    if-eqz v11, :cond_d

    :try_start_d
    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    throw v4
.end method

.method private countHandleDups()I
    .locals 12

    .line 4681
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v0

    .line 4682
    .local v0, "currentKey":[B
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DupKeyData;->removeData([B)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v8

    .line 4684
    .local v8, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v10

    .line 4685
    .local v10, "c":Lcom/sleepycat/je/Cursor;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v10, v11}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 4686
    invoke-direct {p0, v10, v0}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V

    .line 4689
    sget-object v3, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    sget-object v5, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    sget-object v6, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4693
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_1

    .line 4694
    nop

    .line 4708
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4694
    :cond_0
    return v9

    .line 4698
    :cond_1
    const-wide/16 v2, 0x1

    :try_start_1
    iget-object v4, v10, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    const-wide/16 v5, 0x0

    iget-object v7, v10, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    invoke-virtual {v4, v11, v5, v6, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->skip(ZJLcom/sleepycat/je/dbi/RangeConstraint;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v4, v2

    .line 4701
    .local v4, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v4, v2

    if-gtz v2, :cond_3

    .line 4706
    long-to-int v2, v4

    .line 4708
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/sleepycat/je/Cursor;->close()V

    .line 4706
    :cond_2
    return v2

    .line 4702
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count exceeded integer size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentKey":[B
    .end local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "c":Lcom/sleepycat/je/Cursor;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4684
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "count":J
    .restart local v0    # "currentKey":[B
    .restart local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "c":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    .end local v0    # "currentKey":[B
    .end local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "c":Lcom/sleepycat/je/Cursor;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4708
    .restart local v0    # "currentKey":[B
    .restart local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "c":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2
.end method

.method private countNoDups()I
    .locals 3

    .line 4717
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/Cursor;->beginUseExistingCursor(Lcom/sleepycat/je/CacheMode;)V

    .line 4719
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 4722
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->endUseExistingCursor()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 4724
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4725
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :catch_0
    move-exception v0

    .line 4726
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 4727
    throw v0
.end method

.method private deleteNotify(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 32
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2235
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move/from16 v16, v0

    .line 2236
    .local v16, "hasUserTriggers":Z
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_1

    .line 2237
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->hasSecondaryOrForeignKeyAssociations()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move/from16 v17, v0

    .line 2239
    .local v17, "hasAssociations":Z
    if-eqz v17, :cond_2

    .line 2241
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    .line 2242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2245
    goto :goto_2

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v3, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v2

    .line 2250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    if-nez v17, :cond_4

    if-eqz v16, :cond_3

    goto :goto_3

    .line 2254
    :cond_3
    const/4 v0, 0x0

    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_4

    .line 2251
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    :goto_3
    :try_start_1
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2252
    .restart local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v4, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 2264
    :goto_4
    if-eqz v17, :cond_7

    .line 2265
    iget-object v4, v1, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    iget-object v4, v4, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    invoke-interface {v4, v0}, Lcom/sleepycat/je/SecondaryAssociation;->getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;

    move-result-object v4

    .line 2266
    .local v4, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    iget-object v5, v1, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    iget-object v5, v5, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    .line 2267
    .local v5, "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    if-nez v16, :cond_6

    .line 2268
    invoke-static {v4}, Lcom/sleepycat/je/SecondaryDatabase;->needOldDataForDelete(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    :goto_5
    nop

    :goto_6
    move/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .local v2, "needOldData":Z
    goto :goto_7

    .line 2270
    .end local v2    # "needOldData":Z
    .end local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v5    # "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :cond_7
    const/4 v4, 0x0

    .line 2271
    .restart local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    const/4 v5, 0x0

    .line 2272
    .restart local v5    # "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    move/from16 v2, v16

    move/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 2280
    .end local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v5    # "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .local v18, "needOldData":Z
    .local v19, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .local v20, "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :goto_7
    const/4 v2, 0x0

    if-eqz v18, :cond_8

    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    goto :goto_8

    :cond_8
    move-object v3, v2

    :goto_8
    move-object v15, v3

    .line 2285
    .local v15, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    if-nez v18, :cond_a

    if-eqz v17, :cond_9

    goto :goto_9

    .line 2293
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v21, v3

    .local v3, "readResult":Lcom/sleepycat/je/OperationResult;
    goto :goto_a

    .line 2286
    .end local v3    # "readResult":Lcom/sleepycat/je/OperationResult;
    :cond_a
    :goto_9
    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v0, v15, v3, v14}, Lcom/sleepycat/je/Cursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2289
    .restart local v3    # "readResult":Lcom/sleepycat/je/OperationResult;
    if-nez v3, :cond_c

    .line 2290
    nop

    .line 2346
    if-eqz v17, :cond_b

    .line 2347
    iget-object v4, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    .line 2348
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2290
    :cond_b
    return-object v2

    .line 2289
    :cond_c
    move-object/from16 v21, v3

    .line 2300
    .end local v3    # "readResult":Lcom/sleepycat/je/OperationResult;
    .local v21, "readResult":Lcom/sleepycat/je/OperationResult;
    :goto_a
    :try_start_2
    iget-object v3, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    move-object v13, v3

    .line 2301
    .local v13, "locker":Lcom/sleepycat/je/txn/Locker;
    if-eqz v20, :cond_d

    .line 2302
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/SecondaryDatabase;

    .line 2303
    .local v4, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    invoke-virtual {v4, v13, v0, v14}, Lcom/sleepycat/je/SecondaryDatabase;->onForeignKeyDelete(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)V

    .line 2304
    .end local v4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    goto :goto_b

    .line 2310
    :cond_d
    nop

    .line 2311
    move-object/from16 v11, p1

    invoke-virtual {v1, v14, v11}, Lcom/sleepycat/je/Cursor;->deleteNoNotify(Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v3

    .line 2313
    .local v22, "deleteResult":Lcom/sleepycat/je/OperationResult;
    if-nez v22, :cond_f

    .line 2314
    nop

    .line 2346
    if-eqz v17, :cond_e

    .line 2347
    iget-object v3, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    .line 2348
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2314
    :cond_e
    return-object v2

    .line 2322
    :cond_f
    if-eqz v19, :cond_11

    .line 2323
    const/4 v2, 0x0

    .line 2325
    .local v2, "nWrites":I
    :try_start_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move v12, v2

    .end local v2    # "nWrites":I
    .local v12, "nWrites":I
    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/SecondaryDatabase;

    .line 2326
    .local v2, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    const/4 v4, 0x0

    iget-object v5, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v6, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    const/4 v9, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    .line 2330
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v27

    .line 2326
    move-object v3, v13

    move-object v7, v0

    move-object v8, v15

    move-object/from16 v10, p2

    move/from16 v29, v12

    .end local v12    # "nWrites":I
    .local v29, "nWrites":I
    move-wide/from16 v11, v24

    move-object/from16 v30, v13

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v30, "locker":Lcom/sleepycat/je/txn/Locker;
    move/from16 v13, v26

    move-object/from16 v31, v15

    .end local v15    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .local v31, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    move-wide/from16 v14, v27

    invoke-virtual/range {v2 .. v15}, Lcom/sleepycat/je/SecondaryDatabase;->updateSecondary(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;JZJ)I

    move-result v3

    move/from16 v4, v29

    .end local v29    # "nWrites":I
    .local v4, "nWrites":I
    add-int v12, v4, v3

    .line 2331
    .end local v2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v4    # "nWrites":I
    .restart local v12    # "nWrites":I
    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v13, v30

    move-object/from16 v15, v31

    goto :goto_c

    .line 2333
    .end local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_10
    move v4, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v15

    .end local v12    # "nWrites":I
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "nWrites":I
    .restart local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->setNSecondaryWrites(I)V

    goto :goto_d

    .line 2322
    .end local v4    # "nWrites":I
    .end local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_11
    move-object/from16 v30, v13

    move-object/from16 v31, v15

    .line 2337
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_d
    if-eqz v16, :cond_12

    .line 2338
    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    .end local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .local v3, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-static {v4, v2, v0, v3}, Lcom/sleepycat/je/dbi/TriggerManager;->runDeleteTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_e

    .line 2337
    .end local v3    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_12
    move-object/from16 v4, v30

    move-object/from16 v3, v31

    .line 2341
    .end local v30    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v31    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_e
    nop

    .line 2346
    if-eqz v17, :cond_13

    .line 2347
    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    .line 2348
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2341
    :cond_13
    return-object v22

    .line 2346
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "needOldData":Z
    .end local v19    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v20    # "fkSecondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v21    # "readResult":Lcom/sleepycat/je/OperationResult;
    .end local v22    # "deleteResult":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v0

    goto :goto_f

    .line 2342
    :catch_1
    move-exception v0

    .line 2343
    .local v0, "E":Ljava/lang/Error;
    :try_start_4
    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2344
    nop

    .end local v16    # "hasUserTriggers":Z
    .end local v17    # "hasAssociations":Z
    .end local p1    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2346
    .end local v0    # "E":Ljava/lang/Error;
    .restart local v16    # "hasUserTriggers":Z
    .restart local v17    # "hasAssociations":Z
    .restart local p1    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local p2    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_f
    if-eqz v17, :cond_14

    .line 2347
    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    .line 2348
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :cond_14
    throw v0
.end method

.method private dupsGetNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 10
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3421
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v0

    .line 3422
    .local v0, "currentKey":[B
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DupKeyData;->removeData([B)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v8

    .line 3424
    .local v8, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v9

    .line 3425
    .local v9, "c":Lcom/sleepycat/je/Cursor;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v9, v1}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 3427
    new-instance v7, Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3429
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;-><init>(Ljava/util/Comparator;)V

    .line 3431
    .local v7, "searchComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    sget-object v3, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v6, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    move-object v1, v9

    move-object v2, v8

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3435
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_1

    .line 3436
    const/4 v2, 0x0

    .line 3443
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3436
    :cond_0
    return-object v2

    .line 3439
    :cond_1
    :try_start_1
    invoke-static {v8, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3441
    invoke-direct {p0, v9}, Lcom/sleepycat/je/Cursor;->swapCursor(Lcom/sleepycat/je/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3442
    nop

    .line 3443
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3442
    :cond_2
    return-object v1

    .line 3424
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v7    # "searchComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :catchall_0
    move-exception v1

    .end local v0    # "currentKey":[B
    .end local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "c":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3443
    .restart local v0    # "currentKey":[B
    .restart local v8    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "c":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_1
    move-exception v2

    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method private dupsGetNextOrPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3364
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3366
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v3, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    move-object v1, p0

    move-object v2, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3369
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_0

    .line 3370
    const/4 v2, 0x0

    return-object v2

    .line 3372
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3373
    return-object v1
.end method

.method private dupsGetNextOrPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3389
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v0

    .line 3391
    .local v0, "currentKey":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v8

    .line 3392
    .local v8, "c":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-virtual {v8, v1}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 3393
    invoke-direct {p0, v8, v0}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V

    .line 3394
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3396
    .local v1, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v4, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    move-object v2, v8

    move-object v3, v1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3399
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v2, :cond_1

    .line 3400
    const/4 v3, 0x0

    .line 3405
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3400
    :cond_0
    return-object v3

    .line 3402
    :cond_1
    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3403
    invoke-direct {p0, v8}, Lcom/sleepycat/je/Cursor;->swapCursor(Lcom/sleepycat/je/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3404
    nop

    .line 3405
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3404
    :cond_2
    return-object v2

    .line 3391
    .end local v1    # "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    .end local v0    # "currentKey":[B
    .end local v8    # "c":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3405
    .restart local v0    # "currentKey":[B
    .restart local v8    # "c":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method private dupsGetPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3461
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v4

    .line 3462
    .local v4, "currentKey":[B
    invoke-static {v4}, Lcom/sleepycat/je/dbi/DupKeyData;->removeData([B)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v12

    .line 3463
    .local v12, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v13

    .line 3465
    .local v13, "c":Lcom/sleepycat/je/Cursor;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 3466
    invoke-direct {v1, v13, v4}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V

    .line 3468
    sget-object v14, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v10, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v11, 0x0

    move-object v5, v13

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    move-object v11, v5

    .line 3472
    .local v11, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v15, 0x0

    if-eqz v11, :cond_1

    .line 3473
    iput-object v15, v13, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3475
    sget-object v10, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    move-object v5, v13

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3479
    .end local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    .line 3480
    nop

    .line 3488
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3480
    return-object v15

    .line 3483
    :cond_0
    :try_start_1
    invoke-static {v12, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3484
    invoke-direct {v1, v13}, Lcom/sleepycat/je/Cursor;->swapCursor(Lcom/sleepycat/je/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3485
    nop

    .line 3488
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3485
    return-object v0

    .line 3488
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_1
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3489
    nop

    .line 3491
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v11

    .line 3494
    .end local v13    # "c":Lcom/sleepycat/je/Cursor;
    .local v11, "c":Lcom/sleepycat/je/Cursor;
    :try_start_2
    invoke-virtual {v11, v0}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 3496
    :goto_0
    sget-object v7, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v10, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    .line 3497
    move-object v5, v11

    move-object v6, v12

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3501
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_2

    .line 3502
    nop

    .line 3512
    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3502
    return-object v15

    .line 3505
    :cond_2
    :try_start_3
    invoke-direct {v1, v12, v4}, Lcom/sleepycat/je/Cursor;->haveSameDupPrefix(Lcom/sleepycat/je/DatabaseEntry;[B)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3506
    invoke-static {v12, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3507
    invoke-direct {v1, v11}, Lcom/sleepycat/je/Cursor;->swapCursor(Lcom/sleepycat/je/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3508
    nop

    .line 3512
    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    .line 3508
    return-object v0

    .line 3510
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_3
    goto :goto_0

    .line 3512
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Lcom/sleepycat/je/Cursor;->close()V

    throw v0

    .line 3488
    .end local v11    # "c":Lcom/sleepycat/je/Cursor;
    .restart local v13    # "c":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    throw v0
.end method

.method private dupsGetSearchAnyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 4026
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v7

    .line 4028
    .local v7, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 4032
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    .line 4033
    const/4 v1, 0x0

    return-object v1

    .line 4036
    :cond_0
    invoke-static {v7, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 4037
    return-object v0
.end method

.method private dupsGetSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3965
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v7

    .line 3967
    .local v7, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 3971
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    .line 3972
    const/4 v1, 0x0

    return-object v1

    .line 3975
    :cond_0
    invoke-static {v7, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3976
    return-object v0
.end method

.method private dupsGetSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3992
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v7

    .line 3994
    .local v7, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v8, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3997
    .local v8, "savedRangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3999
    sget-object v2, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4003
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    .line 4004
    const/4 v1, 0x0

    .line 4011
    iput-object v8, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 4004
    return-object v1

    .line 4007
    :cond_0
    :try_start_1
    invoke-static {v7, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4009
    nop

    .line 4011
    iput-object v8, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 4009
    return-object v0

    .line 4011
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v0

    iput-object v8, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    throw v0
.end method

.method private dupsGetSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3900
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 3901
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    .line 3902
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    .line 3903
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    .line 3901
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->makePrefixKey([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 3905
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3908
    .local v1, "savedRangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3910
    sget-object v4, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v7, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3914
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v2, :cond_0

    .line 3915
    const/4 v3, 0x0

    .line 3922
    iput-object v1, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3915
    return-object v3

    .line 3918
    :cond_0
    :try_start_1
    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3920
    nop

    .line 3922
    iput-object v1, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3920
    return-object v2

    .line 3922
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    throw v2
.end method

.method private dupsGetSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3937
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 3938
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    .line 3939
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    .line 3940
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    .line 3938
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->makePrefixKey([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 3942
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v4, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v7, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3946
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_0

    .line 3947
    const/4 v2, 0x0

    return-object v2

    .line 3950
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3951
    return-object v1
.end method

.method private dupsPutCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "newData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p3, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 2596
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2597
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 2599
    .local v0, "oldTwoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2600
    .local v1, "key":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 2602
    invoke-static {v1, p1}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v2

    .line 2604
    .local v2, "newTwoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v5, Lcom/sleepycat/je/Cursor;->EMPTY_DUP_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v8, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    move-object v3, p0

    move-object v4, v2

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/Cursor;->putNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    return-object v3
.end method

.method private dupsPutNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 2576
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v6

    .line 2578
    .local v6, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/Cursor;->EMPTY_DUP_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->putNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private dupsPutNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 2524
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2525
    .local v0, "key2":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2527
    .local v1, "data2":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v2

    .line 2528
    .local v2, "c":Lcom/sleepycat/je/Cursor;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 2531
    invoke-static {p1, v0}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 2533
    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-direct {v2, v0, v1, v3, p3}, Lcom/sleepycat/je/Cursor;->dupsGetSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    .line 2536
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2538
    nop

    .line 2564
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2538
    :cond_0
    return-object v4

    .line 2540
    :cond_1
    if-nez v3, :cond_2

    .line 2542
    :try_start_1
    iget-object v5, v2, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v6, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 2546
    :cond_2
    invoke-static {p1, v0}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 2548
    sget-object v5, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-direct {v2, v0, v1, v5, p3}, Lcom/sleepycat/je/Cursor;->dupsGetSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 2550
    if-eqz v3, :cond_4

    .line 2551
    nop

    .line 2564
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2551
    :cond_3
    return-object v4

    .line 2555
    :cond_4
    :try_start_2
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsPutNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    .line 2557
    if-nez v3, :cond_6

    .line 2558
    nop

    .line 2564
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2558
    :cond_5
    return-object v4

    .line 2562
    :cond_6
    :try_start_3
    invoke-direct {p0, v2}, Lcom/sleepycat/je/Cursor;->swapCursor(Lcom/sleepycat/je/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2563
    nop

    .line 2564
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2563
    :cond_7
    return-object v3

    .line 2527
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v3

    .end local v0    # "key2":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "data2":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "c":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2564
    .restart local v0    # "key2":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "data2":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "c":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    throw v4
.end method

.method private dupsPutOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 2493
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v6

    .line 2495
    .local v6, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/Cursor;->EMPTY_DUP_DATA:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->putNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V
    .locals 1
    .param p1, "dup"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "success"    # Z

    .line 5292
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->clearClosingLocker()V

    .line 5294
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    if-ne p1, v0, :cond_1

    .line 5295
    if-eqz p2, :cond_0

    .line 5296
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->afterNonStickyOp()V

    goto :goto_0

    .line 5298
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->reset()V

    goto :goto_0

    .line 5301
    :cond_1
    if-eqz p2, :cond_2

    .line 5302
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 5303
    iput-object p1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    goto :goto_0

    .line 5305
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 5308
    :goto_0
    return-void
.end method

.method private endUseExistingCursor()V
    .locals 1

    .line 5327
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 5328
    return-void
.end method

.method private ensureReferenceToPrimary(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 8
    .param p1, "matchPriKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 5069
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    if-eq p2, v0, :cond_4

    .line 5084
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 5086
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 5087
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v1

    .line 5089
    .local v1, "index":I
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5090
    nop

    .line 5104
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 5090
    return v3

    .line 5093
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 5096
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 5097
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v5

    .line 5096
    invoke-static {v4, v5}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v4

    .line 5099
    .local v4, "expirationTime":J
    nop

    .line 5100
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlMaxTxnTime()I

    move-result v6

    int-to-long v6, v6

    .line 5099
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5101
    iget-object v6, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v6, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5104
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v1    # "index":I
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v4    # "expirationTime":J
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 5105
    nop

    .line 5112
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->hasDuplicates()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5113
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 5115
    .local v0, "secData":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    const/4 v2, 0x0

    sget-object v4, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v1, v2, v0, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5117
    return v3

    .line 5120
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5121
    return v3

    .line 5125
    .end local v0    # "secData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 5104
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 5069
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getCurrentHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3080
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3082
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v1, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/sleepycat/je/Cursor;->getCurrentNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3085
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_0

    .line 3086
    const/4 v2, 0x0

    return-object v2

    .line 3089
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3090
    return-object v1
.end method

.method private getCurrentNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 10
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3099
    const/4 v0, 0x0

    .line 3101
    .local v0, "success":Z
    invoke-direct {p0, p4}, Lcom/sleepycat/je/Cursor;->beginUseExistingCursor(Lcom/sleepycat/je/CacheMode;)V

    .line 3103
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v9

    .line 3106
    .local v9, "lockType":Lcom/sleepycat/je/txn/LockType;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v3, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne p3, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3110
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v0, 0x1

    .line 3111
    nop

    .line 3115
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3116
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 3117
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 3118
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3119
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 3122
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3123
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->endUseExistingCursor()V

    .line 3111
    return-object v1

    .line 3115
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3116
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 3117
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 3118
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3119
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 3122
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3123
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->endUseExistingCursor()V

    throw v1
.end method

.method private getCurrentWithCursorImpl(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;
    .locals 3
    .param p1, "c"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 3778
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3779
    invoke-virtual {p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 3782
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3784
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v1, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    .line 3785
    invoke-virtual {p1, v0, v1, p4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3787
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_1

    .line 3788
    const/4 v2, 0x0

    return-object v2

    .line 3791
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3792
    return-object v1
.end method

.method private getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;
    .locals 3
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p2, "rangeLock"    # Z

    .line 5347
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Cursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5348
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    return-object v0

    .line 5349
    :cond_0
    if-eqz p1, :cond_5

    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 5351
    :cond_1
    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    if-ne p1, v0, :cond_3

    .line 5352
    if-eqz p2, :cond_2

    sget-object v0, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    :goto_0
    return-object v0

    .line 5353
    :cond_3
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_COMMITTED:Lcom/sleepycat/je/LockMode;

    if-eq p1, v0, :cond_4

    .line 5358
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 5354
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5355
    invoke-virtual {p1}, Lcom/sleepycat/je/LockMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed with Cursor methods, use CursorConfig.setReadCommitted instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5350
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    sget-object v0, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    :goto_2
    return-object v0
.end method

.method private getTxnSynchronizer()Ljava/lang/Object;
    .locals 1

    .line 5495
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->transaction:Lcom/sleepycat/je/Transaction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private haveSameDupPrefix(Lcom/sleepycat/je/DatabaseEntry;[B)Z
    .locals 2
    .param p1, "twoPartKey1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "keyBytes2"    # [B

    .line 5156
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    if-nez v0, :cond_2

    .line 5157
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5159
    nop

    .line 5160
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5161
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 5159
    invoke-static {v0, p2, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BLjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5157
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5156
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private init(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V
    .locals 3
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p2, "databaseImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p5, "retainNonTxnLocks"    # Z

    .line 307
    if-eqz p3, :cond_8

    .line 314
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/sleepycat/je/txn/Locker;->openCursorHook(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    nop

    .line 320
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 321
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->isSecondaryCursor()Z

    move-result v1

    invoke-direct {v0, p2, p3, p5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;ZZ)V

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 323
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->transaction:Lcom/sleepycat/je/Transaction;

    .line 326
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 328
    nop

    .line 329
    invoke-virtual {p4}, Lcom/sleepycat/je/CursorConfig;->getReadUncommitted()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->isReadUncommittedDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->readUncommittedDefault:Z

    .line 332
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 333
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->isSerializableIsolation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->serializableIsolationDefault:Z

    .line 336
    nop

    .line 337
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    :cond_3
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->isLocalWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isMixedReplication()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    :cond_4
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->isLocalWrite()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    :goto_2
    nop

    :goto_3
    iput-boolean v1, p0, Lcom/sleepycat/je/Cursor;->updateOperationsProhibited:Z

    .line 344
    iput-object p2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 345
    if-eqz p1, :cond_7

    .line 346
    iput-object p1, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    .line 347
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/Database;->addCursor(Lcom/sleepycat/je/ForwardCursor;)V

    .line 350
    :cond_7
    iput-object p4, p0, Lcom/sleepycat/je/Cursor;->config:Lcom/sleepycat/je/CursorConfig;

    .line 351
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    .line 353
    invoke-virtual {p4}, Lcom/sleepycat/je/CursorConfig;->getNonSticky()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 356
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 317
    throw v0

    .line 307
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private positionAllowPhantoms(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;ZZ)Lcom/sleepycat/je/OperationResult;
    .locals 18
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "rangeLock"    # Z
    .param p6, "first"    # Z

    .line 3245
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 3247
    const/4 v10, 0x0

    .line 3249
    .local v10, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 3250
    const/4 v15, 0x0

    move-object/from16 v14, p4

    invoke-direct {v1, v15, v14}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v13

    .line 3254
    .local v13, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/16 v16, 0x1

    move/from16 v12, p6

    :try_start_0
    invoke-virtual {v13, v12}, Lcom/sleepycat/je/dbi/CursorImpl;->positionFirstOrLast(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 3256
    const/4 v10, 0x0

    .line 3257
    :try_start_1
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 3258
    invoke-static {v15}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3289
    :cond_0
    move-object v5, v13

    move/from16 v17, v15

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v13

    move/from16 v17, v15

    goto/16 :goto_3

    .line 3265
    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    .line 3266
    :try_start_3
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3269
    :cond_2
    move/from16 v11, p5

    :try_start_4
    invoke-direct {v1, v2, v11}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v6

    .line 3271
    .local v6, "lockType":Lcom/sleepycat/je/txn/LockType;
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne v2, v0, :cond_3

    move/from16 v7, v16

    goto :goto_0

    :cond_3
    move v7, v15

    .line 3274
    .local v7, "dirtyReadAll":Z
    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v0

    .line 3278
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v3, :cond_4

    .line 3283
    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v8, v13

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v11, v6

    move v12, v7

    move-object v5, v13

    .end local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move/from16 v13, p6

    move v14, v0

    move/from16 v17, v15

    move-object v15, v4

    :try_start_5
    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v10, v0

    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v10    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_1

    .line 3289
    .end local v6    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v7    # "dirtyReadAll":Z
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v3    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v0

    move-object v10, v3

    goto :goto_3

    .line 3278
    .end local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v7    # "dirtyReadAll":Z
    .restart local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_4
    move-object v5, v13

    move/from16 v17, v15

    .end local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object v10, v3

    .line 3289
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v6    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v7    # "dirtyReadAll":Z
    .restart local v10    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_1
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3290
    if-eqz v10, :cond_5

    move/from16 v15, v16

    goto :goto_2

    :cond_5
    move/from16 v15, v17

    :goto_2
    invoke-direct {v1, v5, v15}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 3291
    nop

    .line 3292
    return-object v10

    .line 3289
    .end local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_2
    move-exception v0

    move-object v5, v13

    move/from16 v17, v15

    .end local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_3
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3290
    if-eqz v10, :cond_6

    move/from16 v15, v16

    goto :goto_4

    :cond_6
    move/from16 v15, v17

    :goto_4
    invoke-direct {v1, v5, v15}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    throw v0

    .line 3245
    .end local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private positionHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "first"    # Z

    .line 3170
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3172
    .local v0, "twoPartKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v3, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    move-object v1, p0

    move-object v2, v0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->positionNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3175
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v1, :cond_0

    .line 3176
    const/4 v2, 0x0

    return-object v2

    .line 3179
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 3180
    return-object v1
.end method

.method private positionNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "first"    # Z

    .line 3194
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sleepycat/je/Cursor;->isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->positionAllowPhantoms(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;ZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 3207
    :cond_0
    :goto_0
    if-nez p5, :cond_1

    .line 3208
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 3212
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->positionAllowPhantoms(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;ZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 3219
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz p5, :cond_2

    if-nez v0, :cond_2

    .line 3220
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V
    :try_end_1
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 3223
    :cond_2
    return-object v0

    .line 3224
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :catch_0
    move-exception v0

    .line 3226
    goto :goto_0

    .line 3228
    :catch_1
    move-exception v0

    .line 3229
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 3230
    throw v0
.end method

.method private putCurrentNoNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "returnOldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p6, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p7, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 3024
    if-eqz p2, :cond_1

    .line 3026
    invoke-direct {p0, p5}, Lcom/sleepycat/je/Cursor;->beginUseExistingCursor(Lcom/sleepycat/je/CacheMode;)V

    .line 3028
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->updateCurrentRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 3031
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v1, :cond_0

    .line 3032
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incUpdateOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3035
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->endUseExistingCursor()V

    .line 3036
    return-object v0

    .line 3024
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private putHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p5, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;

    .line 2469
    sget-object v0, Lcom/sleepycat/je/Cursor$3;->$SwitchMap$com$sleepycat$je$dbi$PutMode:[I

    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/PutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2479
    nop

    .line 2480
    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/PutMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2479
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 2477
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsPutCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 2475
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsPutNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 2473
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsPutNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 2471
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsPutOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p5, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;

    .line 2619
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    if-ne p5, v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2621
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/je/tree/LN;->makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    move-object v4, v0

    :goto_0
    nop

    .line 2623
    .local v4, "ln":Lcom/sleepycat/je/tree/LN;
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2625
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v8

    .line 2623
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->putNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private putNoNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 24
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p6, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p7, "returnOldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p8, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p9, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2893
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    const-string v13, ""

    const-string v14, "putNoNotify"

    const-string v15, "Cursor"

    if-eqz v11, :cond_11

    .line 2894
    if-eqz p3, :cond_10

    .line 2895
    if-eqz v12, :cond_f

    .line 2896
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    if-eq v12, v0, :cond_e

    .line 2898
    const/4 v2, 0x0

    .line 2899
    .local v2, "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    const/4 v3, 0x0

    .line 2900
    .local v3, "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v4, 0x0

    .line 2901
    .local v4, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/16 v16, 0x0

    .line 2902
    .local v16, "result":Lcom/sleepycat/je/OperationResult;
    const/16 v17, 0x0

    .line 2905
    .local v17, "success":Z
    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    move-object v8, v0

    .line 2913
    .local v8, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    move-object v7, v0

    .line 2915
    .local v7, "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    .line 2916
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/txn/TxnManager;->areOtherSerializableTransactionsActive(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_0

    .line 2925
    :try_start_1
    invoke-static {v8, v7}, Lcom/sleepycat/je/txn/BuddyLocker;->createBuddyLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/BuddyLocker;

    move-result-object v0

    move-object v2, v0

    .line 2928
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v5, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v5, v2}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v3, v0

    .line 2931
    invoke-virtual {v3, v10}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 2932
    invoke-virtual {v3, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->lockNextKeyForInsert(Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_0

    .line 2962
    .end local v7    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception v0

    move-object v6, v0

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v5, v13

    goto/16 :goto_7

    .line 2916
    .restart local v7    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 2935
    .end local v2    # "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v18, "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    .local v19, "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_0
    move-object/from16 v6, p4

    :try_start_2
    invoke-direct {v1, v9, v6}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v5, v0

    .line 2938
    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object v2, v5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v11, v5

    .end local v5    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v11, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v20, v7

    .end local v7    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    .local v20, "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v7, p6

    move-object/from16 v21, v13

    move-object v13, v8

    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v13, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move-object/from16 v8, p7

    move/from16 v22, v9

    move-object/from16 v9, p8

    move/from16 v23, v10

    move-object/from16 v10, p9

    :try_start_3
    invoke-virtual/range {v2 .. v10}, Lcom/sleepycat/je/dbi/CursorImpl;->insertOrUpdateRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    move-object/from16 v16, v0

    .line 2942
    iget-boolean v0, v1, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    .line 2943
    if-nez v16, :cond_1

    .line 2944
    :try_start_4
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    if-ne v12, v0, :cond_3

    .line 2945
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incInsertFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_1

    .line 2948
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/OperationResult;->isUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2949
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incInsertOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_1

    .line 2951
    :cond_2
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incUpdateOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2962
    .end local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v20    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v4, v11

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v21

    goto :goto_7

    .line 2957
    .restart local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 2958
    .end local v17    # "success":Z
    .local v2, "success":Z
    nop

    .line 2963
    if-eqz v11, :cond_5

    .line 2964
    if-eqz v16, :cond_4

    move/from16 v10, v23

    goto :goto_2

    :cond_4
    move/from16 v10, v22

    :goto_2
    :try_start_5
    invoke-direct {v1, v11, v10}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 2967
    :cond_5
    if-eqz v19, :cond_6

    .line 2968
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    goto :goto_3

    .line 2975
    :catch_0
    move-exception v0

    goto :goto_4

    .line 2972
    :cond_6
    :goto_3
    if-eqz v18, :cond_8

    .line 2973
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 2976
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    if-nez v2, :cond_7

    .line 2983
    iget-object v3, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2984
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 2983
    move-object/from16 v5, v21

    invoke-static {v3, v15, v14, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2977
    :cond_7
    throw v0

    .line 2986
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    nop

    .line 2958
    :goto_6
    return-object v16

    .line 2962
    .end local v2    # "success":Z
    .end local v13    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v20    # "cursorLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v17    # "success":Z
    :catchall_2
    move-exception v0

    move-object/from16 v5, v21

    move-object v6, v0

    move-object v4, v11

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_7

    .end local v11    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_3
    move-exception v0

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v5, v13

    move-object v6, v0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_7

    .end local v18    # "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v19    # "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v2, "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_4
    move-exception v0

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v5, v13

    move-object v6, v0

    .line 2963
    :goto_7
    if-eqz v4, :cond_a

    .line 2964
    if-eqz v16, :cond_9

    move/from16 v10, v23

    goto :goto_8

    :cond_9
    move/from16 v10, v22

    :goto_8
    :try_start_6
    invoke-direct {v1, v4, v10}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 2967
    :cond_a
    if-eqz v3, :cond_b

    .line 2968
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    goto :goto_9

    .line 2975
    :catch_1
    move-exception v0

    goto :goto_a

    .line 2972
    :cond_b
    :goto_9
    if-eqz v2, :cond_d

    .line 2973
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    .line 2976
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_a
    if-eqz v17, :cond_c

    .line 2977
    throw v0

    .line 2983
    :cond_c
    iget-object v7, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2984
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    .line 2983
    invoke-static {v7, v15, v14, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 2986
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    nop

    :goto_c
    throw v6

    .line 2896
    .end local v2    # "nextKeyLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "nextKeyCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v16    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v17    # "success":Z
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2895
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2894
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2893
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private putNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 31
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p6, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p7, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2673
    move-object/from16 v11, p0

    move-object/from16 v12, p6

    iget-object v0, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v13, v0

    .line 2674
    .local v13, "hasUserTriggers":Z
    iget-object v0, v11, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_1

    .line 2675
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->hasSecondaryOrForeignKeyAssociations()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v14, v1

    .line 2677
    .local v14, "hasAssociations":Z
    if-eqz v14, :cond_2

    .line 2679
    :try_start_0
    iget-object v0, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    .line 2680
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2684
    goto :goto_2

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 2689
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 2691
    .local v0, "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_1
    sget-object v1, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    if-ne v12, v1, :cond_5

    .line 2692
    if-nez p1, :cond_4

    .line 2706
    if-nez v14, :cond_3

    if-eqz v13, :cond_5

    .line 2707
    :cond_3
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2712
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v1, "key":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_2
    iget-object v3, v11, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v1

    goto :goto_3

    .line 2841
    .end local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v29, p5

    move-object v8, v1

    goto/16 :goto_e

    .line 2837
    :catch_1
    move-exception v0

    move-object/from16 v29, p5

    move-object v8, v1

    goto/16 :goto_d

    .line 2719
    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v15, p1

    goto :goto_3

    .line 2730
    :cond_5
    move-object/from16 v15, p1

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "key":Lcom/sleepycat/je/DatabaseEntry;
    :goto_3
    const/4 v1, 0x0

    .line 2731
    .local v1, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v3, 0x0

    .line 2737
    .local v3, "newData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v4, 0x0

    .line 2739
    .local v4, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    if-nez v14, :cond_7

    if-eqz v13, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v29, p5

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v30, v4

    goto/16 :goto_6

    .line 2741
    :cond_7
    :goto_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v5, :cond_8

    .line 2742
    :try_start_4
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v3, v5

    goto :goto_5

    .line 2841
    .end local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v29, p5

    move-object v8, v15

    goto/16 :goto_e

    .line 2837
    :catch_2
    move-exception v0

    move-object/from16 v29, p5

    move-object v8, v15

    goto/16 :goto_d

    .line 2745
    .restart local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :cond_8
    :goto_5
    if-eqz v13, :cond_9

    .line 2746
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v1, v5

    .line 2749
    :cond_9
    if-eqz v14, :cond_c

    .line 2750
    iget-object v5, v11, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    iget-object v5, v5, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    invoke-interface {v5, v15}, Lcom/sleepycat/je/SecondaryAssociation;->getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;

    move-result-object v5

    move-object v4, v5

    .line 2751
    if-nez v1, :cond_a

    .line 2752
    invoke-static {v4}, Lcom/sleepycat/je/SecondaryDatabase;->needOldDataForUpdate(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2753
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v1, v5

    .line 2761
    :cond_a
    if-nez p5, :cond_b

    .line 2762
    new-instance v5, Lcom/sleepycat/je/dbi/ExpirationInfo;

    invoke-direct {v5, v2, v2, v2}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v5

    move-object/from16 v16, v1

    move-object/from16 v29, v2

    move-object/from16 v17, v3

    move-object/from16 v30, v4

    .end local p5    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v2, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    goto :goto_6

    .line 2761
    .end local v2    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local p5    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :cond_b
    move-object/from16 v29, p5

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v30, v4

    goto :goto_6

    .line 2749
    :cond_c
    move-object/from16 v29, p5

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v30, v4

    .line 2768
    .end local v1    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local p5    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v16, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .local v17, "newData":Lcom/sleepycat/je/DatabaseEntry;
    .local v29, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v30, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :goto_6
    :try_start_5
    sget-object v1, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v12, v1, :cond_d

    .line 2770
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, p4

    move-object/from16 v7, v29

    move-object/from16 v8, p7

    :try_start_6
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->putCurrentNoNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_7

    .line 2841
    .end local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v16    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v17    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v30    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :catchall_2
    move-exception v0

    move-object v8, v15

    goto/16 :goto_e

    .line 2837
    :catch_3
    move-exception v0

    move-object v8, v15

    goto/16 :goto_d

    .line 2776
    .restart local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v30    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :cond_d
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v29

    move-object/from16 v7, p6

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p7

    :try_start_7
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/Cursor;->putNoNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2781
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_7
    if-nez v1, :cond_f

    .line 2782
    const/4 v2, 0x0

    .line 2841
    if-eqz v14, :cond_e

    .line 2842
    iget-object v3, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    .line 2843
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2782
    :cond_e
    return-object v2

    .line 2796
    :cond_f
    if-eqz v16, :cond_10

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v2, :cond_10

    .line 2797
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_8

    .line 2800
    :cond_10
    move-object/from16 v2, v16

    .end local v16    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .local v2, "oldData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_8
    if-nez v17, :cond_11

    .line 2801
    move-object/from16 v17, p2

    move-object/from16 v3, v17

    goto :goto_9

    .line 2800
    :cond_11
    move-object/from16 v3, v17

    .line 2808
    .end local v17    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_9
    :try_start_9
    iget-object v4, v11, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    .line 2810
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    if-eqz v30, :cond_15

    .line 2811
    const/4 v5, 0x0

    .line 2813
    .local v5, "nWrites":I
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/SecondaryDatabase;
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v8, v15

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v8, "key":Lcom/sleepycat/je/DatabaseEntry;
    move-object v15, v7

    .line 2815
    .local v15, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :try_start_a
    invoke-virtual {v1}, Lcom/sleepycat/je/OperationResult;->isUpdate()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2816
    invoke-virtual {v15}, Lcom/sleepycat/je/SecondaryDatabase;->updateMayChangeSecondary()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2818
    :cond_12
    const/16 v17, 0x0

    iget-object v7, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v9, v11, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2821
    invoke-virtual {v1}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v24

    .line 2822
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/dbi/ExpirationInfo;->getExpirationUpdated()Z

    move-result v26

    .line 2823
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/dbi/ExpirationInfo;->getOldExpirationTime()J

    move-result-wide v27

    .line 2818
    move-object/from16 v16, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, p4

    invoke-virtual/range {v15 .. v28}, Lcom/sleepycat/je/SecondaryDatabase;->updateSecondary(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;JZJ)I

    move-result v7

    add-int/2addr v5, v7

    .line 2825
    .end local v15    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :cond_13
    move-object v15, v8

    goto :goto_a

    .line 2827
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "key":Lcom/sleepycat/je/DatabaseEntry;
    :cond_14
    move-object v8, v15

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v6, v11, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->setNSecondaryWrites(I)V

    goto :goto_b

    .line 2810
    .end local v5    # "nWrites":I
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :cond_15
    move-object v8, v15

    .line 2830
    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :goto_b
    if-eqz v13, :cond_16

    .line 2831
    iget-object v5, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v4, v5, v8, v2, v3}, Lcom/sleepycat/je/dbi/TriggerManager;->runPutTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_c

    .line 2837
    .end local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v30    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :catch_4
    move-exception v0

    goto :goto_d

    .line 2835
    .restart local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v2    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v30    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    :cond_16
    :goto_c
    nop

    .line 2841
    if-eqz v14, :cond_17

    .line 2842
    iget-object v5, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    .line 2843
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2835
    :cond_17
    return-object v1

    .line 2841
    .end local v0    # "replaceKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "oldData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "newData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v30    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .restart local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_3
    move-exception v0

    move-object v8, v15

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_e

    .line 2837
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :catch_5
    move-exception v0

    move-object v8, v15

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_d

    .line 2841
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v29    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :catchall_4
    move-exception v0

    move-object v8, v15

    move-object/from16 v29, p5

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_e

    .line 2837
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :catch_6
    move-exception v0

    move-object v8, v15

    move-object/from16 v29, p5

    .end local v15    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_d

    .line 2841
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_5
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v29, p5

    goto :goto_e

    .line 2837
    :catch_7
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v29, p5

    .line 2838
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v0, "E":Ljava/lang/Error;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v29    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :goto_d
    :try_start_b
    iget-object v1, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2839
    nop

    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "hasUserTriggers":Z
    .end local v14    # "hasAssociations":Z
    .end local v29    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p6    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    .end local p7    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 2841
    .end local v0    # "E":Ljava/lang/Error;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "hasUserTriggers":Z
    .restart local v14    # "hasAssociations":Z
    .restart local v29    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p6    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    .restart local p7    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :catchall_6
    move-exception v0

    :goto_e
    if-eqz v14, :cond_18

    .line 2842
    iget-object v1, v11, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    .line 2843
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :cond_18
    throw v0
.end method

.method private rangeLockCurrentPosition()V
    .locals 14

    .line 3624
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 3625
    .local v0, "tempKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v9, v1

    .line 3626
    .local v9, "tempData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v10, v11}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 3627
    invoke-virtual {v9, v10, v10, v11}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 3631
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    .line 3634
    .local v1, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v1, v0, v9, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3637
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v2, :cond_3

    move-object v12, v1

    move-object v13, v2

    .line 3640
    .end local v1    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .local v12, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v13, "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    :try_start_1
    sget-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v1, :cond_0

    .line 3641
    invoke-static {v10}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 3644
    :cond_0
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v12

    move-object v2, v0

    move-object v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    move-object v13, v1

    .line 3649
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v2, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    invoke-virtual {v1, v2, v12}, Lcom/sleepycat/je/dbi/CursorImpl;->checkForInsertion(Lcom/sleepycat/je/dbi/GetMode;Lcom/sleepycat/je/dbi/CursorImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3650
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v12, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 3651
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    move-object v12, v1

    .line 3652
    goto :goto_0

    .line 3655
    :cond_1
    sget-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v1, :cond_2

    .line 3656
    invoke-static {v10}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3662
    :cond_2
    move-object v1, v12

    move-object v2, v13

    goto :goto_1

    .end local v13    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    goto :goto_2

    .end local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v1    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 3663
    nop

    .line 3665
    if-nez v2, :cond_4

    .line 3666
    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v4, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 3668
    :cond_4
    return-void

    .line 3662
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    .end local v1    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v12, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    throw v1
.end method

.method private retrieveNextCheckForInsertion(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 15
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3680
    move-object v1, p0

    move-object/from16 v2, p5

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 3681
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    if-eq v2, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3685
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 3686
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 3695
    :cond_2
    const/4 v0, 0x1

    move-object/from16 v12, p4

    invoke-direct {p0, v0, v0, v12}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v13

    .line 3698
    .local v13, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v14, 0x1

    .line 3701
    .local v14, "doEndMoveCursor":Z
    const/4 v7, 0x0

    .line 3703
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3701
    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    .line 3706
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    iget-object v4, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v4, v2, v13}, Lcom/sleepycat/je/dbi/CursorImpl;->checkForInsertion(Lcom/sleepycat/je/dbi/GetMode;Lcom/sleepycat/je/dbi/CursorImpl;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3708
    const/4 v14, 0x0

    .line 3709
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v11

    :goto_1
    invoke-direct {p0, v13, v0}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 3711
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_4

    .line 3712
    invoke-static {v11}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3715
    :cond_4
    nop

    .line 3718
    if-eqz v14, :cond_5

    .line 3719
    invoke-direct {p0, v13, v11}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 3715
    :cond_5
    return-object v3

    .line 3718
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_6
    if-eqz v14, :cond_7

    .line 3719
    invoke-direct {p0, v13, v11}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 3722
    .end local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v14    # "doEndMoveCursor":Z
    :cond_7
    goto :goto_0

    .line 3718
    .restart local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v14    # "doEndMoveCursor":Z
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_8

    .line 3719
    invoke-direct {p0, v13, v11}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    :cond_8
    throw v0

    .line 3680
    .end local v13    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v14    # "doEndMoveCursor":Z
    :cond_9
    move-object/from16 v12, p4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private retrieveNextHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3334
    sget-object v0, Lcom/sleepycat/je/Cursor$3;->$SwitchMap$com$sleepycat$je$dbi$GetMode:[I

    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/GetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3349
    nop

    .line 3350
    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/GetMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3349
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 3347
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 3345
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 3342
    :pswitch_2
    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->dupsGetNextOrPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 3339
    :pswitch_3
    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->dupsGetNextOrPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 3337
    :pswitch_4
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->dupsGetNextOrPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 19
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getModeParam"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3527
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    sget-object v0, Lcom/sleepycat/je/Cursor$3;->$SwitchMap$com$sleepycat$je$dbi$GetMode:[I

    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/dbi/GetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3538
    move-object/from16 v0, p5

    move-object v9, v0

    .local v0, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    goto :goto_0

    .line 3535
    .end local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :pswitch_0
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    .line 3536
    .restart local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    move-object v9, v0

    goto :goto_0

    .line 3532
    .end local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :pswitch_1
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    .line 3533
    .restart local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    move-object v9, v0

    goto :goto_0

    .line 3530
    .end local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :pswitch_2
    const/4 v0, 0x0

    return-object v0

    .line 3542
    .local v9, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :goto_0
    :try_start_0
    invoke-virtual {v7, v8}, Lcom/sleepycat/je/Cursor;->isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7

    if-nez v0, :cond_5

    .line 3547
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v9, v0, :cond_1

    :try_start_2
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    if-ne v9, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "getModeParam":Lcom/sleepycat/je/dbi/GetMode;
    throw v0
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7

    .line 3549
    .restart local v9    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "getModeParam":Lcom/sleepycat/je/dbi/GetMode;
    :cond_1
    :goto_1
    nop

    .line 3550
    const/4 v1, 0x1

    move-object/from16 v10, p4

    :try_start_3
    invoke-direct {v7, v1, v10}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    move-object v2, v0

    .line 3552
    .local v2, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v3, 0x0

    .line 3554
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 3555
    const/4 v4, 0x0

    :try_start_4
    invoke-direct {v7, v8, v4}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v14

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne v8, v0, :cond_2

    move v15, v1

    goto :goto_2

    :cond_2
    move v15, v4

    .line 3557
    :goto_2
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v16

    const/16 v17, 0x0

    iget-object v0, v7, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 3554
    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3560
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 3562
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    :try_start_5
    invoke-direct {v7, v2, v1}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 3560
    return-object v0

    .line 3562
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v3    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    invoke-direct {v7, v2, v1}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .end local v9    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "getModeParam":Lcom/sleepycat/je/dbi/GetMode;
    throw v0
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5

    .line 3610
    .end local v2    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v9    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "getModeParam":Lcom/sleepycat/je/dbi/GetMode;
    :catch_0
    move-exception v0

    move-object/from16 v10, p4

    goto :goto_7

    .line 3542
    :cond_5
    move-object/from16 v10, p4

    .line 3572
    :goto_5
    :try_start_6
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3573
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/Cursor;->rangeLockCurrentPosition()V

    .line 3576
    :cond_6
    nop

    .line 3577
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v0

    invoke-direct {v7, v8, v0}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v4

    .line 3580
    .local v4, "lockType":Lcom/sleepycat/je/txn/LockType;
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/Cursor;->cloneEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    .line 3581
    .local v0, "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/Cursor;->cloneEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    move-object v11, v1

    .line 3584
    .local v11, "tryData":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object/from16 v5, p4

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->retrieveNextCheckForInsertion(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3587
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    .line 3589
    iget-object v2, v7, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v3, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 3593
    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {v7, v0}, Lcom/sleepycat/je/Cursor;->checkRangeConstraint(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2
    :try_end_6
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v2, :cond_8

    .line 3594
    const/4 v1, 0x0

    .line 3600
    :cond_8
    if-eqz v1, :cond_9

    .line 3601
    move-object/from16 v2, p1

    :try_start_7
    invoke-static {v0, v2}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_7
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3

    .line 3602
    move-object/from16 v3, p2

    :try_start_8
    invoke-static {v11, v3}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_8
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 3610
    .end local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v11    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1
    move-exception v0

    goto :goto_b

    .line 3606
    :catch_2
    move-exception v0

    goto :goto_a

    .line 3610
    :catch_3
    move-exception v0

    goto :goto_8

    .line 3606
    :catch_4
    move-exception v0

    goto :goto_9

    .line 3600
    .restart local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v4    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v11    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_9
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3605
    :goto_6
    return-object v1

    .line 3610
    .end local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v11    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_5
    move-exception v0

    :goto_7
    move-object/from16 v2, p1

    :goto_8
    move-object/from16 v3, p2

    goto :goto_b

    .line 3606
    :catch_6
    move-exception v0

    move-object/from16 v2, p1

    :goto_9
    move-object/from16 v3, p2

    .line 3608
    :goto_a
    goto :goto_5

    .line 3610
    :catch_7
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p4

    .line 3611
    .local v0, "E":Ljava/lang/Error;
    :goto_b
    iget-object v1, v7, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 3612
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;
    .locals 17
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;

    .line 4185
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 4186
    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne v5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4188
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 4189
    .local v6, "success":Z
    const/4 v7, 0x0

    .line 4191
    .local v7, "result":Lcom/sleepycat/je/OperationResult;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 4192
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    move-object v8, v0

    .line 4194
    .local v8, "origData":Lcom/sleepycat/je/DatabaseEntry;
    nop

    .line 4195
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v10

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v11, v0

    .line 4197
    .local v11, "dataRequested":Z
    invoke-direct {v1, v4, v10}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v12

    .line 4199
    .local v12, "lockType":Lcom/sleepycat/je/txn/LockType;
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v10

    :goto_3
    move v13, v0

    .line 4202
    .local v13, "dirtyReadAll":Z
    nop

    .line 4203
    move-object/from16 v14, p4

    invoke-direct {v1, v10, v14}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v15

    .line 4210
    .local v15, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    invoke-virtual {v15, v2, v12, v13, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    if-nez v0, :cond_7

    .line 4212
    const/4 v0, 0x1

    .line 4213
    .end local v6    # "success":Z
    .local v0, "success":Z
    nop

    .line 4237
    if-eqz v0, :cond_5

    iget-object v6, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 4238
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4239
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4240
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4241
    iget-object v6, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4244
    :cond_5
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4245
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move v9, v10

    :goto_4
    invoke-direct {v1, v15, v9}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 4213
    return-object v16

    .line 4223
    .end local v0    # "success":Z
    .restart local v6    # "success":Z
    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 4224
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowsKeyUpdates()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v2

    goto :goto_5

    :cond_8
    move-object/from16 v0, v16

    .line 4223
    :goto_5
    invoke-virtual {v15, v0, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    move-object v7, v0

    .line 4227
    if-eqz v7, :cond_9

    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne v5, v0, :cond_9

    .line 4229
    invoke-direct {v1, v8, v3}, Lcom/sleepycat/je/Cursor;->checkDataMatch(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_9

    .line 4230
    const/4 v7, 0x0

    .line 4233
    :cond_9
    const/4 v0, 0x1

    .line 4237
    .end local v6    # "success":Z
    .restart local v0    # "success":Z
    if-eqz v0, :cond_a

    iget-object v6, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 4238
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v6

    if-nez v6, :cond_a

    .line 4239
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 4240
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4241
    iget-object v6, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4244
    :cond_a
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4245
    if-eqz v7, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    move v9, v10

    :goto_6
    invoke-direct {v1, v15, v9}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 4246
    nop

    .line 4248
    return-object v7

    .line 4237
    .end local v0    # "success":Z
    .restart local v6    # "success":Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_c

    iget-object v9, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 4238
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v9

    if-nez v9, :cond_c

    .line 4239
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 4240
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 4241
    iget-object v9, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4244
    :cond_c
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4245
    if-eqz v7, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    move v9, v10

    :goto_7
    invoke-direct {v1, v15, v9}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    throw v0

    .line 4185
    .end local v6    # "success":Z
    .end local v7    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v8    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "dataRequested":Z
    .end local v12    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v13    # "dirtyReadAll":Z
    .end local v15    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_e
    move-object/from16 v14, p4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;
    .locals 13
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/LockMode;",
            "Lcom/sleepycat/je/CacheMode;",
            "Lcom/sleepycat/je/dbi/SearchMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .line 4056
    .local p6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-eq v11, v0, :cond_5

    .line 4062
    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-eq v11, v0, :cond_4

    .line 4065
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/sleepycat/je/Cursor;->isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4067
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/dbi/SearchMode;->isExactSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4069
    if-nez p6, :cond_0

    .line 4071
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 4069
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    .end local p6    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_6

    .line 4077
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    .restart local p6    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_1
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->searchRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6

    return-object v0

    .line 4079
    :catch_0
    move-exception v0

    .line 4081
    goto :goto_0

    .line 4099
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v10, v0}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v4

    .line 4100
    .local v4, "searchLockType":Lcom/sleepycat/je/txn/LockType;
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v5

    .line 4103
    .local v5, "advanceLockType":Lcom/sleepycat/je/txn/LockType;
    invoke-static {p1}, Lcom/sleepycat/je/Cursor;->cloneEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    .line 4104
    .local v0, "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p2}, Lcom/sleepycat/je/Cursor;->cloneEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    move-object v12, v1

    .line 4119
    .local v12, "tryData":Lcom/sleepycat/je/DatabaseEntry;
    move-object v1, p0

    move-object v2, v0

    move-object v3, v12

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->searchRangeSerializable(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;Ljava/util/Comparator;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_2
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_6

    .line 4123
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_3

    .line 4124
    move-object v2, p1

    :try_start_3
    invoke-static {v0, p1}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_3
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    .line 4125
    move-object v3, p2

    :try_start_4
    invoke-static {v12, p2}, Lcom/sleepycat/je/Cursor;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_4
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 4133
    .end local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "searchLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v5    # "advanceLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v12    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1
    move-exception v0

    goto :goto_6

    .line 4129
    :catch_2
    move-exception v0

    goto :goto_4

    .line 4133
    :catch_3
    move-exception v0

    goto :goto_5

    .line 4129
    :catch_4
    move-exception v0

    goto :goto_3

    .line 4123
    .restart local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v4    # "searchLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v5    # "advanceLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v12    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_3
    move-object v2, p1

    move-object v3, p2

    .line 4128
    :goto_2
    return-object v1

    .line 4129
    .end local v0    # "tryKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "searchLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v5    # "advanceLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v12    # "tryData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_5
    move-exception v0

    move-object v2, p1

    :goto_3
    move-object v3, p2

    .line 4131
    :goto_4
    goto :goto_1

    .line 4133
    :catch_6
    move-exception v0

    move-object v2, p1

    :goto_5
    move-object v3, p2

    .line 4134
    .local v0, "E":Ljava/lang/Error;
    :goto_6
    iget-object v1, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 4135
    throw v0

    .line 4062
    .end local v0    # "E":Ljava/lang/Error;
    :cond_4
    move-object v2, p1

    move-object v3, p2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4056
    :cond_5
    move-object v2, p1

    move-object v3, p2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private searchRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;
    .locals 23
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/LockMode;",
            "Lcom/sleepycat/je/CacheMode;",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/dbi/RangeRestartException;
        }
    .end annotation

    .line 4299
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    if-eqz v8, :cond_e

    if-eqz p2, :cond_e

    .line 4301
    const/16 v17, 0x0

    .line 4302
    .local v17, "success":Z
    iget-object v0, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v19, v0

    .line 4303
    .local v19, "incStats":Z
    const/4 v1, 0x0

    .line 4305
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v6, 0x0

    invoke-direct {v9, v7, v6}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v20

    .line 4307
    .local v20, "lockType":Lcom/sleepycat/je/txn/LockType;
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne v7, v0, :cond_0

    move/from16 v14, v18

    goto :goto_0

    :cond_0
    move v14, v6

    .line 4310
    .local v14, "dirtyReadAll":Z
    :goto_0
    nop

    .line 4311
    move-object/from16 v5, p4

    invoke-direct {v9, v6, v5}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    .line 4315
    .local v4, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v3, p5

    :try_start_0
    invoke-virtual {v4, v8, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->searchRange(Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4317
    .local v0, "searchResult":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_3

    .line 4319
    const/4 v2, 0x1

    .line 4320
    .end local v17    # "success":Z
    .local v2, "success":Z
    const/4 v10, 0x0

    .line 4378
    if-eqz v2, :cond_1

    if-eqz v19, :cond_1

    .line 4380
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 4381
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4382
    iget-object v11, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4385
    :cond_1
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4386
    if-eqz v1, :cond_2

    move/from16 v6, v18

    :cond_2
    invoke-direct {v9, v4, v6}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 4320
    return-object v10

    .line 4331
    .end local v2    # "success":Z
    .restart local v17    # "success":Z
    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    move/from16 v2, v18

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    move/from16 v21, v2

    .line 4333
    .local v21, "exactKeyMatch":Z
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_5

    move/from16 v2, v18

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_2
    move/from16 v22, v2

    .line 4340
    .local v22, "foundLast":Z
    if-eqz v21, :cond_6

    .line 4341
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v20

    :try_start_1
    invoke-virtual/range {v10 .. v16}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_3

    .line 4378
    .end local v0    # "searchResult":I
    .end local v21    # "exactKeyMatch":Z
    .end local v22    # "foundLast":Z
    :catchall_0
    move-exception v0

    move-object v12, v4

    move v13, v6

    goto/16 :goto_6

    .line 4357
    .restart local v0    # "searchResult":I
    .restart local v21    # "exactKeyMatch":Z
    .restart local v22    # "foundLast":Z
    :cond_6
    :goto_3
    if-eqz v21, :cond_8

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v12, v4

    move v13, v6

    goto :goto_5

    .line 4358
    :cond_8
    :goto_4
    const/4 v10, 0x0

    .line 4359
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .local v10, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v22, :cond_9

    .line 4360
    :try_start_2
    iget-object v11, v9, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v12, v4

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v12, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v4, p2

    move-object/from16 v5, v20

    move v13, v6

    move v6, v14

    move-object/from16 v7, p5

    move-object v8, v11

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->searchRangeAdvanceAndCheckKey(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZLjava/util/Comparator;Lcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4370
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    const/16 v19, 0x0

    goto :goto_5

    .line 4378
    .end local v0    # "searchResult":I
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v21    # "exactKeyMatch":Z
    .end local v22    # "foundLast":Z
    .restart local v10    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_6

    .end local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_2
    move-exception v0

    move-object v12, v4

    move v13, v6

    move-object v1, v10

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_6

    .line 4359
    .end local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v0    # "searchResult":I
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v21    # "exactKeyMatch":Z
    .restart local v22    # "foundLast":Z
    :cond_9
    move-object v12, v4

    move v13, v6

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object v1, v10

    .line 4374
    .end local v10    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_5
    const/4 v0, 0x1

    .line 4378
    .end local v17    # "success":Z
    .end local v21    # "exactKeyMatch":Z
    .end local v22    # "foundLast":Z
    .local v0, "success":Z
    if-eqz v0, :cond_a

    if-eqz v19, :cond_a

    .line 4380
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 4381
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4382
    iget-object v2, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4385
    :cond_a
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4386
    if-eqz v1, :cond_b

    move/from16 v13, v18

    :cond_b
    invoke-direct {v9, v12, v13}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 4387
    nop

    .line 4389
    return-object v1

    .line 4378
    .end local v0    # "success":Z
    .end local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v17    # "success":Z
    :catchall_3
    move-exception v0

    move-object v12, v4

    move v13, v6

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_6
    if-eqz v17, :cond_c

    if-eqz v19, :cond_c

    .line 4380
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 4381
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4382
    iget-object v2, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4385
    :cond_c
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4386
    if-eqz v1, :cond_d

    move/from16 v13, v18

    :cond_d
    invoke-direct {v9, v12, v13}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    throw v0

    .line 4299
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v12    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v14    # "dirtyReadAll":Z
    .end local v17    # "success":Z
    .end local v19    # "incStats":Z
    .end local v20    # "lockType":Lcom/sleepycat/je/txn/LockType;
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private searchRangeAdvanceAndCheckKey(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZLjava/util/Comparator;Lcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;
    .locals 13
    .param p1, "dup"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p5, "dirtyReadAll"    # Z
    .param p7, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/CursorImpl;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/txn/LockType;",
            "Z",
            "Ljava/util/Comparator<",
            "[B>;",
            "Lcom/sleepycat/je/dbi/RangeConstraint;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/dbi/RangeRestartException;
        }
    .end annotation

    .line 4601
    .local p6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object v0, p2

    if-nez p6, :cond_0

    .line 4602
    move-object v1, p0

    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    .end local p6    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    goto :goto_0

    .line 4601
    .end local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .restart local p6    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_0
    move-object v1, p0

    move-object/from16 v2, p6

    .line 4605
    .end local p6    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .restart local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :goto_0
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    .line 4606
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v5

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    .line 4608
    .local v3, "origKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object v4, p2

    .line 4609
    .local v4, "nextKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4610
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    .line 4611
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v7

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    move-object v4, v5

    .line 4614
    :cond_1
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p1

    move-object v6, v4

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p7

    invoke-virtual/range {v5 .. v12}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    .line 4628
    .local v5, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v5, :cond_3

    .line 4629
    invoke-static {v4, v3, v2}, Lcom/sleepycat/je/tree/Key;->compareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v6

    .line 4630
    .local v6, "c":I
    if-ltz v6, :cond_2

    .line 4637
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4638
    invoke-static {p2, v4}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_1

    .line 4631
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    .line 4632
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v8

    .line 4633
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v9

    .line 4631
    invoke-virtual {p2, v7, v8, v9}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 4635
    new-instance v7, Lcom/sleepycat/je/dbi/RangeRestartException;

    invoke-direct {v7}, Lcom/sleepycat/je/dbi/RangeRestartException;-><init>()V

    throw v7

    .line 4642
    .end local v6    # "c":I
    :cond_3
    :goto_1
    return-object v5
.end method

.method private searchRangeSerializable(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;Ljava/util/Comparator;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;
    .locals 24
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "searchLockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "advanceLockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p7, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockType;",
            "Ljava/util/Comparator<",
            "[B>;",
            "Lcom/sleepycat/je/CacheMode;",
            "Lcom/sleepycat/je/dbi/SearchMode;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/dbi/RangeRestartException;
        }
    .end annotation

    .line 4457
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-eqz v10, :cond_13

    if-eqz v11, :cond_13

    .line 4459
    const/4 v12, 0x0

    .line 4460
    .local v12, "success":Z
    iget-object v0, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    const/4 v13, 0x1

    xor-int/2addr v0, v13

    move v14, v0

    .line 4462
    .local v14, "incStats":Z
    const/4 v8, 0x0

    .line 4463
    .local v8, "result":Lcom/sleepycat/je/OperationResult;
    invoke-virtual/range {p7 .. p7}, Lcom/sleepycat/je/dbi/SearchMode;->isExactSearch()Z

    move-result v15

    .line 4464
    .local v15, "exactSearch":Z
    const/16 v16, 0x0

    .line 4465
    .local v16, "keyChange":Z
    const/16 v17, 0x0

    .line 4467
    .local v17, "mustLockEOF":Z
    const/4 v0, 0x0

    .line 4468
    .local v0, "origData":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz v15, :cond_0

    .line 4469
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    .line 4470
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    move-object v0, v1

    move-object v7, v0

    goto :goto_0

    .line 4468
    :cond_0
    move-object v7, v0

    .line 4473
    .end local v0    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .local v7, "origData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    nop

    .line 4474
    const/4 v6, 0x0

    move-object/from16 v5, p6

    invoke-direct {v9, v6, v5}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    .line 4478
    .local v4, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v3, p5

    :try_start_0
    invoke-virtual {v4, v10, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->searchRange(Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4480
    .local v0, "searchResult":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_d

    .line 4490
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    move/from16 v18, v1

    .line 4492
    .local v18, "exactKeyMatch":Z
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v13

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    move/from16 v19, v1

    .line 4499
    .local v19, "foundLast":Z
    if-eqz v18, :cond_3

    .line 4500
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v23, v4

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v23, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v4, p3

    move/from16 v5, v20

    move/from16 v20, v6

    move/from16 v6, v21

    move-object v13, v7

    .end local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .local v13, "origData":Lcom/sleepycat/je/DatabaseEntry;
    move/from16 v7, v22

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v1

    goto :goto_3

    .line 4558
    .end local v0    # "searchResult":I
    .end local v18    # "exactKeyMatch":Z
    .end local v19    # "foundLast":Z
    :catchall_0
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v3, v23

    goto/16 :goto_b

    .line 4499
    .end local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v0    # "searchResult":I
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v18    # "exactKeyMatch":Z
    .restart local v19    # "foundLast":Z
    :cond_3
    move-object/from16 v23, v4

    move/from16 v20, v6

    move-object v13, v7

    .line 4515
    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_3
    if-eqz v18, :cond_4

    if-nez v8, :cond_8

    .line 4516
    :cond_4
    const/16 v22, 0x0

    .line 4517
    .end local v8    # "result":Lcom/sleepycat/je/OperationResult;
    .local v22, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v19, :cond_6

    .line 4518
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->searchRangeAdvanceAndCheckKey(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZLjava/util/Comparator;Lcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v22, v1

    .line 4523
    if-eqz v22, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move/from16 v6, v20

    :goto_4
    move/from16 v16, v6

    .line 4524
    const/4 v14, 0x0

    goto :goto_5

    .line 4558
    .end local v0    # "searchResult":I
    .end local v18    # "exactKeyMatch":Z
    .end local v19    # "foundLast":Z
    :catchall_1
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v8, v22

    move-object/from16 v3, v23

    goto/16 :goto_b

    .line 4527
    .restart local v0    # "searchResult":I
    .restart local v18    # "exactKeyMatch":Z
    .restart local v19    # "foundLast":Z
    :cond_6
    :goto_5
    if-nez v22, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    move/from16 v6, v20

    :goto_6
    move/from16 v17, v6

    move-object/from16 v8, v22

    .line 4534
    .end local v22    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_8
    if-eqz v8, :cond_a

    if-eqz v15, :cond_a

    .line 4535
    if-eqz v16, :cond_9

    .line 4536
    const/4 v1, 0x0

    move-object/from16 v2, p7

    move-object v8, v1

    .end local v8    # "result":Lcom/sleepycat/je/OperationResult;
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_7

    .line 4537
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_9
    :try_start_3
    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p7

    if-ne v2, v1, :cond_b

    .line 4538
    :try_start_4
    invoke-direct {v9, v13, v11}, Lcom/sleepycat/je/Cursor;->checkDataMatch(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4539
    const/4 v1, 0x0

    move-object v8, v1

    .end local v8    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_7

    .line 4534
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_a
    move-object/from16 v2, p7

    .line 4544
    :cond_b
    :goto_7
    if-eqz v8, :cond_c

    if-nez v15, :cond_c

    .line 4546
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/Cursor;->checkRangeConstraint(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_c

    .line 4547
    const/4 v1, 0x0

    move-object v8, v1

    .end local v8    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_8

    .line 4558
    .end local v0    # "searchResult":I
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v18    # "exactKeyMatch":Z
    .end local v19    # "foundLast":Z
    .restart local v8    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_2
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_b

    .line 4549
    .restart local v0    # "searchResult":I
    :cond_c
    :goto_8
    goto :goto_9

    .line 4551
    .end local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v23    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_d
    move-object/from16 v2, p7

    move-object/from16 v23, v4

    move/from16 v20, v6

    move-object v13, v7

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v23    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/16 v17, 0x1

    .line 4554
    :goto_9
    const/4 v0, 0x1

    .line 4558
    .end local v12    # "success":Z
    .local v0, "success":Z
    if-eqz v0, :cond_e

    if-eqz v14, :cond_e

    .line 4560
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 4561
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4562
    iget-object v1, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4565
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4566
    if-eqz v8, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    move/from16 v1, v20

    :goto_a
    move-object/from16 v3, v23

    .end local v23    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v3, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-direct {v9, v3, v1}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 4567
    nop

    .line 4578
    if-eqz v17, :cond_10

    .line 4579
    iget-object v1, v9, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v4, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 4582
    :cond_10
    return-object v8

    .line 4558
    .end local v0    # "success":Z
    .end local v3    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "success":Z
    :catchall_3
    move-exception v0

    move-object/from16 v2, p7

    move-object v3, v4

    move/from16 v20, v6

    move-object v13, v7

    .end local v4    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_b
    if-eqz v12, :cond_11

    if-eqz v14, :cond_11

    .line 4560
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 4561
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4562
    iget-object v1, v9, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaGets()V

    .line 4565
    :cond_11
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 4566
    if-eqz v8, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    move/from16 v1, v20

    :goto_c
    invoke-direct {v9, v3, v1}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    throw v0

    .line 4457
    .end local v3    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v8    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v12    # "success":Z
    .end local v13    # "origData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v14    # "incStats":Z
    .end local v15    # "exactSearch":Z
    .end local v16    # "keyChange":Z
    .end local v17    # "mustLockEOF":Z
    :cond_13
    move-object/from16 v2, p7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p0, "from"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "to"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 5609
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v1

    .line 5610
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v2

    .line 5609
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 5611
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 5612
    return-void
.end method

.method private setPrefixConstraint(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p1, "c"    # Lcom/sleepycat/je/Cursor;
    .param p2, "key2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 503
    new-instance v0, Lcom/sleepycat/je/Cursor$2;

    invoke-direct {v0, p0, p2}, Lcom/sleepycat/je/Cursor$2;-><init>(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V

    iput-object v0, p1, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 510
    return-void
.end method

.method private setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V
    .locals 1
    .param p1, "c"    # Lcom/sleepycat/je/Cursor;
    .param p2, "keyBytes2"    # [B

    .line 493
    new-instance v0, Lcom/sleepycat/je/Cursor$1;

    invoke-direct {v0, p0, p2}, Lcom/sleepycat/je/Cursor$1;-><init>(Lcom/sleepycat/je/Cursor;[B)V

    iput-object v0, p1, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 499
    return-void
.end method

.method private skipInternal(JZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)J
    .locals 15
    .param p1, "maxCount"    # J
    .param p3, "forward"    # Z
    .param p4, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p7, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3733
    move-object v1, p0

    const/4 v0, 0x0

    move-object/from16 v2, p6

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v3

    .line 3735
    .local v3, "lockType":Lcom/sleepycat/je/txn/LockType;
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3736
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3743
    :goto_0
    const/4 v0, 0x1

    move-object/from16 v5, p7

    :try_start_1
    invoke-direct {p0, v0, v0, v5}, Lcom/sleepycat/je/Cursor;->beginMoveCursor(ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v6, v0

    .line 3745
    .local v6, "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v7, 0x0

    .line 3747
    .local v7, "success":Z
    const/4 v0, 0x0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    :try_start_2
    invoke-virtual {v6, v10, v8, v9, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->skip(ZJLcom/sleepycat/je/dbi/RangeConstraint;)J

    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3749
    .local v11, "count":J
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-gtz v0, :cond_0

    .line 3750
    nop

    .line 3762
    :try_start_3
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3750
    return-wide v13

    .line 3765
    .end local v6    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "success":Z
    .end local v11    # "count":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3752
    .restart local v6    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "success":Z
    .restart local v11    # "count":J
    :cond_0
    nop

    .line 3753
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    :try_start_4
    invoke-direct {p0, v6, v13, v14, v3}, Lcom/sleepycat/je/Cursor;->getCurrentWithCursorImpl(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3755
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_1

    .line 3762
    :try_start_5
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    goto :goto_0

    .line 3759
    :cond_1
    const/4 v7, 0x1

    .line 3760
    nop

    .line 3762
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    monitor-exit v4

    .line 3760
    return-wide v11

    .line 3762
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v11    # "count":J
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/Cursor;->endMoveCursor(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .end local v3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p1    # "maxCount":J
    .end local p3    # "forward":Z
    .end local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p6    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0

    .line 3765
    .end local v6    # "dup":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "success":Z
    .restart local v3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p1    # "maxCount":J
    .restart local p3    # "forward":Z
    .restart local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p6    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_3
    move-exception v0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    :goto_2
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    goto :goto_3

    :catchall_4
    move-exception v0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v5, p7

    :goto_3
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method private swapCursor(Lcom/sleepycat/je/Cursor;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/Cursor;

    .line 5334
    iget-object v0, p1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 5335
    .local v0, "otherImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    iput-object v1, p1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 5336
    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 5337
    return-void
.end method

.method private traceCursorImpl(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 5591
    const-string v0, " locker="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5592
    const-string v0, " bin="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentNodeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5593
    const-string v0, " idx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5594
    return-void
.end method

.method private updatesProhibitedException(Lcom/sleepycat/je/txn/Locker;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 5415
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5417
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "Write operation is not allowed because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5420
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5422
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5423
    :cond_0
    const-string v1, "the Database is configured as read-only."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5424
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5425
    :cond_2
    const-string v1, "a Transaction was not supplied to openCursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5426
    const-string v1, "and the Database is transactional."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5427
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isLocalWrite()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5428
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->isMixedReplication()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 5429
    :cond_4
    const-string v1, "the Database is replicated and Transaction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5430
    const-string v1, "configured as local-write."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5431
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isLocalWrite()Z

    move-result v1

    if-nez v1, :cond_6

    .line 5432
    const-string v1, "the Database is not replicated and the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5433
    const-string v1, "Transaction is not configured as local-write."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5435
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 5421
    :cond_7
    const-string v1, "the Transaction is configured as read-only."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5438
    :goto_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method advanceCursor(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 5340
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->advanceCursor(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    return v0
.end method

.method checkCurrent(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3068
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/sleepycat/je/Cursor;->getCurrentNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method checkEnv()V
    .locals 1

    .line 5473
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->checkEnv()V

    .line 5474
    return-void
.end method

.method checkForPrimaryUpdate(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 5141
    const/4 v0, 0x0

    return v0
.end method

.method checkOpen()V
    .locals 1

    .line 5462
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkEnv()V

    .line 5463
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_0

    .line 5464
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5466
    :cond_0
    return-void
.end method

.method checkOpenAndState(Z)V
    .locals 0
    .param p1, "mustBeInitialized"    # Z

    .line 5453
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkEnv()V

    .line 5454
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkOpen()V

    .line 5455
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 5456
    return-void
.end method

.method checkState(Z)V
    .locals 2
    .param p1, "mustBeInitialized"    # Z

    .line 5445
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->checkCursorState(ZZ)V

    .line 5447
    return-void
.end method

.method public close()V
    .locals 2

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkEnv()V

    .line 552
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 553
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Database;->removeCursor(Lcom/sleepycat/je/ForwardCursor;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_1
    nop

    .line 561
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 559
    throw v0
.end method

.method public count()I
    .locals 3

    .line 2151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 2152
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.count: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 2154
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->countInternal()I

    move-result v0

    return v0
.end method

.method public countEstimate()J
    .locals 3

    .line 2195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 2196
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.countEstimate: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 2198
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->countEstimateInternal()J

    move-result-wide v0

    return-wide v0
.end method

.method countEstimateInternal()J
    .locals 2

    .line 4736
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4737
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->countEstimateHandleDups()J

    move-result-wide v0

    return-wide v0

    .line 4739
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->countNoDups()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method countInternal()I
    .locals 2

    .line 4668
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4669
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 4670
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4671
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->countHandleDups()I

    move-result v1

    monitor-exit v0

    return v1

    .line 4673
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->countNoDups()I

    move-result v1

    monitor-exit v0

    return v1

    .line 4674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 3
    .param p1, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 636
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.delete: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 638
    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v0, v2

    .line 641
    .local v0, "cacheMode":Lcom/sleepycat/je/CacheMode;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/Cursor;->deleteInternal(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1
.end method

.method public delete()Lcom/sleepycat/je/OperationStatus;
    .locals 2

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 678
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method deleteInternal(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2219
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkUpdatesAllowed()V

    .line 2220
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Cursor;->deleteNotify(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method deleteNoNotify(Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 4
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2360
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2361
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 2367
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Cursor;->beginUseExistingCursor(Lcom/sleepycat/je/CacheMode;)V

    .line 2369
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2370
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 2372
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v2, :cond_0

    .line 2373
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incDeleteOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2376
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->endUseExistingCursor()V

    .line 2377
    monitor-exit v0

    return-object v1

    .line 2378
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteWithRepContext(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/Cursor;->deleteNotify(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public dup(Z)Lcom/sleepycat/je/Cursor;
    .locals 2
    .param p1, "samePosition"    # Z

    .line 593
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 594
    new-instance v0, Lcom/sleepycat/je/Cursor;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Cursor;Z)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 597
    throw v0
.end method

.method excludeFromOpStats()V
    .locals 1

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    .line 397
    return-void
.end method

.method public get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 15
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 1232
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkOpen()V

    .line 1234
    if-nez p4, :cond_0

    .line 1235
    sget-object v0, Lcom/sleepycat/je/Cursor;->DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v0

    .end local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "options":Lcom/sleepycat/je/ReadOptions;
    goto :goto_0

    .line 1234
    .end local v0    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    :cond_0
    move-object/from16 v7, p4

    .line 1238
    .end local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v7, "options":Lcom/sleepycat/je/ReadOptions;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v14

    .line 1240
    .local v14, "lockMode":Lcom/sleepycat/je/LockMode;
    sget-object v9, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v10, "Cursor.get: "

    .line 1241
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1240
    move-object v8, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v14}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 1244
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1246
    .end local v14    # "lockMode":Lcom/sleepycat/je/LockMode;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v7    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    :catch_1
    move-exception v0

    move-object/from16 v7, p4

    .line 1247
    .end local p4    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "E":Ljava/lang/Error;
    .restart local v7    # "options":Lcom/sleepycat/je/ReadOptions;
    :goto_1
    move-object v1, p0

    iget-object v2, v1, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1248
    throw v0
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getConfig()Lcom/sleepycat/je/CursorConfig;
    .locals 2

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->config:Lcom/sleepycat/je/CursorConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/CursorConfig;->clone()Lcom/sleepycat/je/CursorConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 436
    throw v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1367
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    .line 1368
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1367
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1370
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 3049
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3051
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 3053
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3054
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->getCurrentHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3057
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->getCurrentNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3058
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbHandle:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1414
    sget-object v0, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    .line 1415
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1414
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1417
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1268
    const-string v0, "getType"

    invoke-static {p3, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p4}, Lcom/sleepycat/je/ReadOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    .line 1271
    .local v0, "cacheMode":Lcom/sleepycat/je/CacheMode;
    invoke-virtual {p3}, Lcom/sleepycat/je/Get;->getSearchMode()Lcom/sleepycat/je/dbi/SearchMode;

    move-result-object v8

    .line 1273
    .local v8, "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v8, :cond_3

    .line 1274
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 1276
    const-string v1, "key"

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 1277
    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/SearchMode;->isDataSearch()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne v8, v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1281
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    if-nez p2, :cond_2

    .line 1286
    sget-object p2, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    goto :goto_1

    .line 1282
    :cond_1
    :goto_0
    const-string v1, "data"

    invoke-static {p2, v1, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 1283
    invoke-static {p2, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 1290
    :cond_2
    :goto_1
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, v0

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1

    .line 1293
    :cond_3
    if-nez p1, :cond_4

    .line 1294
    sget-object p1, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    .line 1296
    :cond_4
    if-nez p2, :cond_5

    .line 1297
    sget-object p2, Lcom/sleepycat/je/Cursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    .line 1300
    :cond_5
    invoke-virtual {p3}, Lcom/sleepycat/je/Get;->getGetMode()Lcom/sleepycat/je/dbi/GetMode;

    move-result-object v3

    .line 1302
    .local v3, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    invoke-virtual {p3}, Lcom/sleepycat/je/Get;->getAllowNextPrevUninitialized()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1303
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->isNotInitialized()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1305
    if-eqz v3, :cond_7

    .line 1306
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    :goto_2
    move-object p3, v4

    .line 1307
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_3

    .line 1305
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1310
    :cond_8
    move-object v7, v3

    .end local v3    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .local v7, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :goto_3
    if-eqz v7, :cond_9

    .line 1311
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 1313
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1

    .line 1316
    :cond_9
    sget-object v3, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    if-ne p3, v3, :cond_a

    .line 1317
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 1319
    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/sleepycat/je/Cursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1

    .line 1322
    :cond_a
    sget-object v3, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    if-eq p3, v3, :cond_c

    sget-object v3, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    if-ne p3, v3, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1323
    :cond_c
    :goto_4
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 1325
    sget-object v3, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    if-ne p3, v3, :cond_d

    move v6, v2

    goto :goto_5

    :cond_d
    move v6, v1

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1
.end method

.method public getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1461
    sget-object v0, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    .line 1462
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1461
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1464
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1512
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 1513
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1512
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1515
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1560
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT_DUP:Lcom/sleepycat/je/Get;

    .line 1561
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1560
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1563
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1612
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT_NO_DUP:Lcom/sleepycat/je/Get;

    .line 1613
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1612
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1615
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1663
    sget-object v0, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    .line 1664
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1663
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1666
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1711
    sget-object v0, Lcom/sleepycat/je/Get;->PREV_DUP:Lcom/sleepycat/je/Get;

    .line 1712
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1711
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1714
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1763
    sget-object v0, Lcom/sleepycat/je/Get;->PREV_NO_DUP:Lcom/sleepycat/je/Get;

    .line 1764
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1763
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1766
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2055
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    .line 2056
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 2055
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 2058
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2110
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

    .line 2112
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 2110
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 2114
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1957
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 1958
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 1957
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1960
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2009
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    .line 2010
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 2009
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 2012
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 5370
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/Cursor;->readUncommittedDefault:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    if-ne p1, v0, :cond_0

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

.method isSecondaryCursor()Z
    .locals 1

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 5378
    iget-boolean v0, p0, Lcom/sleepycat/je/Cursor;->serializableIsolationDefault:Z

    if-eqz v0, :cond_0

    .line 5379
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Cursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5378
    :goto_0
    return v0
.end method

.method position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 4
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "first"    # Z

    .line 3138
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3140
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 3144
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3145
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->positionHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_0

    .line 3148
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->positionNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3152
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v2, :cond_1

    .line 3153
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incPositionOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3156
    :cond_1
    monitor-exit v0

    return-object v1

    .line 3157
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "putType"    # Lcom/sleepycat/je/Put;
    .param p4, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->checkOpen()V

    .line 794
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.put: "

    .line 795
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 794
    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 798
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 802
    throw v0
.end method

.method public put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 896
    sget-object v0, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 898
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 899
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    return-object v1
.end method

.method public putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1067
    sget-object v0, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1069
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method putForReplay(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;IZLcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 13
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z
    .param p6, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p7, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2399
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    move-object/from16 v9, p6

    if-eq v9, v0, :cond_0

    .line 2401
    new-instance v6, Lcom/sleepycat/je/dbi/ExpirationInfo;

    const/4 v0, 0x1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct {v6, v10, v11, v0}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V

    .line 2404
    .local v6, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 2405
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 2407
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->putNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    monitor-exit v12

    return-object v0

    .line 2409
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2399
    .end local v6    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :cond_0
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p5, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;

    .line 2439
    invoke-direct {p0, p4}, Lcom/sleepycat/je/Cursor;->checkUpdatesAllowed(Lcom/sleepycat/je/dbi/ExpirationInfo;)V

    .line 2441
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2442
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 2444
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2445
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->putHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2449
    :cond_0
    sget-object v1, Lcom/sleepycat/je/dbi/PutMode;->NO_DUP_DATA:Lcom/sleepycat/je/dbi/PutMode;

    if-eq p5, v1, :cond_1

    .line 2454
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->putNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2450
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Database is not configured for duplicate data."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p4    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local p5    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    throw v1

    .line 2456
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p4    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local p5    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "putType"    # Lcom/sleepycat/je/Put;
    .param p4, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 818
    const-string v0, "putType"

    invoke-static {p3, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    sget-object v0, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    const-string v1, "key"

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    .line 821
    if-nez p1, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be null for Put.Current"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_1
    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 829
    :goto_0
    if-eqz p1, :cond_2

    .line 830
    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 833
    :cond_2
    const-string v0, "data"

    invoke-static {p2, v0, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 835
    sget-object v0, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/Cursor;->checkState(Z)V

    .line 837
    if-nez p4, :cond_4

    .line 838
    sget-object p4, Lcom/sleepycat/je/Cursor;->DEFAULT_WRITE_OPTIONS:Lcom/sleepycat/je/WriteOptions;

    .line 841
    :cond_4
    nop

    .line 842
    invoke-virtual {p4}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v3

    .line 843
    invoke-static {p4}, Lcom/sleepycat/je/dbi/ExpirationInfo;->getInfo(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/dbi/ExpirationInfo;

    move-result-object v4

    .line 844
    invoke-virtual {p3}, Lcom/sleepycat/je/Put;->getPutMode()Lcom/sleepycat/je/dbi/PutMode;

    move-result-object v5

    .line 841
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public putNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1003
    sget-object v0, Lcom/sleepycat/je/Put;->NO_DUP_DATA:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1006
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 947
    sget-object v0, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 950
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method putWithRepContext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 10
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p4, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 2418
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/je/tree/LN;->makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    .line 2420
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2421
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 2423
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/Cursor;->putNotify(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v9

    return-object v1

    .line 2425
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readPrimaryAfterGet(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z
    .locals 22
    .param p1, "priDb"    # Lcom/sleepycat/je/Database;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p6, "secDirtyRead"    # Z
    .param p7, "lockPrimaryOnly"    # Z
    .param p8, "verifyPrimary"    # Z
    .param p9, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p10, "secDb"    # Lcom/sleepycat/je/Database;
    .param p11, "secAssoc"    # Lcom/sleepycat/je/SecondaryAssociation;

    .line 4886
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p11

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/Cursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v13

    .line 4887
    .local v13, "priDirtyRead":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v14

    .line 4895
    .local v14, "priDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz p7, :cond_1

    .line 4896
    if-eqz v11, :cond_0

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4898
    :cond_1
    if-ne v11, v13, :cond_14

    .line 4901
    :goto_0
    nop

    .line 4902
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    move v15, v0

    .line 4912
    .local v15, "dataRequested":Z
    if-nez v15, :cond_4

    if-nez p8, :cond_4

    .line 4913
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    move-object/from16 v4, p4

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 4914
    return v2

    .line 4912
    :cond_4
    move-object/from16 v4, p4

    .line 4921
    const/4 v0, 0x0

    .line 4923
    .local v0, "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz v13, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4924
    move-object/from16 v0, p4

    .line 4925
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v4, v5

    move-object v8, v0

    move-object v7, v4

    .end local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "data":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_3

    .line 4933
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_5
    move-object v8, v0

    move-object v7, v4

    .end local v0    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v7, "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v8, "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_3
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    move-object/from16 v6, p9

    invoke-direct {v0, v14, v6, v2, v3}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;ZZ)V

    move-object v5, v0

    .line 4938
    .local v5, "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    invoke-direct {v1, v10, v3}, Lcom/sleepycat/je/Cursor;->getLockType(Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/txn/LockType;

    move-result-object v0

    move-object v4, v0

    .line 4940
    .local v4, "priLockType":Lcom/sleepycat/je/txn/LockType;
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    if-ne v10, v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    move/from16 p4, v0

    .line 4943
    .local p4, "dirtyReadAll":Z
    move/from16 v3, p4

    .end local p4    # "dirtyReadAll":Z
    .local v3, "dirtyReadAll":Z
    invoke-virtual {v5, v9, v4, v3, v15}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 p4, v16

    .line 4947
    .local p4, "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    move-object/from16 v2, p4

    .end local p4    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v2, "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    if-eqz v2, :cond_7

    .line 4948
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-nez v0, :cond_7

    .line 4949
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4950
    const/4 v0, 0x0

    .end local v2    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v0, "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    goto :goto_6

    .line 4954
    .end local v0    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v2    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "priDirtyRead":Z
    .end local v14    # "priDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "dataRequested":Z
    .end local p1    # "priDb":Lcom/sleepycat/je/Database;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p6    # "secDirtyRead":Z
    .end local p7    # "lockPrimaryOnly":Z
    .end local p8    # "verifyPrimary":Z
    .end local p9    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p10    # "secDb":Lcom/sleepycat/je/Database;
    .end local p11    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5039
    .end local v2    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v3    # "dirtyReadAll":Z
    .end local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "priDirtyRead":Z
    .restart local v14    # "priDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "dataRequested":Z
    .restart local p1    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p6    # "secDirtyRead":Z
    .restart local p7    # "lockPrimaryOnly":Z
    .restart local p8    # "verifyPrimary":Z
    .restart local p9    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p10    # "secDb":Lcom/sleepycat/je/Database;
    .restart local p11    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v2, p2

    move-object v3, v5

    move-object v10, v7

    move-object v11, v8

    goto/16 :goto_c

    .line 4954
    .restart local v2    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v3    # "dirtyReadAll":Z
    .restart local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    :cond_7
    move-object v0, v2

    .end local v2    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v0    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :goto_6
    :try_start_3
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 4955
    nop

    .line 4957
    if-eqz v0, :cond_8

    if-eqz p7, :cond_8

    .line 4958
    :try_start_4
    invoke-direct {v1, v9, v4}, Lcom/sleepycat/je/Cursor;->ensureReferenceToPrimary(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4959
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4960
    const/4 v0, 0x0

    move-object/from16 v17, v0

    goto :goto_7

    .line 4964
    :cond_8
    move-object/from16 v17, v0

    .end local v0    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v17, "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :goto_7
    if-nez v17, :cond_f

    .line 4976
    if-nez v11, :cond_e

    :try_start_5
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->isProbablyExpired()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_9

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v5

    move-object v10, v7

    move-object v11, v8

    goto/16 :goto_a

    .line 4991
    :cond_9
    if-eqz v12, :cond_c

    .line 4992
    const/4 v0, 0x0

    .line 4993
    .local v0, "stillExist":Z
    :try_start_6
    invoke-interface {v12, v9}, Lcom/sleepycat/je/SecondaryAssociation;->getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sleepycat/je/SecondaryDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v18, v16

    .line 4994
    .local v18, "db":Lcom/sleepycat/je/SecondaryDatabase;
    move-object/from16 v10, p10

    move/from16 v16, v0

    move-object/from16 v0, v18

    .end local v18    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    .local v0, "db":Lcom/sleepycat/je/SecondaryDatabase;
    .local v16, "stillExist":Z
    if-ne v0, v10, :cond_a

    .line 4995
    const/4 v2, 0x1

    .line 4996
    .end local v16    # "stillExist":Z
    .local v2, "stillExist":Z
    move v0, v2

    goto :goto_9

    .line 4998
    .end local v0    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v2    # "stillExist":Z
    .restart local v16    # "stillExist":Z
    :cond_a
    move-object/from16 v10, p5

    move/from16 v0, v16

    goto :goto_8

    .line 4993
    .end local v16    # "stillExist":Z
    .local v0, "stillExist":Z
    :cond_b
    move-object/from16 v10, p10

    move/from16 v16, v0

    .line 4999
    :goto_9
    if-nez v0, :cond_d

    .line 5000
    nop

    .line 5039
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 5000
    const/4 v2, 0x0

    return v2

    .line 5039
    .end local v0    # "stillExist":Z
    .end local v3    # "dirtyReadAll":Z
    .end local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :catchall_2
    move-exception v0

    move-object/from16 v10, p10

    goto :goto_5

    .line 4991
    .restart local v3    # "dirtyReadAll":Z
    .restart local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :cond_c
    move-object/from16 v10, p10

    .line 5009
    :cond_d
    :try_start_7
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 5010
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getExpirationTime()J

    move-result-wide v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5009
    move-object/from16 v2, p10

    move/from16 v20, v3

    .end local v3    # "dirtyReadAll":Z
    .local v20, "dirtyReadAll":Z
    move-object/from16 v3, p9

    move-object/from16 v21, v4

    .end local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .local v21, "priLockType":Lcom/sleepycat/je/txn/LockType;
    move-object/from16 v4, p1

    move-object/from16 p4, v5

    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local p4, "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v10, v7

    move-object v11, v8

    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v10, "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v11, "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    move-wide/from16 v7, v18

    :try_start_8
    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/Database;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v0

    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "priDirtyRead":Z
    .end local v14    # "priDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "dataRequested":Z
    .end local p1    # "priDb":Lcom/sleepycat/je/Database;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p5    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p6    # "secDirtyRead":Z
    .end local p7    # "lockPrimaryOnly":Z
    .end local p8    # "verifyPrimary":Z
    .end local p9    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p10    # "secDb":Lcom/sleepycat/je/Database;
    .end local p11    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 5039
    .end local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v20    # "dirtyReadAll":Z
    .end local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "priDirtyRead":Z
    .restart local v14    # "priDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "dataRequested":Z
    .restart local p1    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p5    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p6    # "secDirtyRead":Z
    .restart local p7    # "lockPrimaryOnly":Z
    .restart local p8    # "verifyPrimary":Z
    .restart local p9    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p10    # "secDb":Lcom/sleepycat/je/Database;
    .restart local p11    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_b

    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_4
    move-exception v0

    move-object v10, v7

    move-object v11, v8

    move-object/from16 v2, p2

    move-object v3, v5

    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto/16 :goto_c

    .line 4976
    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "dirtyReadAll":Z
    .restart local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :cond_e
    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v5

    move-object v10, v7

    move-object v11, v8

    .line 4977
    .end local v3    # "dirtyReadAll":Z
    .end local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "dirtyReadAll":Z
    .restart local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_a
    nop

    .line 5039
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 4977
    const/4 v0, 0x0

    return v0

    .line 5018
    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "dirtyReadAll":Z
    .end local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "dirtyReadAll":Z
    .restart local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_f
    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v5

    move-object v10, v7

    move-object v11, v8

    .end local v3    # "dirtyReadAll":Z
    .end local v4    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "dirtyReadAll":Z
    .restart local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    if-eqz v13, :cond_10

    move-object/from16 v2, p2

    :try_start_9
    invoke-virtual {v1, v2, v9, v10}, Lcom/sleepycat/je/Cursor;->checkForPrimaryUpdate(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_11

    .line 5019
    nop

    .line 5039
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 5019
    const/4 v0, 0x0

    return v0

    .line 5039
    .end local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v20    # "dirtyReadAll":Z
    .end local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    :catchall_5
    move-exception v0

    :goto_b
    move-object/from16 v3, p4

    goto :goto_c

    .line 5018
    .restart local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v20    # "dirtyReadAll":Z
    .restart local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    :cond_10
    move-object/from16 v2, p2

    .line 5026
    :cond_11
    if-eqz v11, :cond_12

    .line 5027
    :try_start_a
    invoke-virtual {v10}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-static {v11, v0}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 5031
    :cond_12
    :try_start_b
    iget-object v0, v1, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v3, p4

    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v3, "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_c
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setPriInfo(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 5033
    iget-boolean v0, v1, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v0, :cond_13

    .line 5034
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incSearchOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 5037
    :cond_13
    nop

    .line 5039
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 5037
    const/4 v0, 0x1

    return v0

    .line 5039
    .end local v17    # "priLockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v20    # "dirtyReadAll":Z
    .end local v21    # "priLockType":Lcom/sleepycat/je/txn/LockType;
    :catchall_6
    move-exception v0

    goto :goto_c

    .end local v3    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_7
    move-exception v0

    move-object/from16 v3, p4

    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_c

    .end local v3    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_8
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v10, v7

    move-object v11, v8

    .end local v5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_c
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v0

    .line 4898
    .end local v3    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v10    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "copyToPartialEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "dataRequested":Z
    .local p4, "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_14
    move-object/from16 v2, p2

    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 4
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;

    .line 3305
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3308
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->retrieveNextHandleDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_0

    .line 3312
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/Cursor;->retrieveNextNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3316
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v2, :cond_1

    .line 3317
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incPositionOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3320
    :cond_1
    monitor-exit v0

    return-object v1

    .line 3321
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .param p6, "countOpStat"    # Z

    .line 3806
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3809
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 3811
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3813
    sget-object v1, Lcom/sleepycat/je/Cursor$3;->$SwitchMap$com$sleepycat$je$dbi$SearchMode:[I

    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/SearchMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3833
    nop

    .line 3834
    invoke-virtual {p5}, Lcom/sleepycat/je/dbi/SearchMode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3829
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetSearchAnyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3831
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_2

    .line 3825
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3827
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_2

    .line 3822
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3823
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_2

    .line 3818
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3820
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_2

    .line 3815
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->dupsGetSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3816
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    goto :goto_2

    .line 3833
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p5    # "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    .end local p6    # "countOpStat":Z
    throw v1

    .line 3837
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p5    # "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    .restart local p6    # "countOpStat":Z
    :cond_0
    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne p5, v1, :cond_1

    .line 3838
    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    move-object p5, v1

    goto :goto_1

    .line 3839
    :cond_1
    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne p5, v1, :cond_2

    .line 3840
    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    move-object p5, v1

    .line 3842
    :cond_2
    :goto_1
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3847
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :goto_2
    if-eqz p6, :cond_4

    iget-boolean v2, p0, Lcom/sleepycat/je/Cursor;->includeInOpStats:Z

    if-eqz v2, :cond_4

    .line 3848
    if-eqz v1, :cond_3

    .line 3849
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incSearchOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_3

    .line 3851
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incSearchFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3855
    :cond_4
    :goto_3
    monitor-exit v0

    return-object v1

    .line 3856
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method searchForReplay(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;

    .line 3870
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->getTxnSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3872
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Cursor;->checkTxnState()V

    .line 3874
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->searchNoDups(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Ljava/util/Comparator;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 469
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 470
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/Cursor;->defaultCacheMode:Lcom/sleepycat/je/CacheMode;

    .line 471
    return-void
.end method

.method setNonSticky(Z)V
    .locals 0
    .param p1, "nonSticky"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/sleepycat/je/Cursor;->nonSticky:Z

    .line 390
    return-void
.end method

.method public setRangeConstraint(Lcom/sleepycat/je/dbi/RangeConstraint;)V
    .locals 2
    .param p1, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 486
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iput-object p1, p0, Lcom/sleepycat/je/Cursor;->rangeConstraint:Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 490
    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed with dups"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipNext(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)J
    .locals 10
    .param p1, "maxCount"    # J
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1830
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 1831
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1835
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.skipNext: "

    invoke-virtual {p0, v0, v1, p5}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 1837
    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/Cursor;->skipInternal(JZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)J

    move-result-wide v0

    return-wide v0

    .line 1832
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCount must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipPrev(JLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)J
    .locals 10
    .param p1, "maxCount"    # J
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1906
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Cursor;->checkOpenAndState(Z)V

    .line 1907
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1911
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.skipPrev: "

    invoke-virtual {p0, v0, v1, p5}, Lcom/sleepycat/je/Cursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 1913
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/Cursor;->skipInternal(JZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)J

    move-result-wide v0

    return-wide v0

    .line 1908
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCount must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 5550
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5552
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5553
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Cursor;->traceCursorImpl(Ljava/lang/StringBuilder;)V

    .line 5554
    if-eqz p3, :cond_0

    .line 5555
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5557
    :cond_0
    if-eqz p4, :cond_1

    .line 5558
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5560
    :cond_1
    if-eqz p5, :cond_2

    .line 5561
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5563
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5564
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5563
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 5566
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 5578
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5580
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5581
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Cursor;->traceCursorImpl(Ljava/lang/StringBuilder;)V

    .line 5582
    if-eqz p3, :cond_0

    .line 5583
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5585
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5586
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5585
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 5588
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "getOrPutType"    # Ljava/lang/String;
    .param p4, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 5519
    iget-object v0, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5521
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5522
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5523
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Cursor;->traceCursorImpl(Ljava/lang/StringBuilder;)V

    .line 5524
    if-eqz p4, :cond_0

    .line 5525
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5527
    :cond_0
    if-eqz p5, :cond_1

    .line 5528
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5530
    :cond_1
    if-eqz p6, :cond_2

    .line 5531
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5533
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/Cursor;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/Cursor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 5534
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5533
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 5536
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method
