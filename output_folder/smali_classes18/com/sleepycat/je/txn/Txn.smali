.class public Lcom/sleepycat/je/txn/Txn;
.super Lcom/sleepycat/je/txn/Locker;
.source "Txn.java"

# interfaces
.implements Lcom/sleepycat/je/log/VersionedWriteLoggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static ACCUMULATED_LIMIT:I = 0x0

.field private static final IMPORTUNATE:B = 0x8t

.field private static final IS_PREPARED:B = 0x1t

.field private static final LAST_FORMAT_CHANGE:I = 0x8

.field private static final PAST_ROLLBACK:B = 0x4t

.field private static final READ_LOCK_OVERHEAD:I

.field private static final WRITE_LOCK_OVERHEAD:I

.field private static final XA_SUSPENDED:B = 0x2t


# instance fields
.field abortLsn:J

.field private accumulatedDelta:I

.field private buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TinyHashSet<",
            "Lcom/sleepycat/je/txn/BuddyLocker;",
            ">;"
        }
    .end annotation
.end field

.field private commitDurability:Lcom/sleepycat/je/Durability;

.field protected commitLsn:J

.field private final cursors:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected dbCleanupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DbCleanup;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDurability:Lcom/sleepycat/je/Durability;

.field private explicitDurabilityConfigured:Z

.field private explicitSyncConfigured:Z

.field protected volatile firstLoggedLsn:J

.field private inMemorySize:I

.field private isAutoCommit:Z

.field protected lastLoggedLsn:J

.field private onlyAbortableCause:Lcom/sleepycat/je/OperationFailureException;

.field protected openedDatabaseHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation
.end field

.field private readCommittedIsolation:Z

.field private readLocks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected repContext:Lcom/sleepycat/je/log/ReplicationContext;

.field private serializableIsolation:Z

.field private transaction:Lcom/sleepycat/je/Transaction;

.field private triggerDbs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field

.field private txnFlags:B

.field private txnState:Lcom/sleepycat/je/Transaction$State;

.field protected undoDatabases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field

.field private writeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    nop

    .line 139
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    sput v0, Lcom/sleepycat/je/txn/Txn;->READ_LOCK_OVERHEAD:I

    .line 141
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->WRITE_LOCKINFO_OVERHEAD:I

    add-int/2addr v0, v1

    sput v0, Lcom/sleepycat/je/txn/Txn;->WRITE_LOCK_OVERHEAD:I

    .line 237
    const/16 v0, 0x2710

    sput v0, Lcom/sleepycat/je/txn/Txn;->ACCUMULATED_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 260
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Locker;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->cursors:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J

    .line 180
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 188
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    .line 191
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    .line 217
    const/4 v2, 0x0

    iput v2, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    .line 223
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    .line 249
    iput-boolean v2, p0, Lcom/sleepycat/je/txn/Txn;->explicitSyncConfigured:Z

    .line 250
    iput-boolean v2, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    .line 253
    iput-boolean v2, p0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z

    .line 261
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 262
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 267
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;J)V

    .line 268
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;J)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p4, "mandatedId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 286
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getReadUncommitted()Z

    move-result v2

    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getNoWait()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Locker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZJ)V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->cursors:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J

    .line 180
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 188
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    .line 191
    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    .line 249
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->explicitSyncConfigured:Z

    .line 250
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    .line 253
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z

    .line 288
    invoke-direct {p0, p2}, Lcom/sleepycat/je/txn/Txn;->initTxn(Lcom/sleepycat/je/TransactionConfig;)V

    .line 289
    iput-object p3, p0, Lcom/sleepycat/je/txn/Txn;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 290
    return-void
.end method

.method private abortInternal(Z)J
    .locals 16
    .param p1, "forceFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1188
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1189
    .local v2, "hooked":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Txn;->checkIfFrozen(Z)V

    .line 1193
    const-wide/16 v4, -0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1194
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/txn/Txn;->checkState(Z)V

    .line 1201
    sget-object v6, Lcom/sleepycat/je/Transaction$State;->ABORTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {v1, v6}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->updateLoggedForTxn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->preLogAbortHook()V

    .line 1206
    const/4 v2, 0x1

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->checkForValidReplicatorNodeId()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1208
    iget-wide v6, v1, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    iget-wide v6, v1, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    .line 1210
    new-instance v6, Lcom/sleepycat/je/log/entry/AbortLogEntry;

    new-instance v15, Lcom/sleepycat/je/txn/TxnAbort;

    iget-wide v8, v1, Lcom/sleepycat/je/txn/Txn;->id:J

    iget-wide v10, v1, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->getReplicatorNodeId()I

    move-result v12

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->getDTVLSN()J

    move-result-wide v13

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/sleepycat/je/txn/TxnAbort;-><init>(JJIJ)V

    invoke-direct {v6, v15}, Lcom/sleepycat/je/log/entry/AbortLogEntry;-><init>(Lcom/sleepycat/je/txn/TxnAbort;)V

    .line 1215
    .local v6, "abortEntry":Lcom/sleepycat/je/log/entry/AbortLogEntry;
    if-eqz p1, :cond_0

    iget-object v7, v1, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1216
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v7

    iget-object v8, v1, Lcom/sleepycat/je/txn/Txn;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1217
    invoke-virtual {v7, v6, v0, v8}, Lcom/sleepycat/je/log/LogManager;->logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1220
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    iget-object v7, v1, Lcom/sleepycat/je/txn/Txn;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v7

    :goto_0
    iput-wide v7, v1, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    goto :goto_1

    .line 1208
    .end local v6    # "abortEntry":Lcom/sleepycat/je/log/entry/AbortLogEntry;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    throw v0

    .line 1207
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    throw v0

    .line 1223
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1225
    if-eqz v2, :cond_4

    .line 1226
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->postLogAbortHook()V

    .line 1227
    const/4 v2, 0x0

    .line 1237
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->undo()V

    .line 1238
    nop

    .line 1245
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Txn;->cleanupDatabaseImpls(Z)V

    .line 1247
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1248
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->checkCursorsForClose()Z

    move-result v0

    .line 1249
    .local v0, "openCursors":Z
    iget-object v6, v1, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    .line 1250
    .local v6, "logger":Ljava/util/logging/Logger;
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1251
    iget-object v7, v1, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Abort: id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " openCursors= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1257
    :cond_5
    iget-object v7, v1, Lcom/sleepycat/je/txn/Txn;->openedDatabaseHandles:Ljava/util/Set;

    if-eqz v7, :cond_6

    .line 1258
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/Database;

    .line 1259
    .local v8, "handle":Lcom/sleepycat/je/Database;
    invoke-static {v8}, Lcom/sleepycat/je/DbInternal;->invalidate(Lcom/sleepycat/je/Database;)V

    .line 1260
    .end local v8    # "handle":Lcom/sleepycat/je/Database;
    goto :goto_2

    .line 1263
    :cond_6
    if-nez v0, :cond_8

    .line 1269
    .end local v0    # "openCursors":Z
    .end local v6    # "logger":Ljava/util/logging/Logger;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1285
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 1287
    iget-wide v6, v1, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    .line 1288
    invoke-static/range {p0 .. p0}, Lcom/sleepycat/je/dbi/TriggerManager;->runAbortTriggers(Lcom/sleepycat/je/txn/Txn;)V

    .line 1292
    :cond_7
    iget-wide v3, v1, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    return-wide v3

    .line 1264
    .restart local v0    # "openCursors":Z
    .restart local v6    # "logger":Ljava/util/logging/Logger;
    :cond_8
    :try_start_4
    iget-object v7, v1, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 1265
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " detected open cursors while aborting"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    throw v7

    .line 1269
    .end local v0    # "openCursors":Z
    .end local v6    # "logger":Ljava/util/logging/Logger;
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1223
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1225
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :catchall_2
    move-exception v0

    if-eqz v2, :cond_9

    .line 1226
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->postLogAbortHook()V

    .line 1227
    const/4 v2, 0x0

    .line 1237
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/Txn;->undo()V

    .end local v2    # "hooked":Z
    .end local p1    # "forceFlush":Z
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1285
    .restart local v2    # "hooked":Z
    .restart local p1    # "forceFlush":Z
    :catchall_3
    move-exception v0

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 1287
    iget-wide v6, v1, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_a

    .line 1288
    invoke-static/range {p0 .. p0}, Lcom/sleepycat/je/dbi/TriggerManager;->runAbortTriggers(Lcom/sleepycat/je/txn/Txn;)V

    :cond_a
    throw v0
