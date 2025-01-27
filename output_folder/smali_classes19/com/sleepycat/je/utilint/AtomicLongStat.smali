.class public Lcom/sleepycat/je/utilint/AtomicLongStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "AtomicLongStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "value"    # J

    .line 35
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1
    .param p1, "count"    # J

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 64
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 69
    return-void
.end method

.method public clear()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 74
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 78
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    .line 79
    .local v0, "ret":Lcom/sleepycat/je/utilint/AtomicLongStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->set(Ljava/lang/Long;)V

    .line 82
    :cond_0
    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 4

    .line 105
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public copyAndClear()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 5

    .line 110
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V

    return-object v0
.end method

.method public bridge synthetic copyAndClear()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->copyAndClear()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public decrement()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 60
    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 3

    .line 115
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public increment()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 56
    return-void
.end method

.method public isNotSet()Z
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

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
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 96
    .local v0, "current":J
    iget-object v2, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    return-void

    .line 99
    .end local v0    # "current":J
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/Long;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Long;

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongStat;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 52
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->set(Ljava/lang/Long;)V

    return-void
.end method
