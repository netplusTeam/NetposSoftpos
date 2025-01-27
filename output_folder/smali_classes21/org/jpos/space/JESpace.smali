.class public Lorg/jpos/space/JESpace;
.super Lorg/jpos/util/Log;
.source "JESpace.java"

# interfaces
.implements Lorg/jpos/space/LocalSpace;
.implements Lorg/jpos/util/Loggeable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/space/JESpace$GCRef;,
        Lorg/jpos/space/JESpace$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jpos/util/Log;",
        "Lorg/jpos/space/LocalSpace<",
        "TK;TV;>;",
        "Lorg/jpos/util/Loggeable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCK_TIMEOUT:J = 0x1d4c0L

.field public static final DEFAULT_TXN_TIMEOUT:J = 0x7530L

.field public static final GC_DELAY:J = 0x3a98L

.field private static final NRD_RESOLUTION:J = 0x1f4L

.field static final spaceRegistrar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/space/Space;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dbe:Lcom/sleepycat/je/Environment;

.field gcSem:Ljava/util/concurrent/Semaphore;

.field private gcTask:Ljava/util/concurrent/Future;

.field gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "Ljava/lang/Long;",
            "Lorg/jpos/space/JESpace$GCRef;",
            ">;"
        }
    .end annotation
.end field

.field gcsIndex:Lcom/sleepycat/persist/SecondaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lorg/jpos/space/JESpace$GCRef;",
            ">;"
        }
    .end annotation
.end field

.field pIndex:Lcom/sleepycat/persist/PrimaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "Ljava/lang/Long;",
            "Lorg/jpos/space/JESpace$Ref;",
            ">;"
        }
    .end annotation
.end field

.field sIndex:Lcom/sleepycat/persist/SecondaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lorg/jpos/space/JESpace$Ref;",
            ">;"
        }
    .end annotation
.end field

.field sl:Lorg/jpos/space/LocalSpace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jpos/space/LocalSpace<",
            "Ljava/lang/Object;",
            "Lorg/jpos/space/SpaceListener;",
            ">;"
        }
    .end annotation
.end field

