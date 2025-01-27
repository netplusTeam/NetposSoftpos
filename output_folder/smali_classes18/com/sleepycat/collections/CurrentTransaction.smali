.class public Lcom/sleepycat/collections/CurrentTransaction;
.super Ljava/lang/Object;
.source "CurrentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;,
        Lcom/sleepycat/collections/CurrentTransaction$Trans;
    }
.end annotation


# static fields
.field private static envMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/sleepycat/je/Environment;",
            "Lcom/sleepycat/collections/CurrentTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cdbMode:Z

.field private envRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sleepycat/je/Environment;",
            ">;"
        }
    .end annotation
.end field

.field private localCdbCursors:Ljava/lang/ThreadLocal;

.field private localTrans:Ljava/lang/ThreadLocal;

.field private lockingMode:Z

.field private txnMode:Z

.field private writeLockMode:Lcom/sleepycat/je/LockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/collections/CurrentTransaction;->envMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->envRef:Ljava/lang/ref/WeakReference;

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 107
    .local v0, "config":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->txnMode:Z

    .line 108
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->lockingMode:Z

    .line 109
    iget-boolean v2, p0, Lcom/sleepycat/collections/CurrentTransaction;->txnMode:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object v1, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    iput-object v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->writeLockMode:Lcom/sleepycat/je/LockMode;

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    sget-object v1, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    iput-object v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->writeLockMode:Lcom/sleepycat/je/LockMode;

    .line 114
    :goto_1
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    .line 115
    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    :cond_2
    nop

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private closeTxn(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;
    .locals 2
    .param p1, "trans"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 346
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$300(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/collections/CurrentTransaction$Trans;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 347
    invoke-static {p1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$300(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/collections/CurrentTransaction$Trans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$300(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/collections/CurrentTransaction$Trans;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getInstance(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/collections/CurrentTransaction;
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 82
    invoke-static {p0}, Lcom/sleepycat/collections/CurrentTransaction;->getInstanceInternal(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    .line 83
    .local v0, "currentTxn":Lcom/sleepycat/collections/CurrentTransaction;
    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->isTxnMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static getInstanceInternal(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/collections/CurrentTransaction;
    .locals 3
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 93
    sget-object v0, Lcom/sleepycat/collections/CurrentTransaction;->envMap:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/sleepycat/collections/CurrentTransaction;->envMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/collections/CurrentTransaction;

    .line 95
    .local v1, "ct":Lcom/sleepycat/collections/CurrentTransaction;
    if-nez v1, :cond_0

    .line 96
    new-instance v2, Lcom/sleepycat/collections/CurrentTransaction;

    invoke-direct {v2, p0}, Lcom/sleepycat/collections/CurrentTransaction;-><init>(Lcom/sleepycat/je/Environment;)V

    move-object v1, v2

    .line 97
    sget-object v2, Lcom/sleepycat/collections/CurrentTransaction;->envMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    monitor-exit v0

    return-object v1

    .line 100
    .end local v1    # "ct":Lcom/sleepycat/collections/CurrentTransaction;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final abortTransaction()Lcom/sleepycat/je/Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 321
    .local v0, "trans":Lcom/sleepycat/collections/CurrentTransaction$Trans;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/CurrentTransaction;->closeTxn(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    .line 323
    .local v1, "parent":Lcom/sleepycat/je/Transaction;
    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 324
    return-object v1

    .line 326
    .end local v1    # "parent":Lcom/sleepycat/je/Transaction;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No transaction is active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final beginTransaction(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/sleepycat/collections/CurrentTransaction;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    .line 226
    .local v0, "env":Lcom/sleepycat/je/Environment;
    iget-object v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 227
    .local v1, "trans":Lcom/sleepycat/collections/CurrentTransaction$Trans;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 228
    invoke-static {v1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v0, v2, p1}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$002(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Transaction;

    .line 239
    invoke-static {v1, p1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$202(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/TransactionConfig;

    goto :goto_0

    .line 230
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Nested transactions are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_1
    new-instance v3, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    invoke-direct {v3, v2, p1, v2}, Lcom/sleepycat/collections/CurrentTransaction$Trans;-><init>(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/collections/CurrentTransaction$1;)V

    move-object v1, v3

    .line 243
    invoke-virtual {v0, v2, p1}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$002(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Transaction;

    .line 244
    iget-object v2, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 246
    :goto_0
    invoke-static {v1}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    return-object v2
.end method

.method closeCursor(Lcom/sleepycat/je/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 475
    if-nez p1, :cond_0

    .line 476
    return-void

    .line 478
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 480
    .local v0, "cdbCursorsMap":Ljava/util/WeakHashMap;
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p1}, Lcom/sleepycat/je/Cursor;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 482
    .local v1, "db":Lcom/sleepycat/je/Database;
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;

    .line 483
    .local v2, "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    if-eqz v2, :cond_2

    .line 484
    iget-object v3, v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->writeCursors:Ljava/util/List;

    .line 485
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 487
    return-void

    .line 491
    .end local v1    # "db":Lcom/sleepycat/je/Database;
    .end local v2    # "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Closing CDB cursor that was not known to be open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    .end local v0    # "cdbCursorsMap":Ljava/util/WeakHashMap;
    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 496
    return-void
.end method

.method public final commitTransaction()Lcom/sleepycat/je/Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 288
    .local v0, "trans":Lcom/sleepycat/collections/CurrentTransaction$Trans;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/CurrentTransaction;->closeTxn(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    .line 290
    .local v1, "parent":Lcom/sleepycat/je/Transaction;
    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 291
    return-object v1

    .line 293
    .end local v1    # "parent":Lcom/sleepycat/je/Transaction;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No transaction is active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method dupCursor(Lcom/sleepycat/je/Cursor;ZZ)Lcom/sleepycat/je/Cursor;
    .locals 5
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "writeCursor"    # Z
    .param p3, "samePosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 444
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 446
    .local v0, "cdbCursorsMap":Ljava/util/WeakHashMap;
    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p1}, Lcom/sleepycat/je/Cursor;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 448
    .local v1, "db":Lcom/sleepycat/je/Database;
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;

    .line 449
    .local v2, "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    if-eqz v2, :cond_1

    .line 450
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->writeCursors:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    .line 452
    .local v3, "cursors":Ljava/util/List;
    :goto_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    invoke-virtual {p1, p3}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    .line 454
    .local v4, "newCursor":Lcom/sleepycat/je/Cursor;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-object v4

    .line 459
    .end local v1    # "db":Lcom/sleepycat/je/Database;
    .end local v2    # "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    .end local v3    # "cursors":Ljava/util/List;
    .end local v4    # "newCursor":Lcom/sleepycat/je/Cursor;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cursor to dup not tracked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    .end local v0    # "cdbCursorsMap":Ljava/util/WeakHashMap;
    :cond_2
    invoke-virtual {p1, p3}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->envRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Environment;

    return-object v0
.end method

.method public final getTransaction()Lcom/sleepycat/je/Transaction;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 177
    .local v0, "trans":Lcom/sleepycat/collections/CurrentTransaction$Trans;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method final getWriteLockMode()Lcom/sleepycat/je/LockMode;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->writeLockMode:Lcom/sleepycat/je/LockMode;

    return-object v0
.end method

.method isAutoCommitAllowed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/sleepycat/collections/CurrentTransaction;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/sleepycat/collections/CurrentTransaction;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0
.end method

.method isCDBCursorOpen(Lcom/sleepycat/je/Database;)Z
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 503
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 505
    .local v0, "cdbCursorsMap":Ljava/util/WeakHashMap;
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;

    .line 508
    .local v1, "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    .line 509
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, v1, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->writeCursors:Ljava/util/List;

    .line 510
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 511
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 515
    .end local v0    # "cdbCursorsMap":Ljava/util/WeakHashMap;
    .end local v1    # "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final isCdbMode()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    return v0
.end method

.method final isLockingMode()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->lockingMode:Z

    return v0
.end method

.method final isReadUncommitted()Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->localTrans:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 337
    .local v0, "trans":Lcom/sleepycat/collections/CurrentTransaction$Trans;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$200(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/sleepycat/collections/CurrentTransaction$Trans;->access$200(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/TransactionConfig;->getReadUncommitted()Z

    move-result v1

    return v1

    .line 340
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method final isTxnMode()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->txnMode:Z

    return v0
.end method

.method openCursor(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/CursorConfig;ZLcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Cursor;
    .locals 6
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p3, "writeCursor"    # Z
    .param p4, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Lcom/sleepycat/collections/CurrentTransaction;->cdbMode:Z

    if-eqz v0, :cond_5

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    iget-object v1, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 376
    .local v1, "cdbCursorsMap":Ljava/util/WeakHashMap;
    if-nez v1, :cond_0

    .line 377
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    move-object v1, v2

    .line 378
    iget-object v2, p0, Lcom/sleepycat/collections/CurrentTransaction;->localCdbCursors:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;

    .line 382
    :goto_0
    if-nez v0, :cond_1

    .line 383
    new-instance v2, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;

    invoke-direct {v2}, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;-><init>()V

    move-object v0, v2

    .line 384
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_1
    if-eqz p3, :cond_3

    .line 396
    iget-object v2, v0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 408
    iget-object v2, v0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->writeCursors:Ljava/util/List;

    .line 409
    .local v2, "cursors":Ljava/util/List;
    new-instance v3, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    .line 410
    .local v3, "cdbConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sleepycat/compat/DbCompat;->setWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)V

    goto :goto_1

    .line 404
    .end local v2    # "cursors":Ljava/util/List;
    .end local v3    # "cdbConfig":Lcom/sleepycat/je/CursorConfig;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot open CDB write cursor when read cursor is open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_3
    iget-object v2, v0, Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;->readCursors:Ljava/util/List;

    .line 413
    .restart local v2    # "cursors":Ljava/util/List;
    const/4 v3, 0x0

    .line 416
    .restart local v3    # "cdbConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 417
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/Cursor;

    .line 418
    .local v5, "other":Lcom/sleepycat/je/Cursor;
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    .line 419
    .end local v5    # "other":Lcom/sleepycat/je/Cursor;
    .local v4, "cursor":Lcom/sleepycat/je/Cursor;
    goto :goto_2

    .line 420
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    .line 422
    .restart local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    return-object v4

    .line 425
    .end local v0    # "cdbCursors":Lcom/sleepycat/collections/CurrentTransaction$CdbCursors;
    .end local v1    # "cdbCursorsMap":Ljava/util/WeakHashMap;
    .end local v2    # "cursors":Ljava/util/List;
    .end local v3    # "cdbConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_5
    invoke-virtual {p1, p4, p2}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method
