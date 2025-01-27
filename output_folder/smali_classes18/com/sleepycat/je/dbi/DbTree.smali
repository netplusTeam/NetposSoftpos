.class public Lcom/sleepycat/je/dbi/DbTree;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DbTree$RootLevel;,
        Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;,
        Lcom/sleepycat/je/dbi/DbTree$NameLockResult;,
        Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;,
        Lcom/sleepycat/je/dbi/DbTree$GetRepContext;,
        Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTO_REPAIR_RESERVED_FILES_DONE_BIT:B = 0x10t

.field private static final DUPS_CONVERTED_BIT:B = 0x4t

.field public static final ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

.field private static final INTERNAL_TYPES_BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/DbType;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

.field public static final NEG_DB_ID_START:J = -0x100L

.field private static final PRESERVE_VLSN_BIT:B = 0x8t

.field private static final REPLICATED_BIT:B = 0x1t

.field private static final REP_CONVERTED_BIT:B = 0x2t


# instance fields
.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private flags:B

.field private final idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private initialLogVersion:I

.field private final lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 179
    nop

    .line 182
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 184
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 189
    const-class v0, Lcom/sleepycat/je/dbi/DbType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 190
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sleepycat/je/dbi/DbType;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/sleepycat/je/dbi/DbTree;->INTERNAL_TYPES_BY_NAME:Ljava/util/Map;

    .line 191
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DbType;

    .line 192
    .local v2, "t":Lcom/sleepycat/je/dbi/DbType;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    sget-object v3, Lcom/sleepycat/je/dbi/DbTree;->INTERNAL_TYPES_BY_NAME:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v2    # "t":Lcom/sleepycat/je/dbi/DbType;
    :cond_0
    goto :goto_0

    .line 196
    .end local v0    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sleepycat/je/dbi/DbType;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 310
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 316
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 317
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 318
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 322
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    .line 325
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V
    .locals 13
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "replicationIntended"    # Z
    .param p3, "preserveVLSN"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 333
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    move-object v7, p1

    iput-object v7, v0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 342
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x1

    invoke-direct {v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 343
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x100

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 346
    new-instance v1, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v10, v1

    .line 347
    .local v10, "idConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 353
    invoke-virtual {v10, v11}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 354
    new-instance v12, Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v1, Lcom/sleepycat/je/dbi/DbType;->ID:Lcom/sleepycat/je/dbi/DbType;

    .line 355
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/dbi/DatabaseId;

    const-wide/16 v1, 0x0

    invoke-direct {v4, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    const/4 v2, 0x0

    move-object v1, v12

    move-object v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;)V

    iput-object v12, v0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 360
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 362
    new-instance v1, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v12, v1

    .line 363
    .local v12, "nameConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v12, v11}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 364
    new-instance v11, Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v1, Lcom/sleepycat/je/dbi/DbType;->NAME:Lcom/sleepycat/je/dbi/DbType;

    .line 365
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v4, v8, v9}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    move-object v1, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;)V

    iput-object v11, v0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 370
    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 372
    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DbTree;->setIsReplicated()V

    .line 376
    :cond_0
    if-eqz p3, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DbTree;->setPreserveVLSN()V

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DbTree;->setDupsConverted()V

    .line 383
    const/16 v1, 0x11

    iput v1, v0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    .line 384
    return-void
.end method

