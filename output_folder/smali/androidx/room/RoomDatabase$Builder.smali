.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowDestructiveMigrationOnDowngrade:Z

.field private mAllowMainThreadQueries:Z

.field private mAutoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private mAutoCloseTimeout:J

.field private mAutoMigrationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCopyFromAssetPath:Ljava/lang/String;

.field private mCopyFromFile:Ljava/io/File;

.field private mCopyFromInputStream:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field private mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field private mMigrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMigrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiInstanceInvalidationIntent:Landroid/content/Intent;

.field private final mName:Ljava/lang/String;

.field private mPrepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

.field private mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private mRequireMigration:Z

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field private mTypeConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 808
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->mAutoCloseTimeout:J

    .line 809
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 810
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    .line 811
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    .line 812
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 814
    new-instance v0, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {v0}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 815
    return-void
.end method


# virtual methods
.method public addAutoMigrationSpec(Landroidx/room/migration/AutoMigrationSpec;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1, "autoMigrationSpec"    # Landroidx/room/migration/AutoMigrationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1058
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mAutoMigrationSpecs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mAutoMigrationSpecs:Ljava/util/List;

    .line 1061
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mAutoMigrationSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    return-object p0
.end method

.method public addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1, "callback"    # Landroidx/room/RoomDatabase$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$Callback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1287
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    .line 1290
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    return-object p0
.end method

.method public varargs addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;
    .locals 5
    .param p1, "migrations"    # [Landroidx/room/migration/Migration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/migration/Migration;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1036
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    .line 1039
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1040
    .local v2, "migration":Landroidx/room/migration/Migration;
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    iget v4, v2, Landroidx/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    iget v4, v2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v2    # "migration":Landroidx/room/migration/Migration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 1045
    return-object p0
.end method

.method public addTypeConverter(Ljava/lang/Object;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1, "typeConverter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1324
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mTypeConverters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mTypeConverters:Ljava/util/List;

    .line 1327
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mTypeConverters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    return-object p0
.end method

.method public allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1079
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    .line 1080
    return-object p0
.end method

.method public build()Landroidx/room/RoomDatabase;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1387
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    .line 1391
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    if-eqz v1, :cond_10

    .line 1395
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 1396
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 1397
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 1398
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 1399
    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    .line 1400
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 1403
    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-eqz v1, :cond_4

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 1404
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1405
    .local v2, "version":Ljava/lang/Integer;
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1414
    .end local v2    # "version":Ljava/lang/Integer;
    goto :goto_1

    .line 1406
    .restart local v2    # "version":Ljava/lang/Integer;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    .end local v2    # "version":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    .line 1421
    .local v1, "autoCloser":Landroidx/room/AutoCloser;
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v2, :cond_5

    .line 1422
    new-instance v2, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    .local v2, "factory":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    goto :goto_2

    .line 1424
    .end local v2    # "factory":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    :cond_5
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 1427
    .restart local v2    # "factory":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    :goto_2
    iget-wide v3, v0, Landroidx/room/RoomDatabase$Builder;->mAutoCloseTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    .line 1428
    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1433
    new-instance v5, Landroidx/room/AutoCloser;

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mAutoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v3, v4, v6, v7}, Landroidx/room/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    move-object v1, v5

    .line 1436
    new-instance v3, Landroidx/room/AutoClosingRoomOpenHelperFactory;

    invoke-direct {v3, v2, v1}, Landroidx/room/AutoClosingRoomOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V

    move-object v2, v3

    goto :goto_3

    .line 1429
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1439
    :cond_7
    :goto_3
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromAssetPath:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    if-nez v4, :cond_8

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    if-eqz v4, :cond_c

    .line 1442
    :cond_8
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1447
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_9

    move v3, v4

    goto :goto_4

    :cond_9
    move v3, v5

    .line 1448
    :goto_4
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    if-nez v6, :cond_a

    move v6, v4

    goto :goto_5

    :cond_a
    move v6, v5

    :goto_5
    add-int/2addr v3, v6

    .line 1449
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    move v4, v5

    :goto_6
    add-int/2addr v3, v4

    .line 1450
    .local v3, "copyConfigurations":I
    if-ne v3, v5, :cond_e

    .line 1456
    new-instance v4, Landroidx/room/SQLiteCopyOpenHelperFactory;

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromAssetPath:Ljava/lang/String;

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    invoke-direct {v4, v5, v6, v7, v2}, Landroidx/room/SQLiteCopyOpenHelperFactory;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)V

    move-object v2, v4

    .line 1460
    .end local v3    # "copyConfigurations":I
    :cond_c
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    if-eqz v3, :cond_d

    .line 1461
    new-instance v3, Landroidx/room/QueryInterceptorOpenHelperFactory;

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v2, v4, v5}, Landroidx/room/QueryInterceptorOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    .line 1465
    :cond_d
    new-instance v23, Landroidx/room/DatabaseConfiguration;

    move-object/from16 v3, v23

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    move-object v4, v6

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    iget-boolean v9, v0, Landroidx/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 1473
    invoke-virtual {v10, v6}, Landroidx/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v10

    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Landroidx/room/RoomDatabase$Builder;->mMultiInstanceInvalidationIntent:Landroid/content/Intent;

    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    iget-boolean v15, v0, Landroidx/room/RoomDatabase$Builder;->mAllowDestructiveMigrationOnDowngrade:Z

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    move-object/from16 v16, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromAssetPath:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    move-object/from16 v18, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v19, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mPrepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    move-object/from16 v20, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mTypeConverters:Ljava/util/List;

    move-object/from16 v21, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->mAutoMigrationSpecs:Ljava/util/List;

    move-object/from16 v22, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v22}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 1486
    .local v3, "configuration":Landroidx/room/DatabaseConfiguration;
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    const-string v5, "_Impl"

    invoke-static {v4, v5}, Landroidx/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/RoomDatabase;

    .line 1487
    .local v4, "db":Landroidx/room/RoomDatabase;, "TT;"
    invoke-virtual {v4, v3}, Landroidx/room/RoomDatabase;->init(Landroidx/room/DatabaseConfiguration;)V

    .line 1488
    return-object v4

    .line 1451
    .end local v4    # "db":Landroidx/room/RoomDatabase;, "TT;"
    .local v3, "copyConfigurations":I
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1443
    .end local v3    # "copyConfigurations":I
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1392
    .end local v1    # "autoCloser":Landroidx/room/AutoCloser;
    .end local v2    # "factory":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromAsset(Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "databaseFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 839
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromAssetPath:Ljava/lang/String;

    .line 840
    return-object p0
