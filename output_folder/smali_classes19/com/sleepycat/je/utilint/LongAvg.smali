.class public Lcom/sleepycat/je/utilint/LongAvg;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "LongAvg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongAvg;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongAvg;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvg;

    .line 35
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    iget-object v2, p1, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 37
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 38
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1
    .param p1, "value"    # J

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 43
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/LongAvg;)V
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvg;

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 48
    return-void
.end method

.method public clear()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 97
    return-void
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvg;->copy()Lcom/sleepycat/je/utilint/LongAvg;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvg;
    .locals 1

    .line 79
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvg;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvg;-><init>(Lcom/sleepycat/je/utilint/LongAvg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvg;->copy()Lcom/sleepycat/je/utilint/LongAvg;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 87
    .local v0, "cnt":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvg;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Z)Ljava/lang/String;
    .locals 3
    .param p1, "useCommas"    # Z

    .line 68
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvg;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "unknown"

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvg;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 72
    .local v0, "value":J
    if-eqz p1, :cond_1

    .line 73
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 72
    :goto_0
    return-object v2
.end method

.method public isNotSet()Z
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public negate()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongAvg[count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterval(Lcom/sleepycat/je/utilint/LongAvg;)V
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvg;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvg;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvg;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 57
    return-void
.end method