.end method

.method private addReadLock(Ljava/lang/Long;)V
    .locals 2
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "delta":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1587
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    .line 1588
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    .line 1591
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1592
    sget v1, Lcom/sleepycat/je/txn/Txn;->READ_LOCK_OVERHEAD:I

    add-int/2addr v0, v1

    .line 1593
    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V

    .line 1594
    return-void
.end method

.method private checkCursorsForClose()Z
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->cursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkForValidReplicatorNodeId()Z
    .locals 1

    .line 1070
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getReplicatorNodeId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1080
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private countObsoleteExact(JLcom/sleepycat/je/txn/UndoReader;Z)V
    .locals 7
    .param p1, "undoLsn"    # J
    .param p3, "undo"    # Lcom/sleepycat/je/txn/UndoReader;
    .param p4, "obsoleteDupsAllowed"    # Z

    .line 1376
    iget-object v0, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    iget-object v1, p3, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 1382
    .local v0, "logManager":Lcom/sleepycat/je/log/LogManager;
    if-eqz p4, :cond_1

    .line 1383
    const/4 v1, 0x0

    iget v2, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntrySize:I

    .line 1384
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sleepycat/je/log/LogManager;->countObsoleteNodeDupsAllowed(JLcom/sleepycat/je/log/LogEntryType;I)V

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v4, 0x0

    iget v5, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntrySize:I

    const/4 v6, 0x1

    move-object v1, v0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/log/LogManager;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 1393
    :goto_0
    return-void
.end method

.method public static createAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/txn/Txn;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "ret":Lcom/sleepycat/je/txn/Txn;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createRepUserTxn(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 336
    :cond_0
    new-instance v1, Lcom/sleepycat/je/txn/Txn;

    invoke-direct {v1, p0, p1, p2}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)V

    move-object v0, v1

    .line 339
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    nop

    .line 346
    return-object v0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "DE":Lcom/sleepycat/je/DatabaseException;
    if-eqz v0, :cond_1

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 344
    :cond_1
    throw v1
.end method

.method public static createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 299
    invoke-static {p0, p1}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 300
    .local v0, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z

    .line 301
    return-object v0
.end method

.method public static createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 294
    new-instance v0, Lcom/sleepycat/je/txn/Txn;

    sget-object v1, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)V

    return-object v0
.end method

