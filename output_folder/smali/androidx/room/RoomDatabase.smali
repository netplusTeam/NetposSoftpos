.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$QueryCallback;,
        Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;,
        Landroidx/room/RoomDatabase$Callback;,
        Landroidx/room/RoomDatabase$MigrationContainer;,
        Landroidx/room/RoomDatabase$Builder;,
        Landroidx/room/RoomDatabase$JournalMode;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mAutoCloser:Landroidx/room/AutoCloser;

.field protected mAutoMigrationSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected volatile mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mInvalidationTracker:Landroidx/room/InvalidationTracker;

.field private mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private final mSuspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field private final mTypeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mBackingFieldMap:Ljava/util/Map;

    .line 186
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mTypeConverters:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mAutoMigrationSpecs:Ljava/util/Map;

    .line 189
    return-void
.end method

.method private internalBeginTransaction()V
    .locals 3

    .line 565
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 566
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 567
    .local v0, "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 568
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 569
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 574
    :goto_0
    return-void
.end method

.method private internalEndTransaction()V
    .locals 1

    .line 594
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 595
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->refreshVersionsAsync()V

    .line 600
    :cond_0
    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 1608
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;
    .locals 1
    .param p2, "openHelper"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
            ")TT;"
        }
    .end annotation

    .line 339
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-object p2

    .line 342
    :cond_0
    instance-of v0, p2, Landroidx/room/DelegatingOpenHelper;

    if-eqz v0, :cond_1

    .line 343
    move-object v0, p2

    check-cast v0, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v0}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2

    .line 465
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    invoke-static {}, Landroidx/room/RoomDatabase;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    return-void

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2

    .line 483
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 554
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    goto :goto_0

    .line 557
    :cond_0
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomDatabase;)V

    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    .line 562
    :goto_0
    return-void
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 446
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 448
    :try_start_0
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->stopMultiInstanceInvalidation()V

    .line 449
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    goto :goto_0

    .line 451
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    throw v1

    .line 454
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 542
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 543
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createInvalidationTracker()Landroidx/room/InvalidationTracker;
.end method

.method protected abstract createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end method

