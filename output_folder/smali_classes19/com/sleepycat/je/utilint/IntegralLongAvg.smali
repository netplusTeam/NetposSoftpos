.class public Lcom/sleepycat/je/utilint/IntegralLongAvg;
.super Ljava/lang/Number;
.source "IntegralLongAvg.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private denominator:J

.field private factor:J

.field private numerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 29
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 21
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    .line 30
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 31
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 32
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J
    .param p5, "factor"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 21
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    .line 24
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 25
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 26
    iput-wide p5, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V
    .locals 2
    .param p1, "val"    # Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 34
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 21
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    .line 35
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 36
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 37
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 41
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    iget-wide v2, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 42
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    iget-wide v2, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 43
    return-void
.end method

.method public compute()J
    .locals 6

    .line 51
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    iget-wide v4, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->factor:J

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public doubleValue()D
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->compute()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->compute()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public getDenominator()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->compute()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->compute()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDenominator(J)V
    .locals 0
    .param p1, "denominator"    # J

    .line 69
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 70
    return-void
.end method

.method public setNumerator(J)V
    .locals 0
    .param p1, "numerator"    # J

    .line 61
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 62
    return-void
.end method

.method public subtract(Lcom/sleepycat/je/utilint/IntegralLongAvg;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/utilint/IntegralLongAvg;

    .line 46
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    iget-wide v2, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->numerator:J

    .line 47
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    iget-wide v2, p1, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/IntegralLongAvg;->denominator:J

    .line 48
    return-void
.end method
