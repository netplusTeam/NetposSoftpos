.class public Lcom/sleepycat/je/Environment;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/Environment$DbNameOperation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CHECKPOINTER_NAME:Ljava/lang/String; = "Checkpointer"

.field public static final CLEANER_NAME:Ljava/lang/String; = "Cleaner"

.field public static final DATA_CORRUPTION_VERIFIER_NAME:Ljava/lang/String; = "DataCorruptionVerifier"

.field public static final FILE_DELETION_DETECTOR_NAME:Ljava/lang/String; = "FileDeletionDetector"

.field public static final INCOMP_NAME:Ljava/lang/String; = "INCompressor"

.field public static final LOG_FLUSHER_NAME:Ljava/lang/String; = "LogFlusher"

.field public static final STATCAPTURE_NAME:Ljava/lang/String; = "StatCapture"


# instance fields
.field private final appliedFinalConfig:Lcom/sleepycat/je/EnvironmentConfig;

.field private defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

.field private volatile environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

.field private invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/EnvironmentFailureException;",
            ">;"
        }
    .end annotation
.end field

.field private final referringDbTxns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final referringDbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "configuration"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/VersionMismatchException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 230
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbTxns:Ljava/util/Map;

    .line 247
    const-string v0, "envHome"

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    nop

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/Environment;->setupHandleConfig(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->appliedFinalConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 252
    if-eqz p4, :cond_0

    .line 254
    iput-object p4, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    goto :goto_0

    .line 257
    :cond_0
    nop

    .line 258
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/Environment;->makeEnvironmentImpl(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fullyInitialized()V

    .line 265
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/Environment;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 103
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Environment;->checkWritable(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-void
.end method

.method private addReferringHandle(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 2666
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    return-void
.end method

.method private addReferringHandle(Lcom/sleepycat/je/Transaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 2673
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbTxns:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    return-void
.end method

.method private beginTransactionInternal(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;Z)Lcom/sleepycat/je/Transaction;
    .locals 4
    .param p1, "parent"    # Lcom/sleepycat/je/Transaction;
    .param p2, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "isInternalTxn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1409
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1411
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_f

    .line 1417
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Transactions can not be used in a non-transactional environment"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1423
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/sleepycat/je/Environment;->checkTxnConfig(Lcom/sleepycat/je/TransactionConfig;)V

    .line 1430
    const/4 v1, 0x0

    .line 1431
    .local v1, "useConfig":Lcom/sleepycat/je/TransactionConfig;
    if-nez p2, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    goto/16 :goto_3

    .line 1434
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getNoSync()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1435
    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1442
    :cond_3
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getNoSync()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1443
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getSync()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1444
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1445
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1446
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1447
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/TransactionConfig;->setWriteNoSync(Z)Lcom/sleepycat/je/TransactionConfig;

    goto :goto_1

    .line 1449
    :cond_4
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/TransactionConfig;->setNoSync(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1454
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1455
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1461
    if-nez v1, :cond_6

    .line 1462
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1464
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1467
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1468
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1469
    if-nez v1, :cond_8

    .line 1470
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1472
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1473
    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1477
    :cond_9
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1478
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1479
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getReadUncommitted()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1480
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1481
    if-nez v1, :cond_a

    .line 1482
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1484
    :cond_a
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/TransactionConfig;->setSerializableIsolation(Z)Lcom/sleepycat/je/TransactionConfig;

    goto :goto_2

    .line 1485
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1486
    if-nez v1, :cond_c

    .line 1487
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1489
    :cond_c
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/TransactionConfig;->setReadCommitted(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1494
    :cond_d
    :goto_2
    if-nez v1, :cond_e

    .line 1495
    move-object v1, p2

    .line 1498
    :cond_e
    :goto_3
    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnBegin(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    .line 1499
    .local v2, "internalTxn":Lcom/sleepycat/je/txn/Txn;
    new-instance v3, Lcom/sleepycat/je/Transaction;

    invoke-direct {v3, p0, v2}, Lcom/sleepycat/je/Transaction;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V

    .line 1500
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    invoke-direct {p0, v3}, Lcom/sleepycat/je/Environment;->addReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 1501
    return-object v3

    .line 1412
    .end local v1    # "useConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v2    # "internalTxn":Lcom/sleepycat/je/txn/Txn;
    .end local v3    # "txn":Lcom/sleepycat/je/Transaction;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parent txn is non-null. Nested transactions are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkForCloseErrors(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "errors"    # Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Environment;->checkOpenDbs(Ljava/lang/StringBuilder;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Environment;->checkOpenTxns(Ljava/lang/StringBuilder;)V

    .line 492
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->isInternalHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Environment;->checkOpenXATransactions(Ljava/lang/StringBuilder;)V

    .line 500
    :cond_0
    return-void
.end method

.method private checkOpenDbs(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "errors"    # Ljava/lang/StringBuilder;

    .line 571
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    .line 577
    .local v0, "nOpenUserDbs":I
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Database;

    .line 578
    .local v2, "db":Lcom/sleepycat/je/Database;
    const-string v4, ""

    .line 585
    .local v4, "dbName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 587
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v5

    if-nez v5, :cond_1

    .line 588
    add-int/lit8 v0, v0, 0x1

    .line 589
    const-string v5, "Unclosed Database: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    goto :goto_1

    .line 593
    :catch_0
    move-exception v5

    .line 594
    .local v5, "e":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 598
    const-string v6, "\nWhile closing Database "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v6, " encountered exception: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 596
    .restart local v2    # "db":Lcom/sleepycat/je/Database;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    :cond_2
    throw v5

    .line 605
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_3
    if-lez v0, :cond_4

    .line 606
    const-string v1, "Databases left open: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_4
    return-void
.end method

.method private checkOpenTxns(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "errors"    # Ljava/lang/StringBuilder;

    .line 531
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbTxns:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 532
    .local v0, "nTxns":I
    :goto_0
    if-nez v0, :cond_1

    .line 533
    return-void

    .line 536
    :cond_1
    const-string v1, "There "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 538
    const-string v1, "is 1 existing transaction opened"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, " against the Environment.\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    :cond_2
    const-string v1, "are "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, " existing transactions opened against"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, " the Environment.\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_1
    const-string v1, "Aborting open transactions ...\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->referringDbTxns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Transaction;

    .line 550
    .local v2, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aborting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v2}, Lcom/sleepycat/je/Transaction;->abort()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    goto :goto_3

    .line 552
    :catch_0
    move-exception v3

    .line 553
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 557
    const-string v4, "\nWhile aborting transaction "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v2}, Lcom/sleepycat/je/Transaction;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 559
    const-string v4, " encountered exception: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_3
    goto :goto_2

    .line 555
    .restart local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    :cond_3
    throw v3

    .line 563
    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_4
    return-void
.end method

.method private checkOpenXATransactions(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "errors"    # Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->XARecover()[Ljavax/transaction/xa/Xid;

    move-result-object v0

    .line 508
    .local v0, "openXids":[Ljavax/transaction/xa/Xid;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 509
    const-string v1, "There "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    array-length v1, v0

    .line 511
    .local v1, "nXATxns":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 512
    const-string v2, "is 1 existing XA transaction opened"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, " in the Environment.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v2, "It"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 516
    :cond_0
    const-string v2, "are "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, " existing transactions opened in"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v2, " the Environment.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "They"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_0
    const-string v2, " will be left open ...\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .end local v1    # "nXATxns":I
    :cond_1
    return-void
.end method

.method private checkTxnConfig(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 2
    .param p1, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1515
    if-nez p1, :cond_0

    .line 1516
    return-void

    .line 1518
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadUncommitted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1520
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1522
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadUncommitted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1523
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1524
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one may be specified: SerializableIsolation, ReadCommitted or ReadUncommitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1529
    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionConfig;->getSync()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1530
    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionConfig;->getNoSync()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1531
    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1532
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of deprecated durability API for the Environment with the new durability API for TransactionConfig.setDurability()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1538
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getSync()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1539
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getNoSync()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1540
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 1541
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of new durability API for the Environment with the deprecated durability API for TransactionConfig."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_8
    :goto_2
    return-void
.end method

.method private checkWritable(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2748
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    return-void

    .line 2749
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Environment is Read-Only."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyToHandleConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 3
    .param p1, "useConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .param p2, "initStaticConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "initRepConfig"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 1311
    new-instance v0, Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;-><init>()V

    .line 1313
    .local v0, "newHandleConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->copyHandlePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 1314
    iput-object v0, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1316
    sget-object v1, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    .line 1317
    invoke-virtual {v1}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    .line 1318
    .local v1, "newTxnConfig":Lcom/sleepycat/je/TransactionConfig;
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getTxnNoSync()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setNoSync(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1319
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getTxnWriteNoSync()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setWriteNoSync(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1320
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1322
    if-eqz p2, :cond_0

    .line 1323
    nop

    .line 1324
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnSerializableIsolation()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setSerializableIsolation(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1325
    nop

    .line 1326
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnReadCommitted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setReadCommitted(Z)Lcom/sleepycat/je/TransactionConfig;

    goto :goto_0

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1329
    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setSerializableIsolation(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1330
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1331
    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setReadCommitted(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1332
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1333
    invoke-virtual {v2}, Lcom/sleepycat/je/TransactionConfig;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1335
    :goto_0
    if-eqz p3, :cond_1

    .line 1336
    nop

    .line 1337
    invoke-interface {p3}, Lcom/sleepycat/je/dbi/RepConfigProxy;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1339
    :cond_1
    iput-object v1, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 1340
    return-void
.end method

.method private setupDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/Database;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 20
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "newDb"    # Lcom/sleepycat/je/Database;
    .param p4, "databaseName"    # Ljava/lang/String;
    .param p5, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p6, "isInternalDb"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseExistsException;
        }
    .end annotation

    .line 791
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    const-string v0, "databaseName"

    invoke-static {v10, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment.open:  name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dbConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 797
    nop

    .line 798
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    move v15, v0

    .line 804
    .local v15, "autoTxnIsReplicated":Z
    invoke-virtual {v11, v10, v15}, Lcom/sleepycat/je/DatabaseConfig;->validateOnDbOpen(Ljava/lang/String;Z)V

    .line 806
    invoke-direct {v7, v8, v11, v10, v12}, Lcom/sleepycat/je/Environment;->validateDbConfigAgainstEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;Z)V

    .line 810
    invoke-virtual {v8, v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->criticalEviction(Z)V

    .line 812
    const/16 v16, 0x0

    .line 813
    .local v16, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/16 v17, 0x0

    .line 814
    .local v17, "operationOk":Z
    const/16 v18, 0x0

    .line 815
    .local v18, "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    nop

    .line 816
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p6

    move v5, v15

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZLcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v6

    .line 825
    .local v6, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    invoke-virtual {v9, v8, v6}, Lcom/sleepycat/je/Database;->initHandleLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/HandleLocker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v5, v0

    .line 826
    .end local v18    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .local v5, "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0, v6, v10, v5, v14}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v4, v0

    .line 829
    .end local v16    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v4, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v0, 0x0

    .line 830
    .local v0, "dbCreated":Z
    if-eqz v4, :cond_1

    .line 831
    :try_start_2
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 893
    .end local v0    # "dbCreated":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    move-object v14, v5

    move-object v13, v6

    move/from16 v0, v17

    goto/16 :goto_6

    .line 831
    .restart local v0    # "dbCreated":Z
    :cond_1
    move v1, v14

    :goto_1
    move/from16 v16, v1

    .line 833
    .local v16, "databaseExists":Z
    const-string v1, "Database "

    if-eqz v16, :cond_4

    .line 834
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/DatabaseConfig;->getAllowCreate()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    .line 835
    :try_start_4
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/DatabaseConfig;->getExclusiveCreate()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 836
    :cond_2
    new-instance v2, Lcom/sleepycat/je/DatabaseExistsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " already exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sleepycat/je/DatabaseExistsException;-><init>(Ljava/lang/String;)V

    .end local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v15    # "autoTxnIsReplicated":Z
    .end local v17    # "operationOk":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "newDb":Lcom/sleepycat/je/Database;
    .end local p4    # "databaseName":Ljava/lang/String;
    .end local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local p6    # "isInternalDb":Z
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 840
    .restart local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "autoTxnIsReplicated":Z
    .restart local v17    # "operationOk":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "newDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "databaseName":Ljava/lang/String;
    .restart local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local p6    # "isInternalDb":Z
    :cond_3
    :goto_2
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v18, v4

    .end local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v18, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object v14, v5

    .end local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .local v14, "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    move-object/from16 v5, p4

    move-object v13, v6

    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v13, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v6, p5

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Database;->initExisting(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v1, v18

    goto :goto_4

    .line 893
    .end local v0    # "dbCreated":Z
    .end local v16    # "databaseExists":Z
    :catchall_1
    move-exception v0

    move-object v1, v0

    move/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_6

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move-object v14, v5

    move-object v13, v6

    move-object v1, v0

    move/from16 v0, v17

    move-object/from16 v2, v18

    .end local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto/16 :goto_6

    .line 844
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "dbCreated":Z
    .restart local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v16    # "databaseExists":Z
    :cond_4
    move-object/from16 v18, v4

    move-object v14, v5

    move-object v13, v6

    .end local v4    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v3, v18

    .end local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v3, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_7
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 845
    const/4 v2, 0x0

    .line 847
    .end local v3    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v2, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v12, :cond_6

    .line 848
    :try_start_8
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/dbi/DbTree;->isReservedDbName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 849
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a reserved database name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v15    # "autoTxnIsReplicated":Z
    .end local v17    # "operationOk":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "newDb":Lcom/sleepycat/je/Database;
    .end local p4    # "databaseName":Ljava/lang/String;
    .end local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local p6    # "isInternalDb":Z
    throw v1

    .line 853
    .restart local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v15    # "autoTxnIsReplicated":Z
    .restart local v17    # "operationOk":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "newDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "databaseName":Ljava/lang/String;
    .restart local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local p6    # "isInternalDb":Z
    :cond_6
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/DatabaseConfig;->getAllowCreate()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 864
    invoke-virtual {v9, v7, v13, v10, v11}, Lcom/sleepycat/je/Database;->initNew(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 865
    .end local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v1, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v0, 0x1

    .line 873
    :goto_4
    const/4 v2, 0x1

    .line 874
    .end local v17    # "operationOk":Z
    .local v2, "operationOk":Z
    :try_start_9
    invoke-direct {v7, v9}, Lcom/sleepycat/je/Environment;->addReferringHandle(Lcom/sleepycat/je/Database;)V

    .line 875
    invoke-virtual {v13, v9}, Lcom/sleepycat/je/txn/Locker;->addOpenedDatabase(Lcom/sleepycat/je/Database;)V

    .line 878
    nop

    .line 879
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/Database;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 880
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->noteWriteHandleOpen()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    move v3, v4

    .line 882
    .local v3, "firstWriteHandle":Z
    if-nez v0, :cond_8

    if-eqz v3, :cond_9

    .line 883
    :cond_8
    invoke-static {v13, v9, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 893
    .end local v0    # "dbCreated":Z
    .end local v3    # "firstWriteHandle":Z
    .end local v16    # "databaseExists":Z
    :cond_9
    if-nez v2, :cond_b

    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 895
    if-eqz v14, :cond_a

    .line 896
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sleepycat/je/txn/HandleLocker;->operationEnd(Z)V

    .line 898
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/Database;->removeReferringAssociations()V

    .line 905
    :cond_b
    invoke-virtual {v13, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 906
    nop

    .line 907
    return-void

    .line 893
    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    move-object v1, v0

    move v0, v2

    move-object/from16 v2, v19

    goto :goto_6

    .line 854
    .end local v1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "dbCreated":Z
    .local v2, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "databaseExists":Z
    .restart local v17    # "operationOk":Z
    :cond_c
    :try_start_a
    new-instance v3, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not found."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v15    # "autoTxnIsReplicated":Z
    .end local v17    # "operationOk":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "newDb":Lcom/sleepycat/je/Database;
    .end local p4    # "databaseName":Ljava/lang/String;
    .end local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local p6    # "isInternalDb":Z
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 893
    .end local v0    # "dbCreated":Z
    .end local v16    # "databaseExists":Z
    .restart local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v15    # "autoTxnIsReplicated":Z
    .restart local v17    # "operationOk":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "newDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "databaseName":Ljava/lang/String;
    .restart local p5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local p6    # "isInternalDb":Z
    :catchall_4
    move-exception v0

    move-object v1, v0

    move/from16 v0, v17

    goto :goto_6

    .end local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v3, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move/from16 v0, v17

    goto :goto_6

    .end local v3    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_6
    move-exception v0

    move-object/from16 v3, v18

    move-object v1, v0

    move-object v2, v3

    move/from16 v0, v17

    .end local v18    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_6

    .end local v3    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v16, "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_7
    move-exception v0

    move-object v14, v5

    move-object v13, v6

    move-object v1, v0

    move-object/from16 v2, v16

    move/from16 v0, v17

    .end local v5    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    goto :goto_6

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v18, "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    :catchall_8
    move-exception v0

    move-object v13, v6

    move-object v1, v0

    move-object/from16 v2, v16

    move/from16 v0, v17

    move-object/from16 v14, v18

    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v16    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "operationOk":Z
    .end local v18    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .local v0, "operationOk":Z
    .restart local v2    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    :goto_6
    if-nez v0, :cond_e

    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 895
    if-eqz v14, :cond_d

    .line 896
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sleepycat/je/txn/HandleLocker;->operationEnd(Z)V

    .line 898
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/Database;->removeReferringAssociations()V

    .line 905
    :cond_e
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v1
.end method

.method private setupHandleConfig(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 4
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "repConfig"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 305
    if-nez p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/EnvironmentConfig;->DEFAULT:Lcom/sleepycat/je/EnvironmentConfig;

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 309
    .local v0, "baseConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 312
    .local v1, "useConfig":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getLoadPropertyFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    nop

    .line 314
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getProps(Lcom/sleepycat/je/EnvironmentMutableConfig;)Ljava/util/Properties;

    move-result-object v2

    const/4 v3, 0x0

    .line 313
    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->applyFileConfig(Ljava/io/File;Ljava/util/Properties;Z)V

    .line 317
    :cond_1
    invoke-direct {p0, v1, v1, p3}, Lcom/sleepycat/je/Environment;->copyToHandleConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    .line 318
    return-object v1
.end method

.method private validateDbConfigAgainstEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "isInternalDb"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read/Write Database instances for replicated database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be transactional."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_1
    :goto_0
    const-string v0, "Attempted to open Database "

    if-nez p4, :cond_3

    .line 936
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 938
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " transactionally, but parent Environment is not transactional"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 946
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as writable but parent Environment is read only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method beginInternalTransaction(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;
    .locals 2
    .param p1, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;

    .line 1396
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/sleepycat/je/Environment;->beginTransactionInternal(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;Z)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/Transaction;
    .param p2, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1383
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/Environment;->beginTransactionInternal(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;Z)Lcom/sleepycat/je/Transaction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1385
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "E":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1387
    throw v0
.end method

.method checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 2696
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2697
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 2698
    return-object v0
.end method

.method public checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V
    .locals 2
    .param p1, "ckptConfig"    # Lcom/sleepycat/je/CheckpointConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1580
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_0

    .line 1581
    sget-object p1, Lcom/sleepycat/je/CheckpointConfig;->DEFAULT:Lcom/sleepycat/je/CheckpointConfig;

    .line 1585
    :cond_0
    :try_start_0
    const-string v1, "api"

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    nop

    .line 1590
    return-void

    .line 1586
    :catch_0
    move-exception v1

    .line 1587
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1588
    throw v1
.end method

.method public cleanLog()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1733
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCleaner(Z)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1734
    :catch_0
    move-exception v1

    .line 1735
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1736
    throw v1
.end method

.method public cleanLogFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1853
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1856
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCleaner(Z)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1857
    :catch_0
    move-exception v1

    .line 1858
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1859
    throw v1
.end method

.method clearEnvImpl()V
    .locals 1

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 469
    return-void
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 416
    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_3

    .line 428
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeAfterInvalid()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :try_start_3
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->clearEnvImpl()V

    .line 432
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Database;

    .line 433
    .local v2, "db":Lcom/sleepycat/je/Database;
    sget-object v3, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    invoke-virtual {v2, v3, v0}, Lcom/sleepycat/je/Database;->minimalClose(Lcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 434
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    goto :goto_0

    .line 435
    .end local p0    # "this":Lcom/sleepycat/je/Environment;
    :cond_1
    nop

    .line 436
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->clearEnvImpl()V

    .line 432
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/Database;

    .line 433
    .local v3, "db":Lcom/sleepycat/je/Database;
    sget-object v4, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/je/Database;->minimalClose(Lcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V

    .line 434
    .end local v3    # "db":Lcom/sleepycat/je/Database;
    goto :goto_1

    :cond_2
    throw v1

    .line 439
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 441
    .local v0, "errors":Ljava/lang/StringBuilder;
    :try_start_5
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Environment;->checkForCloseErrors(Ljava/lang/StringBuilder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 444
    :try_start_6
    iget-object v1, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->close()V
    :try_end_6
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 453
    nop

    .line 455
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-gtz v1, :cond_4

    .line 459
    :try_start_8
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->clearEnvImpl()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 460
    nop

    .line 461
    monitor-exit p0

    return-void

    .line 456
    :cond_4
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "errors":Ljava/lang/StringBuilder;
    throw v1

    .line 448
    .restart local v0    # "errors":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 450
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "errors":Ljava/lang/StringBuilder;
    throw v2

    .line 452
    .restart local v0    # "errors":Ljava/lang/StringBuilder;
    :cond_5
    nop

    .end local v0    # "errors":Ljava/lang/StringBuilder;
    throw v1

    .line 445
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "errors":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 446
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 447
    nop

    .end local v0    # "errors":Ljava/lang/StringBuilder;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 459
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v0    # "errors":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->clearEnvImpl()V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 414
    .end local v0    # "errors":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closeInternalHandle()V
    .locals 3

    monitor-enter p0

    .line 479
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v0, "errors":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Environment;->checkForCloseErrors(Ljava/lang/StringBuilder;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_0

    .line 484
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    .end local v0    # "errors":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/sleepycat/je/Environment;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compress()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1907
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1910
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCompressor()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    nop

    .line 1915
    return-void

    .line 1911
    :catch_0
    move-exception v1

    .line 1912
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1913
    throw v1
.end method

.method public discardExtinctRecords(Lcom/sleepycat/je/Transaction;Ljava/util/Set;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/ScanFilter;Ljava/lang/String;)J
    .locals 14
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "inclusiveBeginKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "exclusiveEndKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "scanFilter"    # Lcom/sleepycat/je/ScanFilter;
    .param p6, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/ScanFilter;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 2165
    .local p2, "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 2166
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/Environment;->checkWritable(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2167
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkRecordExtinctionAvailable()V

    .line 2169
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->hasExtinctionFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v10

    .line 2176
    .local v10, "scanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    invoke-virtual {v10}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2182
    const/4 v0, 0x1

    .line 2183
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional()Z

    move-result v3

    .line 2184
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v4

    .line 2182
    move-object v11, p1

    invoke-static {p0, p1, v0, v3, v4}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v12

    .line 2186
    .local v12, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v13, 0x0

    .line 2188
    .local v13, "success":Z
    if-eqz p6, :cond_0

    move-object/from16 v9, p6

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, ""

    move-object v9, v0

    :goto_0
    move-object v3, v10

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->discardExtinctRecords(Lcom/sleepycat/je/txn/Locker;Ljava/util/Set;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/ScanFilter;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    .local v3, "id":J
    const/4 v0, 0x1

    .line 2193
    .end local v13    # "success":Z
    .local v0, "success":Z
    nop

    .line 2200
    invoke-virtual {v12, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 2193
    return-wide v3

    .line 2200
    .end local v0    # "success":Z
    .end local v3    # "id":J
    .restart local v13    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "E":Ljava/lang/Error;
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2197
    nop

    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v10    # "scanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v12    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "success":Z
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "inclusiveBeginKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "exclusiveEndKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "scanFilter":Lcom/sleepycat/je/ScanFilter;
    .end local p6    # "label":Ljava/lang/String;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    .end local v0    # "E":Ljava/lang/Error;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v10    # "scanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v12    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "success":Z
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p3    # "inclusiveBeginKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "exclusiveEndKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "scanFilter":Lcom/sleepycat/je/ScanFilter;
    .restart local p6    # "label":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12, v13}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v0

    .line 2177
    .end local v12    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "success":Z
    :cond_1
    move-object v11, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "je.env.runExtinctRecordScanner is false"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2170
    .end local v10    # "scanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :cond_2
    move-object v11, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "An ExtinctionFilter is not configured"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evictMemory()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1880
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1883
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeEvictor()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    nop

    .line 1888
    return-void

    .line 1884
    :catch_0
    move-exception v1

    .line 1885
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1886
    throw v1
.end method

.method public flushLog(Z)V
    .locals 2
    .param p1, "fsync"    # Z

    .line 1660
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1663
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->flushLog(Z)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    nop

    .line 1668
    return-void

    .line 1664
    :catch_0
    move-exception v1

    .line 1665
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1666
    throw v1
.end method

.method public getConfig()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2252
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2255
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 2256
    .local v1, "config":Lcom/sleepycat/je/EnvironmentConfig;
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->copyHandlePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 2257
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/EnvironmentConfig;->fillInEnvironmentGeneratedProps(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    return-object v1

    .line 2259
    .end local v1    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    :catch_0
    move-exception v1

    .line 2260
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2261
    throw v1
.end method

.method public getDatabaseNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2455
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2458
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->getDbNames()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2459
    :catch_0
    move-exception v1

    .line 2460
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2461
    throw v1
.end method

.method getDefaultTxnConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->defaultTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method public getHome()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1285
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1

    .line 2638
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 2639
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentFailureException;

    return-object v0

    .line 2638
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLockStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2390
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2392
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_0

    .line 2393
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 2397
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2398
    :catch_0
    move-exception v1

    .line 2399
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2400
    throw v1
.end method

.method getMaybeNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method getMemoryUsage()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1265
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->getCacheMemoryUsage()J

    move-result-wide v1

    return-wide v1
.end method

.method public getMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2325
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2328
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 2329
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cloneMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v1

    .line 2330
    .local v1, "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    iget-object v2, p0, Lcom/sleepycat/je/Environment;->handleConfig:Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->copyHandlePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 2331
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->fillInEnvironmentGeneratedProps(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    return-object v1

    .line 2333
    .end local v1    # "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catch_0
    move-exception v1

    .line 2334
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2335
    throw v1
.end method

.method getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 3

    .line 2717
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2719
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v0, :cond_0

    .line 2723
    return-object v0

    .line 2720
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Environment is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2356
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2358
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_0

    .line 2359
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 2363
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2364
    :catch_0
    move-exception v1

    .line 2365
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2366
    throw v1
.end method

.method public getThreadTransaction()Lcom/sleepycat/je/Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2534
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2537
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/TxnManager;->getTxnForThread()Lcom/sleepycat/je/Transaction;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2538
    :catch_0
    move-exception v1

    .line 2539
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2540
    throw v1
.end method

.method public getTransactionStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2421
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2423
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_0

    .line 2424
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 2428
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2429
    :catch_0
    move-exception v1

    .line 2430
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2431
    throw v1
.end method

.method invalidate(Ljava/lang/Error;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Error;

    .line 2755
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2756
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez v0, :cond_0

    .line 2757
    return-void

    .line 2759
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2760
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 2610
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2611
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected isInternalHandle()Z
    .locals 1

    .line 2739
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordExtinctionActive(J)Z
    .locals 1
    .param p1, "id"    # J

    .line 2236
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->isScanTaskActive(J)Z

    move-result v0

    return v0
.end method

.method public isRecordExtinctionAvailable()Z
    .locals 3

    .line 2066
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2068
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkRecordExtinctionAvailable()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    const/4 v1, 0x1

    return v1

    .line 2070
    :catch_0
    move-exception v1

    .line 2071
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    return v2
.end method

.method public isValid()Z
    .locals 2

    .line 2589
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2590
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected makeEnvironmentImpl(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 4
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 278
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Environment;->appliedFinalConfig:Lcom/sleepycat/je/EnvironmentConfig;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/sleepycat/je/Environment;->setupRepConfig(Ljava/io/File;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/RepConfigProxy;

    move-result-object v3

    .line 278
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbEnvPool;->getEnvironment(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;ZLcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->registerMBean(Lcom/sleepycat/je/Environment;)V

    .line 286
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInvalidatingExceptionReference()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Environment;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->environmentImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public declared-synchronized openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;
    .locals 9
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseExistsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 661
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p3, :cond_0

    .line 662
    sget-object v1, Lcom/sleepycat/je/DatabaseConfig;->DEFAULT:Lcom/sleepycat/je/DatabaseConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v1

    .line 666
    .end local p0    # "this":Lcom/sleepycat/je/Environment;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sleepycat/je/Database;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/Database;-><init>(Lcom/sleepycat/je/Environment;)V

    move-object v8, v1

    .line 668
    .local v8, "db":Lcom/sleepycat/je/Database;
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Environment;->setupDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/Database;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Z)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    monitor-exit p0

    return-object v8

    .line 673
    .end local v8    # "db":Lcom/sleepycat/je/Database;
    :catch_0
    move-exception v1

    .line 674
    .local v1, "E":Ljava/lang/Error;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 675
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "E":Ljava/lang/Error;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openDiskOrderedCursor([Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DiskOrderedCursorConfig;)Lcom/sleepycat/je/DiskOrderedCursor;
    .locals 6
    .param p1, "databases"    # [Lcom/sleepycat/je/Database;
    .param p2, "config"    # Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2023
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-string v1, "databases"

    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForZeroLengthArrayParam([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    if-nez p2, :cond_0

    .line 2026
    sget-object p2, Lcom/sleepycat/je/DiskOrderedCursorConfig;->DEFAULT:Lcom/sleepycat/je/DiskOrderedCursorConfig;

    .line 2030
    :cond_0
    :try_start_0
    array-length v1, p1

    .line 2032
    .local v1, "nDbs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2034
    aget-object v3, p1, v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "The handle at position "

    if-eqz v3, :cond_2

    .line 2040
    :try_start_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 2032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2041
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of the databases array points to a database that does not belong to this environment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "databases":[Lcom/sleepycat/je/Database;
    .end local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    throw v3

    .line 2035
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "databases":[Lcom/sleepycat/je/Database;
    .restart local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of the databases array is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "databases":[Lcom/sleepycat/je/Database;
    .end local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    throw v3

    .line 2048
    .end local v2    # "i":I
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "databases":[Lcom/sleepycat/je/Database;
    .restart local p2    # "config":Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :cond_3
    new-instance v2, Lcom/sleepycat/je/DiskOrderedCursor;

    invoke-direct {v2, p1, p2}, Lcom/sleepycat/je/DiskOrderedCursor;-><init>([Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 2050
    .end local v1    # "nDbs":I
    :catch_0
    move-exception v1

    .line 2051
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2052
    throw v1
.end method

.method public declared-synchronized openSecondaryDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;
    .locals 9
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "primaryDatabase"    # Lcom/sleepycat/je/Database;
    .param p4, "dbConfig"    # Lcom/sleepycat/je/SecondaryConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseExistsException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 741
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 744
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lockInterruptibly()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 748
    nop

    .line 750
    if-nez p4, :cond_0

    .line 751
    :try_start_2
    sget-object v1, Lcom/sleepycat/je/SecondaryConfig;->DEFAULT:Lcom/sleepycat/je/SecondaryConfig;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p4, v1

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 761
    :catch_0
    move-exception v1

    goto :goto_1

    .line 753
    :cond_0
    :goto_0
    :try_start_3
    new-instance v1, Lcom/sleepycat/je/SecondaryDatabase;

    invoke-direct {v1, p0, p4, p3}, Lcom/sleepycat/je/SecondaryDatabase;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/SecondaryConfig;Lcom/sleepycat/je/Database;)V

    move-object v8, v1

    .line 756
    .local v8, "db":Lcom/sleepycat/je/SecondaryDatabase;
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/Environment;->setupDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/Database;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Z)V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 760
    nop

    .line 765
    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 760
    monitor-exit p0

    return-object v8

    .line 765
    .end local v8    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p0    # "this":Lcom/sleepycat/je/Environment;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 761
    :catch_1
    move-exception v1

    .line 762
    .local v1, "E":Ljava/lang/Error;
    :goto_1
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 763
    nop

    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "primaryDatabase":Lcom/sleepycat/je/Database;
    .end local p4    # "dbConfig":Lcom/sleepycat/je/SecondaryConfig;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 765
    .end local v1    # "E":Ljava/lang/Error;
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "primaryDatabase":Lcom/sleepycat/je/Database;
    .restart local p4    # "dbConfig":Lcom/sleepycat/je/SecondaryConfig;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 746
    :catch_2
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 740
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "primaryDatabase":Lcom/sleepycat/je/Database;
    .end local p4    # "dbConfig":Lcom/sleepycat/je/SecondaryConfig;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public preload([Lcom/sleepycat/je/Database;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
    .locals 5
    .param p1, "databases"    # [Lcom/sleepycat/je/Database;
    .param p2, "config"    # Lcom/sleepycat/je/PreloadConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1954
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1956
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-string v1, "databases"

    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForZeroLengthArrayParam([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    if-nez p2, :cond_0

    .line 1959
    new-instance v1, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    move-object p2, v1

    .line 1963
    :cond_0
    :try_start_0
    array-length v1, p1

    .line 1964
    .local v1, "nDbs":I
    new-array v2, v1, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1965
    .local v2, "dbImpls":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1966
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1965
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1968
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preload([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1969
    .end local v1    # "nDbs":I
    .end local v2    # "dbImpls":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v1

    .line 1970
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1971
    throw v1
.end method

.method public printStartupInfo(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 2654
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2655
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->displayStats(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 2656
    return-void
.end method

.method public removeDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1003
    const-string v0, "databaseName"

    invoke-static {p2, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    new-instance v0, Lcom/sleepycat/je/Environment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/je/Environment$1;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0}, Lcom/sleepycat/je/Environment$1;->run()Ljava/lang/Object;

    .line 1021
    return-void
.end method

.method removeReferringHandle(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 2680
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    return-void
.end method

.method removeReferringHandle(Lcom/sleepycat/je/Transaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 2687
    iget-object v0, p0, Lcom/sleepycat/je/Environment;->referringDbTxns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    return-void
.end method

.method public renameDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1063
    const-string v0, "databaseName"

    invoke-static {p2, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    const-string v0, "newName"

    invoke-static {p3, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    new-instance v0, Lcom/sleepycat/je/Environment$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/Environment$2;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0}, Lcom/sleepycat/je/Environment$2;->run()Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public declared-synchronized setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 2
    .param p1, "mutableConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2287
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2289
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-string v1, "mutableConfig"

    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 2305
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sleepycat/je/Environment;->copyToHandleConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2309
    nop

    .line 2310
    monitor-exit p0

    return-void

    .line 2306
    .end local p0    # "this":Lcom/sleepycat/je/Environment;
    :catch_0
    move-exception v1

    .line 2307
    .local v1, "E":Ljava/lang/Error;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2308
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2286
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "E":Ljava/lang/Error;
    .end local p1    # "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setThreadTransaction(Lcom/sleepycat/je/Transaction;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 2561
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2564
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/txn/TxnManager;->setTxnForThread(Lcom/sleepycat/je/Transaction;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2568
    nop

    .line 2569
    return-void

    .line 2565
    :catch_0
    move-exception v1

    .line 2566
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2567
    throw v1
.end method

.method protected setupRepConfig(Ljava/io/File;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/RepConfigProxy;
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .param p3, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public sync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1617
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1620
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 1621
    .local v1, "config":Lcom/sleepycat/je/CheckpointConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 1622
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 1624
    const-string v2, "sync"

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    .end local v1    # "config":Lcom/sleepycat/je/CheckpointConfig;
    nop

    .line 1629
    return-void

    .line 1625
    :catch_0
    move-exception v1

    .line 1626
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1627
    throw v1
.end method

.method public truncateDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Z)J
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "returnCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1141
    const-string v0, "databaseName"

    invoke-static {p2, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Lcom/sleepycat/je/Environment$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/Environment$3;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Z)V

    .line 1158
    invoke-virtual {v0}, Lcom/sleepycat/je/Environment$3;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1143
    return-wide v0
.end method

.method public verify(Lcom/sleepycat/je/VerifyConfig;Ljava/io/PrintStream;)Z
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/VerifyConfig;
    .param p2, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2500
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2502
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_0

    .line 2503
    sget-object p1, Lcom/sleepycat/je/VerifyConfig;->DEFAULT:Lcom/sleepycat/je/VerifyConfig;

    .line 2507
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->verify(Lcom/sleepycat/je/VerifyConfig;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    nop

    .line 2513
    const/4 v1, 0x1

    return v1

    .line 2508
    :catch_0
    move-exception v1

    .line 2509
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 2510
    throw v1
.end method
