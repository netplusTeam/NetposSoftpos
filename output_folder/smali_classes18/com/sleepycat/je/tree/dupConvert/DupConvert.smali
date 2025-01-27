.class public Lcom/sleepycat/je/tree/dupConvert/DupConvert;
.super Ljava/lang/Object;
.source "DupConvert.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false


# instance fields
.field private bin:Lcom/sleepycat/je/tree/BIN;

.field private final dbTree:Lcom/sleepycat/je/dbi/DbTree;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private index:I

.field private localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

.field private nConverted:J

.field private final preloadAll:Z

.field private final preloadConfig:Lcom/sleepycat/je/PreloadConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbTree;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbTree"    # Lcom/sleepycat/je/dbi/DbTree;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 143
    iput-object p2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 144
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DUP_CONVERT_PRELOAD_ALL:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 145
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadAll:Z

    .line 146
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDupConvertPreloadConfig()Lcom/sleepycat/je/PreloadConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDupConvertPreloadConfig()Lcom/sleepycat/je/PreloadConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadConfig:Lcom/sleepycat/je/PreloadConfig;

    .line 148
    return-void
.end method

.method private convertBinSlot()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->isLNDeleted(Lcom/sleepycat/je/tree/BIN;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->deleteSlot()V

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    sget-object v2, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/BIN;->fetchLNOrDIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    .line 319
    .local v0, "node":Lcom/sleepycat/je/tree/Node;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Node;->containsDuplicates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    instance-of v1, v0, Lcom/sleepycat/je/tree/LN;

    if-eqz v1, :cond_1

    .line 326
    iget-wide v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->nConverted:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->nConverted:J

    .line 327
    return-void

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v1

    .line 340
    .local v1, "binKey":[B
    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/tree/dupConvert/DIN;

    .line 341
    .local v2, "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->deleteSlot()V

    .line 342
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertDin(Lcom/sleepycat/je/tree/dupConvert/DIN;[B)V

    .line 343
    return-void
.end method

.method private convertDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 242
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v0

    .line 244
    .local v0, "saveDeferredWrite":Z
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeferredWrite(Z)V

    .line 246
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setKeyPrefixing()V

    .line 247
    iget-boolean v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadAll:Z

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadConfig:Lcom/sleepycat/je/PreloadConfig;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    .line 250
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/Tree;->getFirstNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    if-nez v1, :cond_1

    .line 262
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeferredWrite(Z)V

    .line 252
    return-void

    .line 254
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->getNextBinSlot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertBinSlot()V

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDupsConverted()V

    .line 259
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->sync(Z)V

    .line 260
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeferredWrite(Z)V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeferredWrite(Z)V

    throw v1
.end method

.method private convertDbinSlot(Lcom/sleepycat/je/tree/dupConvert/DBIN;I[B)V
    .locals 10
    .param p1, "dbin"    # Lcom/sleepycat/je/tree/dupConvert/DBIN;
    .param p2, "dbinIndex"    # I
    .param p3, "binKey"    # [B

    .line 474
    nop

    .line 475
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getKey(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sleepycat/je/dbi/DupKeyData;->replaceData([B[B)[B

    move-result-object v0

    .line 486
    .local v0, "newKey":[B
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->needsSplitting()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/BIN;->isKeyInBounds([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 492
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 493
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 496
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/tree/Tree;->searchSplitsAllowed([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 501
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getLsn(I)J

    move-result-wide v5

    .line 502
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getState(I)B

    move-result v7

    const/4 v8, 0x0

    .line 500
    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/tree/BIN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJBZ)I

    move-result v1

    .line 504
    .local v1, "newIndex":I
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 510
    const v2, -0x20001

    and-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    .line 516
    const-wide/16 v2, -0x1

    invoke-virtual {p1, p2, v9, v2, v3}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->detachNode(IZJ)V

    .line 518
    iget-wide v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->nConverted:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->nConverted:J

    .line 519
    return-void

    .line 505
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key not inserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    invoke-static {v0, v9}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 507
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private convertDin(Lcom/sleepycat/je/tree/dupConvert/DIN;[B)V
    .locals 10
    .param p1, "din"    # Lcom/sleepycat/je/tree/dupConvert/DIN;
    .param p2, "binKey"    # [B

    .line 404
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->latch()V

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->getNEntries()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_6

    .line 408
    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    .line 410
    .local v1, "child":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 412
    instance-of v5, v1, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    if-eqz v5, :cond_4

    .line 413
    move-object v5, v1

    check-cast v5, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    .line 414
    .local v5, "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->latch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getNEntries()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 417
    invoke-direct {p0, v5, v6}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->isLNDeleted(Lcom/sleepycat/je/tree/BIN;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 418
    invoke-direct {p0, v5, v6, p2}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertDbinSlot(Lcom/sleepycat/je/tree/dupConvert/DBIN;I[B)V

    .line 416
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 421
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->verifyMemorySize()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getLastLoggedLsn()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    .line 425
    iget-object v6, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 426
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getLastLoggedLsn()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v9

    .line 425
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->releaseLatch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 430
    nop

    .line 431
    .end local v5    # "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    goto :goto_2

    .line 421
    .restart local v5    # "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "i":I
    .end local v1    # "child":Lcom/sleepycat/je/tree/IN;
    .end local v5    # "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    .end local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .end local p2    # "binKey":[B
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    .restart local v0    # "i":I
    .restart local v1    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    .restart local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .restart local p2    # "binKey":[B
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->releaseLatch()V

    .end local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .end local p2    # "binKey":[B
    throw v2

    .line 432
    .end local v5    # "dbin":Lcom/sleepycat/je/tree/dupConvert/DBIN;
    .restart local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .restart local p2    # "binKey":[B
    :cond_4
    move-object v5, v1

    check-cast v5, Lcom/sleepycat/je/tree/dupConvert/DIN;

    invoke-direct {p0, v5, p2}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertDin(Lcom/sleepycat/je/tree/dupConvert/DIN;[B)V

    .line 436
    :goto_2
    invoke-virtual {p1, v0, v4, v2, v3}, Lcom/sleepycat/je/tree/dupConvert/DIN;->detachNode(IZJ)V

    .line 406
    .end local v1    # "child":Lcom/sleepycat/je/tree/IN;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .restart local v1    # "child":Lcom/sleepycat/je/tree/IN;
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .end local p2    # "binKey":[B
    throw v2

    .line 439
    .end local v0    # "i":I
    .end local v1    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .restart local p2    # "binKey":[B
    :cond_6
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->verifyMemorySize()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->getLastLoggedLsn()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 444
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->getLastLoggedLsn()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v5, v6, v1, v4}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 446
    :cond_7
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->getDupCountLNRef()Lcom/sleepycat/je/tree/ChildReference;

    move-result-object v0

    .line 447
    .local v0, "dupCountRef":Lcom/sleepycat/je/tree/ChildReference;
    if-eqz v0, :cond_8

    .line 448
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-eqz v1, :cond_8

    .line 449
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->localTracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 450
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v2

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 449
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 453
    .end local v0    # "dupCountRef":Lcom/sleepycat/je/tree/ChildReference;
    :cond_8
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->releaseLatch()V

    .line 454
    nop

    .line 455
    return-void

    .line 439
    :cond_9
    :try_start_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .end local p2    # "binKey":[B
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 453
    .restart local p1    # "din":Lcom/sleepycat/je/tree/dupConvert/DIN;
    .restart local p2    # "binKey":[B
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->releaseLatch()V

    throw v0
.end method

.method public static convertInKeys(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 538
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    return-void

    .line 543
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/tree/dupConvert/DIN;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 547
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 548
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v1

    .line 549
    .local v1, "oldKey":[B
    array-length v3, v1

    .line 550
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->makePrefixKey([BII)[B

    move-result-object v2

    .line 552
    .local v2, "newKey":[B
    invoke-virtual {p1, v0, v2}, Lcom/sleepycat/je/tree/IN;->convertKey(I[B)V

    .line 547
    .end local v1    # "oldKey":[B
    .end local v2    # "newKey":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v0

    .line 556
    .local v0, "oldKey":[B
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->makePrefixKey([BII)[B

    move-result-object v1

    .line 557
    .local v1, "newKey":[B
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/tree/IN;->setIdentifierKey([BZ)V

    .line 559
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->verifyMemorySize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    return-void

    .line 559
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 544
    .end local v0    # "oldKey":[B
    .end local v1    # "newKey":[B
    :cond_4
    :goto_1
    return-void
.end method

.method private deleteSlot()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->deleteEntry(I)V

    .line 391
    iget v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/tree/BIN;->setIdentifierKey([BZ)V

    .line 394
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    .line 395
    return-void
.end method

.method private getNextBinSlot()Z
    .locals 4

    .line 273
    iget v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    .line 274
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 275
    return v1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->verifyMemorySize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/tree/Tree;->getNextBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 286
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 287
    return v2

    .line 289
    :cond_1
    iput v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->index:I

    .line 290
    return v1

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private isLNDeleted(Lcom/sleepycat/je/tree/BIN;I)Z
    .locals 11
    .param p1, "checkBin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "checkIndex"    # I

    .line 354
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    return v1

    .line 360
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v8

    .line 361
    .local v8, "lsn":J
    const-wide/16 v2, -0x1

    cmp-long v0, v8, v2

    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 363
    return v10

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    .line 369
    .local v0, "lockingTxn":Lcom/sleepycat/je/txn/BasicLocker;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/BasicLocker;->setPreemptable(Z)V

    .line 371
    :try_start_0
    sget-object v5, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v6, 0x0

    .line 373
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v7

    .line 372
    move-object v2, v0

    move-wide v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/txn/BasicLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v2

    .line 374
    .local v2, "lockRet":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_2

    .line 376
    nop

    .line 380
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 376
    return v1

    .line 378
    :cond_2
    nop

    .line 380
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 378
    return v10

    .line 380
    .end local v2    # "lockRet":Lcom/sleepycat/je/txn/LockResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    throw v1
.end method

.method public static needsConversion(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 1
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 229
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDupsConverted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0
.end method

.method private noDupNodesPresent()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 177
    .local v1, "in":Lcom/sleepycat/je/tree/IN;
    instance-of v2, v1, Lcom/sleepycat/je/tree/dupConvert/DIN;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 181
    .end local v1    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_0
    goto :goto_0

    .line 178
    .restart local v1    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    return v0

    .line 182
    .end local v1    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private preloadAllDatabases()V
    .locals 6

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "dbsToConvert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->getDbNamesAndIds()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 194
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    .local v3, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v4, 0x1

    .line 197
    .local v4, "releaseDbImpl":Z
    :try_start_1
    invoke-static {v3}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->needsConversion(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 203
    if-eqz v4, :cond_0

    .line 204
    :try_start_2
    iget-object v5, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 200
    :cond_1
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    const/4 v4, 0x0

    .line 203
    if-eqz v4, :cond_2

    .line 204
    :try_start_4
    iget-object v5, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 207
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "releaseDbImpl":Z
    :cond_2
    goto :goto_0

    .line 203
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "releaseDbImpl":Z
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_3

    .line 204
    iget-object v5, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    :cond_3
    nop

    .end local v0    # "dbsToConvert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    throw v1

    .line 209
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "releaseDbImpl":Z
    .restart local v0    # "dbsToConvert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_6

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 220
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 221
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_1

    .line 210
    :cond_5
    return-void

    .line 213
    :cond_6
    nop

    .line 214
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 215
    .local v1, "dbArray":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadConfig:Lcom/sleepycat/je/PreloadConfig;

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preload([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    nop

    .end local v1    # "dbArray":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 220
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 221
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_2

    .line 222
    :cond_7
    nop

    .line 223
    return-void

    .line 219
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 220
    .restart local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v4, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 221
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_3

    :cond_8
    throw v1
.end method


# virtual methods
.method public convertDatabases()V
    .locals 4

    .line 157
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadAll:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->preloadAllDatabases()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->getDbNamesAndIds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 161
    .local v1, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 163
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    invoke-static {v2}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->needsConversion(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 166
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 169
    nop

    .line 170
    .end local v1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 168
    .restart local v1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0

    .line 172
    .end local v1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->noDupNodesPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    return-void

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