.method static createUserTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "ret":Lcom/sleepycat/je/txn/Txn;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createRepUserTxn(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    .line 322
    nop

    .line 323
    return-object v0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "DE":Lcom/sleepycat/je/DatabaseException;
    if-eqz v0, :cond_1

    .line 319
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 321
    :cond_1
    throw v1
.end method

.method private declared-synchronized ensureWriteInfo()V
    .locals 1

    monitor-enter p0

    .line 1552
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    .line 1554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->undoDatabases:Ljava/util/Map;

    .line 1555
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->TWOHASHMAPS_OVERHEAD:I

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    monitor-exit p0

    return-void

    .line 1551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private firstInstance(Ljava/util/Set;Ljava/util/Set;Lcom/sleepycat/je/txn/UndoReader;)Z
    .locals 5
    .param p3, "undo"    # Lcom/sleepycat/je/txn/UndoReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/TxnChain$CompareSlot;",
            ">;",
            "Lcom/sleepycat/je/txn/UndoReader;",
            ")Z"
        }
    .end annotation

    .line 2284
    .local p1, "seenLsns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "seenSlots":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;>;"
    iget-object v0, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 2285
    .local v0, "undoEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v1

    .line 2286
    .local v1, "abortLsn1":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2287
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 2289
    :cond_0
    new-instance v3, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    iget-object v4, p3, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v3, v4, v0}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;)V

    .line 2290
    .local v3, "slot":Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private getObsoleteLsnInfo()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ">;"
        }
    .end annotation

    .line 1096
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1098
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 1099
    .local v2, "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/je/txn/Txn;->maybeCountObsoleteLSN(Ljava/util/Map;Lcom/sleepycat/je/txn/WriteLockInfo;)V

    .line 1100
    .end local v2    # "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    goto :goto_0

    .line 1102
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private initTxn(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 6
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getSerializableIsolation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->serializableIsolation:Z

    .line 354
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadCommitted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->readCommittedIsolation:Z

    .line 355
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->defaultDurability:Lcom/sleepycat/je/Durability;

    .line 356
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 357
    iput-boolean v2, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    .line 358
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/TransactionConfig;->getDurabilityFromSync(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/Durability;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->defaultDurability:Lcom/sleepycat/je/Durability;

    goto :goto_0

    .line 360
    :cond_0
    iput-boolean v1, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    .line 362
    :goto_0
    nop

    .line 363
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getSync()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getNoSync()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getWriteNoSync()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/je/txn/Txn;->explicitSyncConfigured:Z

    .line 365
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 367
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->readOnly:Z

    .line 369
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/TransactionConfig;->getTxnTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 370
    .local v0, "txnTimeout":J
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    .line 371
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/Txn;->setTxnTimeout(J)V

    .line 374
    :cond_5
    iput-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 375
    iput-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J

    .line 377
    iput-byte v2, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    .line 378
    sget-object v2, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 380
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    new-instance v2, Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-direct {v2}, Lcom/sleepycat/je/utilint/TinyHashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 384
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/Txn;->txnBeginHook(Lcom/sleepycat/je/TransactionConfig;)V

    .line 396
    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->TXN_OVERHEAD:I

    invoke-direct {p0, v2}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V

    .line 398
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->registerImmediately()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 399
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/txn/TxnManager;->registerTxn(Lcom/sleepycat/je/txn/Txn;)V

    .line 401
    :cond_7
    return-void
.end method

.method private logCommitEntry(Lcom/sleepycat/je/Durability$SyncPolicy;Ljava/util/Collection;)Lcom/sleepycat/je/log/LogItem;
    .locals 11
    .param p1, "flushSyncBehavior"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Durability$SyncPolicy;",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ">;)",
            "Lcom/sleepycat/je/log/LogItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 974
    .local p2, "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 975
    .local v0, "logManager":Lcom/sleepycat/je/log/LogManager;
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->checkForValidReplicatorNodeId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    new-instance v1, Lcom/sleepycat/je/log/entry/CommitLogEntry;

    new-instance v10, Lcom/sleepycat/je/txn/TxnCommit;

    iget-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    iget-wide v5, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 980
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getReplicatorNodeId()I

    move-result v7

    .line 981
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getDTVLSN()J

    move-result-wide v8

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/txn/TxnCommit;-><init>(JJIJ)V

    invoke-direct {v1, v10}, Lcom/sleepycat/je/log/entry/CommitLogEntry;-><init>(Lcom/sleepycat/je/txn/TxnCommit;)V

    .line 983
    .local v1, "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    new-instance v2, Lcom/sleepycat/je/log/LogParams;

    invoke-direct {v2}, Lcom/sleepycat/je/log/LogParams;-><init>()V

    .line 984
    .local v2, "params":Lcom/sleepycat/je/log/LogParams;
    iput-object v1, v2, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 985
    sget-object v3, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    iput-object v3, v2, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 986
    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    iput-object v3, v2, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 988
    iput-object p2, v2, Lcom/sleepycat/je/log/LogParams;->obsoleteWriteLockInfo:Ljava/util/Collection;

    .line 990
    sget-object v3, Lcom/sleepycat/je/txn/Txn$1;->$SwitchMap$com$sleepycat$je$Durability$SyncPolicy:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/Durability$SyncPolicy;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 1003
    iput-boolean v4, v2, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    .line 1004
    iput-boolean v4, v2, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    goto :goto_0

    .line 998
    :pswitch_0
    iput-boolean v5, v2, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    .line 999
    iput-boolean v4, v2, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    .line 1000
    goto :goto_0

    .line 993
    :pswitch_1
    iput-boolean v5, v2, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    .line 994
    iput-boolean v5, v2, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    .line 995
    nop

    .line 1012
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->preLogCommitCheck()V

    .line 1015
    const/4 v3, 0x0

    .line 1017
    .local v3, "logSuccess":Z
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    .local v4, "item":Lcom/sleepycat/je/log/LogItem;
    const/4 v3, 0x1

    .line 1019
    nop

    .line 1045
    if-nez v3, :cond_0

    .line 1046
    sget-object v5, Lcom/sleepycat/je/Transaction$State;->POSSIBLY_COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v5}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 1019
    :cond_0
    return-object v4

    .line 1045
    .end local v4    # "item":Lcom/sleepycat/je/log/LogItem;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1035
    :catch_0
    move-exception v4

    .line 1037
    .local v4, "e":Ljava/lang/Error;
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1038
    nop

    .end local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .end local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v3    # "logSuccess":Z
    .end local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    throw v4

    .line 1020
    .end local v4    # "e":Ljava/lang/Error;
    .restart local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .restart local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v3    # "logSuccess":Z
    .restart local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    :catch_1
    move-exception v4

    .line 1028
    .local v4, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1029
    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "Unexpected non-fatal exception while logging commit"

    .line 1030
    invoke-static {v5, v6, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .end local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v3    # "logSuccess":Z
    .end local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    throw v5

    .line 1034
    .restart local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .restart local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v3    # "logSuccess":Z
    .restart local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    :cond_1
    nop

    .end local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .end local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v3    # "logSuccess":Z
    .end local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .restart local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v3    # "logSuccess":Z
    .restart local p1    # "flushSyncBehavior":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local p2    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    :goto_1
    if-nez v3, :cond_2

    .line 1046
    sget-object v5, Lcom/sleepycat/je/Transaction$State;->POSSIBLY_COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v5}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    :cond_2
    throw v4

    .line 975
    .end local v1    # "commitEntry":Lcom/sleepycat/je/log/entry/CommitLogEntry;
    .end local v2    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v3    # "logSuccess":Z
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeCountObsoleteLSN(Ljava/util/Map;Lcom/sleepycat/je/txn/WriteLockInfo;)V
    .locals 4
    .param p2, "info"    # Lcom/sleepycat/je/txn/WriteLockInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ">;",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ")V"
        }
    .end annotation

    .line 1109
    .local p1, "obsoleteLsnSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortLsn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1110
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortKnownDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1114
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1115
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    return-void

    .line 1120
    :cond_1
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1122
    return-void

    .line 1125
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortLsn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1127
    .local v0, "longLsn":Ljava/lang/Long;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1128
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    :cond_3
    return-void

    .line 1111
    .end local v0    # "longLsn":Ljava/lang/Long;
    :cond_4
    :goto_0
    return-void
.end method

