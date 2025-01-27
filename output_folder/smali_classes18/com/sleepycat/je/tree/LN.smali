.class public Lcom/sleepycat/je/tree/LN;
.super Lcom/sleepycat/je/tree/Node;
.source "LN.java"

# interfaces
.implements Lcom/sleepycat/je/log/VersionedWriteLoggable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_TAG:Ljava/lang/String; = "<ln>"

.field private static final CLEAR_DIRTY_BIT:I = 0x7fffffff

.field private static final DIRTY_BIT:I = -0x80000000

.field private static final END_TAG:Ljava/lang/String; = "</ln>"

.field private static final FETCHED_COLD_BIT:I = 0x40000000

.field private static final LAST_FORMAT_CHANGE:I = 0x8


# instance fields
.field private data:[B

.field private flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 7
    .param p1, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 127
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    .line 129
    .local v6, "dat":[B
    if-nez v6, :cond_0

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    nop

    .line 133
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    .line 134
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    add-int v3, v0, v1

    .line 135
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v4

    .line 136
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    .line 132
    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/LN;->init([BIIII)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    invoke-direct {p0, v6, v0, v1}, Lcom/sleepycat/je/tree/LN;->init([BII)V

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->setDirty()V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;
    .param p2, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 146
    invoke-direct {p0, p2}, Lcom/sleepycat/je/tree/LN;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 147
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 111
    invoke-direct {p0}, Lcom/sleepycat/je/tree/Node;-><init>()V

    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    goto :goto_0

    .line 115
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    goto :goto_0

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->setDirty()V

    .line 122
    return-void
.end method

.method private assignTransientLsn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;JLcom/sleepycat/je/txn/Locker;)J
    .locals 8
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "oldLsn"    # J
    .param p5, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 866
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 867
    move-wide v0, p3

    .local v0, "newLsn":J
    goto :goto_0

    .line 869
    .end local v0    # "newLsn":J
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextTransientLsn()J

    move-result-wide v0

    .line 876
    .restart local v0    # "newLsn":J
    :goto_0
    if-eqz p5, :cond_2

    .line 877
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    const/4 v6, 0x0

    move-object v2, p5

    move-wide v3, v0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/txn/Locker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v2

    .line 880
    .local v2, "lockResult":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    .line 881
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 884
    .end local v2    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    :cond_2
    :goto_1
    return-wide v0
.end method

.method private calcLogSize(I)I
    .locals 2
    .param p1, "dataLen"    # I

    .line 922
    const/4 v0, 0x0

    .line 924
    .local v0, "size":I
    if-gez p1, :cond_0

    .line 925
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 927
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 928
    add-int/2addr v0, p1

    .line 931
    :goto_0
    return v0
.end method

.method public static copyEntryData(Lcom/sleepycat/je/DatabaseEntry;)[B
    .locals 5
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1115
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    .line 1117
    .local v0, "len":I
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    .line 1119
    .local v1, "newData":[B
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    return-object v1

    .line 1115
    .end local v0    # "len":I
    .end local v1    # "newData":[B
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private init([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 159
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/LN;->init([BIIII)V

    .line 160
    return-void
.end method

.method private init([BIIII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "doff"    # I
    .param p5, "dlen"    # I

    .line 150
    if-nez p3, :cond_0

    .line 151
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    goto :goto_0

    .line 153
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 154
    invoke-static {p1, p2, v0, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :goto_0
    return-void
.end method

.method private logInternal(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;
    .locals 37
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "writeLockInfo"    # Lcom/sleepycat/je/txn/WriteLockInfo;
    .param p5, "newEmbeddedLN"    # Z
    .param p6, "newKey"    # [B
    .param p7, "newExpiration"    # I
    .param p8, "newExpirationInHours"    # Z
    .param p9, "currEmbeddedLN"    # Z
    .param p10, "currLsn"    # J
    .param p12, "currSize"    # I
    .param p13, "isInsertion"    # Z
    .param p14, "backgroundIO"    # Z
    .param p15, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 530
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p4

    move/from16 v10, p5

    move-wide/from16 v8, p10

    move/from16 v11, p12

    move/from16 v7, p13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/tree/LN;

    if-eq v0, v1, :cond_1

    .line 531
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/tree/VersionedLN;

    if-eq v0, v1, :cond_1

    if-nez v10, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 534
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isMixedReplication()Z

    move-result v22

    .line 573
    .local v22, "isMixedRepDB":Z
    if-nez v22, :cond_3

    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 576
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Rep txn used to write to non-rep DB"

    goto :goto_1

    :cond_2
    const-string v1, "Non-rep txn used to write to rep DB"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txnId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 592
    :cond_3
    const/4 v0, 0x1

    if-nez v22, :cond_7

    .line 594
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 596
    .local v2, "isRepLocker":Z
    :goto_2
    invoke-virtual/range {p15 .. p15}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v3

    if-eq v3, v2, :cond_7

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    const-string v1, "Rep txn used to write outside of rep stream"

    goto :goto_3

    :cond_5
    const-string v1, "Non-rep txn used to write in rep stream"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", class = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", txnId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 603
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    const-string v1, ", null locker"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 605
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 610
    .end local v2    # "isRepLocker":Z
    :cond_7
    const/4 v2, 0x0

    .line 611
    .local v2, "txn":Lcom/sleepycat/je/txn/Txn;
    const-wide/16 v3, -0x1

    .line 612
    .local v3, "abortLsn":J
    const/4 v5, 0x0

    .line 613
    .local v5, "abortKD":Z
    const/4 v6, 0x0

    .line 614
    .local v6, "abortKey":[B
    const/16 v16, 0x0

    .line 615
    .local v16, "abortData":[B
    const-wide/16 v17, -0x1

    .line 616
    .local v17, "abortVLSN":J
    const/16 v19, 0x0

    .line 617
    .local v19, "abortExpiration":I
    const/16 v20, 0x0

    .line 619
    .local v20, "abortExpirationInHours":Z
    new-instance v21, Lcom/sleepycat/je/log/LogParams;

    invoke-direct/range {v21 .. v21}, Lcom/sleepycat/je/log/LogParams;-><init>()V

    move-object/from16 v23, v21

    .line 621
    .local v23, "params":Lcom/sleepycat/je/log/LogParams;
    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 623
    invoke-virtual {v15, v7, v0, v13}, Lcom/sleepycat/je/tree/LN;->getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v21

    .line 625
    .local v21, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_8

    .line 628
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortLsn()J

    move-result-wide v3

    .line 629
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortKnownDeleted()Z

    move-result v5

    .line 630
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortKey()[B

    move-result-object v6

    .line 631
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortData()[B

    move-result-object v16

    .line 632
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortVLSN()J

    move-result-wide v17

    .line 633
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortExpiration()I

    move-result v19

    .line 634
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/txn/WriteLockInfo;->isAbortExpirationInHours()Z

    move-result v20

    .line 636
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isRolledBack()Z

    move-result v0

    move-object/from16 v1, v23

    .end local v23    # "params":Lcom/sleepycat/je/log/LogParams;
    .local v1, "params":Lcom/sleepycat/je/log/LogParams;
    iput-boolean v0, v1, Lcom/sleepycat/je/log/LogParams;->obsoleteDupsAllowed:Z

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v16

    move-wide/from16 v30, v17

    move/from16 v32, v19

    move/from16 v33, v20

    move-object/from16 v34, v21

    const/4 v0, 0x0

    goto :goto_5

    .line 626
    .end local v1    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v23    # "params":Lcom/sleepycat/je/log/LogParams;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 621
    .end local v21    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_9
    move-object/from16 v1, v23

    .line 639
    .end local v23    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v1    # "params":Lcom/sleepycat/je/log/LogParams;
    const/4 v0, 0x0

    invoke-virtual {v15, v7, v0, v13}, Lcom/sleepycat/je/tree/LN;->getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v21

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v16

    move-wide/from16 v30, v17

    move/from16 v32, v19

    move/from16 v33, v20

    move-object/from16 v34, v21

    .line 649
    .end local v2    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v3    # "abortLsn":J
    .end local v5    # "abortKD":Z
    .end local v6    # "abortKey":[B
    .end local v16    # "abortData":[B
    .end local v17    # "abortVLSN":J
    .end local v19    # "abortExpiration":I
    .end local v20    # "abortExpirationInHours":Z
    .local v23, "txn":Lcom/sleepycat/je/txn/Txn;
    .local v25, "abortLsn":J
    .local v27, "abortKD":Z
    .local v28, "abortKey":[B
    .local v29, "abortData":[B
    .local v30, "abortVLSN":J
    .local v32, "abortExpiration":I
    .local v33, "abortExpirationInHours":Z
    .local v34, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :goto_5
    nop

    .line 650
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v7, :cond_b

    if-eqz p9, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v24, v0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v24, 0x1

    .line 654
    .local v24, "currImmediatelyObsolete":Z
    :goto_7
    if-eqz v24, :cond_c

    goto :goto_8

    :cond_c
    move v0, v11

    :goto_8
    move/from16 v35, v0

    .line 655
    .local v35, "priorSize":I
    if-nez v35, :cond_d

    const-wide/16 v2, -0x1

    move-wide/from16 v19, v2

    goto :goto_9

    :cond_d
    move-wide/from16 v19, v8

    .line 662
    .local v19, "priorLsn":J
    :goto_9
    move-object v5, v1

    .end local v1    # "params":Lcom/sleepycat/je/log/LogParams;
    .local v5, "params":Lcom/sleepycat/je/log/LogParams;
    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, p2

    move-object/from16 v4, v23

    move-object/from16 v36, v5

    .end local v5    # "params":Lcom/sleepycat/je/log/LogParams;
    .local v36, "params":Lcom/sleepycat/je/log/LogParams;
    move-wide/from16 v5, v25

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-wide/from16 v10, v30

    move/from16 v12, v32

    move/from16 v13, v33

    move-object/from16 v14, p6

    move/from16 v15, p5

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, v35

    move-object/from16 v21, p15

    invoke-virtual/range {v1 .. v21}, Lcom/sleepycat/je/tree/LN;->createLogEntry(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BZIZIJLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v0

    move-object/from16 v7, v36

    .end local v36    # "params":Lcom/sleepycat/je/log/LogParams;
    .local v7, "params":Lcom/sleepycat/je/log/LogParams;
    iput-object v0, v7, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 675
    nop

    .line 676
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    goto :goto_a

    :cond_e
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    :goto_a
    iput-object v0, v7, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 685
    move-wide/from16 v8, p10

    cmp-long v0, v8, v25

    if-eqz v0, :cond_f

    if-nez v24, :cond_f

    .line 686
    iput-wide v8, v7, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    .line 687
    move/from16 v10, p12

    iput v10, v7, Lcom/sleepycat/je/log/LogParams;->oldSize:I

    goto :goto_b

    .line 685
    :cond_f
    move/from16 v10, p12

    .line 690
    :goto_b
    move-object/from16 v11, p15

    iput-object v11, v7, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 691
    move/from16 v12, p14

    iput-boolean v12, v7, Lcom/sleepycat/je/log/LogParams;->backgroundIO:Z

    .line 692
    move-object/from16 v13, p2

    iput-object v13, v7, Lcom/sleepycat/je/log/LogParams;->nodeDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 695
    if-eqz v23, :cond_10

    cmp-long v0, v8, v25

    if-nez v0, :cond_10

    .line 696
    move-object/from16 v14, p4

    invoke-virtual {v14, v10}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortLogSize(I)V

    goto :goto_c

    .line 695
    :cond_10
    move-object/from16 v14, p4

    .line 701
    :goto_c
    if-eqz v23, :cond_11

    .line 708
    :try_start_0
    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 709
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0

    .line 710
    .local v0, "item":Lcom/sleepycat/je/log/LogItem;
    monitor-exit v23

    goto :goto_d

    .end local v0    # "item":Lcom/sleepycat/je/log/LogItem;
    :catchall_0
    move-exception v0

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v19    # "priorLsn":J
    .end local v22    # "isMixedRepDB":Z
    .end local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v24    # "currImmediatelyObsolete":Z
    .end local v25    # "abortLsn":J
    .end local v27    # "abortKD":Z
    .end local v28    # "abortKey":[B
    .end local v29    # "abortData":[B
    .end local v30    # "abortVLSN":J
    .end local v32    # "abortExpiration":I
    .end local v33    # "abortExpirationInHours":Z
    .end local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v35    # "priorSize":I
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local p5    # "newEmbeddedLN":Z
    .end local p6    # "newKey":[B
    .end local p7    # "newExpiration":I
    .end local p8    # "newExpirationInHours":Z
    .end local p9    # "currEmbeddedLN":Z
    .end local p10    # "currLsn":J
    .end local p12    # "currSize":I
    .end local p13    # "isInsertion":Z
    .end local p14    # "backgroundIO":Z
    .end local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :try_start_2
    throw v0

    .line 712
    .restart local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v19    # "priorLsn":J
    .restart local v22    # "isMixedRepDB":Z
    .restart local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v24    # "currImmediatelyObsolete":Z
    .restart local v25    # "abortLsn":J
    .restart local v27    # "abortKD":Z
    .restart local v28    # "abortKey":[B
    .restart local v29    # "abortData":[B
    .restart local v30    # "abortVLSN":J
    .restart local v32    # "abortExpiration":I
    .restart local v33    # "abortExpirationInHours":Z
    .restart local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v35    # "priorSize":I
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .restart local p5    # "newEmbeddedLN":Z
    .restart local p6    # "newKey":[B
    .restart local p7    # "newExpiration":I
    .restart local p8    # "newExpirationInHours":Z
    .restart local p9    # "currEmbeddedLN":Z
    .restart local p10    # "currLsn":J
    .restart local p12    # "currSize":I
    .restart local p13    # "isInsertion":Z
    .restart local p14    # "backgroundIO":Z
    .restart local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/LogParams;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 733
    .restart local v0    # "item":Lcom/sleepycat/je/log/LogItem;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/LN;->clearDirty()V

    .line 734
    nop

    .line 745
    if-eqz p3, :cond_13

    .line 746
    iget-wide v5, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 748
    .local v5, "newLsn":J
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    const/4 v15, 0x0

    move-object/from16 v1, p3

    move-wide v2, v5

    move-wide/from16 v16, v5

    .end local v5    # "newLsn":J
    .local v16, "newLsn":J
    move v5, v15

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/Locker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v1

    .line 751
    .local v1, "lockResult":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v2, v3, :cond_12

    .line 754
    invoke-virtual {v1, v14}, Lcom/sleepycat/je/txn/LockResult;->copyWriteLockInfo(Lcom/sleepycat/je/txn/WriteLockInfo;)V

    goto :goto_e

    .line 751
    :cond_12
    new-instance v2, Ljava/lang/AssertionError;

    .line 752
    invoke-static/range {v16 .. v17}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 758
    .end local v1    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    .end local v16    # "newLsn":J
    :cond_13
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_17

    move/from16 v1, p5

    if-nez v1, :cond_15

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/sleepycat/je/tree/LN;->data:[B

    if-eqz v3, :cond_14

    array-length v3, v3

    if-gtz v3, :cond_16

    :cond_14
    move-object/from16 v4, p1

    goto :goto_f

    :cond_15
    move-object/from16 v2, p0

    .line 761
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[#25288] emb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 764
    invoke-static/range {p6 .. p6}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 765
    invoke-static {v4}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vlsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 766
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 767
    invoke-static/range {p10 .. p11}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 761
    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 758
    :cond_17
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v1, p5

    .line 770
    :goto_f
    return-object v0

    .line 714
    .end local v0    # "item":Lcom/sleepycat/je/log/LogItem;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v1, p5

    .line 720
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 721
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "LN could not be logged"

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v19    # "priorLsn":J
    .end local v22    # "isMixedRepDB":Z
    .end local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v24    # "currImmediatelyObsolete":Z
    .end local v25    # "abortLsn":J
    .end local v27    # "abortKD":Z
    .end local v28    # "abortKey":[B
    .end local v29    # "abortData":[B
    .end local v30    # "abortVLSN":J
    .end local v32    # "abortExpiration":I
    .end local v33    # "abortExpirationInHours":Z
    .end local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v35    # "priorSize":I
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local p5    # "newEmbeddedLN":Z
    .end local p6    # "newKey":[B
    .end local p7    # "newExpiration":I
    .end local p8    # "newExpirationInHours":Z
    .end local p9    # "currEmbeddedLN":Z
    .end local p10    # "currLsn":J
    .end local p12    # "currSize":I
    .end local p13    # "isInsertion":Z
    .end local p14    # "backgroundIO":Z
    .end local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    throw v3

    .line 725
    .restart local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v19    # "priorLsn":J
    .restart local v22    # "isMixedRepDB":Z
    .restart local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v24    # "currImmediatelyObsolete":Z
    .restart local v25    # "abortLsn":J
    .restart local v27    # "abortKD":Z
    .restart local v28    # "abortKey":[B
    .restart local v29    # "abortData":[B
    .restart local v30    # "abortVLSN":J
    .restart local v32    # "abortExpiration":I
    .restart local v33    # "abortExpirationInHours":Z
    .restart local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v35    # "priorSize":I
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .restart local p5    # "newEmbeddedLN":Z
    .restart local p6    # "newKey":[B
    .restart local p7    # "newExpiration":I
    .restart local p8    # "newExpirationInHours":Z
    .restart local p9    # "currEmbeddedLN":Z
    .restart local p10    # "currLsn":J
    .restart local p12    # "currSize":I
    .restart local p13    # "isInsertion":Z
    .restart local p14    # "backgroundIO":Z
    .restart local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :cond_18
    nop

    .end local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v19    # "priorLsn":J
    .end local v22    # "isMixedRepDB":Z
    .end local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v24    # "currImmediatelyObsolete":Z
    .end local v25    # "abortLsn":J
    .end local v27    # "abortKD":Z
    .end local v28    # "abortKey":[B
    .end local v29    # "abortData":[B
    .end local v30    # "abortVLSN":J
    .end local v32    # "abortExpiration":I
    .end local v33    # "abortExpirationInHours":Z
    .end local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v35    # "priorSize":I
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local p5    # "newEmbeddedLN":Z
    .end local p6    # "newKey":[B
    .end local p7    # "newExpiration":I
    .end local p8    # "newExpirationInHours":Z
    .end local p9    # "currEmbeddedLN":Z
    .end local p10    # "currLsn":J
    .end local p12    # "currSize":I
    .end local p13    # "isInsertion":Z
    .end local p14    # "backgroundIO":Z
    .end local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 733
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .restart local v19    # "priorLsn":J
    .restart local v22    # "isMixedRepDB":Z
    .restart local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v24    # "currImmediatelyObsolete":Z
    .restart local v25    # "abortLsn":J
    .restart local v27    # "abortKD":Z
    .restart local v28    # "abortKey":[B
    .restart local v29    # "abortData":[B
    .restart local v30    # "abortVLSN":J
    .restart local v32    # "abortExpiration":I
    .restart local v33    # "abortExpirationInHours":Z
    .restart local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .restart local v35    # "priorSize":I
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "writeLockInfo":Lcom/sleepycat/je/txn/WriteLockInfo;
    .restart local p5    # "newEmbeddedLN":Z
    .restart local p6    # "newKey":[B
    .restart local p7    # "newExpiration":I
    .restart local p8    # "newExpirationInHours":Z
    .restart local p9    # "currEmbeddedLN":Z
    .restart local p10    # "currLsn":J
    .restart local p12    # "currSize":I
    .restart local p13    # "isInsertion":Z
    .restart local p14    # "backgroundIO":Z
    .restart local p15    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :catchall_2
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/LN;->clearDirty()V

    throw v0

    .line 536
    .end local v7    # "params":Lcom/sleepycat/je/log/LogParams;
    .end local v19    # "priorLsn":J
    .end local v22    # "isMixedRepDB":Z
    .end local v23    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v24    # "currImmediatelyObsolete":Z
    .end local v25    # "abortLsn":J
    .end local v27    # "abortKD":Z
    .end local v28    # "abortKey":[B
    .end local v29    # "abortData":[B
    .end local v30    # "abortVLSN":J
    .end local v32    # "abortExpiration":I
    .end local v33    # "abortExpirationInHours":Z
    .end local v34    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v35    # "priorSize":I
    :cond_19
    move v1, v10

    move v10, v11

    move-object v4, v14

    move-object v2, v15

    move-object/from16 v11, p15

    move-object v14, v12

    move/from16 v12, p14

    const-string v0, "Cannot log LNs in read-only env."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 101
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/sleepycat/je/tree/VersionedLN;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/tree/VersionedLN;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/LN;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/tree/LN;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    return-object v0
.end method

.method public static makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "dataParam"    # [B

    .line 91
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/sleepycat/je/tree/VersionedLN;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/tree/VersionedLN;-><init>([B)V

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/LN;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    return-object v0
.end method

.method public static resolvePartialEntry(Lcom/sleepycat/je/DatabaseEntry;[B)[B
    .locals 10
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "foundDataBytes"    # [B

    .line 1130
    if-eqz p1, :cond_5

    .line 1131
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v0

    .line 1132
    .local v0, "dlen":I
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v1

    .line 1133
    .local v1, "doff":I
    array-length v2, p1

    .line 1134
    .local v2, "origlen":I
    add-int v3, v1, v0

    if-le v3, v2, :cond_0

    add-int v3, v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1135
    .local v3, "oldlen":I
    :goto_0
    sub-int v4, v3, v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 1138
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 1139
    sget-object v5, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .local v5, "newData":[B
    goto :goto_1

    .line 1141
    .end local v5    # "newData":[B
    :cond_1
    new-array v5, v4, [B

    .line 1143
    .restart local v5    # "newData":[B
    :goto_1
    const/4 v6, 0x0

    .line 1146
    .local v6, "pos":I
    if-ge v1, v2, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    .line 1147
    .local v7, "slicelen":I
    :goto_2
    if-lez v7, :cond_3

    .line 1148
    const/4 v8, 0x0

    invoke-static {p1, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1150
    :cond_3
    add-int/2addr v6, v1

    .line 1153
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v7

    .line 1154
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v9

    invoke-static {v8, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    add-int/2addr v6, v7

    .line 1159
    add-int v8, v1, v0

    sub-int v7, v2, v8

    .line 1160
    if-lez v7, :cond_4

    .line 1161
    add-int v8, v1, v0

    invoke-static {p1, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1165
    :cond_4
    return-object v5

    .line 1130
    .end local v0    # "dlen":I
    .end local v1    # "doff":I
    .end local v2    # "origlen":I
    .end local v3    # "oldlen":I
    .end local v4    # "len":I
    .end local v5    # "newData":[B
    .end local v6    # "pos":I
    .end local v7    # "slicelen":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static setEntry(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 7
    .param p0, "dest"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "src"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1084
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1085
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 1086
    .local v0, "srcBytes":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v2

    .line 1087
    .local v2, "partial":Z
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1088
    .local v3, "off":I
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v4

    goto :goto_1

    :cond_1
    array-length v4, v0

    .line 1089
    .local v4, "len":I
    :goto_1
    add-int v5, v3, v4

    array-length v6, v0

    if-le v5, v6, :cond_3

    .line 1090
    array-length v5, v0

    if-le v3, v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    array-length v5, v0

    sub-int/2addr v5, v3

    :goto_2
    move v4, v5

    .line 1094
    :cond_3
    if-nez v4, :cond_4

    .line 1095
    sget-object v5, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .local v5, "newdata":[B
    goto :goto_3

    .line 1097
    .end local v5    # "newdata":[B
    :cond_4
    new-array v5, v4, [B

    .line 1098
    .restart local v5    # "newdata":[B
    invoke-static {v0, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    :goto_3
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1101
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 1102
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/DatabaseEntry;->setSize(I)V

    .line 1103
    .end local v0    # "srcBytes":[B
    .end local v2    # "partial":Z
    .end local v3    # "off":I
    .end local v4    # "len":I
    .end local v5    # "newdata":[B
    goto :goto_4

    .line 1104
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1105
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 1106
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setSize(I)V

    .line 1108
    :goto_4
    return-void
.end method

.method public static setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V
    .locals 6
    .param p0, "dest"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "bytes"    # [B

    .line 1052
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1053
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v1

    .line 1054
    .local v1, "partial":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialOffset()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1055
    .local v2, "off":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v3

    goto :goto_1

    :cond_1
    array-length v3, p1

    .line 1056
    .local v3, "len":I
    :goto_1
    add-int v4, v2, v3

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 1057
    array-length v4, p1

    if-le v2, v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    array-length v4, p1

    sub-int/2addr v4, v2

    :goto_2
    move v3, v4

    .line 1061
    :cond_3
    if-nez v3, :cond_4

    .line 1062
    sget-object v4, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .local v4, "newdata":[B
    goto :goto_3

    .line 1064
    .end local v4    # "newdata":[B
    :cond_4
    new-array v4, v3, [B

    .line 1065
    .restart local v4    # "newdata":[B
    invoke-static {p1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1067
    :goto_3
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1068
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 1069
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/DatabaseEntry;->setSize(I)V

    .line 1070
    .end local v1    # "partial":Z
    .end local v2    # "off":I
    .end local v3    # "len":I
    .end local v4    # "newdata":[B
    goto :goto_4

    .line 1071
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1072
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 1073
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseEntry;->setSize(I)V

    .line 1075
    :goto_4
    return-void
.end method


# virtual methods
.method public addExtraMarshaledMemorySize(Lcom/sleepycat/je/tree/BIN;)V
    .locals 0
    .param p1, "parentBIN"    # Lcom/sleepycat/je/tree/BIN;

    .line 1027
    return-void
.end method

.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 315
    const-string v0, "<ln>"

    return-object v0
.end method

.method public clearDirty()V
    .locals 2

    .line 188
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    .line 189
    return-void
.end method

.method createLogEntry(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BZIZIJLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/entry/LNLogEntry;
    .locals 22
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p4, "abortLsn"    # J
    .param p6, "abortKD"    # Z
    .param p7, "abortKey"    # [B
    .param p8, "abortData"    # [B
    .param p9, "abortVLSN"    # J
    .param p11, "abortExpiration"    # I
    .param p12, "abortExpirationInHours"    # Z
    .param p13, "newKey"    # [B
    .param p14, "newEmbeddedLN"    # Z
    .param p15, "newExpiration"    # I
    .param p16, "newExpirationInHours"    # Z
    .param p17, "priorSize"    # I
    .param p18, "priorLsn"    # J
    .param p20, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/txn/Txn;",
            "JZ[B[BJIZ[BZIZIJ",
            "Lcom/sleepycat/je/log/ReplicationContext;",
            ")",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-wide/from16 v19, p18

    .line 796
    new-instance v21, Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-object/from16 v0, v21

    .line 797
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-direct/range {v0 .. v20}, Lcom/sleepycat/je/log/entry/LNLogEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BLcom/sleepycat/je/tree/LN;ZIZIJ)V

    .line 796
    return-object v21
.end method

.method public delete()V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->makeDeleted()V

    .line 268
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->setDirty()V

    .line 269
    return-void
.end method

.method public dumpKey(Ljava/lang/StringBuilder;[B)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # [B

    .line 1011
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    return-void
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 993
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->beginTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    if-eqz v0, :cond_1

    .line 996
    const-string v0, "<data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    if-eqz p2, :cond_0

    .line 998
    sget-object v0, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    iget-object v1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType;->dumpByteArray([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1000
    :cond_0
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :goto_0
    const-string v0, "</data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpLogAdditional(Ljava/lang/StringBuilder;Z)V

    .line 1007
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->endTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    return-void
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;Z)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 1020
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "self":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    if-eqz p2, :cond_0

    .line 326
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->beginTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    invoke-super {p0, v2, v3}, Lcom/sleepycat/je/tree/Node;->dumpString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    iget-object v2, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    if-eqz v2, :cond_1

    .line 334
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v2, "<data>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    sget-object v2, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    iget-object v3, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/Key$DumpType;->dumpByteArray([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "</data>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_1
    if-eqz p2, :cond_2

    .line 341
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->endTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 319
    const-string v0, "</ln>"

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

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

    .line 897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFetchedCold()Z
    .locals 2

    .line 192
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 3

    .line 817
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/tree/LN;->getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 892
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize()I
    .locals 2

    .line 902
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/LN;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 1
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 913
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    array-length v0, v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/LN;->calcLogSize(I)I

    move-result v0

    return v0
.end method

.method protected getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isInsert"    # Z
    .param p2, "isTransactional"    # Z
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 825
    if-eqz p3, :cond_0

    .line 826
    invoke-virtual {p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/DbType;->getLogType(Z)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 827
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    if-eqz v0, :cond_0

    .line 828
    return-object v0

    .line 832
    .end local v0    # "type":Lcom/sleepycat/je/log/LogEntryType;
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    if-nez p1, :cond_2

    .line 834
    if-eqz p2, :cond_1

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_LN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_0
    return-object v0

    .line 833
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 839
    :cond_3
    if-eqz p1, :cond_5

    .line 840
    if-eqz p2, :cond_4

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_1
    return-object v0

    .line 845
    :cond_5
    if-eqz p2, :cond_6

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_UPD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_UPD_LN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_2
    return-object v0
.end method

.method public getMemorySizeIncludedByParent()J
    .locals 3

    .line 303
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_OVERHEAD:I

    .line 304
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    if-eqz v1, :cond_0

    .line 305
    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_0
    int-to-long v1, v0

    return-wide v1
.end method

.method public getVLSNSequence()J
    .locals 2

    .line 224
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 970
    const/4 v0, 0x0

    return v0
.end method

.method incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "isMiss"    # Z

    .line 809
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/evictor/Evictor;->incLNFetchStats(Z)V

    .line 810
    return-void
.end method

.method public isDeleted()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirty()Z
    .locals 2

    .line 180
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEvictable(J)Z
    .locals 1
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public isLN()Z
    .locals 1

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method isValidForDelete()Z
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public log(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "writeLockInfo"    # Lcom/sleepycat/je/txn/WriteLockInfo;
    .param p5, "newEmbeddedLN"    # Z
    .param p6, "newKey"    # [B
    .param p7, "newExpiration"    # I
    .param p8, "newExpirationInHours"    # Z
    .param p9, "currEmbeddedLN"    # Z
    .param p10, "currLsn"    # J
    .param p12, "currSize"    # I
    .param p13, "isInsertion"    # Z
    .param p14, "backgroundIO"    # Z
    .param p15, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 432
    invoke-direct/range {p0 .. p15}, Lcom/sleepycat/je/tree/LN;->logInternal(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 982
    instance-of v0, p1, Lcom/sleepycat/je/tree/LN;

    if-nez v0, :cond_0

    .line 983
    const/4 v0, 0x0

    return v0

    .line 986
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 988
    .local v0, "otherLN":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method makeDeleted()V
    .locals 1

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 177
    return-void
.end method

.method public modify([B)V
    .locals 0
    .param p1, "newData"    # [B

    .line 272
    iput-object p1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 273
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->setDirty()V

    .line 274
    return-void
.end method

.method public optionalLog(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;
    .locals 17
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "writeLockInfo"    # Lcom/sleepycat/je/txn/WriteLockInfo;
    .param p5, "newEmbeddedLN"    # Z
    .param p6, "newKey"    # [B
    .param p7, "newExpiration"    # I
    .param p8, "newExpirationInHours"    # Z
    .param p9, "currEmbeddedLN"    # Z
    .param p10, "currLsn"    # J
    .param p12, "currSize"    # I
    .param p13, "isInsertion"    # Z
    .param p14, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 397
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, p5

    move/from16 v15, p9

    if-ne v15, v0, :cond_1

    .line 398
    new-instance v1, Lcom/sleepycat/je/log/LogItem;

    invoke-direct {v1}, Lcom/sleepycat/je/log/LogItem;-><init>()V

    .line 399
    .local v1, "item":Lcom/sleepycat/je/log/LogItem;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p10

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/tree/LN;->assignTransientLsn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;JLcom/sleepycat/je/txn/Locker;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 400
    const/4 v2, -0x1

    iput v2, v1, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 401
    return-object v1

    .line 397
    .end local v1    # "item":Lcom/sleepycat/je/log/LogItem;
    :cond_0
    move/from16 v0, p5

    move/from16 v15, p9

    .line 403
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, v16

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/sleepycat/je/tree/LN;->logInternal(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v1

    return-object v1
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "sourceLsn"    # J

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/Node;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/LN;->setFetchedCold(Z)V

    .line 212
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 950
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-ge p2, v3, :cond_1

    .line 952
    if-ge p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    .line 955
    :cond_1
    if-ge p2, v2, :cond_3

    .line 956
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 957
    .local v1, "dataExists":Z
    if-eqz v1, :cond_2

    .line 958
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 960
    .end local v1    # "dataExists":Z
    :cond_2
    goto :goto_1

    .line 961
    :cond_3
    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 962
    .local v0, "size":I
    if-ltz v0, :cond_4

    .line 963
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readBytesNoLength(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 966
    .end local v0    # "size":I
    :cond_4
    :goto_1
    return-void
.end method

.method rebuildINList(Lcom/sleepycat/je/dbi/INList;)V
    .locals 0
    .param p1, "inList"    # Lcom/sleepycat/je/dbi/INList;

    .line 295
    return-void
.end method

.method public setDirty()V
    .locals 2

    .line 184
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    .line 185
    return-void
.end method

.method public setEmpty()[B
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 282
    .local v0, "retVal":[B
    sget-object v1, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    iput-object v1, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    .line 283
    return-object v0
.end method

.method public setEntry(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1038
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    array-length v1, v0

    .line 1040
    .local v1, "len":I
    new-array v2, v1, [B

    .line 1041
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1043
    return-void

    .line 1038
    .end local v1    # "len":I
    .end local v2    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setFetchedCold(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    goto :goto_0

    .line 199
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/LN;->flags:I

    .line 201
    :goto_0
    return-void
.end method

.method public setVLSNSequence(J)V
    .locals 0
    .param p1, "seq"    # J

    .line 239
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 907
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/LN;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 909
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 939
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 943
    iget-object v0, p0, Lcom/sleepycat/je/tree/LN;->data:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeBytesNoLength(Ljava/nio/ByteBuffer;[B)V

    .line 945
    :goto_0
    return-void
.end method
