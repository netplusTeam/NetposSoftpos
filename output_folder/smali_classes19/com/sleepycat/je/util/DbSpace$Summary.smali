.class Lcom/sleepycat/je/util/DbSpace$Summary;
.super Ljava/lang/Object;
.source "DbSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/DbSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Summary"
.end annotation


# static fields
.field static final HEADER:Ljava/lang/String; = "                      % Utilized\n  File    Size (kB)  Avg  Min  Max  \n--------  ---------  ---- ---  ---"

.field static final RECALC_EXPIRED_HEADER:Ljava/lang/String; = "                      % Utilized    w/Expiration\n  File    Size (kB)  Avg  Min  Max  Recalculated\n--------  ---------  ---  ---  ---  ------------"

.field static final RECALC_HEADER:Ljava/lang/String; = "                      % Utilized    Recalculated\n  File    Size (kB)  Avg  Min  Max  Avg  Min  Max\n--------  ---------  ---  ---  ---  ---  ---  ---"


# instance fields
.field expiredSize:J

.field fileNum:Ljava/lang/Long;

.field obsoleteSize:J

.field recalcExpiredSize:J

.field recalcObsoleteSize:J

.field final synthetic this$0:Lcom/sleepycat/je/util/DbSpace;

.field totalSize:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbSpace;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->this$0:Lcom/sleepycat/je/util/DbSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/util/DbSpace;Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/FileSummary;II)V
    .locals 4
    .param p2, "fileNum"    # Ljava/lang/Long;
    .param p3, "summary"    # Lcom/sleepycat/je/cleaner/FileSummary;
    .param p4, "recalcSummary"    # Lcom/sleepycat/je/cleaner/FileSummary;
    .param p5, "expiredSize"    # I
    .param p6, "recalcExpiredSize"    # I

    .line 451
    iput-object p1, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->this$0:Lcom/sleepycat/je/util/DbSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->fileNum:Ljava/lang/Long;

    .line 453
    iget p1, p3, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    .line 454
    invoke-virtual {p3}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    .line 455
    if-eqz p4, :cond_0

    .line 456
    invoke-virtual {p4}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    .line 458
    :cond_0
    int-to-long v0, p5

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    .line 459
    int-to-long v0, p6

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcExpiredSize:J

    .line 460
    return-void
.end method

.method private maxUtilization(JJ)I
    .locals 4
    .param p1, "obsolete"    # J
    .param p3, "expired"    # J

    .line 542
    nop

    .line 543
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    .line 542
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v0

    return v0
.end method

.method private minUtilization(JJ)I
    .locals 4
    .param p1, "obsolete"    # J
    .param p3, "expired"    # J

    .line 536
    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    .line 537
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    .line 536
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v0

    return v0
.end method

.method private pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "digits"    # I
    .param p4, "padChar"    # C

    .line 551
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    .line 552
    .local v0, "padSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 553
    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->print(C)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 556
    return-void
.end method


# virtual methods
.method add(Lcom/sleepycat/je/util/DbSpace$Summary;)V
    .locals 4
    .param p1, "o"    # Lcom/sleepycat/je/util/DbSpace$Summary;

    .line 463
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    iget-wide v2, p1, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    .line 464
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    iget-wide v2, p1, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    .line 465
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    iget-wide v2, p1, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    .line 466
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    iget-wide v2, p1, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    .line 467
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcExpiredSize:J

    iget-wide v2, p1, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcExpiredSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcExpiredSize:J

    .line 468
    return-void
.end method

.method avgRecalcUtilization()I
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->minRecalcUtilization()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxRecalcUtilization()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method avgUtilization()I
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->minUtilization()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxUtilization()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method expRecalcUtilization()I
    .locals 4

    .line 520
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcExpiredSize:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbSpace$Summary;->minUtilization(JJ)I

    move-result v0

    return v0
.end method

.method maxRecalcUtilization()I
    .locals 4

    .line 532
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxUtilization(JJ)I

    move-result v0

    return v0
.end method

.method maxUtilization()I
    .locals 4

    .line 516
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxUtilization(JJ)I

    move-result v0

    return v0
.end method

.method minRecalcUtilization()I
    .locals 4

    .line 528
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->recalcObsoleteSize:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbSpace$Summary;->minUtilization(JJ)I

    move-result v0

    return v0
.end method

.method minUtilization()I
    .locals 4

    .line 512
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->obsoleteSize:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbSpace$Summary;->minUtilization(JJ)I

    move-result v0

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 472
    iget-object v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->fileNum:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x30

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    goto :goto_0

    .line 475
    :cond_0
    const-string v0, " TOTALS "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 478
    :goto_0
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->totalSize:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 480
    .local v0, "kb":I
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0x20

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 482
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->avgUtilization()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 484
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->minUtilization()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 486
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxUtilization()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 489
    iget-object v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->this$0:Lcom/sleepycat/je/util/DbSpace;

    invoke-static {v2}, Lcom/sleepycat/je/util/DbSpace;->access$000(Lcom/sleepycat/je/util/DbSpace;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    const-string v1, "      "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->expRecalcUtilization()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    goto :goto_1

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/util/DbSpace$Summary;->this$0:Lcom/sleepycat/je/util/DbSpace;

    invoke-static {v2}, Lcom/sleepycat/je/util/DbSpace;->access$100(Lcom/sleepycat/je/util/DbSpace;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->avgRecalcUtilization()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 498
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->minRecalcUtilization()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 500
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/sleepycat/je/util/DbSpace$Summary;->maxRecalcUtilization()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/sleepycat/je/util/DbSpace$Summary;->pad(Ljava/io/PrintStream;Ljava/lang/String;IC)V

    .line 504
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 505
    return-void
.end method
