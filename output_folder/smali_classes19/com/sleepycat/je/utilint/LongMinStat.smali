.class public Lcom/sleepycat/je/utilint/LongMinStat;
.super Lcom/sleepycat/je/utilint/LongStat;
.source "LongMinStat.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 28
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMinStat;->clear()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "counter"    # J

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 35
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 40
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/LongMinStat;->set(Ljava/lang/Long;)V

    .line 41
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 4
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

    .line 52
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMinStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 4

    .line 61
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    const-string v0, "NONE"

    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public negate()V
    .locals 0

    .line 57
    return-void
.end method

.method public setMin(J)V
    .locals 2
    .param p1, "newValue"    # J

    .line 47
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongMinStat;->counter:J

    .line 48
    return-void
.end method
