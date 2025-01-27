.class public Lcom/sleepycat/je/utilint/LongMax;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "LongMax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongMax;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final max:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/LongMax;-><init>(J)V

    .line 31
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "max"    # J

    .line 33
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    return-void
.end method

.method static synthetic lambda$add$0(JJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "v"    # J

    .line 38
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$add$1(Lcom/sleepycat/je/utilint/LongMax;J)J
    .locals 2
    .param p0, "other"    # Lcom/sleepycat/je/utilint/LongMax;
    .param p1, "v"    # J

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "value"    # J

    .line 38
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->updateAndGet(Ljava/util/function/LongUnaryOperator;)J

    .line 39
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/LongMax;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongMax;

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda1;-><init>(Lcom/sleepycat/je/utilint/LongMax;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->updateAndGet(Ljava/util/function/LongUnaryOperator;)J

    .line 43
    return-void
.end method

.method public clear()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 73
    return-void
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMax;->copy()Lcom/sleepycat/je/utilint/LongMax;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongMax;
    .locals 3

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/LongMax;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongMax;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMax;->copy()Lcom/sleepycat/je/utilint/LongMax;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMax;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Z)Ljava/lang/String;
    .locals 4
    .param p1, "useCommas"    # Z

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 50
    .local v0, "val":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 51
    const-string v2, "unknown"

    return-object v2

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2
.end method

.method public isNotSet()Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongMax["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongMax;->max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
