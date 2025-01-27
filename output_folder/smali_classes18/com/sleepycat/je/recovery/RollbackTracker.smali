.class public Lcom/sleepycat/je/recovery/RollbackTracker;
.super Ljava/lang/Object;
.source "RollbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;,
        Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;,
        Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;,
        Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
    }
.end annotation


# instance fields
.field private checkpointStart:J

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private firstUndoPass:Z

.field private final periodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final recoveryFilesToSync:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private singlePassInvisibleLsns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->checkpointStart:J

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->recoveryFilesToSync:Ljava/util/Set;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->singlePassInvisibleLsns:Ljava/util/List;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/recovery/RollbackTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->singlePassInvisibleLsns:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/recovery/RollbackTracker;JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RollbackTracker;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/sleepycat/je/txn/UndoReader;
    .param p4, "x3"    # Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker;->countObsolete(JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/recovery/RollbackTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    return-object v0
.end method

.method private assertFirstPass(J)V
    .locals 5
    .param p1, "logLSN"    # J

    .line 433
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->firstUndoPass:Z

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 434
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saw entry at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 437
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Should only be building the tracker on the first pass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method private countObsolete(JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V
    .locals 6
    .param p1, "undoLsn"    # J
    .param p3, "undo"    # Lcom/sleepycat/je/txn/UndoReader;
    .param p4, "tracker"    # Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 416
    iget v4, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntrySize:I

    .line 417
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;->countObsoleteUnconditional(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 421
    return-void
.end method

.method public static makeInvisible(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/List;)V
    .locals 2
    .param p0, "targetEnvImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 372
    .local p1, "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 373
    .local v0, "fsyncFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->setInvisible(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/List;Ljava/util/Set;)V

    .line 374
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/FileManager;->force(Ljava/util/Set;)V

    .line 375
    return-void
.end method

.method private static setInvisible(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/List;Ljava/util/Set;)V
    .locals 8
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 327
    .local p1, "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "filesToFsync":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    .line 337
    .local v0, "fileManager":Lcom/sleepycat/je/log/FileManager;
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v1, "perFileLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v2, -0x1

    .line 341
    .local v2, "currentFileNum":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 344
    .local v5, "lsn":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 349
    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/je/log/FileManager;->makeInvisible(JLjava/util/List;)V

    .line 351
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 357
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v5    # "lsn":Ljava/lang/Long;
    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/je/log/FileManager;->makeInvisible(JLjava/util/List;)V

    .line 362
    return-void
.end method


# virtual methods
.method checkCommit(JJ)V
    .locals 3
    .param p1, "commitLSN"    # J
    .param p3, "txnId"    # J

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker;->assertFirstPass(J)V

    .line 262
    invoke-static {p3, p4}, Lcom/sleepycat/je/txn/TxnManager;->isReplicatedTxn(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-nez v0, :cond_1

    .line 267
    return-void

    .line 270
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is within rollback period."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->fail(Ljava/lang/String;)V

    .line 275
    :cond_2
    return-void
.end method

.method getCheckpointStart()J
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->checkpointStart:J

    return-wide v0
.end method

.method getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method getPeriodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    return-object v0
.end method

.method getScanner()Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->firstUndoPass:Z

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V

    return-object v0

    .line 317
    :cond_0
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V

    return-object v0
.end method

.method recoveryEndFsyncInvisible()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->recoveryFilesToSync:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/FileManager;->force(Ljava/util/Set;)V

    .line 399
    return-void
.end method

.method register(Lcom/sleepycat/je/txn/RollbackEnd;J)V
    .locals 2
    .param p1, "rollbackEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p2, "rollbackEndLSN"    # J

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker;->assertFirstPass(J)V

    .line 220
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->makeNestedPeriod(Lcom/sleepycat/je/txn/RollbackEnd;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackEnd;J)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 229
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method register(Lcom/sleepycat/je/txn/RollbackStart;J)V
    .locals 2
    .param p1, "rollbackStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p2, "rollbackStartLSN"    # J

    .line 237
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker;->assertFirstPass(J)V

    .line 240
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->makeNestedPeriod(Lcom/sleepycat/je/txn/RollbackStart;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackStart;J)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->underConstructionPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 249
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method setCheckpointStart(J)V
    .locals 0
    .param p1, "lsn"    # J

    .line 282
    iput-wide p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->checkpointStart:J

    .line 283
    return-void
.end method

.method setFirstPass(Z)V
    .locals 0
    .param p1, "firstUndoPass"    # Z

    .line 299
    iput-boolean p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->firstUndoPass:Z

    .line 300
    return-void
.end method

.method singlePassSetInvisible()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->singlePassInvisibleLsns:Ljava/util/List;

    iget-object v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->recoveryFilesToSync:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/recovery/RollbackTracker;->setInvisible(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/List;Ljava/util/Set;)V

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->singlePassInvisibleLsns:Ljava/util/List;

    .line 391
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker;->periodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 427
    .local v2, "period":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .end local v2    # "period":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