.method private acquireHandleLock(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/txn/HandleLocker;)V
    .locals 6
    .param p1, "nameCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "handleLocker"    # Lcom/sleepycat/je/txn/HandleLocker;

    .line 710
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 712
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn()J

    move-result-wide v1

    .line 714
    .local v1, "lsn":J
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 715
    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/txn/HandleLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 718
    .local v0, "lockResult":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_0

    .line 725
    .end local v0    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    .end local v1    # "lsn":J
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 726
    nop

    .line 727
    return-void

    .line 719
    .restart local v0    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    .restart local v1    # "lsn":J
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Locker;->checkPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contention is possible with HandleLocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 722
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local p1    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p2    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    .end local v0    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    .end local v1    # "lsn":J
    .restart local p1    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p2    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method private checkReplicaWrite(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 879
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/log/ReplicationContext;->mustGenerateVLSN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->disallowReplicaWrite()V

    .line 882
    :cond_0
    return-void
.end method

.method private doCreateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 19
    .param p1, "nameLocker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p4, "handleLocker"    # Lcom/sleepycat/je/txn/HandleLocker;
    .param p5, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p6, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 556
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    if-eqz p5, :cond_0

    .line 562
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    move-object v10, v0

    .local v0, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_0

    .line 569
    .end local v0    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_0
    iget-object v0, v7, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {v7, v8, v0}, Lcom/sleepycat/je/dbi/DbTree;->checkReplicaWrite(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 581
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DbTree;->getNextReplicatedDbId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    move-object v10, v0

    .restart local v0    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_0

    .line 583
    .end local v0    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_1
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DbTree;->getNextLocalDbId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    move-object v10, v0

    .line 588
    .local v10, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_0
    const/4 v11, 0x0

    .line 589
    .local v11, "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v12, 0x0

    .line 590
    .local v12, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v13, 0x0

    .line 591
    .local v13, "operationOk":Z
    const/4 v14, 0x0

    .line 593
    .local v14, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v5, v7, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;)V

    .line 597
    .local v0, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object/from16 v1, p6

    .line 598
    .local v1, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    if-nez p6, :cond_2

    .line 599
    sget-object v2, Lcom/sleepycat/je/log/entry/DbOperationType;->CREATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v2

    move-object v1, v2

    move-object v15, v1

    goto :goto_1

    .line 598
    :cond_2
    move-object v15, v1

    .line 603
    .end local v1    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .local v15, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :goto_1
    new-instance v1, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v2, v7, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v1, v2, v8}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v12, v1

    .line 605
    if-eqz p5, :cond_3

    .line 606
    move-object/from16 v1, p5

    move-object/from16 v16, v1

    .local v1, "nameLN":Lcom/sleepycat/je/tree/LN;
    goto :goto_2

    .line 608
    .end local v1    # "nameLN":Lcom/sleepycat/je/tree/LN;
    :cond_3
    new-instance v1, Lcom/sleepycat/je/tree/NameLN;

    invoke-direct {v1, v10}, Lcom/sleepycat/je/tree/NameLN;-><init>(Lcom/sleepycat/je/dbi/DatabaseId;)V

    move-object/from16 v16, v1

    .line 616
    .local v16, "nameLN":Lcom/sleepycat/je/tree/LN;
    :goto_2
    nop

    .line 617
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-nez p5, :cond_4

    move/from16 v6, v17

    goto :goto_3

    :cond_4
    move/from16 v6, v18

    .line 616
    :goto_3
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v4, v16

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DbTree;->insertRecord(Lcom/sleepycat/je/dbi/CursorImpl;[BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/log/ReplicationContext;Z)V

    .line 622
    if-eqz v9, :cond_5

    .line 623
    invoke-direct {v7, v12, v9}, Lcom/sleepycat/je/dbi/DbTree;->acquireHandleLock(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/txn/HandleLocker;)V

    .line 627
    :cond_5
    iget-object v1, v7, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1

    move-object v14, v1

    .line 628
    new-instance v2, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, v7, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v2, v1, v14}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    .end local v11    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v2, "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    nop

    .line 631
    :try_start_1
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseId;->getBytes()[B

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/tree/MapLN;

    invoke-direct {v4, v0}, Lcom/sleepycat/je/tree/MapLN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    sget-object v5, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    if-nez p5, :cond_6

    move/from16 v6, v17

    goto :goto_4

    :cond_6
    move/from16 v6, v18

    .line 630
    :goto_4
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DbTree;->insertRecord(Lcom/sleepycat/je/dbi/CursorImpl;[BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/log/ReplicationContext;Z)V

    .line 636
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->incrementUseCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    const/4 v1, 0x1

    .line 639
    .end local v13    # "operationOk":Z
    .end local v15    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v16    # "nameLN":Lcom/sleepycat/je/tree/LN;
    .local v1, "operationOk":Z
    nop

    .line 640
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 643
    nop

    .line 644
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 647
    if-eqz v14, :cond_7

    .line 648
    invoke-virtual {v14, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 652
    :cond_7
    return-object v0

    .line 639
    .end local v0    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "operationOk":Z
    .restart local v13    # "operationOk":Z
    :catchall_0
    move-exception v0

    move-object v11, v2

    goto :goto_5

    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v11    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v11, :cond_8

    .line 640
    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 643
    :cond_8
    if-eqz v12, :cond_9

    .line 644
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 647
    :cond_9
    if-eqz v14, :cond_a

    .line 648
    invoke-virtual {v14, v13}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_a
    throw v0
.end method

.method private doRemoveDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "checkId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p4, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1189
    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda4;

    invoke-direct {v0, p4}, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda4;-><init>(Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    const-string/jumbo v1, "remove"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sleepycat/je/dbi/DbTree;->lockNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/dbi/DbTree$GetRepContext;)Lcom/sleepycat/je/dbi/DbTree$NameLockResult;

    move-result-object v0

    .line 1195
    .local v0, "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    iget-object v1, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1196
    .local v1, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1197
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1199
    .local v3, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    if-eqz p3, :cond_1

    :try_start_0
    iget-object v4, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameLN:Lcom/sleepycat/je/tree/NameLN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    new-instance v4, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v1    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "checkId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p4    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    throw v4

    .line 1208
    .restart local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v1    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "checkId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p4    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->prepareForDbExtinction(Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 1217
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 1227
    new-instance v4, Lcom/sleepycat/je/dbi/DbCleanup;

    sget-object v5, Lcom/sleepycat/je/dbi/DbCleanup$Action;->DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v5, v6}, Lcom/sleepycat/je/dbi/DbCleanup;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;Z)V

    invoke-virtual {p1, v4}, Lcom/sleepycat/je/txn/Locker;->addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    nop

    .line 1232
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1230
    return-object v2

    .line 1232
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v4
.end method

.method private doRenameDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 15
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p5, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1087
    move-object/from16 v1, p1

    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda3;

    move-object/from16 v2, p5

    invoke-direct {v0, v2}, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda3;-><init>(Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    const-string/jumbo v3, "rename"

    move-object v10, p0

    move-object/from16 v11, p2

    invoke-direct {p0, v1, v11, v3, v0}, Lcom/sleepycat/je/dbi/DbTree;->lockNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/dbi/DbTree$GetRepContext;)Lcom/sleepycat/je/dbi/DbTree$NameLockResult;

    move-result-object v3

    .line 1093
    .local v3, "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    iget-object v12, v3, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1094
    .local v12, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v13, v3, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1095
    .local v13, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v14, v3, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1103
    .local v14, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 1104
    if-eqz p4, :cond_0

    move-object/from16 v7, p4

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/NameLN;

    .line 1107
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sleepycat/je/tree/NameLN;-><init>(Lcom/sleepycat/je/dbi/DatabaseId;)V

    move-object v7, v0

    :goto_0
    nop

    .line 1112
    .local v7, "useLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->reset()V

    .line 1119
    nop

    .line 1120
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v0, 0x1

    if-nez p4, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move v9, v4

    .line 1119
    :goto_1
    move-object v4, p0

    move-object v5, v12

    move-object v8, v14

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/dbi/DbTree;->insertRecord(Lcom/sleepycat/je/dbi/CursorImpl;[BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/log/ReplicationContext;Z)V

    .line 1131
    new-instance v4, Lcom/sleepycat/je/dbi/DbCleanup;

    sget-object v5, Lcom/sleepycat/je/dbi/DbCleanup$Action;->RENAME:Lcom/sleepycat/je/dbi/DbCleanup$Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p3

    :try_start_1
    invoke-direct {v4, v13, v5, v0, v6}, Lcom/sleepycat/je/dbi/DbCleanup;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;ZLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/txn/Locker;->addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    nop

    .line 1136
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1134
    return-object v13

    .line 1136
    .end local v7    # "useLN":Lcom/sleepycat/je/tree/NameLN;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v6, p3

    :goto_2
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v0
.end method

.method private doTruncateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;ZLcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    .locals 24
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "returnCount"    # Z
    .param p4, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p5, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1291
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    if-eqz p4, :cond_1

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1293
    :cond_1
    :goto_0
    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda1;-><init>(Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    const-string/jumbo v1, "truncate"

    move-object/from16 v10, p2

    invoke-direct {v7, v8, v10, v1, v0}, Lcom/sleepycat/je/dbi/DbTree;->lockNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/dbi/DbTree$GetRepContext;)Lcom/sleepycat/je/dbi/DbTree$NameLockResult;

    move-result-object v11

    .line 1299
    .local v11, "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    iget-object v15, v11, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1300
    .local v15, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v13, v11, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1306
    .local v13, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :try_start_0
    iget-object v0, v7, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->prepareForDbExtinction(Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 1314
    iget-object v0, v11, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v12, v0

    .line 1315
    .local v12, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz p4, :cond_2

    .line 1317
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1384
    .end local v12    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v13

    move-object/from16 v23, v15

    goto/16 :goto_7

    .line 1317
    .restart local v12    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_2
    :try_start_2
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1318
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->isReplicatedId(J)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v1, :cond_3

    .line 1319
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DbTree;->getNextReplicatedDbId()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1320
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DbTree;->getNextLocalDbId()J

    move-result-wide v1

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    :goto_2
    move-object v14, v0

    .line 1322
    .local v14, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->cloneDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v6, v0

    .line 1323
    .local v6, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->incrementUseCount()V

    .line 1324
    invoke-virtual {v6, v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setId(Lcom/sleepycat/je/dbi/DatabaseId;)V

    .line 1325
    new-instance v0, Lcom/sleepycat/je/tree/Tree;

    invoke-direct {v0, v6}, Lcom/sleepycat/je/tree/Tree;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTree(Lcom/sleepycat/je/tree/Tree;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 1332
    const/4 v1, 0x0

    .line 1333
    .local v1, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 1334
    .local v2, "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v5, 0x0

    .line 1336
    .local v5, "operationOk":Z
    :try_start_5
    iget-object v0, v7, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v4, v0

    .line 1337
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    :try_start_6
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, v7, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v2, v0

    .line 1339
    nop

    .line 1340
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseId;->getBytes()[B

    move-result-object v3

    new-instance v0, Lcom/sleepycat/je/tree/MapLN;

    invoke-direct {v0, v6}, Lcom/sleepycat/je/tree/MapLN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    sget-object v16, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v1, 0x1

    move-object/from16 v17, v13

    .end local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .local v17, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    if-nez p4, :cond_4

    move/from16 v18, v1

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    .line 1339
    :goto_3
    move-object/from16 v1, p0

    move-object v13, v4

    .end local v4    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v13, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    move-object v4, v0

    move v7, v5

    .end local v5    # "operationOk":Z
    .local v7, "operationOk":Z
    move-object/from16 v5, v16

    move-object/from16 v20, v6

    .end local v6    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v20, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move/from16 v6, v18

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/DbTree;->insertRecord(Lcom/sleepycat/je/dbi/CursorImpl;[BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/log/ReplicationContext;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1344
    const/4 v0, 0x1

    .line 1346
    .end local v7    # "operationOk":Z
    .local v0, "operationOk":Z
    nop

    .line 1347
    :try_start_8
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1350
    if-eqz v13, :cond_5

    .line 1351
    :try_start_9
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 1384
    .end local v0    # "operationOk":Z
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v12    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v20    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v19, v17

    goto/16 :goto_7

    .line 1354
    .restart local v0    # "operationOk":Z
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v12    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v20    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_5
    :goto_4
    :try_start_a
    iget-object v1, v11, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameLN:Lcom/sleepycat/je/tree/NameLN;

    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/NameLN;->setId(Lcom/sleepycat/je/dbi/DatabaseId;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1357
    const-wide/16 v3, 0x0

    if-eqz p3, :cond_6

    :try_start_b
    invoke-virtual {v12, v3, v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->count(J)J

    move-result-wide v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1360
    .local v3, "recordCount":J
    :cond_6
    :try_start_c
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v5, 0x0

    new-array v6, v5, [B

    invoke-direct {v1, v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v6, v14

    .end local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v6, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    move-object v14, v1

    .line 1362
    .local v14, "dataDbt":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v5, v12

    .end local v12    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v5, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object v12, v15

    move/from16 v22, v0

    move-object/from16 v21, v13

    move-object/from16 v19, v17

    const/4 v0, 0x0

    .end local v0    # "operationOk":Z
    .end local v13    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v17    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .local v19, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .local v21, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v22, "operationOk":Z
    move-object v13, v1

    move-object/from16 v23, v15

    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v23, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move-object v15, v7

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    :try_start_d
    invoke-virtual/range {v12 .. v18}, Lcom/sleepycat/je/dbi/CursorImpl;->updateCurrentRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 1375
    new-instance v1, Lcom/sleepycat/je/dbi/DbCleanup;

    sget-object v7, Lcom/sleepycat/je/dbi/DbCleanup$Action;->DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const/4 v12, 0x1

    invoke-direct {v1, v5, v7, v12}, Lcom/sleepycat/je/dbi/DbCleanup;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;Z)V

    invoke-virtual {v8, v1}, Lcom/sleepycat/je/txn/Locker;->addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V

    .line 1379
    new-instance v1, Lcom/sleepycat/je/dbi/DbCleanup;

    sget-object v7, Lcom/sleepycat/je/dbi/DbCleanup$Action;->DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    move-object/from16 v12, v20

    .end local v20    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v12, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-direct {v1, v12, v7, v0}, Lcom/sleepycat/je/dbi/DbCleanup;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;Z)V

    invoke-virtual {v8, v1}, Lcom/sleepycat/je/txn/Locker;->addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V

    .line 1382
    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;

    invoke-direct {v0, v5, v12, v3, v4}, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1384
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1385
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1382
    return-object v0

    .line 1384
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "recordCount":J
    .end local v5    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v12    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v14    # "dataDbt":Lcom/sleepycat/je/DatabaseEntry;
    .end local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v21    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v22    # "operationOk":Z
    .end local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v17    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v19, v17

    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v17    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_7

    .line 1346
    .end local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v7    # "operationOk":Z
    .local v12, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v14, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v17    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v20    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_3
    move-exception v0

    move-object v5, v12

    move-object/from16 v21, v13

    move-object v6, v14

    move-object/from16 v23, v15

    move-object/from16 v19, v17

    move-object/from16 v12, v20

    move-object/from16 v1, v21

    .end local v13    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v17    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v20    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v12, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v21    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_5

    .end local v7    # "operationOk":Z
    .end local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v21    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v4    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v5, "operationOk":Z
    .local v6, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v12, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v13, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v4

    move v7, v5

    move-object v5, v12

    move-object/from16 v19, v13

    move-object/from16 v23, v15

    move-object v12, v6

    move-object v6, v14

    move-object/from16 v1, v21

    .end local v4    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v6, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "operationOk":Z
    .local v12, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v21    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_5

    .end local v7    # "operationOk":Z
    .end local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v21    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .local v5, "operationOk":Z
    .local v6, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v12, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_5
    move-exception v0

    move v7, v5

    move-object v5, v12

    move-object/from16 v19, v13

    move-object/from16 v23, v15

    move-object v12, v6

    move-object v6, v14

    .end local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v14    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v5, "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v6, "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "operationOk":Z
    .local v12, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_5
    if-eqz v2, :cond_7

    .line 1347
    :try_start_e
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    goto :goto_6

    .line 1384
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v5    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "operationOk":Z
    .end local v12    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_6
    move-exception v0

    goto :goto_7

    .line 1350
    .restart local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v5    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "operationOk":Z
    .restart local v12    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 1351
    invoke-virtual {v1, v7}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_8
    nop

    .end local v11    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "returnCount":Z
    .end local p4    # "replicatedLN":Lcom/sleepycat/je/tree/NameLN;
    .end local p5    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1384
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v5    # "oldDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "newId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "operationOk":Z
    .end local v12    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v11    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "returnCount":Z
    .restart local p4    # "replicatedLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local p5    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    :catchall_7
    move-exception v0

    move-object/from16 v19, v13

    move-object/from16 v23, v15

    .end local v13    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v15    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v23    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :goto_7
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1385
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v0
.end method

.method private getNextLocalDbId()J
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method private getNextReplicatedDbId()J
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPreserveVLSN()Z
    .locals 1

    .line 1879
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private insertRecord(Lcom/sleepycat/je/dbi/CursorImpl;[BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/log/ReplicationContext;Z)V
    .locals 6
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # [B
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p5, "mustSucceed"    # Z

    .line 1462
    instance-of v0, p3, Lcom/sleepycat/je/tree/MapLN;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/sleepycat/je/tree/NameLN;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 1463
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1465
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/sleepycat/je/dbi/CursorImpl;->insertRecord([BLcom/sleepycat/je/tree/LN;ZLcom/sleepycat/je/log/ReplicationContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    return-void

    .line 1470
    :cond_2
    if-nez p5, :cond_3

    .line 1471
    return-void

    .line 1477
    :cond_3
    instance-of v0, p3, Lcom/sleepycat/je/tree/MapLN;

    if-eqz v0, :cond_4

    .line 1478
    move-object v0, p3

    check-cast v0, Lcom/sleepycat/je/tree/MapLN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1479
    .local v0, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v1

    .line 1480
    .local v1, "dbId":J
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, "dbName":Ljava/lang/String;
    goto :goto_1

    .line 1482
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "dbId":J
    :cond_4
    move-object v0, p3

    check-cast v0, Lcom/sleepycat/je/tree/NameLN;

    .line 1483
    .local v0, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v1

    .line 1484
    .restart local v1    # "dbId":J
    invoke-static {p2}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1487
    .local v0, "dbName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal naming record already exists. Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1490
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1487
    invoke-static {v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private isReplicatedId(J)Z
    .locals 2
    .param p1, "id"    # J

    .line 421
    const-wide/16 v0, -0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReservedDbName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1827
    invoke-static {p0}, Lcom/sleepycat/je/dbi/DbTree;->typeForDbName(Ljava/lang/String;)Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$doRemoveDb$2(Lcom/sleepycat/je/log/DbOpReplicationContext;Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 1
    .param p0, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1191
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 1193
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v0

    .line 1191
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$doRenameDb$1(Lcom/sleepycat/je/log/DbOpReplicationContext;Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 1
    .param p0, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1089
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->RENAME:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 1091
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v0

    .line 1089
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$doTruncateDb$3(Lcom/sleepycat/je/log/DbOpReplicationContext;Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 2
    .param p0, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1295
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 1297
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v0

    .line 1295
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$getDbNames$4(Ljava/util/List;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2
    .param p0, "nameList"    # Ljava/util/List;
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1813
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v0

    .line 1814
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DbTree;->isReservedDbName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1815
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$updateNameLN$0(Lcom/sleepycat/je/log/DbOpReplicationContext;Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 2
    .param p0, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1046
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->UPDATE_CONFIG:Lcom/sleepycat/je/log/entry/DbOperationType;

    const/4 v1, 0x0

    .line 1048
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v0

    .line 1046
    :goto_0
    return-object v0
.end method

.method private lockNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/dbi/DbTree$GetRepContext;)Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .locals 8
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "getRepContext"    # Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 919
    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;-><init>(Lcom/sleepycat/je/dbi/DbTree$1;)V

    .line 922
    .local v0, "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 923
    iget-object v1, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const-string v3, " non-existent database "

    const-string v4, "Attempted to "

    if-eqz v1, :cond_9

    .line 929
    const/4 v1, 0x0

    .line 932
    .local v1, "success":Z
    :try_start_0
    iget-object v5, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-interface {p4, v5}, Lcom/sleepycat/je/dbi/DbTree$GetRepContext;->get(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v5

    iput-object v5, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 933
    iget-object v5, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {p0, p1, v5}, Lcom/sleepycat/je/dbi/DbTree;->checkReplicaWrite(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 940
    iget-object v5, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 941
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 942
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 943
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/txn/Txn;->isAutoTxn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 944
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    new-instance v2, Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;

    invoke-direct {v2}, Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;-><init>()V

    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v1    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "action":Ljava/lang/String;
    .end local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    throw v2

    .line 948
    .restart local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v1    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "action":Ljava/lang/String;
    .restart local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    :cond_1
    :goto_0
    new-instance v5, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v6, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v5, v6, p1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    iput-object v5, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 951
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    .line 952
    invoke-static {p2}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 954
    .local v5, "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v6, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v7, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v6, v5, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v6

    .line 956
    .local v6, "found":Z
    if-eqz v6, :cond_7

    .line 963
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3, v2, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/NameLN;

    iput-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameLN:Lcom/sleepycat/je/tree/NameLN;

    .line 965
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameLN:Lcom/sleepycat/je/tree/NameLN;

    if-eqz v2, :cond_6

    .line 976
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getImportunate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been forcibly closed in order to apply a replicated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation.  This Database and all associated Cursors must be closed.  All associated Transactions must be aborted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getReferringHandles()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/Database;

    .line 985
    .local v4, "db":Lcom/sleepycat/je/Database;
    invoke-static {v4, p2, v2}, Lcom/sleepycat/je/DbInternal;->setPreempted(Lcom/sleepycat/je/Database;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .end local v4    # "db":Lcom/sleepycat/je/Database;
    goto :goto_1

    .line 987
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 989
    :cond_3
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getReferringHandleCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    .local v2, "handleCount":I
    if-gtz v2, :cond_5

    .line 996
    .end local v2    # "handleCount":I
    :goto_2
    const/4 v1, 0x1

    .line 998
    .end local v5    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "found":Z
    if-nez v1, :cond_4

    .line 999
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1000
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    if-eqz v2, :cond_4

    .line 1001
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1002
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1007
    :cond_4
    return-object v0

    .line 991
    .restart local v2    # "handleCount":I
    .restart local v5    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "found":Z
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " database "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " open Database handles exist"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v1    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "action":Ljava/lang/String;
    .end local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    throw v3

    .line 965
    .end local v2    # "handleCount":I
    .restart local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v1    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "action":Ljava/lang/String;
    .restart local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v1    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "action":Ljava/lang/String;
    .end local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    throw v2

    .line 957
    .restart local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v1    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "action":Ljava/lang/String;
    .restart local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    :cond_7
    new-instance v2, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v1    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "action":Ljava/lang/String;
    .end local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    .end local v5    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "found":Z
    .restart local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .restart local v1    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "action":Ljava/lang/String;
    .restart local p4    # "getRepContext":Lcom/sleepycat/je/dbi/DbTree$GetRepContext;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_8

    .line 999
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1000
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    if-eqz v3, :cond_8

    .line 1001
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1002
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    :cond_8
    throw v2

    .line 924
    .end local v1    # "success":Z
    :cond_9
    new-instance v1, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setPreserveVLSN()V
    .locals 1

    .line 1883
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1884
    return-void
.end method

.method static typeForDbName(Ljava/lang/String;)Lcom/sleepycat/je/dbi/DbType;
    .locals 2
    .param p0, "dbName"    # Ljava/lang/String;

    .line 202
    sget-object v0, Lcom/sleepycat/je/dbi/DbTree;->INTERNAL_TYPES_BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DbType;

    .line 203
    .local v0, "t":Lcom/sleepycat/je/dbi/DbType;
    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 206
    :cond_0
    sget-object v1, Lcom/sleepycat/je/dbi/DbType;->USER:Lcom/sleepycat/je/dbi/DbType;

    return-object v1
.end method


# virtual methods
.method public clearAutoRepairReservedFilesDone()V
    .locals 1

    .line 1895
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1896
    return-void
.end method

.method public close()V
    .locals 0

    .line 1912
    return-void
.end method

.method public createDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p4, "handleLocker"    # Lcom/sleepycat/je/txn/HandleLocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 486
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbTree;->doCreateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public createInternalDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 8
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 506
    nop

    .line 507
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/dbi/DbTree;->doCreateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 514
    .local v0, "ret":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 515
    return-object v0
.end method

.method public createReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p4, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p5, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 528
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbTree;->doCreateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public dbRemove(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "checkId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/DbTree;->doRemoveDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public dbRename(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 6
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1150
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbTree;->doRenameDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public deleteMapLN(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 8
    .param p1, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1506
    const/4 v0, 0x0

    .line 1507
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_7

    .line 1508
    const/4 v1, 0x0

    .line 1509
    .local v1, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 1510
    .local v2, "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v3, 0x0

    .line 1512
    .local v3, "operationOk":Z
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4

    move-object v1, v4

    .line 1513
    new-instance v4, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v4, v5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v2, v4

    .line 1515
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    .line 1516
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseId;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    sget-object v5, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    .line 1515
    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v4

    .line 1518
    .local v4, "found":Z
    if-eqz v4, :cond_2

    .line 1525
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/MapLN;

    .line 1528
    .local v5, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    if-eqz v5, :cond_1

    .line 1529
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    .line 1531
    .local v6, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInUseDuringDbRemove()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1532
    sget-object v7, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v2, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 1534
    const/4 v0, 0x1

    .line 1536
    .end local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .end local v6    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_0
    goto :goto_1

    .line 1528
    .restart local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "done":Z
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    .end local p1    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    throw v6
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    .end local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .restart local v0    # "done":Z
    .restart local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "operationOk":Z
    .restart local p1    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_2
    const/4 v0, 0x1

    .line 1540
    :goto_1
    const/4 v3, 0x1

    .line 1544
    .end local v4    # "found":Z
    nop

    .line 1546
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1547
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1549
    if-eqz v1, :cond_6

    .line 1550
    :goto_2
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    goto :goto_3

    .line 1544
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1546
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1547
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1549
    :cond_3
    if-eqz v1, :cond_4

    .line 1550
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_4
    throw v4

    .line 1541
    :catch_0
    move-exception v4

    .line 1544
    if-eqz v2, :cond_5

    .line 1546
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1547
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1549
    :cond_5
    if-eqz v1, :cond_6

    .line 1550
    goto :goto_2

    .line 1553
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    :cond_6
    :goto_3
    goto :goto_0

    .line 1554
    :cond_7
    return-void
.end method

.method public dump()V
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Tree;->dump()V

    .line 2078
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Tree;->dump()V

    .line 2079
    return-void
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 2021
    const-string v0, "<dbtree lastLocalDbId = \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v0, "\" lastReplicatedDbId = \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2025
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    const-string v0, "<idDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 2028
    const-string v0, "</idDb><nameDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 2030
    const-string v0, "</nameDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v0, "</dbtree>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    return-void
.end method

.method dumpString(I)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2055
    .local v0, "self":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    const-string v1, "<dbTree lastDbId =\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2058
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2060
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2062
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2064
    const-string v1, "</dbtree>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1644
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 8
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p2, "lockTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1689
    :cond_1
    const/4 v0, 0x0

    .line 1696
    .local v0, "foundDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :goto_0
    const/4 v1, 0x0

    .line 1697
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 1698
    .local v2, "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v3, 0x0

    .line 1700
    .local v3, "operationOk":Z
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4

    move-object v1, v4

    .line 1701
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 1702
    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/je/txn/Locker;->setLockTimeout(J)V

    .line 1704
    :cond_2
    new-instance v4, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v4, v5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v2, v4

    .line 1705
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseId;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1707
    .local v4, "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    .line 1708
    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v5

    .line 1710
    .local v5, "found":Z
    if-eqz v5, :cond_4

    .line 1711
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v6}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/tree/MapLN;

    .line 1713
    .local v6, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    if-eqz v6, :cond_3

    .line 1714
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v7

    move-object v0, v7

    .line 1716
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->incrementUseCount()V

    goto :goto_1

    .line 1713
    :cond_3
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "foundDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    .end local p1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p2    # "lockTimeout":J
    throw v7
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    .end local v6    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .restart local v0    # "foundDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "operationOk":Z
    .restart local p1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p2    # "lockTimeout":J
    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 1723
    nop

    .line 1724
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1725
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1727
    if-eqz v1, :cond_5

    .line 1728
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1733
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    .end local v4    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "found":Z
    :cond_5
    return-object v0

    .line 1723
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "operationOk":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_6

    .line 1724
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1725
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1727
    :cond_6
    if-eqz v1, :cond_7

    .line 1728
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_7
    throw v4

    .line 1720
    :catch_0
    move-exception v4

    .line 1723
    if-eqz v2, :cond_8

    .line 1724
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1725
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1727
    :cond_8
    if-eqz v1, :cond_9

    .line 1728
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1731
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "idCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    :cond_9
    goto :goto_0
.end method

.method public getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p2, "lockTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "J",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1656
    .local p4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1659
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1660
    .local v0, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    return-object v0
.end method

.method public getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 3
    .param p1, "nameLocker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "handleLocker"    # Lcom/sleepycat/je/txn/HandleLocker;
    .param p4, "writeLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1575
    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->ID:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1578
    :cond_0
    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->NAME:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1582
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/DbTree;->getDbIdFromName(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 1585
    .local v0, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    if-nez v0, :cond_2

    .line 1586
    const/4 v1, 0x0

    return-object v1

    .line 1590
    :cond_2
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    return-object v1
.end method

.method public getDbIdFromName(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 4
    .param p1, "nameLocker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "handleLocker"    # Lcom/sleepycat/je/txn/HandleLocker;
    .param p4, "writeLock"    # Z

    .line 1605
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    .line 1608
    .local v0, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    .line 1609
    invoke-static {p2}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1611
    .local v1, "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz p4, :cond_0

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1613
    const/4 v2, 0x0

    .line 1631
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1632
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1613
    return-object v2

    .line 1616
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/NameLN;

    .line 1619
    .local v2, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    if-eqz v2, :cond_3

    .line 1621
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    .line 1624
    .local v3, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    if-eqz p3, :cond_2

    .line 1625
    invoke-direct {p0, v0, p3}, Lcom/sleepycat/je/dbi/DbTree;->acquireHandleLock(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/txn/HandleLocker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    :cond_2
    nop

    .line 1631
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1632
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1628
    return-object v3

    .line 1619
    .end local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p1    # "nameLocker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "databaseName":Ljava/lang/String;
    .end local p3    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .end local p4    # "writeLock":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1631
    .end local v1    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v0    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p1    # "nameLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "databaseName":Ljava/lang/String;
    .restart local p3    # "handleLocker":Lcom/sleepycat/je/txn/HandleLocker;
    .restart local p4    # "writeLock":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1632
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v1
.end method

.method public getDbNames()Ljava/util/List;
    .locals 5
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

    .line 1806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    .local v0, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    new-instance v3, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->traverseDbWithCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/CursorImpl$WithCursor;)V

    .line 1820
    return-object v0
.end method

.method public getDbNamesAndIds()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1794
    .local v0, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    new-instance v1, Lcom/sleepycat/je/dbi/DbTree$1Traversal;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/dbi/DbTree$1Traversal;-><init>(Lcom/sleepycat/je/dbi/DbTree;Ljava/util/Map;)V

    .line 1795
    .local v1, "traversal":Lcom/sleepycat/je/dbi/DbTree$1Traversal;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v3, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    .line 1796
    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->traverseDbWithCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/CursorImpl$WithCursor;)V

    .line 1797
    return-object v0
.end method

.method getDupsConverted()Z
    .locals 1

    .line 1871
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHighestLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1837
    new-instance v0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/dbi/DbTree$RootLevel;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1838
    .local v0, "getLevel":Lcom/sleepycat/je/dbi/DbTree$RootLevel;
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedShared(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;

    .line 1839
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->getRootLevel()I

    move-result v1

    return v1
.end method

.method public getIdDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getInitialLogVersion()I
    .locals 1

    .line 1903
    iget v0, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    return v0
.end method

.method public getLastLocalDbId()J
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReplicatedDbId()J
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogSize()I
    .locals 2

    .line 1951
    invoke-static {}, Lcom/sleepycat/je/log/LogUtils;->getLongLogSize()I

    move-result v0

    .line 1952
    invoke-static {}, Lcom/sleepycat/je/log/LogUtils;->getLongLogSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1953
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1954
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    .line 1956
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1950
    return v0
.end method

.method public getNameDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 2038
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method initExistingEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "eImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DbTree;->isReplicated()Z

    move-result v0

    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DbTree;->getPreserveVLSN()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkRulesForExistingEnv(ZZ)V

    .line 468
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 469
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setEnvironmentImpl(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 470
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setEnvironmentImpl(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 471
    return-void
.end method

.method public isAutoRepairReservedFilesDone()Z
    .locals 1

    .line 1887
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRepConverted()Z
    .locals 1

    .line 1855
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReplicated()Z
    .locals 2

    .line 1843
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 2046
    const/4 v0, 0x0

    return v0
.end method

.method public modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 750
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;JZ)V

    .line 751
    return-void
.end method

.method public modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;JZ)V
    .locals 10
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "ifBeforeLsn"    # J
    .param p4, "mustExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    return-void

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 785
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 788
    :cond_1
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 796
    .local v0, "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    const/4 v1, 0x0

    .line 797
    .local v1, "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 798
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    const/4 v3, 0x0

    .line 800
    .local v3, "operationOk":Z
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4

    move-object v1, v4

    .line 801
    new-instance v4, Lcom/sleepycat/je/dbi/CursorImpl;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {v4, v5, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V

    move-object v2, v4

    .line 803
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v2, v0, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .local v4, "found":Z
    if-nez v4, :cond_3

    .line 806
    if-nez p4, :cond_2

    .line 837
    nop

    .line 838
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 839
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 841
    if-eqz v1, :cond_c

    .line 842
    :goto_1
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    goto/16 :goto_3

    .line 807
    :cond_2
    :try_start_1
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find database ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 810
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .end local v0    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "ifBeforeLsn":J
    .end local p4    # "mustExist":Z
    throw v5

    .line 817
    .restart local v0    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "operationOk":Z
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "ifBeforeLsn":J
    .restart local p4    # "mustExist":Z
    :cond_3
    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-eqz v5, :cond_4

    .line 819
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn()J

    move-result-wide v5

    .line 818
    invoke-static {v5, v6, p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v5

    if-gez v5, :cond_5

    .line 821
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/MapLN;

    .line 824
    .local v5, "mapLN":Lcom/sleepycat/je/tree/MapLN;
    if-eqz v5, :cond_6

    .line 827
    new-instance v6, Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;

    invoke-direct {v6, v2}, Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;-><init>(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 828
    .local v6, "writeMapLN":Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedExclusive(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;
    :try_end_1
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    const/4 v3, 0x1

    .line 837
    .end local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .end local v6    # "writeMapLN":Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;
    :cond_5
    nop

    .line 838
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 839
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 841
    if-eqz v1, :cond_c

    .line 842
    goto :goto_1

    .line 824
    .restart local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    :cond_6
    :try_start_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "ifBeforeLsn":J
    .end local p4    # "mustExist":Z
    throw v6
    :try_end_2
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    .end local v4    # "found":Z
    .end local v5    # "mapLN":Lcom/sleepycat/je/tree/MapLN;
    .restart local v0    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "operationOk":Z
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "ifBeforeLsn":J
    .restart local p4    # "mustExist":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_7

    .line 838
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 839
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 841
    :cond_7
    if-eqz v1, :cond_8

    .line 842
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_8
    throw v4

    .line 834
    :catch_0
    move-exception v4

    .line 837
    if-eqz v2, :cond_9

    .line 838
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 839
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 841
    :cond_9
    if-eqz v1, :cond_a

    .line 842
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 845
    .end local v1    # "idDbLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "operationOk":Z
    :cond_a
    goto/16 :goto_0

    .line 786
    .end local v0    # "keyDbt":Lcom/sleepycat/je/DatabaseEntry;
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logMapTreeRoot()V

    .line 847
    :cond_c
    :goto_3
    return-void
.end method

.method public openNonRepInternalDB(Lcom/sleepycat/je/dbi/DbType;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .param p1, "dbType"    # Lcom/sleepycat/je/dbi/DbType;

    .line 661
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    invoke-static {v1, v2}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    .line 666
    .local v1, "autoTxn":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 668
    .local v2, "operationOk":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0, v4, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    .line 670
    .local v5, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v5, :cond_1

    .line 672
    iget-object v6, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 673
    nop

    .line 684
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 673
    return-object v4

    .line 676
    :cond_0
    :try_start_1
    new-instance v4, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 677
    .local v4, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 679
    invoke-virtual {p0, v1, v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->createInternalDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    .line 681
    .end local v4    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_1
    const/4 v2, 0x1

    .line 682
    nop

    .line 684
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 682
    return-object v5

    .line 684
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v3
.end method

.method public optionalModifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 736
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 741
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 1991
    const/4 v0, 0x6

    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    .line 1992
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1993
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 1995
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1996
    if-lt p2, v0, :cond_1

    .line 1997
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2001
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 2002
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 2004
    if-lt p2, v0, :cond_2

    .line 2005
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    goto :goto_1

    .line 2007
    :cond_2
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 2010
    :goto_1
    const/16 v0, 0xf

    if-lt p2, v0, :cond_3

    .line 2011
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    goto :goto_2

    .line 2013
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    .line 2015
    :goto_2
    return-void
.end method

.method public rebuildINListMapDb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Tree;->rebuildINList()V

    .line 1771
    return-void
.end method

.method public releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1745
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eq p1, v0, :cond_0

    .line 1748
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->decrementUseCount()V

    .line 1750
    :cond_0
    return-void
.end method

.method public releaseDbs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)V"
        }
    .end annotation

    .line 1757
    .local p1, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    if-eqz p1, :cond_0

    .line 1758
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1759
    .local v1, "databaseImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1760
    .end local v1    # "databaseImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 1762
    :cond_0
    return-void
.end method

.method public removeReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/log/DbOpReplicationContext;)V
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "checkId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p4, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1261
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/DbTree;->doRemoveDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    nop

    .line 1266
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public renameReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p5, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1166
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/dbi/DbTree;->doRenameDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1168
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public setAutoRepairReservedFilesDone()V
    .locals 1

    .line 1891
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1892
    return-void
.end method

.method setDupsConverted()V
    .locals 1

    .line 1875
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1876
    return-void
.end method

.method setIsRepConverted()V
    .locals 1

    .line 1859
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1860
    return-void
.end method

.method setIsReplicated()V
    .locals 1

    .line 1847
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    .line 1848
    return-void
.end method

.method public setLastDbId(JJ)V
    .locals 1
    .param p1, "lastReplicatedDbId"    # J
    .param p3, "lastLocalDbId"    # J

    .line 413
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2070
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbTree;->dumpString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Z)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    .locals 6
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "returnCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1414
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbTree;->doTruncateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;ZLcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;

    move-result-object v0

    return-object v0
.end method

.method public truncateReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;ZLcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "returnCount"    # Z
    .param p4, "replicatedLN"    # Lcom/sleepycat/je/tree/NameLN;
    .param p5, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1428
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/dbi/DbTree;->doTruncateDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;ZLcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1430
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public updateFromReplay(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 5
    .param p1, "replayDbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 430
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMaster()Z

    move-result v0

    if-nez v0, :cond_4

    .line 432
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v0

    .line 434
    .local v0, "replayVal":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isRepConverted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replay database id is unexpectedly positive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 446
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 447
    .local v2, "val":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 449
    goto :goto_1

    .line 451
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    nop

    .line 456
    .end local v2    # "val":J
    :goto_1
    return-void

    .line 455
    :cond_3
    goto :goto_0

    .line 430
    .end local v0    # "replayVal":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public updateNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/log/DbOpReplicationContext;)V
    .locals 11
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "repContext"    # Lcom/sleepycat/je/log/DbOpReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockConflictException;
        }
    .end annotation

    .line 1039
    if-eqz p2, :cond_0

    .line 1044
    :try_start_0
    const-string/jumbo v0, "updateConfig"

    new-instance v1, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->lockNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/dbi/DbTree$GetRepContext;)Lcom/sleepycat/je/dbi/DbTree$NameLockResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .local v0, "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    nop

    .line 1055
    iget-object v8, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1056
    .local v8, "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    iget-object v9, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1057
    .local v9, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v10, v0, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1061
    .local v10, "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :try_start_1
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v3, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1062
    .local v3, "dataDbt":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->updateCurrentRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    nop

    .end local v3    # "dataDbt":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p0, v9}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1067
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1068
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 1069
    nop

    .line 1070
    return-void

    .line 1066
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v9}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1067
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1068
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v1

    .line 1050
    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
    .end local v8    # "nameCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "useRepContext":Lcom/sleepycat/je/log/ReplicationContext;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1039
    .end local v0    # "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 1977
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedLocalDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 1978
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->lastAllocatedReplicatedDbId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 1980
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->idDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 1981
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree;->nameDatabase:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 1982
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DbTree;->flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1983
    iget v0, p0, Lcom/sleepycat/je/dbi/DbTree;->initialLogVersion:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 1984
    return-void
.end method
