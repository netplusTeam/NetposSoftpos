.class public Lcom/sleepycat/compat/DbCompat;
.super Ljava/lang/Object;
.source "DbCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/compat/DbCompat$OpWriteOptions;,
        Lcom/sleepycat/compat/DbCompat$OpReadOptions;,
        Lcom/sleepycat/compat/DbCompat$OpResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BTREE_RECNUM_METHOD:Z = false

.field public static final CDB:Z = false

.field public static final DATABASE_COUNT:Z = true

.field public static final HASH_METHOD:Z = false

.field public static final INSERTION_ORDERED_DUPLICATES:Z = false

.field public static final IS_JE:Z = true

.field public static final JOIN:Z = true

.field public static final LOCK_SUBSYSTEM:Z = false

.field public static final MEMORY_SUBSYSTEM:Z = false

.field public static final NESTED_TRANSACTIONS:Z = false

.field public static final NEW_JE_EXCEPTIONS:Z = true

.field public static final OPTIONAL_READ_UNCOMMITTED:Z = false

.field public static final POPULATE_ENFORCES_CONSTRAINTS:Z = true

.field public static final QUEUE_METHOD:Z = false

.field public static final READ_ONLY_TXN_CONFIG:Lcom/sleepycat/je/TransactionConfig;

.field public static final RECNO_METHOD:Z = false

.field public static final SECONDARIES:Z = true

.field public static final SEPARATE_DATABASE_FILES:Z = false

