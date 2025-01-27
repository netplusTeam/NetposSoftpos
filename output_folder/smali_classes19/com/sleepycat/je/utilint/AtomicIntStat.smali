.class public Lcom/sleepycat/je/utilint/AtomicIntStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "AtomicIntStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;I)V
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "value"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

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
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "count"    # I

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 64
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 69
    return-void
.end method

.method public clear()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 74
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicIntStat;->copy()Lcom/sleepycat/je/utilint/AtomicIntStat;

    move-result-object v0

    .line 79
    .local v0, "ret":Lcom/sleepycat/je/utilint/AtomicIntStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/AtomicIntStat;->set(Ljava/lang/Integer;)V

    .line 82
    :cond_0
    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/AtomicIntStat;
    .locals 3

    .line 105
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;I)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicIntStat;->copy()Lcom/sleepycat/je/utilint/AtomicIntStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicIntStat;->copy()Lcom/sleepycat/je/utilint/AtomicIntStat;

    move-result-object v0

    return-object v0
.end method

.method public copyAndClear()Lcom/sleepycat/je/utilint/AtomicIntStat;
    .locals 4

    .line 110
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;I)V

    return-object v0
.end method

.method public bridge synthetic copyAndClear()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicIntStat;->copyAndClear()Lcom/sleepycat/je/utilint/AtomicIntStat;

    move-result-object v0

    return-object v0
.end method

.method public decrement()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 60
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 3

    .line 115
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v1, v1

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public increment()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 56
    return-void
.end method

.method public isNotSet()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

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

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 96
    .local v0, "current":I
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    return-void

    .line 99
    .end local v0    # "current":I
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicIntStat;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 52
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/AtomicIntStat;->set(Ljava/lang/Integer;)V

    return-void
.end method
