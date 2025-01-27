.class public Lcom/sleepycat/je/SecondaryCursor;
.super Lcom/sleepycat/je/Cursor;
.source "SecondaryCursor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/SecondaryCursor;Z)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/SecondaryCursor;
    .param p2, "samePosition"    # Z

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Cursor;Z)V

    .line 98
    iget-object v0, p1, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)V
    .locals 0
    .param p1, "dbHandle"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)V

    .line 78
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    .locals 0
    .param p1, "dbHandle"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    .line 89
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 90
    return-void
.end method

.method private getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 17
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1494
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {v8, v10, v9}, Lcom/sleepycat/je/SecondaryCursor;->getLockPrimaryOnly(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v11

    .line 1496
    .local v11, "lockPrimaryOnly":Z
    if-eqz v11, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_0
    move-object v12, v0

    .line 1499
    .local v12, "searchLockMode":Lcom/sleepycat/je/LockMode;
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual {v8, v13, v14, v12, v15}, Lcom/sleepycat/je/SecondaryCursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v16

    .line 1502
    .local v16, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v16, :cond_1

    .line 1503
    const/4 v0, 0x0

    return-object v0

    .line 1506
    :cond_1
    nop

    .line 1507
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/SecondaryCursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v5

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v11

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->readPrimaryAfterGet(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZLcom/sleepycat/je/OperationResult;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private getLockPrimaryOnly(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1660
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1662
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1664
    .local v2, "dataRequested":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1665
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryCursor;->isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1666
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryCursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1664
    :goto_1
    return v0
.end method

.method private position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;ZZ)Lcom/sleepycat/je/OperationResult;
    .locals 12
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p6, "first"    # Z
    .param p7, "lockPrimaryOnly"    # Z

    .line 1578
    if-eqz p7, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    :goto_0
    move-object v8, v0

    .line 1581
    .local v8, "searchLockMode":Lcom/sleepycat/je/LockMode;
    nop

    .line 1582
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v9

    .line 1584
    .local v9, "result1":Lcom/sleepycat/je/OperationResult;
    if-nez v9, :cond_1

    .line 1585
    const/4 v0, 0x0

    return-object v0

    .line 1588
    :cond_1
    nop

    .line 1589
    move-object v10, p0

    invoke-virtual {p0, v8}, Lcom/sleepycat/je/SecondaryCursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v5

    .line 1588
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->readPrimaryAfterGet(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZLcom/sleepycat/je/OperationResult;)Lcom/sleepycat/je/OperationResult;

    move-result-object v11

    .line 1592
    .local v11, "result2":Lcom/sleepycat/je/OperationResult;
    if-eqz v11, :cond_2

    .line 1593
    return-object v11

    .line 1597
    :cond_2
    if-eqz p6, :cond_3

    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    :goto_1
    move-object v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private readPrimaryAfterGet(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZLcom/sleepycat/je/OperationResult;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p5, "secDirtyRead"    # Z
    .param p6, "lockPrimaryOnly"    # Z
    .param p7, "origResult"    # Lcom/sleepycat/je/OperationResult;

    .line 1728
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v14

    .line 1729
    .local v14, "primaryDb":Lcom/sleepycat/je/Database;
    const/4 v15, 0x0

    if-nez v14, :cond_0

    .line 1731
    return-object v15

    .line 1734
    :cond_0
    const/4 v8, 0x0

    iget-object v0, v12, Lcom/sleepycat/je/SecondaryCursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1737
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v9

    iget-object v10, v12, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    const/4 v11, 0x0

    .line 1734
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Lcom/sleepycat/je/SecondaryCursor;->readPrimaryAfterGet(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    return-object v15

    .line 1741
    :cond_1
    if-nez p5, :cond_2

    .line 1742
    return-object p7

    .line 1749
    :cond_2
    iget-object v0, v12, Lcom/sleepycat/je/SecondaryCursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getExpirationTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/DbInternal;->makeResult(J)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;Z)Lcom/sleepycat/je/OperationResult;
    .locals 11
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p6, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;
    .param p7, "lockPrimaryOnly"    # Z

    .line 1617
    if-eqz p7, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    move-object v8, v0

    .line 1621
    .local v8, "searchLockMode":Lcom/sleepycat/je/LockMode;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v9

    .line 1624
    .local v9, "result1":Lcom/sleepycat/je/OperationResult;
    if-nez v9, :cond_1

    .line 1625
    const/4 v0, 0x0

    return-object v0

    .line 1628
    :cond_1
    nop

    .line 1630
    move-object v10, p0

    invoke-virtual {p0, v8}, Lcom/sleepycat/je/SecondaryCursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v5

    .line 1628
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->readPrimaryAfterGet(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZLcom/sleepycat/je/OperationResult;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1633
    .local v0, "result2":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_2

    .line 1634
    return-object v0

    .line 1638
    .end local v0    # "result2":Lcom/sleepycat/je/OperationResult;
    .end local v9    # "result1":Lcom/sleepycat/je/OperationResult;
    :cond_2
    goto :goto_1
.end method


# virtual methods
.method checkForPrimaryUpdate(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 5
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1760
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getPrivateSecondaryConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    .line 1761
    .local v0, "conf":Lcom/sleepycat/je/SecondaryConfig;
    const/4 v1, 0x0

    .line 1768
    .local v1, "possibleIntegrityError":Z
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getImmutableSecondaryKey()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1770
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1776
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1777
    .local v2, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 1778
    invoke-interface {v3, v4, p2, p3, v2}, Lcom/sleepycat/je/SecondaryKeyCreator;->createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1779
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1780
    :cond_1
    const/4 v1, 0x1

    .line 1782
    .end local v2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1788
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1789
    .local v2, "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 1790
    invoke-interface {v3, v4, p2, p3, v2}, Lcom/sleepycat/je/SecondaryMultiKeyCreator;->createSecondaryKeys(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V

    .line 1791
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1792
    const/4 v1, 0x1

    .line 1796
    .end local v2    # "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_4
    :goto_0
    return v1
.end method

.method public delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 186
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/SecondaryCursor;->checkOpenAndState(Z)V

    .line 188
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryCursor.delete: "

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/je/SecondaryCursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/LockMode;)V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 194
    .local v1, "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 195
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v11, v4

    .line 206
    .local v11, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v4, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 207
    invoke-virtual {v0, v2, v11, v4, v1}, Lcom/sleepycat/je/SecondaryCursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v12

    .line 209
    .local v12, "secResult":Lcom/sleepycat/je/OperationResult;
    if-nez v12, :cond_1

    .line 210
    return-object v3

    .line 213
    :cond_1
    iget-object v4, v0, Lcom/sleepycat/je/SecondaryCursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v13

    .line 214
    .local v13, "locker":Lcom/sleepycat/je/txn/Locker;
    iget-object v4, v0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v4, v11}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v14

    .line 216
    .local v14, "primaryDb":Lcom/sleepycat/je/Database;
    if-nez v14, :cond_2

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryCursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/je/SecondaryCursor;->deleteNoNotify(Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 219
    return-object v12

    .line 223
    :cond_2
    nop

    .line 224
    invoke-virtual {v14, v13, v11, v1}, Lcom/sleepycat/je/Database;->deleteInternal(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v15

    .line 226
    .local v15, "priResult":Lcom/sleepycat/je/OperationResult;
    if-eqz v15, :cond_3

    .line 227
    return-object v15

    .line 231
    :cond_3
    iget-object v4, v0, Lcom/sleepycat/je/SecondaryCursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->isProbablyExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    return-object v3

    .line 235
    :cond_4
    iget-object v4, v0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 236
    invoke-virtual {v12}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v9

    .line 235
    move-object v5, v13

    move-object v6, v14

    move-object v7, v2

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lcom/sleepycat/je/SecondaryDatabase;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v3

    throw v3
.end method

.method public delete()Lcom/sleepycat/je/OperationStatus;
    .locals 2

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/SecondaryCursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 259
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public bridge synthetic dup(Z)Lcom/sleepycat/je/Cursor;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryCursor;->dup(Z)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object p1

    return-object p1
.end method

.method public dup(Z)Lcom/sleepycat/je/SecondaryCursor;
    .locals 1
    .param p1, "samePosition"    # Z

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/SecondaryCursor;->checkOpenAndState(Z)V

    .line 149
    new-instance v0, Lcom/sleepycat/je/SecondaryCursor;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/SecondaryCursor;-><init>(Lcom/sleepycat/je/SecondaryCursor;Z)V

    return-object v0
.end method

.method public dupSecondary(Z)Lcom/sleepycat/je/SecondaryCursor;
    .locals 1
    .param p1, "samePosition"    # Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryCursor;->dup(Z)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "getType"    # Lcom/sleepycat/je/Get;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 520
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryCursor;->checkOpen()V

    .line 522
    if-nez p5, :cond_0

    .line 523
    sget-object v0, Lcom/sleepycat/je/SecondaryCursor;->DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v0

    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "options":Lcom/sleepycat/je/ReadOptions;
    goto :goto_0

    .line 522
    .end local v0    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    :cond_0
    move-object/from16 v8, p5

    .line 526
    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v8, "options":Lcom/sleepycat/je/ReadOptions;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v15

    .line 528
    .local v15, "lockMode":Lcom/sleepycat/je/LockMode;
    sget-object v10, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v11, "SecondaryCursor.get: "

    .line 529
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 528
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/je/SecondaryCursor;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 532
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    move-object v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 535
    .end local v15    # "lockMode":Lcom/sleepycat/je/LockMode;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v8    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    :catch_1
    move-exception v0

    move-object/from16 v8, p5

    .line 536
    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "E":Ljava/lang/Error;
    .restart local v8    # "options":Lcom/sleepycat/je/ReadOptions;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryCursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 537
    throw v0
.end method

.method public get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 338
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 681
    sget-object v4, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    .line 682
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 684
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 637
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryCursor;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/SecondaryDatabase;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    return-object v0
.end method

.method public getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 744
    sget-object v4, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    .line 745
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 744
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 747
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 699
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;
    .locals 17
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "getType"    # Lcom/sleepycat/je/Get;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;
    .param p6, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 558
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p6

    const-string v1, "getType"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    if-nez p3, :cond_0

    .line 561
    sget-object v1, Lcom/sleepycat/je/SecondaryCursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    move-object v11, v1

    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_0

    .line 560
    .end local v1    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_0
    move-object/from16 v11, p3

    .line 564
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .local v11, "data":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/ReadOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v12

    .line 565
    .local v12, "cacheMode":Lcom/sleepycat/je/CacheMode;
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/Get;->getSearchMode()Lcom/sleepycat/je/dbi/SearchMode;

    move-result-object v13

    .line 567
    .local v13, "searchMode":Lcom/sleepycat/je/dbi/SearchMode;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v13, :cond_4

    .line 568
    invoke-virtual {v8, v1}, Lcom/sleepycat/je/SecondaryCursor;->checkState(Z)V

    .line 570
    const-string v1, "key"

    invoke-static {v7, v1, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 571
    invoke-static {v7, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/SearchMode;->isDataSearch()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    if-ne v13, v1, :cond_1

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryCursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 579
    :cond_1
    if-nez v0, :cond_3

    .line 580
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v0, v1

    move-object v14, v0

    .end local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v0, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_2

    .line 576
    .end local v0    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_2
    :goto_1
    const-string v1, "pKey"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 577
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 584
    :cond_3
    move-object v14, v0

    .end local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v14, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move-object/from16 v4, p6

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 587
    .end local v14    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    if-nez v7, :cond_5

    .line 588
    sget-object v3, Lcom/sleepycat/je/SecondaryCursor;->NO_RETURN_DATA:Lcom/sleepycat/je/DatabaseEntry;

    move-object v14, v3

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_3

    .line 587
    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :cond_5
    move-object v14, v7

    .line 590
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v14, "key":Lcom/sleepycat/je/DatabaseEntry;
    :goto_3
    if-nez v0, :cond_6

    .line 591
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v0, v3

    move-object v15, v0

    .end local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v0    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_4

    .line 590
    .end local v0    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_6
    move-object v15, v0

    .line 594
    .end local p2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/Get;->getGetMode()Lcom/sleepycat/je/dbi/GetMode;

    move-result-object v0

    .line 596
    .local v0, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/Get;->getAllowNextPrevUninitialized()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v8, Lcom/sleepycat/je/SecondaryCursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 597
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->isNotInitialized()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 599
    if-eqz v0, :cond_8

    .line 600
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    goto :goto_5

    :cond_7
    sget-object v3, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    .line 601
    .end local p4    # "getType":Lcom/sleepycat/je/Get;
    .local v3, "getType":Lcom/sleepycat/je/Get;
    :goto_5
    const/4 v0, 0x0

    move-object/from16 v16, v0

    move-object v10, v3

    goto :goto_6

    .line 599
    .end local v3    # "getType":Lcom/sleepycat/je/Get;
    .restart local p4    # "getType":Lcom/sleepycat/je/Get;
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 604
    :cond_9
    move-object/from16 v16, v0

    .end local v0    # "getMode":Lcom/sleepycat/je/dbi/GetMode;
    .end local p4    # "getType":Lcom/sleepycat/je/Get;
    .local v10, "getType":Lcom/sleepycat/je/Get;
    .local v16, "getMode":Lcom/sleepycat/je/dbi/GetMode;
    :goto_6
    if-eqz v16, :cond_a

    .line 605
    invoke-virtual {v8, v2}, Lcom/sleepycat/je/SecondaryCursor;->checkState(Z)V

    .line 607
    nop

    .line 609
    invoke-direct {v8, v9, v11}, Lcom/sleepycat/je/SecondaryCursor;->getLockPrimaryOnly(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v7

    .line 607
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, p6

    move-object v5, v12

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 612
    :cond_a
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    if-ne v10, v0, :cond_b

    .line 613
    invoke-virtual {v8, v2}, Lcom/sleepycat/je/SecondaryCursor;->checkState(Z)V

    .line 615
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, p6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->getCurrentInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 618
    :cond_b
    sget-object v0, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    if-eq v10, v0, :cond_d

    sget-object v0, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    if-ne v10, v0, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 619
    :cond_d
    :goto_7
    invoke-virtual {v8, v1}, Lcom/sleepycat/je/SecondaryCursor;->checkState(Z)V

    .line 621
    sget-object v0, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    if-ne v10, v0, :cond_e

    move v6, v2

    goto :goto_8

    :cond_e
    move v6, v1

    .line 623
    :goto_8
    invoke-direct {v8, v9, v11}, Lcom/sleepycat/je/SecondaryCursor;->getLockPrimaryOnly(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v7

    .line 621
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, p6

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;ZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 807
    sget-object v4, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    .line 808
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 807
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 810
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 762
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 876
    sget-object v4, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 877
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 876
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 879
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 825
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 940
    sget-object v4, Lcom/sleepycat/je/Get;->NEXT_DUP:Lcom/sleepycat/je/Get;

    .line 942
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 940
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 944
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 894
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1009
    sget-object v4, Lcom/sleepycat/je/Get;->NEXT_NO_DUP:Lcom/sleepycat/je/Get;

    .line 1011
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1009
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1013
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 959
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1079
    sget-object v4, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    .line 1080
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1079
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1082
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1028
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1143
    sget-object v4, Lcom/sleepycat/je/Get;->PREV_DUP:Lcom/sleepycat/je/Get;

    .line 1145
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1147
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1097
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1212
    sget-object v4, Lcom/sleepycat/je/Get;->PREV_NO_DUP:Lcom/sleepycat/je/Get;

    .line 1214
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1216
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1162
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryCursor;->secondaryDb:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimaryDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1404
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    .line 1406
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1408
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1362
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1470
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

    .line 1472
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1474
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1422
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1276
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 1277
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1276
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1279
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1231
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1344
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    .line 1346
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1344
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1348
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1294
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/SecondaryCursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method isSecondaryCursor()Z
    .locals 1

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "putType"    # Lcom/sleepycat/je/Put;
    .param p4, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 275
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 286
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 318
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public putNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 308
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 297
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .param p5, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p6, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;

    .line 1524
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {v8, v10, v9}, Lcom/sleepycat/je/SecondaryCursor;->getLockPrimaryOnly(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v11

    .line 1526
    .local v11, "lockPrimaryOnly":Z
    if-eqz v11, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_0
    move-object v12, v0

    .line 1529
    .local v12, "searchLockMode":Lcom/sleepycat/je/LockMode;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v13

    .line 1531
    .local v13, "result1":Lcom/sleepycat/je/OperationResult;
    const/4 v14, 0x0

    if-nez v13, :cond_1

    .line 1532
    return-object v14

    .line 1535
    :cond_1
    nop

    .line 1536
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/SecondaryCursor;->isReadUncommittedMode(Lcom/sleepycat/je/LockMode;)Z

    move-result v5

    .line 1535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v11

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->readPrimaryAfterGet(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZLcom/sleepycat/je/OperationResult;)Lcom/sleepycat/je/OperationResult;

    move-result-object v15

    .line 1539
    .local v15, "result2":Lcom/sleepycat/je/OperationResult;
    if-eqz v15, :cond_2

    .line 1540
    return-object v15

    .line 1544
    :cond_2
    sget-object v0, Lcom/sleepycat/je/SecondaryCursor$1;->$SwitchMap$com$sleepycat$je$dbi$SearchMode:[I

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/SearchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1560
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1556
    :pswitch_0
    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 1551
    :pswitch_1
    sget-object v6, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 1547
    :pswitch_2
    return-object v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