.field public static TRANSACTION_RUNNER_PRINT_STACK_TRACES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 136
    nop

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sleepycat/compat/DbCompat;->TRANSACTION_RUNNER_PRINT_STACK_TRACES:Z

    .line 171
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    sput-object v1, Lcom/sleepycat/compat/DbCompat;->READ_ONLY_TXN_CONFIG:Lcom/sleepycat/je/TransactionConfig;

    .line 172
    sget-object v2, Lcom/sleepycat/je/Durability;->READ_ONLY_TXN:Lcom/sleepycat/je/Durability;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 173
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/TransactionConfig;->setReadCommitted(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static cloneCursorConfig(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/CursorConfig;
    .locals 2
    .param p0, "config"    # Lcom/sleepycat/je/CursorConfig;

    .line 234
    new-instance v0, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    .line 235
    .local v0, "newConfig":Lcom/sleepycat/je/CursorConfig;
    invoke-virtual {p0}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CursorConfig;->setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 236
    invoke-virtual {p0}, Lcom/sleepycat/je/CursorConfig;->getReadUncommitted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CursorConfig;->setReadUncommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 237
    return-object v0
.end method

.method public static databaseExists(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 430
    if-nez p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static enableDeadlockDetection(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "isCDB"    # Z

    .line 601
    return-void
.end method

.method public static getBtreeRecordNumbers(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public static getClassLoader(Lcom/sleepycat/je/Environment;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 325
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentRecordNumber(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getDatabaseCount(Lcom/sleepycat/je/Database;)J
    .locals 2
    .param p0, "db"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDatabaseFile(Lcom/sleepycat/je/Database;)Ljava/lang/String;
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 229
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    return v0
.end method

.method public static getErrorHandler(Lcom/sleepycat/je/Environment;)Ljava/lang/Object;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public static getInitializeCache(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public static getInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 181
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getLocking()Z

    move-result v0

    return v0
.end method

.method public static getReadUncommitted(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public static getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getRenumbering(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public static getSearchRecordNumber(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getSearchRecordNumber(Lcom/sleepycat/je/SecondaryCursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/SecondaryCursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getSortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 221
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    return v0
.end method

.method public static getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getThreadTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public static getUnsortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public static getWriteCursor(Lcom/sleepycat/je/CursorConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/CursorConfig;

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public static isReplicated(Lcom/sleepycat/je/Environment;)Z
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 189
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    return v0
.end method

.method public static isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public static isTypeHash(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public static isTypeQueue(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public static isTypeRecno(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method private static makeTestDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 570
    if-nez p0, :cond_0

    .line 571
    return-object p1

    .line 573
    :cond_0
    if-eqz p1, :cond_1

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :cond_1
    return-object p0
.end method

.method public static openDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "config"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 443
    if-nez p2, :cond_0

    .line 445
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Lcom/sleepycat/je/DatabaseExistsException;
    return-object v0

    .line 446
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    :catch_1
    move-exception v1

    .line 447
    .local v1, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    return-object v0

    .line 443
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static openSecondaryDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "primaryDatabase"    # Lcom/sleepycat/je/Database;
    .param p5, "config"    # Lcom/sleepycat/je/SecondaryConfig;

    .line 464
    if-nez p2, :cond_0

    .line 466
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sleepycat/je/Environment;->openSecondaryDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Lcom/sleepycat/je/DatabaseExistsException;
    return-object v0

    .line 468
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    return-object v0

    .line 464
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static putAfter(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static putBefore(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static removeDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dbName"    # Ljava/lang/String;

    .line 498
    if-nez p2, :cond_0

    .line 500
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/sleepycat/je/Environment;->removeDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    const/4 v0, 0x1

    return v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    const/4 v1, 0x0

    return v1

    .line 498
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static renameDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "oldFileName"    # Ljava/lang/String;
    .param p3, "oldDbName"    # Ljava/lang/String;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "newDbName"    # Ljava/lang/String;

    .line 516
    if-nez p2, :cond_1

    .line 517
    if-nez p4, :cond_0

    .line 519
    :try_start_0
    invoke-virtual {p0, p1, p3, p5}, Lcom/sleepycat/je/Environment;->renameDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    const/4 v0, 0x1

    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    const/4 v1, 0x0

    return v1

    .line 517
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static setBtreeComparator(Lcom/sleepycat/je/DatabaseConfig;Ljava/util/Comparator;)V
    .locals 0
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseConfig;",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 369
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 370
    return-void
.end method

.method public static setBtreeRecordNumbers(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 0
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 414
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setDeferredWrite(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 415
    return-void
.end method

.method public static setErrorHandler(Lcom/sleepycat/je/Environment;Ljava/lang/Object;)V
    .locals 0
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "errHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 611
    return-void
.end method

.method public static setImportunate(Lcom/sleepycat/je/Transaction;Z)Z
    .locals 2
    .param p0, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p1, "importunate"    # Z

    .line 362
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getImportunate()Z

    move-result v0

    .line 363
    .local v0, "oldVal":Z
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/txn/Txn;->setImportunate(Z)V

    .line 364
    return v0
.end method

.method public static setInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "val"    # Z

    .line 346
    if-nez p1, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setInitializeCache(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "val"    # Z

    .line 332
    if-eqz p1, :cond_0

    .line 335
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "val"    # Z

    .line 339
    if-eqz p1, :cond_0

    .line 342
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setLockDetectModeOldest(Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 353
    return-void
.end method

.method public static setReadUncommitted(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 0
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 394
    return-void
.end method

.method public static setRecordLength(Lcom/sleepycat/je/DatabaseConfig;I)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # I

    .line 418
    if-nez p1, :cond_0

    .line 421
    return-void

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setRecordNumber(Lcom/sleepycat/je/DatabaseEntry;I)V
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "recNum"    # I

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setRecordPad(Lcom/sleepycat/je/DatabaseConfig;I)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # I

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setRenumbering(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setSerializableIsolation(Lcom/sleepycat/je/TransactionConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p1, "val"    # Z

    .line 357
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setSerializableIsolation(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 358
    return-void
.end method

.method public static setSortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 0
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 403
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 404
    return-void
.end method

.method public static setTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 0
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 373
    return-void
.end method

.method public static setTypeHash(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setTypeQueue(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setTypeRecno(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setUnsortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 1
    .param p0, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "val"    # Z

    .line 408
    if-nez p1, :cond_0

    .line 411
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p1, "write"    # Z

    .line 245
    if-nez p1, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static suppressError(Lcom/sleepycat/je/Environment;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "errPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 616
    return-void
.end method

.method public static testOpenDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "config"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 536
    :try_start_0
    invoke-static {p2, p3}, Lcom/sleepycat/compat/DbCompat;->makeTestDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Lcom/sleepycat/je/DatabaseExistsException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 537
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static testOpenSecondaryDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "primary"    # Lcom/sleepycat/je/Database;
    .param p5, "config"    # Lcom/sleepycat/je/SecondaryConfig;

    .line 558
    :try_start_0
    invoke-static {p2, p3}, Lcom/sleepycat/compat/DbCompat;->makeTestDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/sleepycat/je/Environment;->openSecondaryDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Lcom/sleepycat/je/DatabaseExistsException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 560
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static truncateDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dbName"    # Ljava/lang/String;

    .line 482
    if-nez p2, :cond_0

    .line 484
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/sleepycat/je/Environment;->truncateDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Z)J
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v0, 0x1

    return v0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    return v0

    .line 482
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Exception;

    .line 582
    invoke-static {p0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    return-object v0
.end method

.method public static unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 587
    invoke-static {p0, p1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    return-object v0
.end method

.method public static unexpectedState()Ljava/lang/RuntimeException;
    .locals 1

    .line 595
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    return-object v0
.end method

.method public static unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 591
    invoke-static {p0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    return-object v0
.end method
