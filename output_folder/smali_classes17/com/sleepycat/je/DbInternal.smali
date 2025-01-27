.class public Lcom/sleepycat/je/DbInternal;
.super Ljava/lang/Object;
.source "DbInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/DbInternal$Search;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    nop

    .line 43
    new-instance v0, Lcom/sleepycat/je/OperationResult;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/OperationResult;-><init>(JZ)V

    sput-object v0, Lcom/sleepycat/je/DbInternal;->DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advanceCursor(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/Cursor;->advanceCursor(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    return v0
.end method

.method public static beginInternalTransaction(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 696
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Environment;->beginInternalTransaction(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public static checkImmutablePropsForEquality(Lcom/sleepycat/je/EnvironmentMutableConfig;Ljava/util/Properties;)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .param p1, "handleConfigProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->checkImmutablePropsForEquality(Ljava/util/Properties;)V

    .line 623
    return-void
.end method

.method public static checkOpen(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 105
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public static clearEnvImpl(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 98
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->clearEnvImpl()V

    .line 99
    return-void
.end method

.method public static cloneMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 611
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->cloneMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v0

    return-object v0
.end method

.method public static closeInternalHandle(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 112
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->closeInternalHandle()V

    .line 113
    return-void
.end method

.method public static copyMutablePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .param p1, "toConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 631
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->copyMutablePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 632
    return-void
.end method

.method public static deleteInternal(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/Cursor;->deleteInternal(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static deleteWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 244
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Cursor;->deleteWithRepContext(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static disableParameterValidation(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setValidateParams(Z)V

    .line 640
    return-void
.end method

.method public static excludeFromOpStats(Lcom/sleepycat/je/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 135
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->excludeFromOpStats()V

    .line 136
    return-void
.end method

.method public static getCheckpointUP(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 588
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getCheckpointUP()Z

    move-result v0

    return v0
.end method

.method public static getCorruptedCause(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryIntegrityException;
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 521
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getCorruptedCause()Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v0

    return-object v0
.end method

.method public static getCreateEP(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 573
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getCreateEP()Z

    move-result v0

    return v0
.end method

.method public static getCreateUP(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 558
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getCreateUP()Z

    move-result v0

    return v0
.end method

.method public static getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 464
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 528
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTxnConfig(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/TransactionConfig;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 690
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getDefaultTxnConfig()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskOrderedCursorImpl(Lcom/sleepycat/je/DiskOrderedCursor;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/DiskOrderedCursor;

    .line 711
    invoke-virtual {p0}, Lcom/sleepycat/je/DiskOrderedCursor;->getCursorImpl()Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;
    .locals 1
    .param p0, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironmentImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 74
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getMaybeNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getLocker(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p0, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method public static getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;

    .line 91
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateSecondaryConfig(Lcom/sleepycat/je/SecondaryDatabase;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 1
    .param p0, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;

    .line 128
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getPrivateSecondaryConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getProps(Lcom/sleepycat/je/EnvironmentMutableConfig;)Ljava/util/Properties;
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 646
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getProps()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;
    .locals 1
    .param p0, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 739
    if-nez p0, :cond_0

    .line 740
    sget-object p0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/LockMode;->toReadOptions()Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryAssociation(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryAssociation;
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 120
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    return-object v0
.end method

.method public static getSortedCursors(Lcom/sleepycat/je/JoinCursor;)[Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/JoinCursor;

    .line 535
    invoke-virtual {p0}, Lcom/sleepycat/je/JoinCursor;->getSortedCursors()[Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p0, "transaction"    # Lcom/sleepycat/je/Transaction;

    .line 705
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    return-object v0
.end method

.method public static getTxnReadCommitted(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 603
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnReadCommitted()Z

    move-result v0

    return v0
.end method

.method public static invalidate(Lcom/sleepycat/je/Database;)V
    .locals 0
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 50
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->invalidate()V

    .line 51
    return-void
.end method

.method public static isCorrupted(Lcom/sleepycat/je/Database;)Z
    .locals 1
    .param p0, "db"    # Lcom/sleepycat/je/Database;

    .line 517
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->isCorrupted()Z

    move-result v0

    return v0
.end method

.method public static makeCursor(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p0, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 498
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static makeCursor(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p0, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p3, "retainNonTxnLocks"    # Z

    .line 505
    new-instance v0, Lcom/sleepycat/je/Cursor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    return-object v0
.end method

.method public static makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p0, "databaseImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 474
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;
    .locals 2
    .param p0, "databaseImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;
    .param p3, "retainNonTxnLocks"    # Z

    .line 485
    new-instance v0, Lcom/sleepycat/je/Cursor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)V

    .line 488
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 489
    return-object v0
.end method

.method public static makeExceptionEvent(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/je/ExceptionEvent;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "n"    # Ljava/lang/String;

    .line 701
    new-instance v0, Lcom/sleepycat/je/ExceptionEvent;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/ExceptionEvent;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeResult(IZ)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p0, "expiration"    # I
    .param p1, "expirationInHours"    # Z

    .line 725
    nop

    .line 726
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    .line 725
    invoke-static {v0, v1}, Lcom/sleepycat/je/DbInternal;->makeResult(J)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static makeResult(J)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p0, "time"    # J

    .line 716
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/DbInternal;->DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/OperationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/OperationResult;-><init>(JZ)V

    :goto_0
    return-object v0
.end method

.method public static makeUpdateResult(IZ)Lcom/sleepycat/je/OperationResult;
    .locals 4
    .param p0, "expiration"    # I
    .param p1, "expirationInHours"    # Z

    .line 733
    new-instance v0, Lcom/sleepycat/je/OperationResult;

    .line 734
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/OperationResult;-><init>(JZ)V

    .line 733
    return-object v0
.end method

.method public static position(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "first"    # Z

    .line 170
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static putForReplay(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;IZLcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z
    .param p6, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p7, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 260
    invoke-virtual/range {p0 .. p7}, Lcom/sleepycat/je/Cursor;->putForReplay(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;IZLcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static putWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p4, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Cursor;->putWithRepContext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static readPrimaryAfterGet(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/SecondaryAssociation;)Z
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "priDb"    # Lcom/sleepycat/je/Database;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p6, "secDirtyRead"    # Z
    .param p7, "lockPrimaryOnly"    # Z
    .param p8, "allowNoData"    # Z
    .param p9, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p10, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p11, "secAssoc"    # Lcom/sleepycat/je/SecondaryAssociation;

    .line 155
    invoke-virtual/range {p0 .. p11}, Lcom/sleepycat/je/Cursor;->readPrimaryAfterGet(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z

    move-result v0

    return v0
.end method

.method public static retrieveNext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 213
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static search(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "searchMode"    # Lcom/sleepycat/je/DbInternal$Search;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 351
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 352
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v1, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    .line 355
    .local v1, "range":Lcom/sleepycat/util/keyrange/KeyRange;
    sget-object v2, Lcom/sleepycat/je/DbInternal$1;->$SwitchMap$com$sleepycat$je$DbInternal$Search:[I

    invoke-virtual {p4}, Lcom/sleepycat/je/DbInternal$Search;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 369
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 364
    :pswitch_0
    sget-object v2, Lcom/sleepycat/je/DbInternal$Search;->LTE:Lcom/sleepycat/je/DbInternal$Search;

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v4, v5, p1, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "first":Z
    goto :goto_2

    .line 358
    .end local v2    # "first":Z
    :pswitch_1
    sget-object v2, Lcom/sleepycat/je/DbInternal$Search;->GTE:Lcom/sleepycat/je/DbInternal$Search;

    if-ne p4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v1

    .line 360
    const/4 v2, 0x1

    .line 361
    .restart local v2    # "first":Z
    nop

    .line 372
    :goto_2
    new-instance v3, Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 373
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5

    invoke-direct {v3, v1, v4, v5, p0}, Lcom/sleepycat/util/keyrange/RangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V

    .line 375
    .local v3, "rangeCursor":Lcom/sleepycat/util/keyrange/RangeCursor;
    invoke-static {p5}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 377
    .local v4, "opReadOptions":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    if-eqz v2, :cond_2

    .line 378
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v5

    goto :goto_3

    .line 379
    :cond_2
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v5

    :goto_3
    nop

    .line 382
    .local v5, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v3}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v6

    if-ne p0, v6, :cond_3

    .line 384
    iget-object v6, v5, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    return-object v6

    .line 382
    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static search(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p5, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .param p6, "countOpStat"    # Z

    .line 185
    invoke-virtual/range {p0 .. p6}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static search(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "searchMode"    # Lcom/sleepycat/je/DbInternal$Search;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 315
    nop

    .line 316
    invoke-static {p5}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/DbInternal;->search(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 318
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public static searchBoth(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "searchMode"    # Lcom/sleepycat/je/DbInternal$Search;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 419
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 420
    invoke-virtual {p5}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 422
    .local v1, "lockMode":Lcom/sleepycat/je/LockMode;
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 423
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v3, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    .line 424
    .local v3, "range":Lcom/sleepycat/util/keyrange/KeyRange;
    invoke-virtual {v3, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v3

    .line 425
    new-instance v4, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    .line 428
    .local v4, "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    sget-object v5, Lcom/sleepycat/je/DbInternal$1;->$SwitchMap$com$sleepycat$je$DbInternal$Search:[I

    invoke-virtual {p4}, Lcom/sleepycat/je/DbInternal$Search;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 442
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 437
    :pswitch_0
    sget-object v5, Lcom/sleepycat/je/DbInternal$Search;->LTE:Lcom/sleepycat/je/DbInternal$Search;

    if-ne p4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v4, v0, v7, p2, v6}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 439
    .end local v4    # "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    .local v0, "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    const/4 v4, 0x0

    .line 440
    .local v4, "first":Z
    goto :goto_3

    .line 431
    .end local v0    # "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    .local v4, "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    :pswitch_1
    sget-object v5, Lcom/sleepycat/je/DbInternal$Search;->GTE:Lcom/sleepycat/je/DbInternal$Search;

    if-ne p4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-virtual {v4, p2, v6, v0, v7}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v0

    .line 433
    .end local v4    # "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    .restart local v0    # "pKeyRange":Lcom/sleepycat/util/keyrange/KeyRange;
    const/4 v4, 0x1

    .line 434
    .local v4, "first":Z
    nop

    .line 445
    :goto_3
    new-instance v5, Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 446
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v6

    invoke-direct {v5, v3, v0, v6, p0}, Lcom/sleepycat/util/keyrange/RangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V

    .line 448
    .local v5, "rangeCursor":Lcom/sleepycat/util/keyrange/RangeCursor;
    invoke-static {p5}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v6

    .line 450
    .local v6, "opReadOptions":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    if-eqz v4, :cond_3

    .line 451
    invoke-virtual {v5, p1, p2, p3, v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v7

    goto :goto_4

    .line 452
    :cond_3
    invoke-virtual {v5, p1, p2, p3, v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v7

    :goto_4
    nop

    .line 455
    .local v7, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v5}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v8

    if-ne p0, v8, :cond_4

    .line 457
    iget-object v8, v7, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    return-object v8

    .line 455
    :cond_4
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static searchBoth(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "searchMode"    # Lcom/sleepycat/je/DbInternal$Search;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 398
    nop

    .line 399
    invoke-static {p5}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 398
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/DbInternal;->searchBoth(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DbInternal$Search;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 401
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public static searchForReplay(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p4, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;

    .line 199
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->searchForReplay(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public static setCheckpointUP(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "checkpointUP"    # Z

    .line 581
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setCheckpointUP(Z)V

    .line 582
    return-void
.end method

.method public static setCreateEP(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "val"    # Z

    .line 566
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setCreateEP(Z)V

    .line 567
    return-void
.end method

.method public static setCreateUP(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "val"    # Z

    .line 551
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setCreateUP(Z)V

    .line 552
    return-void
.end method

.method public static setLoadPropertyFile(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "loadProperties"    # Z

    .line 543
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setLoadPropertyFile(Z)V

    .line 544
    return-void
.end method

.method public static setNonCloning(Lcom/sleepycat/je/Cursor;Z)V
    .locals 0
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "nonSticky"    # Z

    .line 513
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 514
    return-void
.end method

.method public static setPreempted(Lcom/sleepycat/je/Database;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "db"    # Lcom/sleepycat/je/Database;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/Database;->setPreempted(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static setTxnReadCommitted(Lcom/sleepycat/je/EnvironmentConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p1, "txnReadCommitted"    # Z

    .line 596
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnReadCommitted(Z)V

    .line 597
    return-void
.end method

.method public static setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V
    .locals 0
    .param p0, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "useExistingConfig"    # Z

    .line 654
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setUseExistingConfig(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 655
    return-void
.end method

.method public static validate(Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 0
    .param p0, "config1"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p1, "config2"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 664
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->validate(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 665
    return-void
.end method
