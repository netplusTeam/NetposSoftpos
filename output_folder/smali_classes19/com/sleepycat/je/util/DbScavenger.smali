.class public Lcom/sleepycat/je/util/DbScavenger;
.super Lcom/sleepycat/je/util/DbDump;
.source "DbScavenger.java"


# static fields
.field private static final FLUSH_INTERVAL:I = 0x64


# instance fields
.field private dbIdToImpl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dbIdToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dbIdToOutputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/io/PrintStream;",
            ">;"
        }
    .end annotation
.end field

.field private dumpCorruptedBounds:Z

.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private flushCounter:I

.field private lastTime:J

.field private lnNodesSeen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/TxnChain$CompareSlot;",
            ">;"
        }
    .end annotation
.end field

.field private negativeCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

.field private positiveCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

.field private readBufferSize:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "outputDirectory"    # Ljava/lang/String;
    .param p3, "formatUsingPrintable"    # Z
    .param p4, "doAggressiveScavengerRun"    # Z
    .param p5, "verbose"    # Z

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p3}, Lcom/sleepycat/je/util/DbDump;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Z)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dumpCorruptedBounds:Z

    .line 105
    iput v0, p0, Lcom/sleepycat/je/util/DbScavenger;->flushCounter:I

    .line 127
    iput-boolean p4, p0, Lcom/sleepycat/je/util/DbScavenger;->doAggressiveScavengerRun:Z

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToImpl:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToOutputStream:Ljava/util/Map;

    .line 131
    iput-boolean p5, p0, Lcom/sleepycat/je/util/DbScavenger;->verbose:Z

    .line 132
    iput-object p2, p0, Lcom/sleepycat/je/util/DbScavenger;->outputDirectory:Ljava/lang/String;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/util/DbScavenger;
    .param p1, "x1"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "x2"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/util/DbScavenger;->processDbTreeEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/util/DbScavenger;
    .param p1, "x1"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "x2"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/util/DbScavenger;->processRegularEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V

    return-void
.end method

.method private checkProcessEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;Z)Z
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p3, "pass2"    # Z

    .line 250
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v0

    .line 259
    .local v0, "isTransactional":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v2

    .line 261
    .local v2, "txnId":J
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p2, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/util/DbScavenger;->setCommittedTxn(J)V

    .line 264
    return v1

    .line 267
    :cond_0
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p2, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    return v1

    .line 272
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/util/DbScavenger;->isCommittedTxn(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 273
    return v1

    .line 280
    .end local v2    # "txnId":J
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v2, :cond_7

    .line 282
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 283
    .local v2, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v3

    .line 284
    .local v3, "dbId":J
    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToImpl:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 286
    .local v5, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v5, :cond_3

    .line 287
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 296
    :goto_0
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbScavenger;->doAggressiveScavengerRun:Z

    if-nez v1, :cond_6

    if-nez p3, :cond_4

    goto :goto_1

    .line 300
    :cond_4
    if-eqz v5, :cond_5

    .line 304
    iget-object v1, p0, Lcom/sleepycat/je/util/DbScavenger;->lnNodesSeen:Ljava/util/Set;

    new-instance v6, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    invoke-direct {v6, v5, v2}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 301
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database info not available for DB ID: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 297
    :cond_6
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 307
    .end local v2    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v3    # "dbId":J
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_7
    return v1
.end method

.method private closeOutputStreams()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToOutputStream:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 445
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/PrintStream;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PrintStream;

    .line 447
    .local v1, "s":Ljava/io/PrintStream;
    const-string v2, "DATA=END"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 449
    .end local v1    # "s":Ljava/io/PrintStream;
    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method private getOutputStream(Ljava/lang/Long;)Ljava/io/PrintStream;
    .locals 6
    .param p1, "dbId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintStream;

    .line 422
    .local v0, "ret":Ljava/io/PrintStream;
    if-eqz v0, :cond_0

    .line 423
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sleepycat/je/util/DbScavenger;->outputDirectory:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 434
    nop

    .line 435
    iget-object v3, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v3, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToImpl:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 437
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5

    :cond_2
    move v4, v5

    .line 438
    .local v4, "dupSort":Z
    iget-boolean v5, p0, Lcom/sleepycat/je/util/DbScavenger;->formatUsingPrintable:Z

    invoke-virtual {p0, v0, v4, v5}, Lcom/sleepycat/je/util/DbScavenger;->printHeader(Ljava/io/PrintStream;ZZ)V

    .line 439
    return-object v0

    .line 432
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "dupSort":Z
    :catch_0
    move-exception v3

    .line 433
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method private isCommittedTxn(J)Z
    .locals 3
    .param p1, "txnId"    # J

    .line 461
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->positiveCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/BitMap;->get(J)Z

    move-result v0

    return v0

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/util/DbScavenger;->negativeCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    sub-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/utilint/BitMap;->get(J)Z

    move-result v0

    return v0
.end method

.method private processDbTreeEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 316
    nop

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/util/DbScavenger;->checkProcessEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;Z)Z

    move-result v0

    .line 319
    .local v0, "processThisEntry":Z
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v1, :cond_3

    .line 321
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 322
    .local v1, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v2

    .line 323
    .local v2, "ln":Lcom/sleepycat/je/tree/LN;
    instance-of v3, v2, Lcom/sleepycat/je/tree/NameLN;

    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "name":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Lcom/sleepycat/je/tree/NameLN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 326
    .local v4, "dbId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    .line 327
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already name mapped for dbId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    .line 330
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 333
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToName:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "dbId":Ljava/lang/Long;
    :cond_2
    instance-of v3, v2, Lcom/sleepycat/je/tree/MapLN;

    if-eqz v3, :cond_3

    .line 338
    move-object v3, v2

    check-cast v3, Lcom/sleepycat/je/tree/MapLN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 339
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 341
    .restart local v4    # "dbId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToImpl:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/sleepycat/je/util/DbScavenger;->dbIdToImpl:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v2    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "dbId":Ljava/lang/Long;
    :cond_3
    return-void
