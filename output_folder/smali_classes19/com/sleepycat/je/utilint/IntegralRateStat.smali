.class public Lcom/sleepycat/je/utilint/IntegralRateStat;
.super Lcom/sleepycat/je/utilint/LongStat;
.source "IntegralRateStat.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final factor:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat;Lcom/sleepycat/je/utilint/Stat;J)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p5, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "+",
            "Ljava/lang/Number;",
            ">;J)V"
        }
    .end annotation

    .line 29
    .local p3, "divisor":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<+Ljava/lang/Number;>;"
    .local p4, "dividend":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<+Ljava/lang/Number;>;"
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 30
    iput-wide p5, p0, Lcom/sleepycat/je/utilint/IntegralRateStat;->factor:J

    .line 32
    invoke-direct {p0, p3, p4}, Lcom/sleepycat/je/utilint/IntegralRateStat;->calculateRate(Lcom/sleepycat/je/utilint/Stat;Lcom/sleepycat/je/utilint/Stat;)V

    .line 33
    return-void
.end method

.method private calculateRate(Lcom/sleepycat/je/utilint/Stat;Lcom/sleepycat/je/utilint/Stat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "divisor":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<+Ljava/lang/Number;>;"
    .local p2, "dividend":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<+Ljava/lang/Number;>;"
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/IntegralRateStat;->factor:J

    mul-long/2addr v0, v2

    .line 43
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralRateStat;->counter:J

    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralRateStat;->counter:J

    .line 46
    :goto_2
    return-void
.end method