.method private preLogCommitCheck()V
    .locals 3

    .line 1059
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 1064
    return-void

    .line 1060
    :cond_0
    new-instance v0, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "Thread interrupted prior to logging the commit"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized setState(Lcom/sleepycat/je/Transaction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/sleepycat/je/Transaction$State;

    monitor-enter p0

    .line 1999
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    monitor-exit p0

    return-void

    .line 1998
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    .end local p1    # "state":Lcom/sleepycat/je/Transaction$State;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private throwPreCommitException(Lcom/sleepycat/je/Durability;Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;
    .param p2, "preCommitException"    # Ljava/lang/RuntimeException;

    .line 906
    const-string v0, "Failed while attempting to commit transaction "

    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Durability;->getLocalSync()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/sleepycat/je/txn/Txn;->abortInternal(Z)J

    .line 907
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "Txn"

    const-string v3, "commit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit of transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    goto :goto_2

    .line 913
    :catch_0
    move-exception v1

    .line 914
    .local v1, "abortT2":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The attempt to abort also failed. The original exception seen from commit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The exception from the cleanup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->abortLsn:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 926
    :cond_1
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v0, v3, v4, v2, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 937
    :cond_2
    :goto_1
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v4, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 940
    .end local v1    # "abortT2":Ljava/lang/RuntimeException;
    .end local v2    # "message":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->postLogCommitAbortHook()V

    .line 947
    instance-of v1, p2, Lcom/sleepycat/je/DatabaseException;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 953
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aborted instead. Original exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 949
    :cond_4
    :goto_3
    throw p2

    .line 916
    .restart local v1    # "abortT2":Ljava/lang/RuntimeException;
    :cond_5
    throw v1

    .line 910
    .end local v1    # "abortT2":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 912
    throw v0
.end method

.method private traceCommit(II)V
    .locals 5
    .param p1, "numWriteLocks"    # I
    .param p2, "numReadLocks"    # I

    .line 2135
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 2136
    .local v0, "logger":Ljava/util/logging/Logger;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2138
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " Commit: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2139
    const-string v2, " numWriteLocks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2140
    const-string v2, " numReadLocks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2141
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2143
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private updateMemoryUsage(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 1644
    iget v0, p0, Lcom/sleepycat/je/txn/Txn;->inMemorySize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/je/txn/Txn;->inMemorySize:I

    .line 1645
    iget v0, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    .line 1646
    sget v1, Lcom/sleepycat/je/txn/Txn;->ACCUMULATED_LIMIT:I

    if-gt v0, v1, :cond_0

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTxnMemoryUsage(J)V

    .line 1649
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    .line 1651
    :cond_1
    return-void
.end method


# virtual methods
.method public abort(Z)J
    .locals 2
    .param p1, "forceFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1169
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/Txn;->abortInternal(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1139
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    return-void

    .line 1142
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->abort(Z)J

    .line 1143
    return-void
.end method

.method public abort(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->abort(Z)J

    .line 621
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/txn/TxnManager;->unRegisterXATxn(Ljavax/transaction/xa/Xid;Z)V

    .line 622
    return-void
.end method

.method addBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V
    .locals 2
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/BuddyLocker;

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-eqz v0, :cond_0

    .line 415
    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->add(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 419
    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
    .locals 3
    .param p1, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;

    monitor-enter p0

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, "delta":I
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1487
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    .line 1488
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    add-int/2addr v0, v1

    .line 1491
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1493
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_OVERHEAD:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1495
    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    monitor-exit p0

    return-void

    .line 1484
    .end local v0    # "delta":I
    .end local p1    # "cleanup":Lcom/sleepycat/je/dbi/DbCleanup;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V
    .locals 2
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p3, "grantStatus"    # Lcom/sleepycat/je/txn/LockGrantType;

    monitor-enter p0

    .line 1566
    :try_start_0
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1568
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->ensureWriteInfo()V

    .line 1569
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-direct {v1}, Lcom/sleepycat/je/txn/WriteLockInfo;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget v0, Lcom/sleepycat/je/txn/Txn;->WRITE_LOCK_OVERHEAD:I

    .line 1573
    .local v0, "delta":I
    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne p3, v1, :cond_1

    .line 1575
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1576
    sget v1, Lcom/sleepycat/je/txn/Txn;->READ_LOCK_OVERHEAD:I

    sub-int/2addr v0, v1

    .line 1578
    :cond_1
    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V

    .line 1579
    .end local v0    # "delta":I
    goto :goto_0

    .line 1580
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/Txn;->addReadLock(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    :goto_0
    monitor-exit p0

    return-void

    .line 1565
    .end local p1    # "lsn":Ljava/lang/Long;
    .end local p2    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p3    # "grantStatus":Lcom/sleepycat/je/txn/LockGrantType;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLogInfo(J)V
    .locals 4
    .param p1, "lastLsn"    # J

    monitor-enter p0

    .line 1452
    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 1460
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1461
    iput-wide p1, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    monitor-exit p0

    return-void

    .line 1451
    .end local p1    # "lastLsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addOpenedDatabase(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;

    monitor-enter p0

    .line 1792
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1793
    monitor-exit p0

    return-void

    .line 1795
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->openedDatabaseHandles:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1796
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->openedDatabaseHandles:Ljava/util/Set;

    .line 1798
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->openedDatabaseHandles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1799
    monitor-exit p0

    return-void

    .line 1791
    .end local p1    # "dbHandle":Lcom/sleepycat/je/Database;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkIfFrozen(Z)V
    .locals 0
    .param p1, "isCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2409
    return-void
.end method

.method public checkPreempted(Lcom/sleepycat/je/txn/Locker;)V
    .locals 3
    .param p1, "allowPreemptedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/OperationFailureException;
        }
    .end annotation

    .line 1901
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/Txn;->throwIfPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 1907
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-eqz v0, :cond_1

    .line 1908
    monitor-enter v0

    .line 1909
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/BuddyLocker;

    .line 1910
    .local v2, "buddy":Lcom/sleepycat/je/txn/BuddyLocker;
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/txn/BuddyLocker;->throwIfPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 1911
    .end local v2    # "buddy":Lcom/sleepycat/je/txn/BuddyLocker;
    goto :goto_0

    .line 1912
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1914
    :cond_1
    :goto_1
    return-void
.end method

.method public checkState(Z)V
    .locals 4
    .param p1, "calledByAbort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1929
    sget-object v0, Lcom/sleepycat/je/txn/Txn$1;->$SwitchMap$com$sleepycat$je$Transaction$State:[I

    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Transaction "

    packed-switch v0, :pswitch_data_0

    .line 1961
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :pswitch_0
    if-eqz p1, :cond_0

    .line 1938
    return-void

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->onlyAbortableCause:Lcom/sleepycat/je/OperationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be aborted, caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->onlyAbortableCause:Lcom/sleepycat/je/OperationFailureException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1951
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/OperationFailureException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 1932
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected cleanupDatabaseImpls(Z)V
    .locals 2
    .param p1, "isCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1536
    return-void

    .line 1541
    :cond_0
    monitor-enter p0

    .line 1542
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sleepycat/je/dbi/DbCleanup;

    .line 1543
    .local v0, "array":[Lcom/sleepycat/je/dbi/DbCleanup;
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1544
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0, p1}, Lcom/sleepycat/je/dbi/DbCleanup;->execute(Lcom/sleepycat/je/dbi/EnvironmentImpl;[Lcom/sleepycat/je/dbi/DbCleanup;Z)V

    .line 1548
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    .line 1549
    return-void

    .line 1544
    .end local v0    # "array":[Lcom/sleepycat/je/dbi/DbCleanup;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected clearReadLocks()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1427
    const/4 v0, 0x0

    .line 1428
    .local v0, "numReadLocks":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 1429
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 1430
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1431
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1433
    .local v2, "rLockNid":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 1434
    .end local v2    # "rLockNid":Ljava/lang/Long;
    goto :goto_0

    .line 1435
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    .line 1437
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    return v0
.end method

.method protected clearWriteLocks(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1401
    .local p1, "retainedNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1402
    return-void

    .line 1406
    :cond_0
    nop

    .line 1407
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1408
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/txn/WriteLockInfo;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1410
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1413
    .local v2, "lsn":Ljava/lang/Long;
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1414
    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 1415
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1417
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    .end local v2    # "lsn":Ljava/lang/Long;
    :cond_1
    goto :goto_0

    .line 1419
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    .line 1422
    :cond_3
    return-void
.end method

.method public close(Z)V
    .locals 2
    .param p1, "isCommit"    # Z

    .line 1971
    if-eqz p1, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v1, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v1, :cond_1

    .line 1974
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    goto :goto_0

    .line 1978
    :cond_0
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->ABORTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 1992
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/je/txn/TxnManager;->unRegisterTxn(Lcom/sleepycat/je/txn/Txn;Z)V

    .line 1995
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->close()V

    .line 1996
    return-void
.end method

.method public collectStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 7

    .line 1841
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Transaction lock counts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read and write locks held by transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1846
    .local v1, "statReadLocks":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1847
    .local v2, "statWriteLocks":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1849
    .local v3, "statTotalLocks":Lcom/sleepycat/je/utilint/IntStat;
    monitor-enter p0

    .line 1850
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    .line 1851
    .local v4, "nReadLocks":I
    :goto_0
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1852
    iget-object v6, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-nez v6, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    goto :goto_1

    .line 1853
    .local v5, "nWriteLocks":I
    :goto_2
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1854
    add-int v6, v4, v5

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1855
    .end local v4    # "nReadLocks":I
    .end local v5    # "nWriteLocks":I
    monitor-exit p0

    .line 1857
    return-object v0

    .line 1855
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public commit()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->defaultDurability:Lcom/sleepycat/je/Durability;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    move-result-wide v0

    return-wide v0
.end method

.method public commit(Lcom/sleepycat/je/Durability;)J
    .locals 11
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->checkIfFrozen(Z)V

    .line 718
    const/4 v1, 0x0

    .line 720
    .local v1, "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    iput-object p1, p0, Lcom/sleepycat/je/txn/Txn;->commitDurability:Lcom/sleepycat/je/Durability;

    .line 724
    const-wide/16 v2, -0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/txn/Txn;->checkState(Z)V

    .line 726
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->checkCursorsForClose()Z

    move-result v4

    if-nez v4, :cond_9

    .line 736
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->updateLoggedForTxn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->preLogCommitHook()V

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->clearReadLocks()I

    move-result v4

    .line 760
    .local v4, "numReadLocks":I
    const/4 v5, 0x0

    .line 761
    .local v5, "numWriteLocks":I
    const/4 v6, 0x0

    .line 762
    .local v6, "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    iget-object v7, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 763
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    move v5, v7

    .line 764
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->getObsoleteLsnInfo()Ljava/util/Collection;

    move-result-object v7

    move-object v6, v7

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->updateLoggedForTxn()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 772
    nop

    .line 773
    invoke-virtual {p1}, Lcom/sleepycat/je/Durability;->getLocalSync()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/sleepycat/je/txn/Txn;->logCommitEntry(Lcom/sleepycat/je/Durability$SyncPolicy;Ljava/util/Collection;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v7

    .line 775
    .local v7, "commitItem":Lcom/sleepycat/je/log/LogItem;
    iget-wide v8, v7, Lcom/sleepycat/je/log/LogItem;->lsn:J

    iput-wide v8, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    :try_start_2
    invoke-virtual {p0, v7}, Lcom/sleepycat/je/txn/Txn;->postLogCommitHook(Lcom/sleepycat/je/log/LogItem;)V
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    goto :goto_0

    .line 779
    :catch_0
    move-exception v8

    .line 780
    .local v8, "hookException":Lcom/sleepycat/je/DatabaseException;
    :try_start_3
    iget-object v9, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v10, Lcom/sleepycat/je/Transaction$State;->MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

    if-eq v9, v10, :cond_3

    .line 786
    invoke-virtual {p0, v8}, Lcom/sleepycat/je/txn/Txn;->propagatePostCommitException(Lcom/sleepycat/je/DatabaseException;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 789
    move-object v1, v8

    goto :goto_0

    .line 787
    :cond_2
    nop

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v8

    .line 781
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :cond_3
    const-string v9, "postLogCommitHook may not set MUST_ABORT"

    .line 783
    invoke-static {v9, v8}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v9

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v9

    .line 797
    .end local v7    # "commitItem":Lcom/sleepycat/je/log/LogItem;
    .end local v8    # "hookException":Lcom/sleepycat/je/DatabaseException;
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setDbCleanupState(Z)V

    .line 800
    if-lez v5, :cond_5

    .line 801
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->releaseWriteLocks()V

    .line 803
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    .line 806
    iget-object v7, p0, Lcom/sleepycat/je/txn/Txn;->deleteInfo:Ljava/util/Map;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sleepycat/je/txn/Txn;->deleteInfo:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 807
    iget-object v7, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v8, p0, Lcom/sleepycat/je/txn/Txn;->deleteInfo:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Ljava/util/Collection;)V

    .line 808
    iget-object v7, p0, Lcom/sleepycat/je/txn/Txn;->deleteInfo:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 810
    :cond_6
    invoke-direct {p0, v5, v4}, Lcom/sleepycat/je/txn/Txn;->traceCommit(II)V

    .line 811
    .end local v4    # "numReadLocks":I
    .end local v5    # "numWriteLocks":I
    .end local v6    # "obsoleteLsns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/WriteLockInfo;>;"
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->cleanupDatabaseImpls(Z)V

    .line 824
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 826
    if-nez v1, :cond_8

    .line 827
    invoke-static {p0}, Lcom/sleepycat/je/dbi/TriggerManager;->runCommitTriggers(Lcom/sleepycat/je/txn/Txn;)V

    .line 828
    iget-wide v4, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 865
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v6, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v6, :cond_7

    iget-wide v6, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_7

    .line 867
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 828
    :cond_7
    return-wide v4

    .line 865
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v4, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v4, :cond_a

    iget-wide v4, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    .line 867
    :goto_1
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    goto :goto_2

    .line 727
    :cond_9
    :try_start_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " commit failed because there were open cursors."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v4

    .line 811
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 865
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 833
    :catch_1
    move-exception v4

    .line 834
    .local v4, "commitException":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 838
    iget-wide v5, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_b

    .line 855
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->checkIfFrozen(Z)V

    .line 856
    invoke-direct {p0, p1, v4}, Lcom/sleepycat/je/txn/Txn;->throwPreCommitException(Lcom/sleepycat/je/Durability;Ljava/lang/RuntimeException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 865
    .end local v4    # "commitException":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v4, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v4, :cond_a

    iget-wide v4, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    .line 867
    goto :goto_1

    .line 870
    :cond_a
    :goto_2
    throw v1

    .line 840
    .restart local v4    # "commitException":Ljava/lang/RuntimeException;
    :cond_b
    :try_start_8
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed after commiting transaction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " during post transaction cleanup.Original exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 847
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v0

    .line 836
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :cond_c
    nop

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v4

    .line 830
    .end local v4    # "commitException":Ljava/lang/RuntimeException;
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :catch_2
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Error;
    iget-object v4, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 832
    nop

    .end local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 865
    .end local v0    # "e":Ljava/lang/Error;
    .restart local v1    # "queuedPostCommitException":Lcom/sleepycat/je/DatabaseException;
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v5, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v4, v5, :cond_d

    iget-wide v4, p0, Lcom/sleepycat/je/txn/Txn;->commitLsn:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_d

    .line 867
    sget-object v2, Lcom/sleepycat/je/Transaction$State;->COMMITTED:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    :cond_d
    throw v0
.end method

.method public commit(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    .line 613
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/txn/TxnManager;->unRegisterXATxn(Ljavax/transaction/xa/Xid;Z)V

    .line 614
    return-void
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 2106
    const-string v0, "<txn id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2108
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    const-string v0, "</txn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    return-void
.end method

.method protected generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
    .locals 2
    .param p1, "txnManager"    # Lcom/sleepycat/je/txn/TxnManager;
    .param p2, "ignore"    # J

    .line 437
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/TxnManager;->getNextTxnId()J

    move-result-wide v0

    return-wide v0
.end method

.method getBudgetedMemorySize()I
    .locals 2

    .line 1657
    iget v0, p0, Lcom/sleepycat/je/txn/Txn;->inMemorySize:I

    iget v1, p0, Lcom/sleepycat/je/txn/Txn;->accumulatedDelta:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCommitDurability()Lcom/sleepycat/je/Durability;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->commitDurability:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method public getCommitToken()Lcom/sleepycat/je/CommitToken;
    .locals 1

    .line 2259
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDTVLSN()J
    .locals 2

    .line 2035
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDbCleanupSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DbCleanup;",
            ">;"
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    return-object v0
.end method

.method public getDefaultDurability()Lcom/sleepycat/je/Durability;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->defaultDurability:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 2049
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getExplicitDurabilityConfigured()Z
    .locals 1

    .line 1726
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->explicitDurabilityConfigured:Z

    return v0
.end method

.method public getExplicitSyncConfigured()Z
    .locals 1

    .line 1719
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->explicitSyncConfigured:Z

    return v0
.end method

.method public getFirstActiveLsn()J
    .locals 2

    .line 1472
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->firstLoggedLsn:J

    return-wide v0
.end method

.method public getImportunate()Z
    .locals 1

    .line 1888
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 2044
    const/16 v0, 0x8

    return v0
.end method

.method public getLastLsn()J
    .locals 2

    .line 444
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 2

    .line 2054
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/Txn;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 3
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 2065
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    if-eqz p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 2066
    :goto_0
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2065
    return v0
.end method

.method public getPrepared()Z
    .locals 2

    .line 470
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getReadLockIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2330
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getReplicatorNodeId()I
    .locals 1

    .line 2026
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/sleepycat/je/Transaction$State;
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    return-object v0
.end method

.method public getTransaction()Lcom/sleepycat/je/Transaction;
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->transaction:Lcom/sleepycat/je/Transaction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/txn/Txn$AutoTransaction;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/txn/Txn$AutoTransaction;-><init>(Lcom/sleepycat/je/txn/Txn;)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->transaction:Lcom/sleepycat/je/Transaction;

    :goto_0
    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 2115
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerDbs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation

    .line 2312
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    return-object v0
.end method

.method public getTxnLocker()Lcom/sleepycat/je/txn/Txn;
    .locals 0

    .line 1734
    return-object p0
.end method

.method public getUndoDatabases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation

    .line 2396
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->undoDatabases:Ljava/util/Map;

    return-object v0
.end method

.method public getWriteLockIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2317
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2319
    .local v0, "empty":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    return-object v0

    .line 2322
    .end local v0    # "empty":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 3
    .param p1, "lsn"    # J

    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    monitor-enter p0

    .line 1667
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/WriteLockInfo;

    move-object v0, v1

    .line 1670
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    if-eqz v0, :cond_1

    .line 1676
    return-object v0

    .line 1673
    :cond_1
    const-string/jumbo v1, "writeInfo is null in Txn.getWriteLockInfo"

    .line 1674
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1670
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 2093
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoTxn()Z
    .locals 1

    .line 1691
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v1, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v1, Lcom/sleepycat/je/Transaction$State;->MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMasterTxn()Z
    .locals 1

    .line 2418
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlyAbortable()Z
    .locals 2

    .line 2017
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v1, Lcom/sleepycat/je/Transaction$State;->MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadCommittedIsolation()Z
    .locals 1

    .line 1712
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->readCommittedIsolation:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1696
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->readOnly:Z

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 2100
    const/4 v0, 0x0

    return v0
.end method

.method public isRolledBack()Z
    .locals 1

    .line 505
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSerializableIsolation()Z
    .locals 1

    .line 1704
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->serializableIsolation:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 490
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 1684
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->txnState:Lcom/sleepycat/je/Transaction$State;

    sget-object v1, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 15
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 534
    move-object v11, p0

    const-wide/16 v1, 0x0

    .line 535
    .local v1, "timeout":J
    const/4 v0, 0x0

    if-nez p4, :cond_1

    iget-boolean v3, v11, Lcom/sleepycat/je/txn/Txn;->defaultNoWait:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v12, v3

    .line 536
    .local v12, "useNoWait":Z
    monitor-enter p0

    .line 537
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->checkState(Z)V

    .line 538
    if-nez v12, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getLockTimeout()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide v0, v3

    move-wide v13, v0

    .end local v1    # "timeout":J
    .local v0, "timeout":J
    goto :goto_2

    .line 538
    .end local v0    # "timeout":J
    .restart local v1    # "timeout":J
    :cond_2
    move-wide v13, v1

    .line 541
    .end local v1    # "timeout":J
    .local v13, "timeout":J
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 544
    iget-object v1, v11, Lcom/sleepycat/je/txn/Txn;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 545
    move-wide/from16 v2, p1

    move-object v4, p0

    move-object/from16 v5, p3

    move-wide v6, v13

    move v8, v12

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/je/txn/LockManager;->lock(JLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;JZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    .line 548
    .local v1, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    const/4 v2, 0x0

    .line 549
    .local v2, "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    iget-object v0, v11, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 550
    sget-object v0, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v1, v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    monitor-enter p0

    .line 552
    :try_start_2
    iget-object v0, v11, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/WriteLockInfo;

    move-object v2, v0

    .line 554
    iget-object v0, v11, Lcom/sleepycat/je/txn/Txn;->undoDatabases:Ljava/util/Map;

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v4, p6

    :try_start_3
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v4, p6

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 550
    :cond_3
    move-object/from16 v4, p6

    goto :goto_4

    .line 549
    :cond_4
    move-object/from16 v4, p6

    .line 559
    :goto_4
    new-instance v0, Lcom/sleepycat/je/txn/LockResult;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/txn/LockResult;-><init>(Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/WriteLockInfo;)V

    return-object v0

    .line 541
    .end local v1    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    .end local v2    # "info":Lcom/sleepycat/je/txn/WriteLockInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v4, p6

    move-wide v1, v13

    goto :goto_5

    .end local v13    # "timeout":J
    .local v1, "timeout":J
    :catchall_3
    move-exception v0

    move-object/from16 v4, p6

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method public lockingRequired()Z
    .locals 1

    .line 1824
    const/4 v0, 0x1

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 2121
    instance-of v0, p1, Lcom/sleepycat/je/txn/Txn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2122
    return v1

    .line 2125
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/Txn;

    iget-wide v4, v0, Lcom/sleepycat/je/txn/Txn;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method declared-synchronized moveWriteToReadLock(JLcom/sleepycat/je/txn/Lock;)V
    .locals 4
    .param p1, "lsn"    # J
    .param p3, "lock"    # Lcom/sleepycat/je/txn/Lock;

    monitor-enter p0

    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, "found":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1633
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1634
    const/4 v0, 0x1

    .line 1635
    sget v1, Lcom/sleepycat/je/txn/Txn;->WRITE_LOCK_OVERHEAD:I

    rsub-int/lit8 v1, v1, 0x0

    invoke-direct {p0, v1}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V

    .line 1638
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    if-eqz v0, :cond_1

    .line 1640
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/txn/Txn;->addReadLock(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    monitor-exit p0

    return-void

    .line 1638
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find lock for Node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in writeInfo Map."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    .end local v0    # "found":Z
    .end local p1    # "lsn":J
    .end local p3    # "lock":Lcom/sleepycat/je/txn/Lock;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 0

    .line 1743
    return-object p0
.end method

.method public nonTxnOperationEnd()V
    .locals 0

    .line 1758
    return-void
.end method

.method public noteTriggerDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2300
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2302
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->triggerDbs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2305
    return-void
.end method

.method public operationEnd(Z)V
    .locals 1
    .param p1, "operationOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1767
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Txn;->isAutoCommit:Z

    if-nez v0, :cond_0

    .line 1769
    return-void

    .line 1772
    :cond_0
    if-eqz p1, :cond_1

    .line 1773
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->commit()J

    goto :goto_0

    .line 1775
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->abort(Z)J

    .line 1777
    :goto_0
    return-void
.end method

.method protected postLogAbortHook()V
    .locals 0

    .line 2251
    return-void
.end method

.method protected postLogCommitAbortHook()V
    .locals 0

    .line 2247
    return-void
.end method

.method protected postLogCommitHook(Lcom/sleepycat/je/log/LogItem;)V
    .locals 0
    .param p1, "commitItem"    # Lcom/sleepycat/je/log/LogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2228
    return-void
.end method

.method protected preLogAbortHook()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2234
    return-void
.end method

.method protected preLogCommitHook()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2207
    return-void
.end method

.method public declared-synchronized preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->ensureWriteInfo()V

    .line 569
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->undoDatabases:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 567
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    .end local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepare(Ljavax/transaction/xa/Xid;)I
    .locals 6
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 578
    :try_start_0
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Txn;->checkState(Z)V

    .line 585
    invoke-direct {p0}, Lcom/sleepycat/je/txn/Txn;->checkCursorsForClose()Z

    move-result v2

    if-nez v2, :cond_1

    .line 591
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/txn/Txn;->setPrepared(Z)V

    .line 592
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/TxnManager;->notePrepare()V

    .line 593
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 594
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 597
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_PREPARE:Lcom/sleepycat/je/log/LogEntryType;

    new-instance v3, Lcom/sleepycat/je/txn/TxnPrepare;

    iget-wide v4, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-direct {v3, v4, v5, p1}, Lcom/sleepycat/je/txn/TxnPrepare;-><init>(JLjavax/transaction/xa/Xid;)V

    .line 598
    invoke-static {v2, v3}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v2

    .line 601
    .local v2, "prepareEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/txn/TxnPrepare;>;"
    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v3

    .line 602
    .local v3, "logManager":Lcom/sleepycat/je/log/LogManager;
    sget-object v4, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v3, v2, v1, v4}, Lcom/sleepycat/je/log/LogManager;->logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    monitor-exit p0

    return v0

    .line 586
    .end local v2    # "prepareEntry":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<Lcom/sleepycat/je/txn/TxnPrepare;>;"
    .end local v3    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prepare failed because there were open cursors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() has already been called for Transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected propagatePostCommitException(Lcom/sleepycat/je/DatabaseException;)Z
    .locals 1
    .param p1, "postCommitException"    # Lcom/sleepycat/je/DatabaseException;

    .line 2274
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 2087
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    .line 2088
    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    .line 2089
    return-void
.end method

.method public registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1807
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->cursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1808
    return-void
.end method

.method protected registerImmediately()Z
    .locals 1

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public releaseNonTxnLocks()V
    .locals 0

    .line 1751
    return-void
.end method

.method protected releaseWriteLocks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 878
    return-void

    .line 880
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 881
    .local v1, "lsn":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 882
    .end local v1    # "lsn":Ljava/lang/Long;
    goto :goto_0

    .line 883
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    .line 884
    return-void
.end method

.method removeBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V
    .locals 2
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/BuddyLocker;

    .line 423
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-eqz v0, :cond_0

    .line 424
    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Txn;->buddyLockers:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->remove(Ljava/lang/Object;)Z

    .line 426
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 428
    :cond_0
    :goto_0
    return-void
.end method

.method protected declared-synchronized removeLock(J)V
    .locals 2
    .param p1, "lsn"    # J

    monitor-enter p0

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1615
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    sget v0, Lcom/sleepycat/je/txn/Txn;->READ_LOCK_OVERHEAD:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V

    goto :goto_0

    .line 1617
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->writeInfo:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1618
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1619
    sget v0, Lcom/sleepycat/je/txn/Txn;->WRITE_LOCK_OVERHEAD:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->updateMemoryUsage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1613
    .end local p1    # "lsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setDbCleanupState(Z)V
    .locals 2
    .param p1, "isCommit"    # Z

    .line 1511
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->dbCleanupSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1512
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/DbCleanup;

    .line 1513
    .local v1, "cleanup":Lcom/sleepycat/je/dbi/DbCleanup;
    invoke-static {v1, p1}, Lcom/sleepycat/je/dbi/DbCleanup;->setState(Lcom/sleepycat/je/dbi/DbCleanup;Z)V

    .line 1514
    .end local v1    # "cleanup":Lcom/sleepycat/je/dbi/DbCleanup;
    goto :goto_0

    .line 1516
    :cond_0
    return-void
.end method

.method public setImportunate(Z)V
    .locals 1
    .param p1, "importunate"    # Z

    .line 1876
    if-eqz p1, :cond_0

    .line 1877
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    goto :goto_0

    .line 1879
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    .line 1881
    :goto_0
    return-void
.end method

.method public setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V
    .locals 1
    .param p1, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 1866
    if-eqz p1, :cond_0

    .line 1867
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/txn/Txn;->setState(Lcom/sleepycat/je/Transaction$State;)V

    .line 1868
    iput-object p1, p0, Lcom/sleepycat/je/txn/Txn;->onlyAbortableCause:Lcom/sleepycat/je/OperationFailureException;

    .line 1869
    return-void

    .line 1866
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setPrepared(Z)V
    .locals 1
    .param p1, "prepared"    # Z

    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    goto :goto_0

    .line 477
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    .line 479
    :goto_0
    return-void
.end method

.method protected setRollback()V
    .locals 1

    .line 494
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    .line 495
    return-void
.end method

.method public setSuspended(Z)V
    .locals 1
    .param p1, "suspended"    # Z

    .line 482
    if-eqz p1, :cond_0

    .line 483
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    goto :goto_0

    .line 485
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/txn/Txn;->txnFlags:B

    .line 487
    :goto_0
    return-void
.end method

.method public setTransaction(Lcom/sleepycat/je/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/sleepycat/je/Transaction;

    .line 2338
    iput-object p1, p0, Lcom/sleepycat/je/txn/Txn;->transaction:Lcom/sleepycat/je/Transaction;

    .line 2339
    return-void
.end method

.method protected txnBeginHook(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2178
    return-void
.end method

.method public unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1816
    iget-object v0, p0, Lcom/sleepycat/je/txn/Txn;->cursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 1817
    return-void
.end method

.method protected undo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1307
    .local v0, "alreadyUndoneLsns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1308
    .local v1, "alreadyUndoneSlots":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;>;"
    new-instance v4, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v4}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 1309
    .local v4, "location":Lcom/sleepycat/je/tree/TreeLocation;
    iget-wide v2, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    move-wide v9, v2

    .line 1312
    .local v9, "undoLsn":J
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_1

    .line 1313
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/txn/Txn;->undoDatabases:Ljava/util/Map;

    .line 1314
    invoke-static {v2, v9, v10, v3}, Lcom/sleepycat/je/txn/UndoReader;->create(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/util/Map;)Lcom/sleepycat/je/txn/UndoReader;

    move-result-object v2

    move-object v11, v2

    .line 1320
    .local v11, "undo":Lcom/sleepycat/je/txn/UndoReader;
    invoke-direct {p0, v0, v1, v11}, Lcom/sleepycat/je/txn/Txn;->firstInstance(Ljava/util/Set;Ljava/util/Set;Lcom/sleepycat/je/txn/UndoReader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1324
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v5, v11, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v6, v11, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1323
    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/recovery/RecoveryManager;->abortUndo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;J)V

    .line 1327
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->isRolledBack()Z

    move-result v2

    invoke-direct {p0, v9, v10, v11, v2}, Lcom/sleepycat/je/txn/Txn;->countObsoleteExact(JLcom/sleepycat/je/txn/UndoReader;Z)V

    .line 1331
    :cond_0
    iget-object v2, v11, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->getLastLsn()J

    move-result-wide v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v9, v2

    .line 1332
    .end local v11    # "undo":Lcom/sleepycat/je/txn/UndoReader;
    goto :goto_0

    .line 1339
    :catch_0
    move-exception v2

    .line 1340
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Txn undo for LSN="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1341
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 1333
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 1334
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSN="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1335
    .local v3, "lsnMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/txn/Txn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "Txn"

    const-string/jumbo v7, "undo"

    invoke-static {v5, v6, v7, v3, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1337
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 1338
    throw v2

    .line 1342
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local v3    # "lsnMsg":Ljava/lang/String;
    :cond_1
    nop

    .line 1348
    iget-object v2, p0, Lcom/sleepycat/je/txn/Txn;->readLocks:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 1349
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->clearReadLocks()I

    .line 1353
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/txn/Txn;->setDbCleanupState(Z)V

    .line 1356
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 1357
    .local v2, "empty":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/txn/Txn;->clearWriteLocks(Ljava/util/Set;)V

    .line 1364
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/je/txn/Txn;->deleteInfo:Ljava/util/Map;

    .line 1365
    return-void
.end method

.method protected updateLoggedForTxn()Z
    .locals 4

    .line 1479
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 2059
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/txn/Txn;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 2061
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 2077
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->id:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 2078
    if-eqz p3, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Txn;->lastLoggedLsn:J

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 2080
    return-void
.end method
