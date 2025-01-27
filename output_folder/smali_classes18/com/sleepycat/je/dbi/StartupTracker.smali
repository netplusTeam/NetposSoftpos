.class public Lcom/sleepycat/je/dbi/StartupTracker;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/StartupTracker$Counter;,
        Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;,
        Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    }
.end annotation


# instance fields
.field private final counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/StartupTracker$Phase;",
            "Lcom/sleepycat/je/dbi/StartupTracker$Counter;",
            ">;"
        }
    .end annotation
.end field

.field private final elapsed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/StartupTracker$Phase;",
            "Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private info:Lcom/sleepycat/je/recovery/RecoveryInfo;

.field private lastDumpMillis:J

.field private final logger:Ljava/util/logging/Logger;

.field private final stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/StartupTracker$Phase;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->counters:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->stats:Ljava/util/Map;

    .line 157
    invoke-static {}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->values()[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    .local v3, "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    iget-object v4, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    new-instance v5, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;-><init>(Lcom/sleepycat/je/dbi/StartupTracker$1;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v3    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->logger:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->lastDumpMillis:J

    .line 165
    return-void
.end method

.method private displayCounters(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    .locals 11
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "root"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 391
    const-string v0, "%20s   %s\n"

    .line 392
    .local v0, "basicFormat":Ljava/lang/String;
    const/4 v1, 0x1

    .line 393
    .local v1, "headerNotPrinted":Z
    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->counters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 394
    .local v3, "c":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Counter;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 395
    .local v4, "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    invoke-static {v4}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v5

    if-eq v5, p2, :cond_0

    .line 396
    goto :goto_0

    .line 398
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    .line 399
    .local v5, "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    invoke-static {v5}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->access$600(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 400
    goto :goto_0

    .line 403
    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 405
    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, " "

    aput-object v10, v9, v7

    sget-object v10, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->DISPLAY_COLUMNS:Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {p1, v0, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 406
    const/4 v1, 0x0

    .line 408
    :cond_2
    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v7

    aput-object v5, v8, v6

    invoke-virtual {p1, v0, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 409
    .end local v3    # "c":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Counter;>;"
    .end local v4    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .end local v5    # "counter":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    goto :goto_0

    .line 410
    :cond_3
    return-void
.end method

.method private displayInterim(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "phase"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->lastDumpMillis:J

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n=== Interim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Report  ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker;->displayRecoveryInterval()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x1

    .line 467
    .local v0, "headerNotPrinted":Z
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    .local v2, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 469
    .local v3, "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 470
    .local v4, "e":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    invoke-static {v4}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->access$800(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 471
    goto :goto_0

    .line 473
    :cond_0
    if-eqz v0, :cond_1

    .line 474
    const-string v5, "                             Elapsed(ms)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 477
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v6, "%20s : %s\n"

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 478
    .end local v2    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;>;"
    .end local v3    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .end local v4    # "e":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    goto :goto_0

    .line 481
    :cond_2
    invoke-static {p2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->displayCounters(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 484
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 485
    .local v2, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stats:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 487
    .end local v2    # "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;>;"
    goto :goto_1

    .line 488
    :cond_3
    return-void
.end method

.method private displayPhaseSubtree(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V
    .locals 20
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "parent"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .param p3, "parentTime"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    .param p4, "rootElapsed"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 358
    move-object/from16 v0, p1

    const-string v1, "%24s  %% of total  %s\n"

    .line 359
    .local v1, "headerFormat":Ljava/lang/String;
    const-string v2, "%20s             %3d %s\n"

    .line 360
    .local v2, "parentFormat":Ljava/lang/String;
    const-string v3, "%24s         %3d %s\n"

    .line 361
    .local v3, "dataFormat":Ljava/lang/String;
    const-string v4, "                         -------------------------"

    .line 364
    .local v4, "divider":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$400(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v5

    if-nez v5, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getEnd()J

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getStart()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 369
    return-void

    .line 372
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, " "

    const/4 v10, 0x0

    aput-object v9, v6, v10

    sget-object v9, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->DISPLAY_COLUMNS:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v9, v6, v11

    invoke-virtual {v0, v1, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 374
    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p2, v9, v10

    .line 375
    invoke-static/range {p3 .. p4}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->access$500(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    aput-object p3, v9, v5

    .line 374
    invoke-virtual {v0, v2, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 376
    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$400(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v9

    array-length v12, v9

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v9, v13

    .line 379
    .local v14, "child":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    move-object/from16 v15, p0

    iget-object v5, v15, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 380
    .local v5, "time":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getStart()J

    move-result-wide v17

    cmp-long v17, v17, v7

    if-nez v17, :cond_2

    .line 381
    move-object/from16 v8, p4

    const/16 v16, 0x2

    goto :goto_1

    .line 383
    :cond_2
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v14, v7, v10

    .line 385
    move-object/from16 v8, p4

    invoke-static {v5, v8}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->access$500(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v11

    const/16 v16, 0x2

    aput-object v5, v7, v16

    .line 383
    invoke-virtual {v0, v3, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 378
    .end local v5    # "time":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    .end local v14    # "child":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v16

    const-wide/16 v7, 0x0

    goto :goto_0

    .line 388
    :cond_3
    move-object/from16 v15, p0

    move-object/from16 v8, p4

    return-void
.end method

.method private displayRecoveryInterval()Ljava/lang/String;
    .locals 22

    .line 286
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v1, "returnInfo":Ljava/lang/StringBuilder;
    iget-object v2, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-object v2, v2, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEnd:Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 289
    .local v2, "cEnd":Lcom/sleepycat/je/recovery/CheckpointEnd;
    if-eqz v2, :cond_1

    .line 290
    const-string v3, "checkpointId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getInvoker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 293
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 295
    :cond_0
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/je/recovery/CheckpointEnd;->getInvoker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 301
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    .line 303
    .local v3, "fileMax":J
    iget-object v5, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v5, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    const-wide/16 v13, -0x1

    cmp-long v5, v5, v13

    const-wide/16 v15, 0x0

    if-nez v5, :cond_2

    move-wide v5, v15

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v5, v5, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 305
    .local v5, "useStart":J
    :goto_1
    iget-object v7, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v17

    .line 309
    .local v17, "head":J
    iget-object v7, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_3

    move-wide v7, v15

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v7, v7, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    .line 311
    .local v7, "useEnd":J
    :goto_2
    iget-object v9, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v9, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    move-wide v11, v3

    invoke-static/range {v7 .. v12}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v19

    .line 315
    .local v19, "ckpt":J
    iget-object v9, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v9, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    cmp-long v9, v9, v13

    if-nez v9, :cond_4

    move-wide v9, v15

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v9, v9, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 317
    .local v9, "useLast":J
    :goto_3
    iget-object v11, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v11, v11, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    move-wide v13, v3

    invoke-static/range {v9 .. v14}, Lcom/sleepycat/je/utilint/DbLsn;->getNoCleaningDistance(JJJ)J

    move-result-wide v11

    .line 320
    .local v11, "tail":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "firstActive["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v14, v14, Lcom/sleepycat/je/recovery/RecoveryInfo;->firstActiveLsn:J

    .line 322
    invoke-static {v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], ckptStart["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v14, v14, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointStartLsn:J

    .line 324
    invoke-static {v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], ckptEnd["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v14, v14, Lcom/sleepycat/je/recovery/RecoveryInfo;->checkpointEndLsn:J

    .line 326
    invoke-static {v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], lastUsed["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    iget-wide v14, v14, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastUsedLsn:J

    .line 328
    invoke-static {v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 320
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v13, "sb":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14, v13}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 332
    .local v14, "f":Ljava/util/Formatter;
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v21, "firstActive->ckptStart"

    aput-object v21, v15, v16

    const/16 v16, 0x1

    .line 333
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v15, v16

    const/16 v16, 0x2

    const-string v21, "ckptStart->ckptEnd"

    aput-object v21, v15, v16

    const/16 v16, 0x3

    .line 334
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v15, v16

    const/16 v16, 0x4

    const-string v21, "ckptEnd->end bytes"

    aput-object v21, v15, v16

    const/16 v16, 0x5

    .line 335
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v15, v16

    .line 332
    const-string v0, "%24s bytes = %,d\n%24s bytes = %,d\n%24s bytes = %,d"

    invoke-virtual {v14, v0, v15}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\nApproximate distances:\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method private displayTimestamp(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # Ljava/lang/Long;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 344
    .local v1, "timestampFormatter":Ljava/util/Formatter;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const-string v3, "%tD,%tH:%tM:%tS:%tL"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public displayStats(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "root"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->lastDumpMillis:J

    .line 418
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 420
    .local v0, "rootTime":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n=== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$700(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Report  ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getStart()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->displayTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end   = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->displayTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    if-ne p2, v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker;->displayRecoveryInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 429
    .local v2, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 430
    .local v3, "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    invoke-static {v3}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v4

    if-nez v4, :cond_1

    .line 431
    if-eq v3, p2, :cond_2

    .line 432
    goto :goto_0

    .line 434
    :cond_1
    invoke-static {v3}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v4

    if-eq v4, p2, :cond_2

    .line 435
    goto :goto_0

    .line 438
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/sleepycat/je/dbi/StartupTracker;->displayPhaseSubtree(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V

    .line 439
    .end local v2    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;>;"
    .end local v3    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    goto :goto_0

    .line 442
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/StartupTracker;->displayCounters(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 445
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 446
    .local v2, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 447
    .restart local v3    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    invoke-static {v3}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v4

    if-eq v4, p2, :cond_4

    .line 448
    goto :goto_1

    .line 450
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stats:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 452
    .end local v2    # "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v3    # "p":Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    goto :goto_1

    .line 453
    :cond_5
    return-void
.end method

.method public getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    .locals 1
    .param p1, "phase"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    return-object v0
.end method

.method public setProgress(Lcom/sleepycat/je/RecoveryProgress;)V
    .locals 7
    .param p1, "progress"    # Lcom/sleepycat/je/RecoveryProgress;

    .line 253
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 254
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getRecoveryProgressListener()Lcom/sleepycat/je/ProgressListener;

    move-result-object v0

    .line 256
    .local v0, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, v0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/je/ProgressListener;->progress(Ljava/lang/Enum;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    return-void

    .line 260
    :cond_1
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->PROGRESS_LISTENER_HALT:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v4, "EnvironmentConfig.recoveryProgressListener: "

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v1
.end method

.method public setRecoveryInfo(Lcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 0
    .param p1, "rInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 168
    iput-object p1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 169
    return-void
.end method

.method public setStats(Lcom/sleepycat/je/dbi/StartupTracker$Phase;Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 1
    .param p1, "phase"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .param p2, "sg"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 278
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->stats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    .locals 4
    .param p1, "phase"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->access$100(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V

    .line 182
    new-instance v1, Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;-><init>()V

    .line 183
    .local v1, "c":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->counters:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogManager;->getNCacheMiss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setCacheMissStart(J)V

    .line 193
    :cond_1
    return-void
.end method

.method public stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    .locals 10
    .param p1, "phase"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 199
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker;->elapsed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 200
    .local v0, "e":Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    invoke-static {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->access$200(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/StartupTracker;->getCounter(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    move-result-object v1

    .line 202
    .local v1, "c":Lcom/sleepycat/je/dbi/StartupTracker$Counter;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogManager;->getNCacheMiss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->setCacheMissEnd(J)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    if-eqz v3, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/StartupTracker;->info:Lcom/sleepycat/je/recovery/RecoveryInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/StartupTracker;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-static {v3, v4, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->STARTUP_DUMP_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 222
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    .line 225
    .local v3, "dumpThreshold":I
    invoke-static {p1}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    move-result-object v4

    if-nez v4, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getEnd()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getStart()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 227
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v5, "p":Ljava/io/PrintStream;
    invoke-virtual {p0, v5, p1}, Lcom/sleepycat/je/dbi/StartupTracker;->displayStats(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 230
    iget-object v6, p0, Lcom/sleepycat/je/dbi/StartupTracker;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 231
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-static {v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 232
    return-void

    .line 240
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "p":Ljava/io/PrintStream;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/dbi/StartupTracker;->lastDumpMillis:J

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 241
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    .restart local v5    # "p":Ljava/io/PrintStream;
    invoke-direct {p0, v5, p1}, Lcom/sleepycat/je/dbi/StartupTracker;->displayInterim(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 244
    iget-object v6, p0, Lcom/sleepycat/je/dbi/StartupTracker;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/dbi/StartupTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 246
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "p":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method
