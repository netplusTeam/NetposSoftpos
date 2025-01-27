.class public Lcom/sleepycat/je/log/entry/LNLogEntry;
.super Lcom/sleepycat/je/log/entry/BaseReplicableEntry;
.source "LNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/je/tree/LN;",
        ">",
        "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORT_KD_MASK:B = 0x1t

.field private static final EMBEDDED_LN_MASK:B = 0x2t

.field private static final HAVE_ABORT_DATA_MASK:B = 0x8t

.field private static final HAVE_ABORT_EXPIRATION_MASK:B = 0x40t

.field private static final HAVE_ABORT_KEY_MASK:B = 0x4t

.field private static final HAVE_ABORT_LSN_MASK:B = 0x20t

.field private static final HAVE_ABORT_VLSN_MASK:B = 0x10t

.field private static final HAVE_EXPIRATION_MASK:B = -0x80t

.field private static final HAVE_PRIOR_FILE_MASK:B = 0x2t

.field private static final HAVE_PRIOR_SIZE_MASK:B = 0x1t

.field private static final LAST_FORMAT_CHANGE:I = 0x10

.field public static final MIN_LOG_SIZE:I = 0x12


# instance fields
.field private abortData:[B

.field private abortExpiration:I

.field private abortExpirationInHours:Z

.field private abortKey:[B

.field private abortKnownDeleted:Z

.field private abortLsn:J

.field private abortVLSN:J

.field private dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

.field private embeddedLN:Z

.field private expiration:I

.field private expirationInHours:Z

.field private haveAbortData:Z

.field private haveAbortExpiration:Z

.field private haveAbortKey:Z

.field private haveAbortLSN:Z

.field private haveAbortVLSN:Z

.field private haveExpiration:Z

.field private havePriorFile:Z

.field private havePriorSize:Z

.field private key:[B

.field private ln:Lcom/sleepycat/je/tree/LN;

.field private priorFile:J

.field private priorSize:I

.field private txn:Lcom/sleepycat/je/txn/Txn;

.field private final versionedLNConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/sleepycat/je/tree/VersionedLN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;JZ[B[BJIZ[BLcom/sleepycat/je/tree/LN;ZIZIJ)V
    .locals 21
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p4, "abortLsn"    # J
    .param p6, "abortKD"    # Z
    .param p7, "abortKey"    # [B
    .param p8, "abortData"    # [B
    .param p9, "abortVLSN"    # J
    .param p11, "abortExpiration"    # I
    .param p12, "abortExpirationInHours"    # Z
    .param p13, "key"    # [B
    .param p15, "embeddedLN"    # Z
    .param p16, "expiration"    # I
    .param p17, "expirationInHours"    # Z
    .param p18, "priorSize"    # I
    .param p19, "priorLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/txn/Txn;",
            "JZ[B[BJIZ[BTT;ZIZIJ)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    .local p14, "ln":Lcom/sleepycat/je/tree/LN;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p11

    move/from16 v7, p16

    move/from16 v8, p18

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;-><init>()V

    .line 219
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 230
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    .line 236
    iput-object v11, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    .line 242
    iput-wide v9, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    .line 245
    const/4 v12, 0x0

    iput v12, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 246
    iput-boolean v12, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    .line 333
    const-wide v13, 0xffffffffL

    iput-wide v13, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    .line 387
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 388
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 389
    iput-object v1, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 390
    iput-wide v2, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 391
    move/from16 v12, p6

    iput-boolean v12, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    .line 392
    iput-object v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    .line 393
    iput-object v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    .line 394
    move-wide/from16 v11, p9

    iput-wide v11, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    .line 395
    iput v6, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 396
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    .line 398
    cmp-long v14, v2, v9

    const/16 v18, 0x1

    if-eqz v14, :cond_0

    move/from16 v14, v18

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    .line 399
    if-eqz v4, :cond_1

    move/from16 v14, v18

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    .line 400
    if-eqz v5, :cond_2

    move/from16 v14, v18

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    .line 401
    invoke-static/range {p9 .. p10}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    .line 402
    if-eqz v6, :cond_3

    move/from16 v14, v18

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    .line 403
    if-eqz v7, :cond_4

    move/from16 v14, v18

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    .line 405
    move/from16 v14, p15

    iput-boolean v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    .line 406
    move-object/from16 v9, p13

    iput-object v9, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    .line 407
    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    .line 408
    iput v7, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    .line 409
    move/from16 v4, p17

    iput-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    .line 411
    iput v8, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    .line 412
    if-eqz v8, :cond_5

    move/from16 v4, v18

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    .line 414
    const-wide/16 v19, -0x1

    cmp-long v19, p19, v19

    if-nez v19, :cond_6

    move/from16 v5, v18

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    if-eq v4, v5, :cond_c

    .line 420
    if-eqz v4, :cond_8

    cmp-long v4, p19, v2

    if-nez v4, :cond_7

    goto :goto_7

    .line 421
    :cond_7
    invoke-static/range {p19 .. p20}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    goto :goto_8

    .line 420
    :cond_8
    :goto_7
    const-wide v4, 0xffffffffL

    .line 421
    :goto_8
    iput-wide v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    .line 423
    const-wide v16, 0xffffffffL

    cmp-long v4, v4, v16

    if-eqz v4, :cond_9

    move/from16 v4, v18

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    .line 425
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->versionedLNConstructor:Ljava/lang/reflect/Constructor;

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v4

    if-eqz v1, :cond_a

    move/from16 v5, v18

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    :goto_a
    if-ne v4, v5, :cond_b

    .line 429
    return-void

    .line 428
    :cond_b
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 415
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priorSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " priorLsn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 417
    invoke-static/range {p19 .. p20}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;-><init>(Ljava/lang/Class;)V

    .line 219
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 230
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    .line 236
    iput-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    .line 242
    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 246
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    .line 333
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    .line 360
    const-class v0, Lcom/sleepycat/je/tree/LN;

    if-ne p1, v0, :cond_0

    .line 361
    const-class v0, Lcom/sleepycat/je/tree/VersionedLN;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->versionedLNConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 363
    :cond_0
    iput-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->versionedLNConstructor:Ljava/lang/reflect/Constructor;

    .line 365
    :goto_0
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/je/tree/LN;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "TT;>;"
        }
    .end annotation

    .line 354
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private requireKnownDupStatus()V
    .locals 2

    .line 1168
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NOT_DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    const-string v0, "postFetchInit was not called"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1173
    :cond_1
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 4

    .line 432
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 433
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 434
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 435
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    .line 436
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    .line 437
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    .line 438
    iput-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    .line 439
    iput v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 440
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    .line 442
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    .line 443
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    .line 444
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    .line 445
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    .line 446
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    .line 447
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    .line 448
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    .line 449
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    .line 451
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    .line 452
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    .line 453
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    .line 454
    iput v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    .line 455
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    .line 456
    iput v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    .line 457
    const-wide v1, 0xffffffffL

    iput-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    .line 459
    iput-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    .line 460
    return-void
.end method

.method private setFlags(BB)V
    .locals 3
    .param p1, "flags"    # B
    .param p2, "flags2"    # B

    .line 623
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    .line 624
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    .line 625
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    .line 626
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    .line 627
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    .line 628
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    .line 629
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    .line 630
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    .line 632
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    .line 633
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    .line 634
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->clone()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method combineDupKeyData()[B
    .locals 2

    .line 1098
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->setEmpty()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([B[B)[B

    move-result-object v0

    return-object v0

    .line 1098
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public countPriorVersionObsolete()Z
    .locals 1

    .line 1223
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    return v0
.end method

.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 699
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 701
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/tree/LN;->dumpKey(Ljava/lang/StringBuilder;[B)V

    .line 702
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 704
    const-string v0, "<embeddedLN val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 706
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    if-eqz v1, :cond_0

    .line 709
    const-string v1, "<expires val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-eqz v1, :cond_2

    .line 715
    :cond_1
    const-string v1, "<prior size=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, "\" file=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 724
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/txn/Txn;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 726
    const-string v1, "<abortLSN val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v1, "<abortKD val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_3
    const-string v1, "false"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 735
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    const-string v3, "abortKey"

    invoke-static {v1, v3, v2}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_4
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    if-eqz v1, :cond_5

    .line 738
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    const-string v3, "abortData"

    invoke-static {v1, v3, v2}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_5
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    if-eqz v1, :cond_6

    .line 741
    const-string v1, "<abortVLSN v=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_6
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    if-eqz v1, :cond_7

    .line 746
    const-string v1, "<abortExpires val=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_7
    return-object p1
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 758
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, " txn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 761
    :cond_0
    return-void
.end method

.method public getAbortData()[B
    .locals 1

    .line 1209
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    return-object v0
.end method

.method public getAbortExpiration()I
    .locals 1

    .line 1259
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    return v0
.end method

.method public getAbortKey()[B
    .locals 1

    .line 1205
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    return-object v0
.end method

.method public getAbortKnownDeleted()Z
    .locals 1

    .line 1201
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    return v0
.end method

.method public getAbortLsn()J
    .locals 2

    .line 1197
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    return-wide v0
.end method

.method public getAbortVLSN()J
    .locals 2

    .line 1213
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    return-wide v0
.end method

.method final getBaseLNEntrySize(IZZ)I
    .locals 7
    .param p1, "logVersion"    # I
    .param p2, "keyIsLastSerializedField"    # Z
    .param p3, "forReplication"    # Z

    .line 811
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0, p1, p3}, Lcom/sleepycat/je/tree/LN;->getLogSize(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 812
    invoke-virtual {v1, p1, p3}, Lcom/sleepycat/je/dbi/DatabaseId;->getLogSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    array-length v2, v1

    add-int/2addr v0, v2

    .line 815
    .local v0, "size":I
    if-nez p2, :cond_0

    .line 816
    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v1

    const/16 v2, 0xb

    if-nez v1, :cond_1

    if-lt p1, v2, :cond_2

    .line 820
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 823
    :cond_2
    const/16 v1, 0x10

    if-lt p1, v1, :cond_3

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 827
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_6

    .line 828
    if-lt p1, v4, :cond_4

    iget-boolean v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    if-eqz v3, :cond_5

    if-nez p3, :cond_5

    .line 829
    :cond_4
    iget-wide v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    invoke-static {v5, v6}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 831
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v3, p1, p3}, Lcom/sleepycat/je/txn/Txn;->getLogSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 834
    :cond_6
    if-nez p3, :cond_d

    .line 835
    if-lt p1, v2, :cond_9

    .line 836
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    if-eqz v2, :cond_7

    .line 837
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 839
    :cond_7
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    if-eqz v2, :cond_8

    .line 840
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 842
    :cond_8
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    if-eqz v2, :cond_9

    .line 843
    iget-wide v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    invoke-static {v2, v3}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 846
    :cond_9
    if-lt p1, v4, :cond_b

    .line 847
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    if-eqz v2, :cond_b

    .line 848
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    neg-int v2, v2

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    :goto_0
    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 853
    :cond_b
    if-lt p1, v1, :cond_d

    .line 854
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v1, :cond_c

    .line 855
    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 857
    :cond_c
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-eqz v1, :cond_d

    .line 858
    iget-wide v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_d
    if-lt p1, v4, :cond_f

    .line 864
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    if-eqz v1, :cond_f

    .line 865
    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    neg-int v1, v1

    goto :goto_1

    :cond_e
    iget v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    :goto_1
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 870
    :cond_f
    return v0
.end method

.method public getData()[B
    .locals 1

    .line 1143
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 1193
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getEmbeddedData()[B
    .locals 1

    .line 1148
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    const/4 v0, 0x0

    return-object v0

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    sget-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v0

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/je/log/VersionedWriteLoggable;

    new-instance v1, Lcom/sleepycat/je/tree/LN;

    invoke-direct {v1}, Lcom/sleepycat/je/tree/LN;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sleepycat/je/txn/Txn;

    invoke-direct {v1}, Lcom/sleepycat/je/txn/Txn;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()I
    .locals 1

    .line 1160
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    .line 1138
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->requireKnownDupStatus()V

    .line 1139
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    return-object v0
.end method

.method public getLN()Lcom/sleepycat/je/tree/LN;
    .locals 1

    .line 1133
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->requireKnownDupStatus()V

    .line 1134
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 782
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/16 v0, 0x10

    return v0
.end method

.method public bridge synthetic getLogClass()Ljava/lang/Class;
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->getLogClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method public getMainItem()Lcom/sleepycat/je/tree/LN;
    .locals 1

    .line 765
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    return-object v0
.end method

.method public bridge synthetic getMainItem()Ljava/lang/Object;
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getMainItem()Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    return-object v0
.end method

.method public getPriorVersionLsn()J
    .locals 3

    .line 1249
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v0, :cond_3

    .line 1252
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1255
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    :goto_1
    return-wide v0

    .line 1250
    :cond_3
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getPriorVersionSize()I
    .locals 1

    .line 1233
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v0, :cond_0

    .line 1236
    iget v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    return v0

    .line 1234
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 0

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSize()I
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->getSize()I

    move-result v0

    return v0
.end method

.method public getSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 793
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-ne v0, v1, :cond_0

    .line 795
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getBaseLNEntrySize(IZZ)I

    move-result v0

    return v0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 770
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    return-wide v0

    .line 773
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTxnId()Ljava/lang/Long;
    .locals 2

    .line 1267
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1270
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnconvertedDataLength()I
    .locals 1

    .line 1180
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getUnconvertedKeyLength()I
    .locals 1

    .line 1188
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    array-length v0, v0

    return v0
.end method

.method public getUserKeyData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "keyParam"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "dataParam"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1111
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->requireKnownDupStatus()V

    .line 1113
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    if-ne v0, v1, :cond_0

    .line 1114
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 1116
    :cond_0
    if-eqz p1, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1119
    :cond_1
    if-eqz p2, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1123
    :cond_2
    :goto_0
    return-void
.end method

.method public getUserTxn()Lcom/sleepycat/je/txn/Txn;
    .locals 1

    .line 1274
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    return-object v0

    .line 1277
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 638
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isAbortExpirationInHours()Z
    .locals 1

    .line 1263
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 1030
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    return v0
.end method

.method public isEmbeddedLN()Z
    .locals 1

    .line 1129
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    return v0
.end method

.method public isExpirationInHours()Z
    .locals 1

    .line 1164
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    return v0
.end method

.method public isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1023
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    if-nez v0, :cond_1

    .line 1025
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1023
    :goto_1
    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 3
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 647
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ge p3, v1, :cond_0

    .line 648
    return v0

    .line 655
    :cond_0
    const/16 v1, 0xc

    if-ge p2, v1, :cond_1

    .line 656
    return v0

    .line 659
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 677
    .local v1, "flags":B
    and-int/lit8 v2, v1, 0xc

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 1282
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    instance-of v0, p1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1283
    return v1

    .line 1286
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1288
    .local v0, "otherEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseId;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1289
    return v1

    .line 1292
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v2, :cond_2

    .line 1293
    iget-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Txn;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1294
    return v1

    .line 1297
    :cond_2
    iget-object v2, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v2, :cond_3

    .line 1298
    return v1

    .line 1302
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1303
    return v1

    .line 1306
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/LN;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1307
    return v1

    .line 1310
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method newLNInstance(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 690
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->versionedLNConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->versionedLNConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->newInstanceOfType(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    return-object v0

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->newInstanceOfType()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    return-object v0
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1056
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 1057
    return-void
.end method

.method public postFetchInit(Z)V
    .locals 3
    .param p1, "isDupDb"    # Z

    .line 1075
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NEED_CONVERSION:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1078
    .local v0, "needConversion":Z
    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NOT_DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    :goto_1
    iput-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    .line 1081
    if-nez v0, :cond_2

    .line 1082
    return-void

    .line 1086
    :cond_2
    sget-object v2, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NOT_DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    if-ne v1, v2, :cond_3

    .line 1087
    return-void

    .line 1090
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->combineDupKeyData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    .line 1091
    return-void
.end method

.method public postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p2, "justLoggedLsn"    # J
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 1044
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/je/txn/Txn;->addLogInfo(J)V

    .line 1049
    :cond_0
    if-eqz p4, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {p4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/LN;->setVLSNSequence(J)V

    .line 1052
    :cond_1
    return-void
.end method

.method final readBaseLNEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;Z)V
    .locals 18
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "keyIsLastSerializedField"    # Z

    .line 498
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->reset()V

    .line 500
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v2

    .line 501
    .local v2, "logVersion":I
    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 502
    .local v6, "unpacked":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 504
    .local v7, "recStartPosition":I
    const/16 v8, 0x10

    const/16 v9, 0xc

    if-lt v2, v9, :cond_2

    .line 505
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 506
    .local v10, "flags":B
    if-lt v2, v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v5

    .line 507
    .local v11, "flags2":B
    :goto_1
    invoke-direct {v0, v10, v11}, Lcom/sleepycat/je/log/entry/LNLogEntry;->setFlags(BB)V

    .line 515
    .end local v10    # "flags":B
    .end local v11    # "flags2":B
    :cond_2
    if-ge v2, v3, :cond_3

    .line 517
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->newLNInstance(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;

    move-result-object v10

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    .line 518
    invoke-virtual {v10, v1, v2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 522
    :cond_3
    new-instance v10, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v10}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 523
    invoke-virtual {v10, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 526
    if-ge v2, v3, :cond_4

    .line 527
    invoke-static {v1, v4}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v10

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    .line 530
    :cond_4
    iget-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v10

    const/16 v11, 0xb

    if-eqz v10, :cond_9

    .line 536
    iget-boolean v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    const-wide/16 v12, -0x1

    if-nez v10, :cond_5

    if-ge v2, v9, :cond_6

    .line 537
    :cond_5
    invoke-static {v1, v6}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 538
    invoke-static {v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v14

    .line 539
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v16

    cmp-long v10, v14, v16

    if-nez v10, :cond_6

    .line 540
    iput-wide v12, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    .line 544
    :cond_6
    if-ge v2, v9, :cond_8

    .line 545
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    invoke-direct {v0, v10, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->setFlags(BB)V

    .line 546
    iget-wide v14, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    cmp-long v10, v14, v12

    if-eqz v10, :cond_7

    move v10, v4

    goto :goto_2

    :cond_7
    move v10, v5

    :goto_2
    iput-boolean v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    .line 550
    :cond_8
    new-instance v10, Lcom/sleepycat/je/txn/Txn;

    invoke-direct {v10}, Lcom/sleepycat/je/txn/Txn;-><init>()V

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 551
    invoke-virtual {v10, v1, v2}, Lcom/sleepycat/je/txn/Txn;->readFromLog(Ljava/nio/ByteBuffer;I)V

    goto :goto_3

    .line 553
    :cond_9
    if-ne v2, v11, :cond_a

    .line 554
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    invoke-direct {v0, v10, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->setFlags(BB)V

    .line 557
    :cond_a
    :goto_3
    if-lt v2, v11, :cond_d

    .line 558
    iget-boolean v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    if-eqz v10, :cond_b

    .line 559
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v10

    iput-object v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    .line 561
    :cond_b
    iget-boolean v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    if-eqz v10, :cond_c

    .line 562
    invoke-static {v1, v5}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v5

    iput-object v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    .line 564
    :cond_c
    iget-boolean v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    if-eqz v5, :cond_d

    .line 565
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    .line 569
    :cond_d
    if-lt v2, v9, :cond_f

    .line 570
    iget-boolean v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    if-eqz v5, :cond_e

    .line 571
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 572
    if-gez v5, :cond_e

    .line 573
    neg-int v5, v5

    iput v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    .line 574
    iput-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    .line 577
    :cond_e
    iget-boolean v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    if-eqz v5, :cond_f

    .line 578
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    .line 579
    if-gez v5, :cond_f

    .line 580
    neg-int v5, v5

    iput v5, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    .line 581
    iput-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    .line 586
    :cond_f
    if-lt v2, v8, :cond_11

    .line 587
    iget-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v4, :cond_10

    .line 588
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    .line 590
    :cond_10
    iget-boolean v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-eqz v4, :cond_11

    .line 591
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    .line 595
    :cond_11
    if-lt v2, v3, :cond_13

    .line 597
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->newLNInstance(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;

    move-result-object v3

    iput-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    .line 598
    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 601
    if-eqz p4, :cond_12

    .line 602
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v7

    .line 603
    .local v3, "bytesWritten":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v4

    sub-int/2addr v4, v3

    .line 604
    .end local v3    # "bytesWritten":I
    .local v4, "keySize":I
    goto :goto_4

    .line 605
    .end local v4    # "keySize":I
    :cond_12
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 607
    .restart local v4    # "keySize":I
    :goto_4
    invoke-static {v1, v4}, Lcom/sleepycat/je/log/LogUtils;->readBytesNoLength(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    .line 612
    .end local v4    # "keySize":I
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 613
    iget-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/tree/LN;->setVLSNSequence(J)V

    .line 617
    :cond_14
    const/16 v3, 0x8

    if-ge v2, v3, :cond_15

    sget-object v3, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NEED_CONVERSION:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    goto :goto_5

    :cond_15
    sget-object v3, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->UNKNOWN:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    :goto_5
    iput-object v3, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dupStatus:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    .line 619
    return-void
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 469
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-ne v0, v1, :cond_2

    .line 478
    nop

    .line 479
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 481
    .local v0, "keyIsLastSerializedField":Z
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->readBaseLNEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;Z)V

    .line 483
    return-void

    .line 469
    .end local v0    # "keyIsLastSerializedField":Z
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeBaseLNEntry(Ljava/nio/ByteBuffer;IZZ)V
    .locals 7
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "keyIsLastSerializedField"    # Z
    .param p4, "forReplication"    # Z

    .line 899
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    const/4 v0, 0x0

    .line 900
    .local v0, "flags":B
    const/4 v1, 0x0

    .line 902
    .local v1, "flags2":B
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_2

    if-lt p2, v3, :cond_0

    if-nez p4, :cond_2

    .line 905
    :cond_0
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKnownDeleted:Z

    if-eqz v2, :cond_1

    .line 906
    or-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .line 908
    :cond_1
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    if-eqz v2, :cond_2

    .line 909
    or-int/lit8 v2, v0, 0x20

    int-to-byte v0, v2

    .line 913
    :cond_2
    const/16 v2, 0xb

    const/16 v4, 0x10

    if-nez p4, :cond_9

    .line 914
    if-lt p2, v2, :cond_6

    .line 915
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->embeddedLN:Z

    if-eqz v5, :cond_3

    .line 916
    or-int/lit8 v5, v0, 0x2

    int-to-byte v0, v5

    .line 918
    :cond_3
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    if-eqz v5, :cond_4

    .line 919
    or-int/lit8 v5, v0, 0x4

    int-to-byte v0, v5

    .line 921
    :cond_4
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    if-eqz v5, :cond_5

    .line 922
    or-int/lit8 v5, v0, 0x8

    int-to-byte v0, v5

    .line 924
    :cond_5
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    if-eqz v5, :cond_6

    .line 925
    or-int/lit8 v5, v0, 0x10

    int-to-byte v0, v5

    .line 928
    :cond_6
    if-lt p2, v3, :cond_7

    .line 929
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    if-eqz v5, :cond_7

    .line 930
    or-int/lit8 v5, v0, 0x40

    int-to-byte v0, v5

    .line 933
    :cond_7
    if-lt p2, v4, :cond_9

    .line 934
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v5, :cond_8

    .line 935
    or-int/lit8 v5, v1, 0x1

    int-to-byte v1, v5

    .line 937
    :cond_8
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-eqz v5, :cond_9

    .line 938
    or-int/lit8 v5, v1, 0x2

    int-to-byte v1, v5

    .line 943
    :cond_9
    if-lt p2, v3, :cond_b

    .line 944
    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    if-eqz v5, :cond_a

    .line 945
    or-int/lit8 v5, v0, -0x80

    int-to-byte v0, v5

    .line 947
    :cond_a
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 950
    :cond_b
    if-lt p2, v4, :cond_c

    .line 951
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 954
    :cond_c
    iget-object v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v5, p1, p2, p4}, Lcom/sleepycat/je/dbi/DatabaseId;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 956
    iget-object v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v5}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 958
    if-lt p2, v3, :cond_d

    iget-boolean v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortLSN:Z

    if-eqz v5, :cond_e

    if-nez p4, :cond_e

    .line 959
    :cond_d
    iget-wide v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortLsn:J

    invoke-static {p1, v5, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 962
    :cond_e
    if-ge p2, v3, :cond_f

    .line 963
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 966
    :cond_f
    iget-object v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v5, p1, p2, p4}, Lcom/sleepycat/je/txn/Txn;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    goto :goto_0

    .line 968
    :cond_10
    if-ne p2, v2, :cond_11

    .line 969
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 972
    :cond_11
    :goto_0
    if-nez p4, :cond_16

    .line 973
    if-lt p2, v2, :cond_14

    .line 974
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortKey:Z

    if-eqz v2, :cond_12

    .line 975
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortKey:[B

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 977
    :cond_12
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortData:Z

    if-eqz v2, :cond_13

    .line 978
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortData:[B

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 980
    :cond_13
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortVLSN:Z

    if-eqz v2, :cond_14

    .line 981
    iget-wide v5, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortVLSN:J

    invoke-static {p1, v5, v6}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 984
    :cond_14
    if-lt p2, v3, :cond_16

    .line 985
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveAbortExpiration:Z

    if-eqz v2, :cond_16

    .line 986
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpirationInHours:Z

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    neg-int v2, v2

    goto :goto_1

    :cond_15
    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->abortExpiration:I

    :goto_1
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 994
    :cond_16
    if-lt p2, v3, :cond_18

    .line 995
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->haveExpiration:Z

    if-eqz v2, :cond_18

    .line 996
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expirationInHours:Z

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    neg-int v2, v2

    goto :goto_2

    :cond_17
    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->expiration:I

    :goto_2
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 1002
    :cond_18
    if-nez p4, :cond_1a

    .line 1003
    if-lt p2, v4, :cond_1a

    .line 1004
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorSize:Z

    if-eqz v2, :cond_19

    .line 1005
    iget v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorSize:I

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 1007
    :cond_19
    iget-boolean v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->havePriorFile:Z

    if-eqz v2, :cond_1a

    .line 1008
    iget-wide v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->priorFile:J

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 1013
    :cond_1a
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v2, p1, p2, p4}, Lcom/sleepycat/je/tree/LN;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 1015
    if-nez p3, :cond_1b

    .line 1016
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    array-length v2, v2

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 1018
    :cond_1b
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/LNLogEntry;->key:[B

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeBytesNoLength(Ljava/nio/ByteBuffer;[B)V

    .line 1019
    return-void
.end method

.method public bridge synthetic writeEntry(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 161
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->writeEntry(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 879
    .local p0, "this":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-ne v0, v1, :cond_0

    .line 881
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->writeBaseLNEntry(Ljava/nio/ByteBuffer;IZZ)V

    .line 884
    return-void

    .line 879
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
