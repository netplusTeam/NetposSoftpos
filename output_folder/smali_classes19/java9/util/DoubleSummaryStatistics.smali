.class public Ljava9/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava9/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    .line 71
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    .line 78
    return-void
.end method

.method public constructor <init>(JDDD)V
    .locals 3
    .param p1, "count"    # J
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "sum"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    .line 71
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    .line 112
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 114
    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 115
    cmpl-double v0, p3, p5

    if-gtz v0, :cond_5

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "ncount":I
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_1
    invoke-static {p7, p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_2
    if-lez v0, :cond_4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 130
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Some, not all, of the minimum, maximum, or sum is NaN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_4
    :goto_0
    iput-wide p1, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    .line 133
    iput-wide p7, p0, Ljava9/util/DoubleSummaryStatistics;->sum:D

    .line 134
    iput-wide p7, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    .line 135
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava9/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 136
    iput-wide p3, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    .line 137
    iput-wide p5, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    goto :goto_1

    .line 116
    .end local v0    # "ncount":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_6
    :goto_1
    return-void

    .line 113
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sumWithCompensation(D)V
    .locals 6
    .param p1, "value"    # D

    .line 177
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v0

    .line 178
    .local v0, "tmp":D
    iget-wide v2, p0, Ljava9/util/DoubleSummaryStatistics;->sum:D

    add-double v4, v2, v0

    .line 179
    .local v4, "velvel":D
    sub-double v2, v4, v2

    sub-double/2addr v2, v0

    iput-wide v2, p0, Ljava9/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 180
    iput-wide v4, p0, Ljava9/util/DoubleSummaryStatistics;->sum:D

    .line 181
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 4
    .param p1, "value"    # D

    .line 149
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    .line 150
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    .line 151
    invoke-direct {p0, p1, p2}, Ljava9/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 152
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    .line 153
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    .line 154
    return-void
.end method

.method public combine(Ljava9/util/DoubleSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Ljava9/util/DoubleSummaryStatistics;

    .line 164
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava9/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    .line 165
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    .line 166
    iget-wide v0, p1, Ljava9/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljava9/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 167
    iget-wide v0, p1, Ljava9/util/DoubleSummaryStatistics;->sumCompensation:D

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Ljava9/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 168
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljava9/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    .line 169
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljava9/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    .line 170
    return-void
.end method

.method public final getAverage()D
    .locals 4

    .line 304
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCount()J
    .locals 2

    .line 189
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()D
    .locals 2

    .line 287
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final getMin()D
    .locals 2

    .line 273
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final getSum()D
    .locals 4

    .line 251
    iget-wide v0, p0, Ljava9/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Ljava9/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double/2addr v0, v2

    .line 252
    .local v0, "tmp":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-wide v2, p0, Ljava9/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    .line 259
    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 315
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 318
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 319
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 320
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 321
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 322
    invoke-virtual {p0}, Ljava9/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 315
    const-string v1, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
