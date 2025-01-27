.class Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/StartupTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Elapsed"
.end annotation


# static fields
.field static DISPLAY_COLUMNS:Ljava/lang/String;


# instance fields
.field private end:J

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 494
    const-string v0, " Elapsed(ms)"

    sput-object v0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->DISPLAY_COLUMNS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/StartupTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$1;

    .line 491
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 491
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 491
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end()V

    return-void
.end method

.method static synthetic access$500(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 491
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->getPercentage(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 491
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    return-wide v0
.end method

.method private end()V
    .locals 2

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end:J

    .line 515
    return-void
.end method

.method private getPercentage(Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;)I
    .locals 7
    .param p1, "rootTime"    # Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;

    .line 518
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 519
    return v0

    .line 522
    :cond_0
    iget-wide v1, p1, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end:J

    iget-wide v3, p1, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    sub-long/2addr v1, v3

    .line 523
    .local v1, "rootTotal":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 524
    return v0

    .line 527
    :cond_1
    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_2

    .line 528
    return v0

    .line 530
    :cond_2
    iget-wide v3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    sub-long/2addr v5, v3

    long-to-float v0, v5

    long-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    return v0
.end method

.method private start()V
    .locals 2

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    .line 510
    return-void
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .line 504
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 500
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 537
    .local v1, "f":Ljava/util/Formatter;
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->end:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 538
    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v7

    const-string v2, "%,13d"

    invoke-virtual {v1, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 540
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 541
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "started at"

    aput-object v5, v4, v7

    .line 542
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    const/4 v2, 0x2

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/StartupTracker$Elapsed;->start:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    .line 541
    const-string v2, "%13s  %tD,%tH:%tM:%tS:%tL"

    invoke-virtual {v1, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 544
    :cond_1
    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "none"

    aput-object v3, v2, v7

    const-string v3, "%13s"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 547
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
