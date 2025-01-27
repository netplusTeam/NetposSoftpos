.class public Lcom/sleepycat/je/log/StatsFileReader;
.super Lcom/sleepycat/je/log/DumpFileReader;
.source "StatsFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;,
        Lcom/sleepycat/je/log/StatsFileReader$LogEntryTypeComparator;,
        Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;,
        Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoCSVFormatter;,
        Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;
    }
.end annotation


# instance fields
.field private ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

.field private final ckptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;",
            ">;"
        }
    .end annotation
.end field

.field private final entryInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private firstLsnRead:J

.field private realMaxDataBytes:J

.field private realMaxKeyBytes:J

.field private realMinDataBytes:J

.field private realMinKeyBytes:J

.field private realTotalDataBytes:J

.field private realTotalDataCount:J

.field private realTotalKeyBytes:J

.field private realTotalKeyCount:J

.field private totalCount:J

.field private totalLogBytes:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "endOfFileLsn"    # J
    .param p9, "entryTypes"    # Ljava/lang/String;
    .param p10, "dbIds"    # Ljava/lang/String;
    .param p11, "txnIds"    # Ljava/lang/String;
    .param p12, "verbose"    # Z
    .param p13, "repEntriesOnly"    # Z
    .param p14, "forwards"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 72
    move-object v0, p0

    invoke-direct/range {p0 .. p14}, Lcom/sleepycat/je/log/DumpFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 47
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    .line 48
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    .line 49
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinKeyBytes:J

    .line 50
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxKeyBytes:J

    .line 51
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    .line 52
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    .line 53
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinDataBytes:J

    .line 54
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxDataBytes:J

    .line 74
    new-instance v3, Ljava/util/TreeMap;

    new-instance v4, Lcom/sleepycat/je/log/StatsFileReader$LogEntryTypeComparator;

    invoke-direct {v4}, Lcom/sleepycat/je/log/StatsFileReader$LogEntryTypeComparator;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v3, v0, Lcom/sleepycat/je/log/StatsFileReader;->entryInfoMap:Ljava/util/Map;

    .line 76
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    .line 77
    iput-wide v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalCount:J

    .line 79
    new-instance v1, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    invoke-direct {v1}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptList:Ljava/util/ArrayList;

    .line 81
    if-eqz p12, :cond_0

    .line 82
    iget-object v2, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/log/StatsFileReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/StatsFileReader;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pad(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    .line 409
    .local v0, "spaces":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 411
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private summarizeCSV()V
    .locals 14

    .line 257
    iget-object v0, p0, Lcom/sleepycat/je/log/StatsFileReader;->entryInfoMap:Ljava/util/Map;

    .line 258
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 260
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;>;"
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 261
    .local v1, "form":Ljava/text/NumberFormat;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 262
    .local v2, "percentForm":Ljava/text/NumberFormat;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 263
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 264
    const-string/jumbo v4, "type,total count,provisional count,total bytes,min bytes,max bytes,avg bytes,entries as % of log"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x64

    const/16 v6, 0x2c

    if-eqz v3, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 269
    .local v3, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;

    .line 270
    .local v7, "info":Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/log/LogEntryType;

    .line 272
    .local v9, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    iget v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->provisionalCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget-wide v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    iget v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    iget v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->maxBytes:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-wide v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    iget v12, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    iget-wide v10, v7, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    mul-long/2addr v10, v4

    long-to-double v4, v10

    iget-wide v10, p0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    long-to-double v10, v10

    div-double/2addr v4, v10

    .line 281
    .local v4, "entryPercent":D
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 282
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    .end local v3    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;"
    .end local v4    # "entryPercent":D
    .end local v7    # "info":Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    goto :goto_0

    .line 286
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v7, "key bytes,"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-wide v7, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realMinKeyBytes:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxKeyBytes:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    iget-wide v10, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    div-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    mul-long/2addr v8, v4

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 296
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v8

    .line 299
    const-string v8, "data bytes,"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-wide v8, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-wide v7, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    iget-wide v7, p0, Lcom/sleepycat/je/log/StatsFileReader;->realMinDataBytes:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    iget-wide v7, p0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxDataBytes:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-wide v7, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    iget-wide v9, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    div-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    iget-wide v6, p0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    mul-long/2addr v6, v4

    long-to-double v4, v6

    iget-wide v6, p0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 308
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nTotal bytes in portion of log read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    .line 311
    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total number of entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/log/StatsFileReader;->totalCount:J

    .line 313
    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    iget-boolean v4, p0, Lcom/sleepycat/je/log/StatsFileReader;->verbose:Z

    if-eqz v4, :cond_1

    .line 316
    new-instance v4, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoCSVFormatter;

    invoke-direct {v4, p0}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoCSVFormatter;-><init>(Lcom/sleepycat/je/log/StatsFileReader;)V

    invoke-direct {p0, v4}, Lcom/sleepycat/je/log/StatsFileReader;->summarizeCheckpointInfo(Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;)V

    .line 318
    :cond_1
    return-void
.end method

.method private summarizeCheckpointInfo(Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;)V
    .locals 29
    .param p1, "f"    # Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nPer checkpoint interval info:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    const-string v4, "lnTxn"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 438
    const-string v4, "ln"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 439
    const-string v4, "mapLNTxn"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 440
    const-string v4, "mapLN"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 441
    const-string v4, "end to end"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 442
    const-string v4, "end to start"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    const-string/jumbo v4, "start to end"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 444
    const-string v4, "maxLNReplay"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 445
    const-string v4, "ckptEnd"

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    iget-object v2, v0, Lcom/sleepycat/je/log/StatsFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 448
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    .line 450
    .local v2, "logFileMax":J
    iget-object v4, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 451
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;>;"
    const/4 v4, 0x0

    move-object v14, v4

    .line 452
    .local v14, "prevCounter":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 453
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    .line 454
    .local v13, "c":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v4

    .line 457
    .local v12, "sb":Ljava/lang/StringBuilder;
    iget v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNTxnCount:I

    iget v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNTxnCount:I

    add-int v11, v4, v5

    .line 458
    .local v11, "maxTxnLNs":I
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNCount:I

    iget v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNCount:I

    add-int v10, v4, v5

    .line 460
    .local v10, "maxLNs":I
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartMapLNTxnCount:I

    iget v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartMapLNTxnCount:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartMapLNCount:I

    iget v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartMapLNCount:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-wide v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    const-wide/16 v16, -0x1

    cmp-long v4, v4, v16

    if-nez v4, :cond_0

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->getLastLsn()J

    move-result-wide v4

    goto :goto_1

    :cond_0
    iget-wide v4, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    .line 470
    .local v4, "end":J
    :goto_1
    const-wide/16 v18, 0x0

    .line 472
    .local v18, "endToEndDistance":J
    iget-object v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v20

    .line 473
    .local v20, "fileMgr":Lcom/sleepycat/je/log/FileManager;
    if-nez v14, :cond_1

    .line 474
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->firstLsnRead:J

    move-wide v8, v2

    move/from16 v21, v10

    .end local v10    # "maxLNs":I
    .local v21, "maxLNs":I
    move-object/from16 v10, v20

    invoke-static/range {v4 .. v10}, Lcom/sleepycat/je/utilint/DbLsn;->getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v6

    move-wide/from16 v23, v4

    move/from16 v22, v11

    move-object v4, v12

    move-wide v10, v6

    .end local v18    # "endToEndDistance":J
    .local v6, "endToEndDistance":J
    goto :goto_2

    .line 477
    .end local v6    # "endToEndDistance":J
    .end local v21    # "maxLNs":I
    .restart local v10    # "maxLNs":I
    .restart local v18    # "endToEndDistance":J
    :cond_1
    move/from16 v21, v10

    .end local v10    # "maxLNs":I
    .restart local v21    # "maxLNs":I
    iget-wide v8, v14, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    move-wide v6, v4

    move/from16 v22, v11

    .end local v11    # "maxTxnLNs":I
    .local v22, "maxTxnLNs":I
    move-wide v10, v2

    move-wide/from16 v23, v4

    move-object v4, v12

    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    .local v23, "end":J
    move-object/from16 v12, v20

    invoke-static/range {v6 .. v12}, Lcom/sleepycat/je/utilint/DbLsn;->getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v6

    move-wide v10, v6

    .line 480
    .end local v18    # "endToEndDistance":J
    .local v10, "endToEndDistance":J
    :goto_2
    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-wide v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    cmp-long v5, v5, v16

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->getLastLsn()J

    move-result-wide v5

    goto :goto_3

    :cond_2
    iget-wide v5, v13, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    :goto_3
    move-wide v6, v5

    .line 487
    .local v6, "start":J
    const-wide/16 v18, 0x0

    .line 489
    .local v18, "endToStartDistance":J
    if-nez v14, :cond_3

    .line 490
    iget-wide v8, v0, Lcom/sleepycat/je/log/StatsFileReader;->firstLsnRead:J

    move-wide/from16 v25, v10

    .end local v10    # "endToEndDistance":J
    .local v25, "endToEndDistance":J
    move-wide v10, v2

    move-object/from16 v12, v20

    invoke-static/range {v6 .. v12}, Lcom/sleepycat/je/utilint/DbLsn;->getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v8

    move-object v5, v13

    move-object v0, v14

    move-wide v12, v8

    .end local v18    # "endToStartDistance":J
    .local v8, "endToStartDistance":J
    goto :goto_4

    .line 493
    .end local v8    # "endToStartDistance":J
    .end local v25    # "endToEndDistance":J
    .restart local v10    # "endToEndDistance":J
    .restart local v18    # "endToStartDistance":J
    :cond_3
    move-wide/from16 v25, v10

    .end local v10    # "endToEndDistance":J
    .restart local v25    # "endToEndDistance":J
    iget-wide v10, v14, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    move-wide v8, v6

    move-object v5, v13

    .end local v13    # "c":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    .local v5, "c":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    move-wide v12, v2

    move-object v0, v14

    .end local v14    # "prevCounter":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    .local v0, "prevCounter":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    move-object/from16 v14, v20

    invoke-static/range {v8 .. v14}, Lcom/sleepycat/je/utilint/DbLsn;->getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v8

    move-wide v12, v8

    .line 496
    .end local v18    # "endToStartDistance":J
    .local v12, "endToStartDistance":J
    :goto_4
    invoke-virtual {v1, v12, v13}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-wide/16 v18, 0x0

    .line 502
    .local v18, "startToEndDistance":J
    iget-wide v8, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_4

    iget-wide v8, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_4

    .line 504
    iget-wide v8, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    iget-wide v10, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    move-wide/from16 v27, v12

    .end local v12    # "endToStartDistance":J
    .local v27, "endToStartDistance":J
    move-wide v12, v2

    move-object/from16 v14, v20

    invoke-static/range {v8 .. v14}, Lcom/sleepycat/je/utilint/DbLsn;->getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v18

    move-wide/from16 v8, v18

    goto :goto_5

    .line 502
    .end local v27    # "endToStartDistance":J
    .restart local v12    # "endToStartDistance":J
    :cond_4
    move-wide/from16 v27, v12

    .line 507
    .end local v12    # "endToStartDistance":J
    .restart local v27    # "endToStartDistance":J
    move-wide/from16 v8, v18

    .end local v18    # "startToEndDistance":J
    .local v8, "startToEndDistance":J
    :goto_5
    invoke-virtual {v1, v8, v9}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int v10, v21, v22

    .line 515
    .local v10, "maxReplay":I
    if-eqz v0, :cond_5

    .line 516
    iget v11, v0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNTxnCount:I

    add-int/2addr v10, v11

    .line 517
    iget v11, v0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNCount:I

    add-int/2addr v10, v11

    .line 519
    :cond_5
    invoke-virtual {v1, v10}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->format(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-wide v11, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    cmp-long v11, v11, v16

    const-string v12, "   "

    if-nez v11, :cond_6

    .line 522
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->getLastLsn()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 524
    :cond_6
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_6
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    move-object v14, v5

    .line 529
    .end local v0    # "prevCounter":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "c":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    .end local v6    # "start":J
    .end local v8    # "startToEndDistance":J
    .end local v10    # "maxReplay":I
    .end local v20    # "fileMgr":Lcom/sleepycat/je/log/FileManager;
    .end local v21    # "maxLNs":I
    .end local v22    # "maxTxnLNs":I
    .end local v23    # "end":J
    .end local v25    # "endToEndDistance":J
    .end local v27    # "endToStartDistance":J
    .restart local v14    # "prevCounter":Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 530
    :cond_7
    return-void
.end method

.method private summarizeText()V
    .locals 21

    .line 321
    move-object/from16 v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Log statistics:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    iget-object v1, v0, Lcom/sleepycat/je/log/StatsFileReader;->entryInfoMap:Ljava/util/Map;

    .line 323
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;>;"
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 326
    .local v2, "form":Ljava/text/NumberFormat;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 327
    .local v3, "percentForm":Ljava/text/NumberFormat;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 328
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 329
    const-string/jumbo v6, "total"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 330
    const-string/jumbo v7, "provisional"

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 331
    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 332
    const-string v6, "min"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 333
    const-string v6, "max"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 334
    const-string v6, "avg"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    const-string v6, "entries"

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 338
    const-string v7, "count"

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 339
    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 340
    const-string v7, "bytes"

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 342
    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 343
    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 344
    const-string v7, "as % of log"

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v7, 0x64

    if-eqz v4, :cond_0

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 348
    .local v4, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;

    .line 349
    .local v5, "info":Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/log/LogEntryType;

    .line 351
    .local v10, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->provisionalCount:I

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-wide v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->maxBytes:I

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-wide v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    iget v13, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    int-to-long v13, v13

    div-long/2addr v11, v13

    invoke-virtual {v2, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-wide v11, v5, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    mul-long/2addr v11, v7

    long-to-double v7, v11

    iget-wide v11, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    long-to-double v11, v11

    div-double/2addr v7, v11

    .line 360
    .local v7, "entryPercent":D
    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    .end local v4    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;>;"
    .end local v5    # "info":Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
    .end local v7    # "entryPercent":D
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    goto/16 :goto_0

    .line 365
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "key bytes"

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinKeyBytes:J

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxKeyBytes:J

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_1

    move-wide v13, v11

    goto :goto_1

    :cond_1
    iget-wide v13, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    div-long/2addr v13, v9

    :goto_1
    move-wide v9, v13

    .line 374
    .local v9, "keySize":J
    iget-wide v13, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    cmp-long v5, v13, v11

    if-nez v5, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_2
    iget-wide v11, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    mul-long/2addr v11, v7

    long-to-double v11, v11

    long-to-double v13, v13

    div-double/2addr v11, v13

    .line 376
    .local v11, "keyPct":D
    :goto_2
    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ")"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "realSize":Ljava/lang/String;
    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 382
    const-string v7, "data bytes"

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-wide v7, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    invoke-virtual {v2, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinDataBytes:J

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxDataBytes:J

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    const-wide/16 v15, 0x0

    cmp-long v8, v6, v15

    move-wide v15, v9

    if-nez v8, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_3

    .end local v9    # "keySize":J
    .local v15, "keySize":J
    :cond_3
    iget-wide v8, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    div-long v6, v8, v6

    .line 390
    .local v6, "dataSize":J
    :goto_3
    iget-wide v8, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    const-wide/16 v17, 0x0

    cmp-long v10, v8, v17

    move-wide/from16 v17, v11

    if-nez v10, :cond_4

    const-wide/16 v19, 0x0

    goto :goto_4

    .end local v11    # "keyPct":D
    .local v17, "keyPct":D
    :cond_4
    iget-wide v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    const-wide/16 v19, 0x64

    mul-long v10, v10, v19

    long-to-double v10, v10

    long-to-double v8, v8

    div-double v8, v10, v8

    move-wide/from16 v19, v8

    :goto_4
    move-wide/from16 v8, v19

    .line 392
    .local v8, "dataPct":D
    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-direct {v0, v5}, Lcom/sleepycat/je/log/StatsFileReader;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\nTotal bytes in portion of log read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    .line 398
    invoke-virtual {v2, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 397
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Total number of entries: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalCount:J

    .line 400
    invoke-virtual {v2, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 399
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    iget-boolean v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->verbose:Z

    if-eqz v10, :cond_5

    .line 403
    new-instance v10, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;

    invoke-direct {v10, v0, v2}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;-><init>(Lcom/sleepycat/je/log/StatsFileReader;Ljava/text/NumberFormat;)V

    invoke-direct {v0, v10}, Lcom/sleepycat/je/log/StatsFileReader;->summarizeCheckpointInfo(Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;)V

    .line 405
    :cond_5
    return-void
.end method


# virtual methods
.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 18
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    .line 92
    .local v2, "currentType":B
    invoke-static {v2}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v3

    .line 93
    .local v3, "type":Lcom/sleepycat/je/log/LogEntryType;
    const/4 v4, 0x0

    .line 95
    .local v4, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->needMatchEntry()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v4

    .line 97
    iget-object v5, v0, Lcom/sleepycat/je/log/StatsFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v7, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v4, v5, v7, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 99
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/log/StatsFileReader;->matchEntry(Lcom/sleepycat/je/log/entry/LogEntry;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    return v6

    .line 104
    :cond_0
    iget-object v5, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v5}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v5

    .line 105
    .local v5, "itemSize":I
    iget-object v7, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v7}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v7

    .line 113
    .local v7, "headerSize":I
    iget-object v8, v0, Lcom/sleepycat/je/log/StatsFileReader;->entryInfoMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;

    .line 114
    .local v8, "info":Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
    if-nez v8, :cond_1

    .line 115
    new-instance v9, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;

    invoke-direct {v9}, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;-><init>()V

    move-object v8, v9

    .line 116
    iget-object v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->entryInfoMap:Ljava/util/Map;

    invoke-interface {v9, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    iget v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    add-int/2addr v9, v6

    iput v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    .line 121
    iget-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalCount:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalCount:J

    .line 122
    iget-object v9, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryHeader;->getProvisional()Lcom/sleepycat/je/log/Provisional;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    if-ne v9, v10, :cond_2

    .line 123
    iget v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->provisionalCount:I

    add-int/2addr v9, v6

    iput v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->provisionalCount:I

    .line 125
    :cond_2
    add-int v9, v5, v7

    .line 126
    .local v9, "size":I
    iget-wide v13, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    int-to-long v11, v9

    add-long/2addr v13, v11

    iput-wide v13, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    .line 127
    iget v10, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->headerBytes:I

    add-int/2addr v10, v7

    iput v10, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->headerBytes:I

    .line 128
    iget-wide v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->totalLogBytes:J

    .line 130
    iget v10, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    if-eqz v10, :cond_3

    iget v10, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    if-le v10, v9, :cond_4

    .line 131
    :cond_3
    iput v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    .line 133
    :cond_4
    iget v10, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->maxBytes:I

    if-ge v10, v9, :cond_5

    .line 134
    iput v9, v8, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->maxBytes:I

    .line 137
    :cond_5
    iget-boolean v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->verbose:Z

    if-eqz v10, :cond_8

    .line 138
    iget-wide v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->firstLsnRead:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->getLastLsn()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->firstLsnRead:J

    .line 142
    :cond_6
    sget-object v10, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v10

    if-ne v2, v10, :cond_7

    .line 144
    iget-object v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/StatsFileReader;->getLastLsn()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    .line 145
    new-instance v10, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    invoke-direct {v10}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;-><init>()V

    iput-object v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    .line 146
    iget-object v11, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_7
    iget-object v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->ckptCounter:Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;

    invoke-virtual {v10, v0, v2}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->increment(Lcom/sleepycat/je/log/FileReader;B)V

    .line 152
    :cond_8
    :goto_0
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 154
    if-nez v4, :cond_9

    .line 155
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v4

    .line 156
    iget-object v10, v0, Lcom/sleepycat/je/log/StatsFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v11, v0, Lcom/sleepycat/je/log/StatsFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v4, v10, v11, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 158
    :cond_9
    move-object v10, v4

    check-cast v10, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 165
    .local v10, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v10}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUnconvertedKeyLength()I

    move-result v11

    .line 167
    .local v11, "keyLen":I
    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    move/from16 v16, v7

    .end local v7    # "headerSize":I
    .local v16, "headerSize":I
    int-to-long v6, v11

    add-long/2addr v12, v6

    iput-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyBytes:J

    .line 168
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    iput-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalKeyCount:J

    .line 170
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinKeyBytes:J

    const-wide/16 v12, 0x0

    cmp-long v17, v6, v12

    if-eqz v17, :cond_a

    int-to-long v14, v11

    cmp-long v6, v6, v14

    if-lez v6, :cond_b

    .line 171
    :cond_a
    int-to-long v6, v11

    iput-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinKeyBytes:J

    .line 173
    :cond_b
    iget-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxKeyBytes:J

    int-to-long v14, v11

    cmp-long v6, v6, v14

    if-gez v6, :cond_c

    .line 174
    int-to-long v6, v11

    iput-wide v6, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxKeyBytes:J

    .line 177
    :cond_c
    invoke-interface {v4}, Lcom/sleepycat/je/log/entry/LogEntry;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_10

    .line 178
    invoke-virtual {v10}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUnconvertedDataLength()I

    move-result v6

    .line 180
    .local v6, "dataLen":I
    iget-wide v14, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    int-to-long v12, v6

    add-long/2addr v14, v12

    iput-wide v14, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataBytes:J

    .line 181
    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realTotalDataCount:J

    .line 183
    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinDataBytes:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_d

    int-to-long v14, v6

    cmp-long v7, v12, v14

    if-lez v7, :cond_e

    .line 184
    :cond_d
    int-to-long v12, v6

    iput-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMinDataBytes:J

    .line 186
    :cond_e
    iget-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxDataBytes:J

    int-to-long v14, v6

    cmp-long v7, v12, v14

    if-gez v7, :cond_10

    .line 187
    int-to-long v12, v6

    iput-wide v12, v0, Lcom/sleepycat/je/log/StatsFileReader;->realMaxDataBytes:J

    goto :goto_1

    .line 152
    .end local v6    # "dataLen":I
    .end local v10    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v11    # "keyLen":I
    .end local v16    # "headerSize":I
    .restart local v7    # "headerSize":I
    :cond_f
    move/from16 v16, v7

    .line 195
    .end local v7    # "headerSize":I
    .restart local v16    # "headerSize":I
    :cond_10
    :goto_1
    if-nez v4, :cond_11

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    .line 197
    .local v6, "nextEntryPosition":I
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    .end local v6    # "nextEntryPosition":I
    :cond_11
    const/4 v6, 0x1

    return v6
.end method

.method public summarize(Z)V
    .locals 0
    .param p1, "csvFormat"    # Z

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/sleepycat/je/log/StatsFileReader;->summarizeCSV()V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/log/StatsFileReader;->summarizeText()V

    .line 209
    :goto_0
    return-void
.end method