.end method

.method public createFromAsset(Ljava/lang/String;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "databaseFilePath"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 869
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mPrepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 870
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromAssetPath:Ljava/lang/String;

    .line 871
    return-object p0
.end method

.method public createFromFile(Ljava/io/File;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "databaseFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 896
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    .line 897
    return-object p0
.end method

.method public createFromFile(Ljava/io/File;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "databaseFile"    # Ljava/io/File;
    .param p2, "callback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 926
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mPrepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 927
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromFile:Ljava/io/File;

    .line 928
    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 961
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    .local p1, "inputStreamCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    .line 962
    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p2, "callback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 997
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    .local p1, "inputStreamCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mPrepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 998
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mCopyFromInputStream:Ljava/util/concurrent/Callable;

    .line 999
    return-object p0
.end method

.method public enableMultiInstanceInvalidation()Landroidx/room/RoomDatabase$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1171
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    const-class v2, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1172
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMultiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 1173
    return-object p0
.end method

.method public fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1227
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mAllowDestructiveMigrationOnDowngrade:Z

    .line 1229
    return-object p0
.end method

.method public varargs fallbackToDestructiveMigrationFrom([I)Landroidx/room/RoomDatabase$Builder;
    .locals 5
    .param p1, "startVersions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1270
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    .line 1273
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1274
    .local v2, "startVersion":I
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1273
    .end local v2    # "startVersion":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1276
    :cond_1
    return-object p0
.end method

.method public fallbackToDestructiveMigrationOnDowngrade()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1242
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 1243
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mAllowDestructiveMigrationOnDowngrade:Z

    .line 1244
    return-object p0
.end method

.method public openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "factory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1011
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 1012
    return-object p0
.end method

.method public setAutoCloseTimeout(JLjava/util/concurrent/TimeUnit;)Landroidx/room/RoomDatabase$Builder;
    .locals 2
    .param p1, "autoCloseTimeout"    # J
    .param p3, "autoCloseTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1367
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1370
    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->mAutoCloseTimeout:J

    .line 1371
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->mAutoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 1372
    return-object p0

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "autoCloseTimeout must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJournalMode(Landroidx/room/RoomDatabase$JournalMode;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$JournalMode;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1100
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 1101
    return-object p0
.end method

.method public setMultiInstanceInvalidationServiceIntent(Landroid/content/Intent;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1, "invalidationServiceIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1197
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMultiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 1198
    return-object p0
.end method

.method public setQueryCallback(Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "queryCallback"    # Landroidx/room/RoomDatabase$QueryCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$QueryCallback;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1310
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 1311
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1312
    return-object p0
.end method

.method public setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1125
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 1126
    return-object p0
.end method

.method public setTransactionExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1152
    .local p0, "this":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 1153
    return-object p0
.end method
