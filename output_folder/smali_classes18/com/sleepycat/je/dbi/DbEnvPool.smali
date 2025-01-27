.class public Lcom/sleepycat/je/dbi/DbEnvPool;
.super Ljava/lang/Object;
.source "DbEnvPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static pool:Lcom/sleepycat/je/dbi/DbEnvPool;


# instance fields
.field private beforeFinishInitHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final envs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedCacheEnvs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 53
    new-instance v0, Lcom/sleepycat/je/dbi/DbEnvPool;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DbEnvPool;-><init>()V

    sput-object v0, Lcom/sleepycat/je/dbi/DbEnvPool;->pool:Lcom/sleepycat/je/dbi/DbEnvPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    .line 73
    return-void
.end method

.method private addToSharedCacheEnvs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 290
    :cond_1
    :goto_0
    return-void
.end method

.method private finishAdditionOfSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->checkEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->resetSharedCache(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :cond_1
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 303
    :cond_2
    :goto_0
    return-void
.end method

.method private getAnySharedCacheEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/dbi/EnvironmentImpl;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;
    .locals 1

    .line 79
    sget-object v0, Lcom/sleepycat/je/dbi/DbEnvPool;->pool:Lcom/sleepycat/je/dbi/DbEnvPool;

    return-object v0
.end method

.method private loadRepImpl(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 11
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "sharedCacheEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p4, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 251
    const-string v0, "com.sleepycat.je.rep.impl.RepImpl"

    .line 252
    .local v0, "repClassName":Ljava/lang/String;
    const-string v1, "com.sleepycat.je.dbi.EnvironmentImpl"

    .line 253
    .local v1, "envImplName":Ljava/lang/String;
    const-string v2, "com.sleepycat.je.dbi.RepConfigProxy"

    .line 255
    .local v2, "repProxy":Ljava/lang/String;
    :try_start_0
    const-string v3, "com.sleepycat.je.rep.impl.RepImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 256
    .local v3, "repClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "com.sleepycat.je.dbi.EnvironmentImpl"

    .line 259
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "com.sleepycat.je.dbi.RepConfigProxy"

    .line 260
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    .line 257
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    aput-object p3, v4, v9

    aput-object p4, v4, v10

    .line 261
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-object v4

    .line 268
    .end local v3    # "repClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 262
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 267
    :cond_0
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method private removeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 371
    nop

    .line 372
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbEnvPool;->getEnvironmentMapKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "environmentKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 376
    .local v1, "found":Z
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/evictor/Evictor;->checkEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/evictor/Evictor;->shutdown()V

    .line 383
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdown()V

    goto :goto_1

    .line 385
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->subtractCacheUsage()V

    .line 386
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/dbi/DbEnvPool;->resetSharedCache(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    goto :goto_1

    .line 379
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 378
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 389
    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 396
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 397
    invoke-static {}, Lcom/sleepycat/je/latch/LatchSupport;->clear()V

    .line 399
    :cond_7
    return-void
.end method

.method private resetSharedCache(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "newMaxMemory"    # J
    .param p3, "skipEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 449
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eq v1, p3, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    const/4 v3, 0x0

    .line 452
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v4

    .line 450
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/sleepycat/je/dbi/MemoryBudget;->reset(JZLcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 454
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    goto :goto_0

    .line 455
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 404
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "doCheckpoint"    # Z
    .param p3, "isAbnormalClose"    # Z

    monitor-enter p0

    .line 338
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 340
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decOpenCount()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 342
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doClose(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->removeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 345
    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->removeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "doCheckpoint":Z
    .end local p3    # "isAbnormalClose":Z
    throw v0

    .line 347
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "doCheckpoint":Z
    .restart local p3    # "isAbnormalClose":Z
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 337
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "doCheckpoint":Z
    .end local p3    # "isAbnormalClose":Z
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized closeEnvironmentAfterInvalid(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doCloseAfterInvalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->removeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    nop

    .line 362
    monitor-exit p0

    return-void

    .line 357
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 360
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_1
    move-exception v0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->removeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEnvImpls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 409
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnvironment(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;ZLcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 5
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "checkImmutableParams"    # Z
    .param p4, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "environmentKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 109
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->getEnvironmentMapKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 111
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v1, v2

    .line 113
    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This environment was previously opened as a standalone environment. It cannot be re-opened for replication."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "environmentKey":Ljava/lang/String;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "checkImmutableParams":Z
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v2

    .line 134
    .restart local v0    # "environmentKey":Ljava/lang/String;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "checkImmutableParams":Z
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    .line 135
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentConfig;->getReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 136
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This environment was previously opened for replication. It cannot be re-opened in read/write mode for standalone operation."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "environmentKey":Ljava/lang/String;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "checkImmutableParams":Z
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v2

    .line 145
    .restart local v0    # "environmentKey":Ljava/lang/String;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "checkImmutableParams":Z
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isArbiter()Z

    move-result v2

    if-nez v2, :cond_5

    .line 151
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 153
    if-eqz p3, :cond_4

    .line 170
    nop

    .line 171
    invoke-static {p2}, Lcom/sleepycat/je/DbInternal;->getProps(Lcom/sleepycat/je/EnvironmentMutableConfig;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkImmutablePropsForEquality(Ljava/util/Properties;)V

    .line 174
    :cond_4
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incOpenCount()V

    goto :goto_4

    .line 146
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An Arbiter is currently using this directory. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "environmentKey":Ljava/lang/String;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "checkImmutableParams":Z
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v2

    .line 182
    .restart local v0    # "environmentKey":Ljava/lang/String;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "checkImmutableParams":Z
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_6
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentConfig;->getSharedCache()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DbEnvPool;->getAnySharedCacheEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 192
    .local v2, "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_2
    if-nez p4, :cond_8

    new-instance v3, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v3, p1, p2, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    goto :goto_3

    .line 195
    :cond_8
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/sleepycat/je/dbi/DbEnvPool;->loadRepImpl(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    :goto_3
    move-object v1, v3

    .line 197
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentConfig;->getSharedCache()Z

    move-result v3

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v4

    if-ne v3, v4, :cond_c

    .line 199
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incOpenCount()V

    .line 200
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/DbEnvPool;->addToSharedCacheEnvs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 203
    .end local v2    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 219
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->beforeFinishInitHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2, v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    .line 220
    const/4 v2, 0x0

    .line 222
    .local v2, "success":Z
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->finishInit(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 224
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 225
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/DbEnvPool;->finishAdditionOfSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 226
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "environmentKey":Ljava/lang/String;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "success":Z
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "checkImmutableParams":Z
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 228
    .restart local v0    # "environmentKey":Ljava/lang/String;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "success":Z
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "checkImmutableParams":Z
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_9
    :goto_5
    const/4 v2, 0x1

    .line 230
    if-nez v2, :cond_a

    .line 231
    monitor-enter p0

    .line 232
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit p0

    goto :goto_6

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 238
    :cond_a
    :goto_6
    return-object v1

    .line 230
    :catchall_2
    move-exception v3

    if-nez v2, :cond_b

    .line 231
    monitor-enter p0

    .line 232
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit p0

    goto :goto_7

    :catchall_3
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    :cond_b
    :goto_7
    throw v3

    .line 197
    .local v2, "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_c
    :try_start_6
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "environmentKey":Ljava/lang/String;
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "checkImmutableParams":Z
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v3

    .line 203
    .end local v2    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v0    # "environmentKey":Ljava/lang/String;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "checkImmutableParams":Z
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v2
.end method

.method getEnvironmentMapKey(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public declared-synchronized getNSharedCacheEnvironments()I
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->sharedCacheEnvs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 87
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen(Ljava/io/File;)Z
    .locals 2
    .param p1, "home"    # Ljava/io/File;

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->envs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->getEnvironmentMapKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 413
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    .end local p1    # "home":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBeforeFinishInitHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/dbi/EnvironmentImpl;>;"
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbEnvPool;->beforeFinishInitHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 84
    return-void
.end method

.method declared-synchronized setMutableConfig(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "mutableConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doSetMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 319
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->resetSharedCache(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbEnvPool;
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
