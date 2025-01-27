.class public Lcom/sleepycat/je/utilint/LongMaxStat;
.super Lcom/sleepycat/je/utilint/LongStat;
.source "LongMaxStat.java"


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
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxStat;->clear()V

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
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/LongMaxStat;->set(Ljava/lang/Long;)V

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

    .line 58
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 68
    const-string v0, "NONE"

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotSet()Z
    .locals 4

    .line 76
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

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

.method public negate()V
    .locals 0

    .line 63
    return-void
.end method

.method public setMax(J)Z
    .locals 2
    .param p1, "newValue"    # J

    .line 49
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 50
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/LongMaxStat;->counter:J

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