.method public endTransaction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    if-nez v0, :cond_0

    .line 584
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_0

    .line 586
    :cond_0
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Landroidx/room/RoomDatabase;)V

    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    .line 591
    :goto_0
    return-void
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 325
    .local p1, "autoMigrationSpecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;Landroidx/room/migration/AutoMigrationSpec;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getBackingFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mBackingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 1

    .line 695
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 607
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 406
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 615
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getTypeConverter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 175
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mTypeConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 706
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroidx/room/DatabaseConfiguration;)V
    .locals 19
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    iput-object v2, v0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 199
    nop

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecs()Ljava/util/Set;

    move-result-object v2

    .line 201
    .local v2, "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 202
    .local v3, "usedSpecs":Ljava/util/BitSet;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 203
    .local v5, "spec":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;"
    const/4 v7, -0x1

    .line 204
    .local v7, "foundIndex":I
    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .line 205
    .local v8, "providedIndex":I
    :goto_1
    if-ltz v8, :cond_1

    .line 207
    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 208
    .local v6, "provided":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    move v7, v8

    .line 210
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 211
    goto :goto_2

    .line 205
    .end local v6    # "provided":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 214
    .end local v8    # "providedIndex":I
    :cond_1
    :goto_2
    if-ltz v7, :cond_2

    .line 219
    iget-object v6, v0, Landroidx/room/RoomDatabase;->mAutoMigrationSpecs:Ljava/util/Map;

    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/room/migration/AutoMigrationSpec;

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v5    # "spec":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;"
    .end local v7    # "foundIndex":I
    goto :goto_0

    .line 215
    .restart local v5    # "spec":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;"
    .restart local v7    # "foundIndex":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A required auto migration spec ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 216
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") is missing in the database configuration."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    .end local v5    # "spec":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;"
    .end local v7    # "foundIndex":I
    :cond_3
    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    .line 223
    .local v4, "providedIndex":I
    :goto_3
    if-ltz v4, :cond_5

    .line 224
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 225
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    .end local v4    # "providedIndex":I
    :cond_5
    iget-object v4, v0, Landroidx/room/RoomDatabase;->mAutoMigrationSpecs:Ljava/util/Map;

    invoke-virtual {v0, v4}, Landroidx/room/RoomDatabase;->getAutoMigrations(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 233
    .local v4, "autoMigrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/migration/Migration;

    .line 234
    .local v7, "autoMigration":Landroidx/room/migration/Migration;
    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase$MigrationContainer;->getMigrations()Ljava/util/Map;

    move-result-object v9

    iget v10, v7, Landroidx/room/migration/Migration;->startVersion:I

    .line 235
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 236
    .local v9, "migrationExists":Z
    if-nez v9, :cond_6

    .line 237
    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    new-array v11, v6, [Landroidx/room/migration/Migration;

    aput-object v7, v11, v8

    invoke-virtual {v10, v11}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 239
    .end local v7    # "autoMigration":Landroidx/room/migration/Migration;
    .end local v9    # "migrationExists":Z
    :cond_6
    goto :goto_4

    .line 242
    :cond_7
    const-class v5, Landroidx/room/SQLiteCopyOpenHelper;

    iget-object v7, v0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-direct {v0, v5, v7}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/SQLiteCopyOpenHelper;

    .line 244
    .local v5, "copyOpenHelper":Landroidx/room/SQLiteCopyOpenHelper;
    if-eqz v5, :cond_8

    .line 245
    invoke-virtual {v5, v1}, Landroidx/room/SQLiteCopyOpenHelper;->setDatabaseConfiguration(Landroidx/room/DatabaseConfiguration;)V

    .line 248
    :cond_8
    const-class v7, Landroidx/room/AutoClosingRoomOpenHelper;

    iget-object v9, v0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 249
    invoke-direct {v0, v7, v9}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/AutoClosingRoomOpenHelper;

    .line 251
    .local v7, "autoClosingRoomOpenHelper":Landroidx/room/AutoClosingRoomOpenHelper;
    if-eqz v7, :cond_9

    .line 252
    invoke-virtual {v7}, Landroidx/room/AutoClosingRoomOpenHelper;->getAutoCloser()Landroidx/room/AutoCloser;

    move-result-object v9

    iput-object v9, v0, Landroidx/room/RoomDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    .line 253
    iget-object v10, v0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v10, v9}, Landroidx/room/InvalidationTracker;->setAutoCloser(Landroidx/room/AutoCloser;)V

    .line 257
    :cond_9
    const/4 v9, 0x0

    .line 258
    .local v9, "wal":Z
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_b

    .line 259
    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v11, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v10, v11, :cond_a

    move v8, v6

    :cond_a
    move v9, v8

    .line 260
    iget-object v8, v0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v8, v9}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 262
    :cond_b
    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v8, v0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 263
    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v8, v0, Landroidx/room/RoomDatabase;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 264
    new-instance v8, Landroidx/room/TransactionExecutor;

    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v8, v10}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v8, v0, Landroidx/room/RoomDatabase;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 265
    iget-boolean v8, v1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v8, v0, Landroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 266
    iput-boolean v9, v0, Landroidx/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    .line 267
    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    if-eqz v8, :cond_c

    .line 268
    iget-object v8, v0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    iget-object v11, v1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    invoke-virtual {v8, v10, v11, v12}, Landroidx/room/InvalidationTracker;->startMultiInstanceInvalidation(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 272
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverters()Ljava/util/Map;

    move-result-object v8

    .line 276
    .local v8, "requiredFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    .line 277
    .local v10, "used":Ljava/util/BitSet;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 278
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    .line 279
    .local v13, "daoName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    .line 280
    .local v15, "converter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v16, -0x1

    .line 282
    .local v16, "foundIndex":I
    move-object/from16 v17, v2

    .end local v2    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .local v17, "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    .line 283
    .local v2, "providedIndex":I
    :goto_7
    if-ltz v2, :cond_e

    .line 284
    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 285
    .restart local v6    # "provided":Ljava/lang/Object;
    move-object/from16 v18, v3

    .end local v3    # "usedSpecs":Ljava/util/BitSet;
    .local v18, "usedSpecs":Ljava/util/BitSet;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 286
    move v3, v2

    .line 287
    .end local v16    # "foundIndex":I
    .local v3, "foundIndex":I
    invoke-virtual {v10, v3}, Ljava/util/BitSet;->set(I)V

    .line 288
    goto :goto_8

    .line 283
    .end local v3    # "foundIndex":I
    .end local v6    # "provided":Ljava/lang/Object;
    .restart local v16    # "foundIndex":I
    :cond_d
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, v18

    const/4 v6, 0x1

    goto :goto_7

    .end local v18    # "usedSpecs":Ljava/util/BitSet;
    .local v3, "usedSpecs":Ljava/util/BitSet;
    :cond_e
    move-object/from16 v18, v3

    .end local v3    # "usedSpecs":Ljava/util/BitSet;
    .restart local v18    # "usedSpecs":Ljava/util/BitSet;
    move/from16 v3, v16

    .line 291
    .end local v2    # "providedIndex":I
    .end local v16    # "foundIndex":I
    .local v3, "foundIndex":I
    :goto_8
    if-ltz v3, :cond_f

    .line 297
    iget-object v2, v0, Landroidx/room/RoomDatabase;->mTypeConverters:Ljava/util/Map;

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v3    # "foundIndex":I
    .end local v15    # "converter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v6, 0x1

    goto :goto_6

    .line 292
    .restart local v3    # "foundIndex":I
    .restart local v15    # "converter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "A required type converter ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " is missing in the database configuration."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v15    # "converter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .end local v18    # "usedSpecs":Ljava/util/BitSet;
    .local v2, "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .local v3, "usedSpecs":Ljava/util/BitSet;
    :cond_10
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 299
    .end local v2    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .end local v3    # "usedSpecs":Ljava/util/BitSet;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    .end local v13    # "daoName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .restart local v18    # "usedSpecs":Ljava/util/BitSet;
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 301
    .end local v17    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .end local v18    # "usedSpecs":Ljava/util/BitSet;
    .restart local v2    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .restart local v3    # "usedSpecs":Ljava/util/BitSet;
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .end local v3    # "usedSpecs":Ljava/util/BitSet;
    .restart local v17    # "requiredAutoMigrationSpecs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    .restart local v18    # "usedSpecs":Ljava/util/BitSet;
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 302
    .local v2, "providedIndex":I
    :goto_9
    if-ltz v2, :cond_13

    .line 303
    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 302
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 304
    :cond_12
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 305
    .local v3, "converter":Ljava/lang/Object;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected type converter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 310
    .end local v2    # "providedIndex":I
    .end local v3    # "converter":Ljava/lang/Object;
    :cond_13
    return-void
.end method

.method protected internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 682
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->internalInit(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 683
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 432
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->isActive()Z

    move-result v0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 437
    .local v0, "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$beginTransaction$0$androidx-room-RoomDatabase(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 558
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 559
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$endTransaction$1$androidx-room-RoomDatabase(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 587
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "signal"    # Landroid/os/CancellationSignal;

    .line 525
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 526
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 527
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 528
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 659
    .local p1, "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 661
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 662
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    nop

    .line 670
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 663
    return-object v0

    .line 670
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Landroidx/room/util/SneakyThrow;->reThrow(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    const/4 v1, 0x0

    .line 670
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 668
    return-object v1

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .end local p1    # "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 670
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 671
    throw v0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/Runnable;

    .line 638
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 640
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 641
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 644
    nop

    .line 645
    return-void

    .line 643
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 644
    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 626
    return-void
.end method