.end method

.method private processRegularEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 10
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 389
    nop

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/util/DbScavenger;->checkProcessEntry(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;Z)Z

    move-result v1

    .line 392
    .local v1, "processThisEntry":Z
    if-eqz v1, :cond_0

    .line 393
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 394
    .local v2, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 395
    .local v3, "dbId":Ljava/lang/Long;
    invoke-virtual {v2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v4

    .line 398
    .local v4, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbScavenger;->getOutputStream(Ljava/lang/Long;)Ljava/io/PrintStream;

    move-result-object v5

    .line 400
    .local v5, "out":Ljava/io/PrintStream;
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 401
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 402
    .local v6, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v7, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 403
    .local v7, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v2, v6, v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserKeyData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 404
    invoke-virtual {v6}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    iget-boolean v9, p0, Lcom/sleepycat/je/util/DbScavenger;->formatUsingPrintable:Z

    invoke-virtual {p0, v5, v8, v9}, Lcom/sleepycat/je/util/DbScavenger;->dumpOne(Ljava/io/PrintStream;[BZ)V

    .line 405
    invoke-virtual {v7}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    iget-boolean v9, p0, Lcom/sleepycat/je/util/DbScavenger;->formatUsingPrintable:Z

    invoke-virtual {p0, v5, v8, v9}, Lcom/sleepycat/je/util/DbScavenger;->dumpOne(Ljava/io/PrintStream;[BZ)V

    .line 406
    iget v8, p0, Lcom/sleepycat/je/util/DbScavenger;->flushCounter:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/sleepycat/je/util/DbScavenger;->flushCounter:I

    rem-int/lit8 v8, v8, 0x64

    if-nez v8, :cond_0

    .line 407
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/util/DbScavenger;->flushCounter:I

    .line 412
    .end local v2    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v3    # "dbId":Ljava/lang/Long;
    .end local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v5    # "out":Ljava/io/PrintStream;
    .end local v6    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_0
    return-void
.end method

.method private reportProgress(JJ)J
    .locals 8
    .param p1, "fileNum"    # J
    .param p3, "lastLsn"    # J

    .line 229
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 230
    .local v0, "currentFile":J
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbScavenger;->verbose:Z

    if-eqz v2, :cond_0

    .line 231
    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    .local v2, "now":J
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 234
    const-string v6, ".jdb  "

    invoke-static {v0, v1, v6}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbScavenger;->lastTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    iput-wide v2, p0, Lcom/sleepycat/je/util/DbScavenger;->lastTime:J

    .line 241
    .end local v2    # "now":J
    :cond_0
    return-wide v0
.end method

.method private scavenge(JJ)V
    .locals 11
    .param p1, "lastUsedLsn"    # J
    .param p3, "nextAvailableLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 354
    new-instance v10, Lcom/sleepycat/je/util/DbScavenger$2;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbScavenger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v3, p0, Lcom/sleepycat/je/util/DbScavenger;->readBufferSize:I

    const-wide/16 v6, -0x1

    move-object v0, v10

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/je/util/DbScavenger$2;-><init>(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJ)V

    .line 369
    .local v0, "scavengerReader":Lcom/sleepycat/je/log/ScavengerFileReader;
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/LogEntryType;

    .line 370
    .local v2, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 373
    .end local v2    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_0
    goto :goto_0

    .line 374
    :cond_1
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbScavenger;->dumpCorruptedBounds:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setDumpCorruptedBounds(Z)V

    .line 376
    const-wide/16 v1, -0x1

    .line 377
    .local v1, "progressFileNum":J
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/log/ScavengerFileReader;->readNextEntry()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    nop

    .line 379
    invoke-virtual {v0}, Lcom/sleepycat/je/log/ScavengerFileReader;->getLastLsn()J

    move-result-wide v3

    .line 378
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sleepycat/je/util/DbScavenger;->reportProgress(JJ)J

    move-result-wide v1

    goto :goto_1

    .line 381
    :cond_2
    return-void
.end method

.method private scavengeDbTree(JJ)V
    .locals 11
    .param p1, "lastUsedLsn"    # J
    .param p3, "nextAvailableLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/sleepycat/je/utilint/BitMap;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/BitMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->positiveCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    .line 200
    new-instance v0, Lcom/sleepycat/je/utilint/BitMap;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/BitMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->negativeCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    .line 201
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->lnNodesSeen:Ljava/util/Set;

    .line 203
    new-instance v0, Lcom/sleepycat/je/util/DbScavenger$1;

    iget-object v3, p0, Lcom/sleepycat/je/util/DbScavenger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v4, p0, Lcom/sleepycat/je/util/DbScavenger;->readBufferSize:I

    const-wide/16 v7, -0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/util/DbScavenger$1;-><init>(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJ)V

    .line 214
    .local v0, "scavengerReader":Lcom/sleepycat/je/log/ScavengerFileReader;
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 215
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 216
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 217
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 218
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/ScavengerFileReader;->setTargetType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/util/DbScavenger;->lastTime:J

    .line 220
    const-wide/16 v1, -0x1

    .line 221
    .local v1, "fileNum":J
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/ScavengerFileReader;->readNextEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    nop

    .line 223
    invoke-virtual {v0}, Lcom/sleepycat/je/log/ScavengerFileReader;->getLastLsn()J

    move-result-wide v3

    .line 222
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sleepycat/je/util/DbScavenger;->reportProgress(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private setCommittedTxn(J)V
    .locals 3
    .param p1, "txnId"    # J

    .line 453
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->positiveCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/BitMap;->set(J)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/util/DbScavenger;->negativeCommittedTxnIdsSeen:Lcom/sleepycat/je/utilint/BitMap;

    sub-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/utilint/BitMap;->set(J)V

    .line 458
    :goto_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/util/DbScavenger;->openEnv(Z)V

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbScavenger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 154
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 155
    .local v0, "cm":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/util/DbScavenger;->readBufferSize:I

    .line 160
    new-instance v1, Lcom/sleepycat/je/log/LastFileReader;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbScavenger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget v3, p0, Lcom/sleepycat/je/util/DbScavenger;->readBufferSize:I

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/log/LastFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    .line 161
    .local v1, "reader":Lcom/sleepycat/je/log/LastFileReader;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LastFileReader;->readNextEntry()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v10

    .line 166
    .local v10, "lastUsedLsn":J
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v12

    .line 167
    .local v12, "nextAvailableLsn":J
    iget-object v2, p0, Lcom/sleepycat/je/util/DbScavenger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    .line 169
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LastFileReader;->getPrevOffset()J

    move-result-wide v8

    .line 167
    move-wide v4, v12

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/je/log/FileManager;->setLastPosition(JJJ)V

    .line 173
    :try_start_0
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbScavenger;->verbose:Z

    if-eqz v2, :cond_1

    .line 174
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pass 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    :cond_1
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/sleepycat/je/util/DbScavenger;->scavengeDbTree(JJ)V

    .line 179
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbScavenger;->verbose:Z

    if-eqz v2, :cond_2

    .line 180
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pass 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/sleepycat/je/util/DbScavenger;->scavenge(JJ)V

    .line 184
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbScavenger;->verbose:Z

    if-eqz v2, :cond_3

    .line 185
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbScavenger;->closeOutputStreams()V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/sleepycat/je/util/DbScavenger;->closeOutputStreams()V

    throw v2
.end method

.method public setDumpCorruptedBounds(Z)V
    .locals 0
    .param p1, "dumpCorruptedBounds"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbScavenger;->dumpCorruptedBounds:Z

    .line 140
    return-void
.end method
