.class public Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
.super Ljava/lang/Object;
.source "CursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/CursorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockStanding"
.end annotation


# instance fields
.field private defunct:Z

.field private lockResult:Lcom/sleepycat/je/txn/LockResult;

.field private lsn:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    .line 3307
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lsn:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .param p1, "x1"    # J

    .line 3307
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lsn:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)Lcom/sleepycat/je/txn/LockResult;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    .line 3307
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lockResult:Lcom/sleepycat/je/txn/LockResult;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/txn/LockResult;)Lcom/sleepycat/je/txn/LockResult;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .param p1, "x1"    # Lcom/sleepycat/je/txn/LockResult;

    .line 3307
    iput-object p1, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lockResult:Lcom/sleepycat/je/txn/LockResult;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .param p1, "x1"    # Z

    .line 3307
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->defunct:Z

    return p1
.end method

.method static prepareForInsert(Lcom/sleepycat/je/tree/BIN;)Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 2
    .param p0, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 3389
    new-instance v0, Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-direct {v0}, Lcom/sleepycat/je/txn/WriteLockInfo;-><init>()V

    .line 3390
    .local v0, "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/WriteLockInfo;->setDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3391
    return-object v0
.end method


# virtual methods
.method prepareForUpdate(Lcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 21
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "idx"    # I

    .line 3341
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v12

    .line 3342
    .local v12, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v13, v1

    .line 3343
    .local v13, "abortKD":Z
    const/4 v1, 0x0

    .line 3344
    .local v1, "abortKey":[B
    const/4 v2, 0x0

    .line 3345
    .local v2, "abortData":[B
    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    .line 3346
    .local v3, "abortVLSN":J
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v14

    .line 3347
    .local v14, "abortExpiration":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v15

    .line 3349
    .local v15, "abortExpirationInHours":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 3351
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v2

    .line 3353
    const/4 v5, 0x0

    move-object/from16 v11, p1

    move/from16 v10, p2

    invoke-virtual {v11, v10, v5, v6}, Lcom/sleepycat/je/tree/BIN;->getVLSN(IZLcom/sleepycat/je/CacheMode;)J

    move-result-wide v3

    .line 3356
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowsKeyUpdates()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3357
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v1

    move-object v9, v1

    move-object v7, v2

    move-wide v4, v3

    goto :goto_0

    .line 3356
    :cond_0
    move-object v9, v1

    move-object v7, v2

    move-wide v4, v3

    goto :goto_0

    .line 3349
    :cond_1
    move-object/from16 v11, p1

    move/from16 v10, p2

    move-object v9, v1

    move-object v7, v2

    move-wide v4, v3

    .line 3361
    .end local v1    # "abortKey":[B
    .end local v2    # "abortData":[B
    .end local v3    # "abortVLSN":J
    .local v4, "abortVLSN":J
    .local v7, "abortData":[B
    .local v9, "abortKey":[B
    :goto_0
    iget-object v1, v0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lockResult:Lcom/sleepycat/je/txn/LockResult;

    if-nez v1, :cond_2

    goto :goto_1

    .line 3363
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockResult;->getWriteLockInfo()Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v6

    :goto_1
    move-object/from16 v16, v6

    .line 3364
    .local v16, "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    if-nez v16, :cond_3

    .line 3365
    new-instance v1, Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-direct {v1}, Lcom/sleepycat/je/txn/WriteLockInfo;-><init>()V

    .line 3366
    .end local v16    # "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    .local v1, "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    iget-wide v2, v0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lsn:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortLsn(J)V

    .line 3367
    invoke-virtual {v1, v13}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortKnownDeleted(Z)V

    .line 3368
    invoke-virtual {v1, v9}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortKey([B)V

    .line 3369
    invoke-virtual {v1, v7}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortData([B)V

    .line 3370
    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortVLSN(J)V

    .line 3371
    invoke-virtual {v1, v14, v15}, Lcom/sleepycat/je/txn/WriteLockInfo;->setAbortExpiration(IZ)V

    .line 3372
    invoke-virtual {v1, v12}, Lcom/sleepycat/je/txn/WriteLockInfo;->setDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    move-object/from16 v16, v1

    move-wide/from16 v17, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    goto :goto_2

    .line 3374
    .end local v1    # "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    .restart local v16    # "wri":Lcom/sleepycat/je/txn/WriteLockInfo;
    :cond_3
    iget-object v1, v0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lockResult:Lcom/sleepycat/je/txn/LockResult;

    iget-wide v2, v0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->lsn:J

    move-wide/from16 v17, v4

    .end local v4    # "abortVLSN":J
    .local v17, "abortVLSN":J
    move v4, v13

    move-object v5, v9

    move-object v6, v7

    move-object/from16 v19, v7

    .end local v7    # "abortData":[B
    .local v19, "abortData":[B
    move-wide/from16 v7, v17

    move-object/from16 v20, v9

    .end local v9    # "abortKey":[B
    .local v20, "abortKey":[B
    move v9, v14

    move v10, v15

    move-object v11, v12

    invoke-virtual/range {v1 .. v11}, Lcom/sleepycat/je/txn/LockResult;->setAbortInfo(JZ[B[BJIZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3378
    :goto_2
    return-object v16
.end method

.method recordExists()Z
    .locals 1

    .line 3317
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->defunct:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
