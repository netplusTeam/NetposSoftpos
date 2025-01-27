.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final allowDestructiveMigrationOnDowngrade:Z

.field public final allowMainThreadQueries:Z

.field public final autoMigrationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final copyFromAssetPath:Ljava/lang/String;

.field public final copyFromFile:Ljava/io/File;

.field public final copyFromInputStream:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final mMigrationNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final multiInstanceInvalidation:Z

.field public final multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

.field public final name:Ljava/lang/String;

.field public final prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

.field public final queryExecutor:Ljava/util/concurrent/Executor;

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final transactionExecutor:Ljava/util/concurrent/Executor;

.field public final typeConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidationServiceIntent"    # Landroid/content/Intent;
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .param p17, "prepackagedDatabaseCallback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Intent;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p16, "copyFromInputStream":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    .local p18, "typeConverters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p19, "autoMigrationSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/AutoMigrationSpec;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 569
    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 570
    move-object/from16 v3, p1

    iput-object v3, v0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 571
    move-object/from16 v4, p2

    iput-object v4, v0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 572
    move-object/from16 v5, p4

    iput-object v5, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 573
    move-object/from16 v6, p5

    iput-object v6, v0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 574
    move/from16 v7, p6

    iput-boolean v7, v0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 575
    move-object/from16 v8, p7

    iput-object v8, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 576
    move-object/from16 v9, p8

    iput-object v9, v0, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 577
    move-object/from16 v10, p9

    iput-object v10, v0, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 578
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    .line 580
    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v0, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    .line 581
    move/from16 v11, p11

    iput-boolean v11, v0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    .line 582
    move/from16 v12, p12

    iput-boolean v12, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    .line 583
    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    .line 584
    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    .line 585
    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    .line 586
    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 587
    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 588
    if-nez p18, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_1

    :cond_1
    move-object/from16 v1, p18

    :goto_1
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 589
    if-nez p19, :cond_2

    .line 590
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p19

    :goto_2
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 591
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    .line 230
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 280
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p16, "copyFromInputStream":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 333
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .param p17, "prepackagedDatabaseCallback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p16, "copyFromInputStream":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    .line 390
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .param p17, "prepackagedDatabaseCallback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p16, "copyFromInputStream":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    .local p18, "typeConverters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    .line 449
    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 454
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "transactionExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "multiInstanceInvalidation"    # Z
    .param p11, "requireMigration"    # Z
    .param p12, "allowDestructiveMigrationOnDowngrade"    # Z
    .param p14, "copyFromAssetPath"    # Ljava/lang/String;
    .param p15, "copyFromFile"    # Ljava/io/File;
    .param p17, "prepackagedDatabaseCallback"    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p13, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p16, "copyFromInputStream":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    .local p18, "typeConverters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p19, "autoMigrationSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/AutoMigrationSpec;>;"
    nop

    .line 512
    if-eqz p10, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/room/MultiInstanceInvalidationService;

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v12, v0

    goto :goto_0

    .line 513
    :cond_0
    move-object/from16 v15, p1

    const/4 v0, 0x0

    move-object v12, v0

    .line 510
    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-direct/range {v2 .. v21}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;ZLjava/util/Set;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "requireMigration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p10, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    .line 184
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 188
    return-void
.end method


# virtual methods
.method public isMigrationRequired(II)Z
    .locals 5
    .param p1, "fromVersion"    # I
    .param p2, "toVersion"    # I

    .line 617
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 618
    .local v2, "isDowngrade":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    if-eqz v3, :cond_1

    .line 619
    return v1

    .line 625
    :cond_1
    iget-boolean v3, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    if-eqz v3, :cond_2

    .line 627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v0, v1

    .line 625
    :goto_1
    return v0
.end method

.method public isMigrationRequiredFrom(I)Z
    .locals 1
    .param p1, "version"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v0

    return v0
.end method
