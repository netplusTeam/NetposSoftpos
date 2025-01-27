.class public Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "IntegralLongAvgStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "Lcom/sleepycat/je/utilint/IntegralLongAvg;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private value:Lcom/sleepycat/je/utilint/IntegralLongAvg;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJ)V
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 41
    new-instance v0, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/sleepycat/je/utilint/IntegralLongAvg;-><init>(JJ)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJJ)V
    .locals 8
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J
    .param p7, "factor"    # J

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 33
    new-instance v7, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-object v0, v7

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/utilint/IntegralLongAvg;-><init>(JJJ)V

    move-object v0, p0

    iput-object v7, v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Lcom/sleepycat/je/utilint/IntegralLongAvg;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "otherStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Lcom/sleepycat/je/utilint/IntegralLongAvg;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->add(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V

    .line 57
    return-void
.end method

.method public clear()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 88
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Lcom/sleepycat/je/utilint/IntegralLongAvg;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Lcom/sleepycat/je/utilint/IntegralLongAvg;",
            ">;"
        }
    .end annotation

    .line 61
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Lcom/sleepycat/je/utilint/IntegralLongAvg;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->copy()Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    .line 62
    .local v0, "ret":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    iget-object v1, v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->subtract(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V

    .line 63
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->copy()Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    .locals 3

    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    .line 78
    .local v0, "ret":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    new-instance v1, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/IntegralLongAvg;-><init>(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V

    iput-object v1, v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v0

    .line 80
    .end local v0    # "ret":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "unexpected":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->copy()Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/sleepycat/je/utilint/IntegralLongAvg;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

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

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->getDenominator()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->setDenominator(J)V

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->getNumerator()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->setNumerator(J)V

    .line 72
    :cond_0
    return-void
.end method

.method public set(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V
    .locals 0
    .param p1, "newValue"    # Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 51
    iput-object p1, p0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->value:Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 52
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->set(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V

    return-void
.end method