.field store:Lcom/sleepycat/persist/EntityStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/space/JESpace;->spaceRegistrar:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/space/SpaceError;
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    .line 58
    iput-object v0, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    .line 59
    iput-object v0, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 60
    iput-object v0, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 61
    iput-object v0, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 62
    iput-object v0, p0, Lorg/jpos/space/JESpace;->gcsIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 63
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    .line 77
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 78
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    new-instance v2, Lcom/sleepycat/persist/StoreConfig;

    invoke-direct {v2}, Lcom/sleepycat/persist/StoreConfig;-><init>()V

    .line 79
    .local v2, "storeConfig":Lcom/sleepycat/persist/StoreConfig;
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->commaDecode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "p":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 81
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 82
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 83
    const-string v5, "lock.timeout"

    const-wide/32 v6, 0x1d4c0

    invoke-direct {p0, v5, v3, v6, v7}, Lorg/jpos/space/JESpace;->getParam(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Lcom/sleepycat/je/EnvironmentConfig;->setLockTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 84
    const-string v5, "txn.timeout"

    const-wide/16 v6, 0x7530

    invoke-direct {p0, v5, v3, v6, v7}, Lorg/jpos/space/JESpace;->getParam(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 85
    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/StoreConfig;->setAllowCreate(Z)Lcom/sleepycat/persist/StoreConfig;

    .line 86
    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/StoreConfig;->setTransactional(Z)Lcom/sleepycat/persist/StoreConfig;

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v5, Lcom/sleepycat/je/Environment;

    invoke-direct {v5, v1, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    iput-object v5, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    .line 92
    new-instance v5, Lcom/sleepycat/persist/EntityStore;

    iget-object v6, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    invoke-direct {v5, v6, p1, v2}, Lcom/sleepycat/persist/EntityStore;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Lcom/sleepycat/persist/StoreConfig;)V

    iput-object v5, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    .line 93
    const-class v6, Ljava/lang/Long;

    const-class v7, Lorg/jpos/space/JESpace$Ref;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/persist/EntityStore;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/Class;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 94
    iget-object v5, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    const-class v6, Ljava/lang/Long;

    const-class v7, Lorg/jpos/space/JESpace$GCRef;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/persist/EntityStore;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/Class;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 95
    iget-object v5, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    iget-object v6, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    const-class v7, Ljava/lang/String;

    const-string v8, "key"

    invoke-virtual {v5, v6, v7, v8}, Lcom/sleepycat/persist/EntityStore;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 96
    iget-object v5, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    iget-object v6, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    const-class v7, Ljava/lang/Long;

    const-string v8, "expires"

    invoke-virtual {v5, v6, v7, v8}, Lcom/sleepycat/persist/EntityStore;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/space/JESpace;->gcsIndex:Lcom/sleepycat/persist/SecondaryIndex;

    .line 97
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getGCExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x3a98

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, p0

    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/space/JESpace;->gcTask:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "storeConfig":Lcom/sleepycat/persist/StoreConfig;
    .end local v3    # "p":[Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    nop

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private abort(Lcom/sleepycat/je/Transaction;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/space/SpaceError;
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private dumpKey(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "count"    # I

    .line 593
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez p4, :cond_0

    .line 594
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    aput-object p3, v3, v2

    const-string v0, "%s<key size=\'%d\'>%s</key>\n"

    invoke-virtual {p1, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 596
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p3, v2, v0

    const-string v0, "%s<key>%s</key>\n"

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 597
    :goto_0
    return-void
.end method

.method private getObject(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "remove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 339
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 340
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v1, 0x0

    .line 341
    .local v1, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$Ref;>;"
    const/4 v2, 0x0

    .line 342
    .local v2, "tmpl":Lorg/jpos/space/Template;
    instance-of v3, p1, Lorg/jpos/space/Template;

    if-eqz v3, :cond_0

    .line 343
    move-object v2, p1

    check-cast v2, Lorg/jpos/space/Template;

    .line 344
    invoke-interface {v2}, Lorg/jpos/space/Template;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 347
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    move-object v0, v3

    .line 348
    iget-object v3, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/persist/SecondaryIndex;->subIndex(Ljava/lang/Object;)Lcom/sleepycat/persist/EntityIndex;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Lcom/sleepycat/persist/EntityIndex;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v3

    move-object v1, v3

    .line 349
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/space/JESpace$Ref;

    .line 350
    .local v5, "ref":Lorg/jpos/space/JESpace$Ref;
    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 351
    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/jpos/space/Template;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 352
    goto :goto_0

    .line 353
    :cond_1
    if-eqz p2, :cond_2

    .line 354
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->delete()Z

    .line 355
    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->hasExpiration()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/persist/PrimaryIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    .line 358
    :cond_2
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V

    const/4 v0, 0x0

    .line 360
    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    if-eqz v1, :cond_3

    .line 373
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 374
    :cond_3
    if-eqz v0, :cond_4

    .line 375
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 360
    :cond_4
    return-object v3

    .line 363
    :cond_5
    :try_start_1
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->delete()Z

    .line 364
    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->hasExpiration()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 365
    iget-object v6, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v5}, Lorg/jpos/space/JESpace$Ref;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/sleepycat/persist/PrimaryIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    .line 367
    .end local v5    # "ref":Lorg/jpos/space/JESpace$Ref;
    :cond_6
    goto :goto_0

    .line 368
    :cond_7
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    const/4 v1, 0x0

    .line 369
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 370
    nop

    .line 372
    if-eqz v1, :cond_8

    .line 373
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 374
    :cond_8
    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 370
    :cond_9
    return-object v4

    .line 372
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_a

    .line 373
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 374
    :cond_a
    if-eqz v0, :cond_b

    .line 375
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 376
    :cond_b
    throw v3
.end method

.method private getParam(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 600
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 601
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 603
    .local v3, "pos":I
    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 604
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 600
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "pos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_1
    return-wide p3
.end method

.method private getSL()Lorg/jpos/space/LocalSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jpos/space/LocalSpace<",
            "Ljava/lang/Object;",
            "Lorg/jpos/space/SpaceListener;",
            ">;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lorg/jpos/space/TSpace;

    invoke-direct {v0}, Lorg/jpos/space/TSpace;-><init>()V

    iput-object v0, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    .line 390
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSpace(Ljava/lang/String;)Lorg/jpos/space/JESpace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 336
    invoke-static {p0, p0}, Lorg/jpos/space/JESpace;->getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JESpace;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JESpace;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    const-class v0, Lorg/jpos/space/JESpace;

    monitor-enter v0

    .line 328
    :try_start_0
    sget-object v1, Lorg/jpos/space/JESpace;->spaceRegistrar:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/space/JESpace;

    .line 329
    .local v2, "sp":Lorg/jpos/space/JESpace;
    if-nez v2, :cond_0

    .line 330
    new-instance v3, Lorg/jpos/space/JESpace;

    invoke-direct {v3, p0, p1}, Lorg/jpos/space/JESpace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 331
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    monitor-exit v0

    return-object v2

    .line 327
    .end local v2    # "sp":Lorg/jpos/space/JESpace;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 395
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/jpos/space/SpaceListener;>;"
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-nez v1, :cond_0

    .line 398
    monitor-exit p0

    return-void

    .line 399
    :cond_0
    const/4 v1, 0x0

    .line 400
    .local v1, "s":Lorg/jpos/space/SpaceListener;
    :goto_0
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    invoke-interface {v2, p1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/space/SpaceListener;

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 401
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/space/SpaceListener;

    .line 403
    .local v3, "spl":Lorg/jpos/space/SpaceListener;
    iget-object v4, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    invoke-interface {v4, p1, v3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "spl":Lorg/jpos/space/SpaceListener;
    goto :goto_1

    .line 404
    .end local v1    # "s":Lorg/jpos/space/SpaceListener;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/space/SpaceListener;

    .line 406
    .local v2, "spl":Lorg/jpos/space/SpaceListener;
    invoke-interface {v2, p1, p2}, Lorg/jpos/space/SpaceListener;->notify(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v2    # "spl":Lorg/jpos/space/SpaceListener;
    goto :goto_2

    .line 407
    :cond_3
    return-void

    .line 404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 410
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/space/JESpace;->getSL()Lorg/jpos/space/LocalSpace;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;
    .param p3, "timeout"    # J

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 414
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/space/JESpace;->getSL()Lorg/jpos/space/LocalSpace;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 413
    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    .end local p3    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 316
    iget-object v0, p0, Lorg/jpos/space/JESpace;->gcTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 317
    :goto_0
    iget-object v0, p0, Lorg/jpos/space/JESpace;->gcTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/jpos/space/JESpace;->store:Lcom/sleepycat/persist/EntityStore;

    invoke-virtual {v0}, Lcom/sleepycat/persist/EntityStore;->close()V

    .line 323
    iget-object v0, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->close()V

    .line 324
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 554
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 555
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v1, 0x0

    .line 556
    .local v1, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$Ref;>;"
    const/4 v2, 0x0

    .line 558
    .local v2, "count":I
    :try_start_0
    iget-object v3, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    move-object v0, v3

    .line 559
    iget-object v3, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/persist/SecondaryIndex;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v3

    move-object v1, v3

    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 562
    .local v4, "keyCount":I
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/space/JESpace$Ref;

    .line 563
    .local v6, "ref":Lorg/jpos/space/JESpace$Ref;
    invoke-virtual {v6}, Lorg/jpos/space/JESpace$Ref;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 564
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 566
    :cond_0
    if-eqz v3, :cond_1

    .line 567
    invoke-direct {p0, p1, p2, v3, v4}, Lorg/jpos/space/JESpace;->dumpKey(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    .line 570
    :cond_1
    const/4 v4, 0x1

    .line 571
    invoke-virtual {v6}, Lorg/jpos/space/JESpace$Ref;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 573
    .end local v6    # "ref":Lorg/jpos/space/JESpace$Ref;
    :goto_1
    goto :goto_0

    .line 574
    :cond_2
    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0, p1, p2, v3, v4}, Lorg/jpos/space/JESpace;->dumpKey(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    .line 578
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<keycount>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</keycount>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    const/4 v1, 0x0

    .line 580
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 585
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyCount":I
    if-eqz v1, :cond_4

    .line 586
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 587
    :cond_4
    if-eqz v0, :cond_6

    .line 588
    :goto_2
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_3

    .line 585
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 581
    :catch_0
    move-exception v3

    .line 583
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<keycount>0</keycount>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-eqz v1, :cond_5

    .line 586
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 587
    :cond_5
    if-eqz v0, :cond_6

    .line 588
    goto :goto_2

    .line 590
    :cond_6
    :goto_3
    return-void

    .line 585
    :goto_4
    if-eqz v1, :cond_7

    .line 586
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 587
    :cond_7
    if-eqz v0, :cond_8

    .line 588
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 589
    :cond_8
    throw v3
.end method

.method public existAny([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 244
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 245
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/jpos/space/JESpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 246
    const/4 v0, 0x1

    return v0

    .line 244
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return v1
.end method

.method public existAny([Ljava/lang/Object;J)Z
    .locals 5
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 252
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 254
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    move-wide v3, v1

    .local v3, "duration":J
    cmp-long v1, v1, p2

    if-gez v1, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->existAny([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x1

    return v1

    .line 257
    :cond_0
    monitor-enter p0

    .line 259
    sub-long v1, p2, v3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_1
    goto :goto_2

    .line 261
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 260
    :catch_0
    move-exception v1

    goto :goto_1

    .line 261
    :goto_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 263
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public gc()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 277
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v1, 0x0

    .line 279
    .local v1, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$GCRef;>;"
    :try_start_0
    iget-object v2, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    .line 300
    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 302
    :cond_0
    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 304
    :cond_1
    iget-object v2, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 280
    return-void

    .line 281
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 282
    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .local v5, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_2
    iget-object v4, p0, Lorg/jpos/space/JESpace;->gcsIndex:Lcom/sleepycat/persist/SecondaryIndex;

    const-wide/16 v6, 0x0

    .line 283
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 282
    invoke-virtual/range {v4 .. v10}, Lcom/sleepycat/persist/SecondaryIndex;->entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    move-object v1, v0

    .line 285
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/space/JESpace$GCRef;

    .line 286
    .local v2, "gcRef":Lorg/jpos/space/JESpace$GCRef;
    iget-object v4, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v2}, Lorg/jpos/space/JESpace$GCRef;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sleepycat/persist/PrimaryIndex;->delete(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->delete()Z

    .line 288
    nop

    .end local v2    # "gcRef":Lorg/jpos/space/JESpace$GCRef;
    goto :goto_0

    .line 289
    :cond_3
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 290
    const/4 v1, 0x0

    .line 291
    invoke-virtual {v5}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    const/4 v0, 0x0

    .line 293
    .end local v5    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    :try_start_3
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_5

    .line 294
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 295
    :try_start_4
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/jpos/space/LocalSpace;->getKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    iput-object v3, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    .line 297
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v1    # "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$GCRef;>;"
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 300
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v1    # "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$GCRef;>;"
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 301
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 302
    :cond_6
    if-eqz v0, :cond_7

    .line 303
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 304
    :cond_7
    iget-object v2, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 305
    nop

    .line 306
    return-void

    .line 300
    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "txn":Lcom/sleepycat/je/Transaction;
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v5    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    :catchall_2
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "txn":Lcom/sleepycat/je/Transaction;
    :goto_2
    if-eqz v1, :cond_8

    .line 301
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 302
    :cond_8
    if-eqz v5, :cond_9

    .line 303
    invoke-direct {p0, v5}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 304
    :cond_9
    iget-object v2, p0, Lorg/jpos/space/JESpace;->gcSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 305
    throw v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 6

    .line 423
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 424
    .local v0, "res":Ljava/util/Set;
    const/4 v1, 0x0

    .line 425
    .local v1, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v2, 0x0

    .line 427
    .local v2, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$Ref;>;"
    :try_start_0
    iget-object v3, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    move-object v1, v3

    .line 428
    iget-object v3, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    invoke-virtual {v3, v1, v4}, Lcom/sleepycat/persist/SecondaryIndex;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v3

    move-object v2, v3

    .line 429
    invoke-interface {v2}, Lcom/sleepycat/persist/EntityCursor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/space/JESpace$Ref;

    .line 430
    .local v4, "ref":Lorg/jpos/space/JESpace$Ref;
    invoke-virtual {v4}, Lorg/jpos/space/JESpace$Ref;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    .end local v4    # "ref":Lorg/jpos/space/JESpace$Ref;
    :cond_0
    invoke-interface {v2}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 432
    const/4 v2, 0x0

    .line 433
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const/4 v1, 0x0

    .line 438
    if-eqz v2, :cond_1

    .line 439
    invoke-interface {v2}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 440
    :cond_1
    if-eqz v1, :cond_3

    .line 441
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_2

    .line 438
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 435
    :catch_0
    move-exception v3

    .line 436
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jpos/space/JESpace;->warn(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    if-eqz v2, :cond_2

    .line 439
    invoke-interface {v2}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 440
    :cond_2
    if-eqz v1, :cond_3

    .line 441
    goto :goto_1

    .line 444
    :cond_3
    :goto_2
    return-object v0

    .line 438
    :goto_3
    if-eqz v2, :cond_4

    .line 439
    invoke-interface {v2}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 440
    :cond_4
    if-eqz v1, :cond_5

    .line 441
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 442
    :cond_5
    throw v3
.end method

.method public declared-synchronized in(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 168
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 170
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 173
    :cond_0
    monitor-exit p0

    return-object v1

    .line 167
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized in(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 178
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 180
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 181
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 184
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 187
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 177
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public inp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/jpos/space/JESpace;->getObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 225
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 226
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 229
    const-wide/16 v3, 0x1f4

    sub-long v7, p2, v5

    :try_start_1
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 232
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 222
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 215
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 217
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jpos/space/JESpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 105
    return-void
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 109
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    move-object v0, v1

    .line 110
    new-instance v1, Lorg/jpos/space/JESpace$Ref;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p4}, Lorg/jpos/space/JESpace$Ref;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 111
    .local v1, "ref":Lorg/jpos/space/JESpace$Ref;
    iget-object v2, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 113
    iget-object v2, p0, Lorg/jpos/space/JESpace;->gcpIndex:Lcom/sleepycat/persist/PrimaryIndex;

    new-instance v3, Lorg/jpos/space/JESpace$GCRef;

    .line 114
    invoke-virtual {v1}, Lorg/jpos/space/JESpace$Ref;->getId()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/jpos/space/JESpace$Ref;->getExpiration()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/jpos/space/JESpace$GCRef;-><init>(JJ)V

    .line 113
    invoke-virtual {v2, v3}, Lcom/sleepycat/persist/PrimaryIndex;->putNoReturn(Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 117
    const/4 v0, 0x0

    .line 118
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_1

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/jpos/space/JESpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    .end local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    :cond_1
    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 129
    :cond_2
    return-void

    .line 120
    .restart local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    .end local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "timeout":J
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Lorg/jpos/space/SpaceError;

    invoke-direct {v2, v1}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "timeout":J
    :goto_0
    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 128
    :cond_3
    throw v1
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jpos/space/JESpace;->push(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 155
    return-void
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 5
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 133
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    move-object v0, v1

    .line 134
    new-instance v1, Lorg/jpos/space/JESpace$Ref;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p4}, Lorg/jpos/space/JESpace$Ref;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 135
    .local v1, "ref":Lorg/jpos/space/JESpace$Ref;
    iget-object v2, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v1}, Lorg/jpos/space/JESpace$Ref;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/persist/PrimaryIndex;->delete(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1}, Lorg/jpos/space/JESpace$Ref;->reverseId()V

    .line 138
    iget-object v2, p0, Lorg/jpos/space/JESpace;->pIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 140
    const/4 v0, 0x0

    .line 141
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/jpos/space/JESpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .end local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    :cond_0
    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 152
    :cond_1
    return-void

    .line 143
    .restart local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    .end local v1    # "ref":Lorg/jpos/space/JESpace$Ref;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "timeout":J
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Lorg/jpos/space/SpaceError;

    invoke-direct {v2, v1}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "timeout":J
    :goto_0
    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace;->abort(Lcom/sleepycat/je/Transaction;)V

    .line 151
    :cond_2
    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 271
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/JESpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 266
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/space/JESpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 265
    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 193
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 195
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 198
    :cond_0
    monitor-exit p0

    return-object v1

    .line 192
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 205
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JESpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 206
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 209
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 212
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 202
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public rdp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/jpos/space/JESpace;->getObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;

    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/JESpace;->sl:Lorg/jpos/space/LocalSpace;

    if-eqz v0, :cond_0

    .line 419
    new-instance v1, Lorg/jpos/space/ObjectTemplate;

    invoke-direct {v1, p1, p2}, Lorg/jpos/space/ObjectTemplate;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local p0    # "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 417
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 309
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/space/JESpace;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jpos/space/JESpace;->warn(Ljava/lang/Object;)V

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public size(Ljava/lang/Object;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 448
    .local p0, "this":Lorg/jpos/space/JESpace;, "Lorg/jpos/space/JESpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 449
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v1, 0x0

    .line 451
    .local v1, "cursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<Lorg/jpos/space/JESpace$Ref;>;"
    :try_start_0
    iget-object v2, p0, Lorg/jpos/space/JESpace;->dbe:Lcom/sleepycat/je/Environment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    move-object v0, v2

    .line 452
    iget-object v2, p0, Lorg/jpos/space/JESpace;->sIndex:Lcom/sleepycat/persist/SecondaryIndex;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sleepycat/persist/SecondaryIndex;->subIndex(Ljava/lang/Object;)Lcom/sleepycat/persist/EntityIndex;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lcom/sleepycat/persist/EntityIndex;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v2

    move-object v1, v2

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "keyCount":I
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/space/JESpace$Ref;

    .line 455
    .local v4, "ref":Lorg/jpos/space/JESpace$Ref;
    invoke-virtual {v4}, Lorg/jpos/space/JESpace$Ref;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    add-int/lit8 v2, v2, 0x1

    .line 455
    .end local v4    # "ref":Lorg/jpos/space/JESpace$Ref;
    :cond_0
    goto :goto_0

    .line 457
    :cond_1
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 458
    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    const/4 v0, 0x0

    .line 461
    nop

    .line 465
    if-eqz v1, :cond_2

    .line 466
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 467
    :cond_2
    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 461
    :cond_3
    return v2

    .line 465
    .end local v2    # "keyCount":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 466
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 467
    :cond_4
    if-eqz v0, :cond_5

    .line 468
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 469
    :cond_5
    throw v2

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v3, -0x1

    .line 465
    if-eqz v1, :cond_6

    .line 466
    invoke-interface {v1}, Lcom/sleepycat/persist/EntityCursor;->close()V

    .line 467
    :cond_6
    if-eqz v0, :cond_7

    .line 468
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 463
    :cond_7
    return v3
.end method
