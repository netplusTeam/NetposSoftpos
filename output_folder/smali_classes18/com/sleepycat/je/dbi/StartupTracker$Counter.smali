.class public Lcom/sleepycat/je/dbi/StartupTracker$Counter;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/StartupTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# static fields
.field static DISPLAY_COLUMNS:Ljava/lang/String;


# instance fields
.field private endCacheMiss:J

.field private numAux:I

.field private numDeleted:I

.field private numProcessed:I

.field private numRead:I

.field private numRepeatIteratorReads:J

.field private startCacheMiss:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 618
    const-string v0, "      nRead nProcessed   nDeleted       nAux  nRepeatRd nCacheMiss"

    sput-object v0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->DISPLAY_COLUMNS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/sleepycat/je/dbi/StartupTracker$Counter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Counter;

    .line 554
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 6

    .line 565
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRead:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numDeleted:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numAux:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRepeatIteratorReads:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->endCacheMiss:J

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->startCacheMiss:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getNumProcessed()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    return v0
.end method

.method public incNumAux()V
    .locals 1

    .line 603
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numAux:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numAux:I

    .line 604
    return-void
.end method

.method public incNumDeleted()V
    .locals 1

    .line 590
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numDeleted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numDeleted:I

    .line 591
    return-void
.end method

.method public incNumProcessed()V
    .locals 1

    .line 582
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    .line 583
    return-void
.end method

.method public incNumRead()V
    .locals 1

    .line 574
    iget v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRead:I

    .line 575
    return-void
.end method

.method public setCacheMissEnd(J)V
    .locals 0
    .param p1, "miss"    # J

    .line 615
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->endCacheMiss:J

    .line 616
    return-void
.end method

.method public setCacheMissStart(J)V
    .locals 0
    .param p1, "miss"    # J

    .line 611
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->startCacheMiss:J

    .line 612
    return-void
.end method

.method public setNumDeleted(I)V
    .locals 0
    .param p1, "numDeleted"    # I

    .line 594
    iput p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numDeleted:I

    .line 595
    return-void
.end method

.method public setNumProcessed(I)V
    .locals 0
    .param p1, "numProcessed"    # I

    .line 586
    iput p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    .line 587
    return-void
.end method

.method public setNumRead(I)V
    .locals 0
    .param p1, "numRead"    # I

    .line 578
    iput p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRead:I

    .line 579
    return-void
.end method

.method public setRepeatIteratorReads(J)V
    .locals 0
    .param p1, "repeats"    # J

    .line 607
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRepeatIteratorReads:J

    .line 608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 625
    .local v1, "f":Ljava/util/Formatter;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRead:I

    .line 626
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numProcessed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numDeleted:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numAux:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->numRepeatIteratorReads:J

    .line 627
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->endCacheMiss:J

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Counter;->startCacheMiss:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 625
    const-string v3, "%,11d%,11d%,11d%,11d%,11d%,11d"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
