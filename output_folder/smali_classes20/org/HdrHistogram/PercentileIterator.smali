.class public Lorg/HdrHistogram/PercentileIterator;
.super Lorg/HdrHistogram/AbstractHistogramIterator;
.source "PercentileIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/HdrHistogram/AbstractHistogramIterator;",
        "Ljava/util/Iterator<",
        "Lorg/HdrHistogram/HistogramIterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field percentileLevelToIterateFrom:D

.field percentileLevelToIterateTo:D

.field percentileTicksPerHalfDistance:I

.field reachedLastRecordedValue:Z


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;I)V
    .locals 0
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "percentileTicksPerHalfDistance"    # I

    .line 45
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;-><init>()V

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/PercentileIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;I)V

    .line 47
    return-void
.end method

.method private reset(Lorg/HdrHistogram/AbstractHistogram;I)V
    .locals 2
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "percentileTicksPerHalfDistance"    # I

    .line 34
    invoke-super {p0, p1}, Lorg/HdrHistogram/AbstractHistogramIterator;->resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 35
    iput p2, p0, Lorg/HdrHistogram/PercentileIterator;->percentileTicksPerHalfDistance:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    .line 37
    iput-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateFrom:D

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/HdrHistogram/PercentileIterator;->reachedLastRecordedValue:Z

    .line 39
    return-void
.end method


# virtual methods
.method getPercentileIteratedFrom()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateFrom:D

    return-wide v0
.end method

.method getPercentileIteratedTo()D
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    return-wide v0
.end method

.method public hasNext()Z
    .locals 6

    .line 51
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 52
    return v1

    .line 54
    :cond_0
    iget-boolean v0, p0, Lorg/HdrHistogram/PercentileIterator;->reachedLastRecordedValue:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lorg/HdrHistogram/PercentileIterator;->arrayTotalCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 55
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iput-wide v2, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    .line 56
    iput-boolean v1, p0, Lorg/HdrHistogram/PercentileIterator;->reachedLastRecordedValue:Z

    .line 57
    return v1

    .line 59
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method incrementIterationLevel()V
    .locals 10

    .line 64
    iget-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    iput-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateFrom:D

    .line 78
    iget v2, p0, Lorg/HdrHistogram/PercentileIterator;->percentileTicksPerHalfDistance:I

    int-to-long v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double v0, v4, v0

    div-double v0, v4, v0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v0, v8

    double-to-long v0, v0

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    long-to-double v0, v0

    .line 80
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v2, v0

    .line 82
    .local v2, "percentileReportingTicks":J
    iget-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    long-to-double v6, v2

    div-double/2addr v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    .line 83
    return-void
.end method

.method public bridge synthetic next()Lorg/HdrHistogram/HistogramIterationValue;
    .locals 1

    .line 18
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method reachedIterationLevel()Z
    .locals 6

    .line 87
    iget-wide v0, p0, Lorg/HdrHistogram/PercentileIterator;->countAtThisValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 89
    :cond_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lorg/HdrHistogram/PercentileIterator;->totalCountToCurrentIndex:J

    long-to-double v4, v4

    mul-double/2addr v4, v2

    iget-wide v2, p0, Lorg/HdrHistogram/PercentileIterator;->arrayTotalCount:J

    long-to-double v2, v2

    div-double/2addr v4, v2

    .line 90
    .local v4, "currentPercentile":D
    iget-wide v2, p0, Lorg/HdrHistogram/PercentileIterator;->percentileLevelToIterateTo:D

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->remove()V

    return-void
.end method

.method public reset(I)V
    .locals 1
    .param p1, "percentileTicksPerHalfDistance"    # I

    .line 30
    iget-object v0, p0, Lorg/HdrHistogram/PercentileIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0, v0, p1}, Lorg/HdrHistogram/PercentileIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;I)V

    .line 31
    return-void
.end method
