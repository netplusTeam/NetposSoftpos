.class public Lorg/HdrHistogram/LogarithmicIterator;
.super Lorg/HdrHistogram/AbstractHistogramIterator;
.source "LogarithmicIterator.java"

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
.field currentStepHighestValueReportingLevel:J

.field currentStepLowestValueReportingLevel:J

.field logBase:D

.field nextValueReportingLevel:D

.field valueUnitsInFirstBucket:J


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;JD)V
    .locals 0
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "valueUnitsInFirstBucket"    # J
    .param p4, "logBase"    # D

    .line 48
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;-><init>()V

    .line 49
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/LogarithmicIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;JD)V

    .line 50
    return-void
.end method

.method private reset(Lorg/HdrHistogram/AbstractHistogram;JD)V
    .locals 4
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "valueUnitsInFirstBucket"    # J
    .param p4, "logBase"    # D

    .line 35
    invoke-super {p0, p1}, Lorg/HdrHistogram/AbstractHistogramIterator;->resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 36
    iput-wide p4, p0, Lorg/HdrHistogram/LogarithmicIterator;->logBase:D

    .line 37
    iput-wide p2, p0, Lorg/HdrHistogram/LogarithmicIterator;->valueUnitsInFirstBucket:J

    .line 38
    long-to-double v0, p2

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->nextValueReportingLevel:D

    .line 39
    double-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepHighestValueReportingLevel:J

    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepLowestValueReportingLevel:J

    .line 41
    return-void
.end method


# virtual methods
.method getValueIteratedTo()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepHighestValueReportingLevel:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 6

    .line 54
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/LogarithmicIterator;->nextValueReportingLevel:D

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/HdrHistogram/LogarithmicIterator;->nextValueAtIndex:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method incrementIterationLevel()V
    .locals 4

    .line 66
    iget-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->nextValueReportingLevel:D

    iget-wide v2, p0, Lorg/HdrHistogram/LogarithmicIterator;->logBase:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->nextValueReportingLevel:D

    .line 67
    double-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepHighestValueReportingLevel:J

    .line 68
    iget-object v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v1, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepHighestValueReportingLevel:J

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepLowestValueReportingLevel:J

    .line 69
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
    .locals 4

    .line 78
    iget-wide v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentValueAtIndex:J

    iget-wide v2, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentStepLowestValueReportingLevel:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/HdrHistogram/LogarithmicIterator;->currentIndex:I

    iget-object v2, p0, Lorg/HdrHistogram/LogarithmicIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v2, v2, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->remove()V

    return-void
.end method

.method public reset(JD)V
    .locals 6
    .param p1, "valueUnitsInFirstBucket"    # J
    .param p3, "logBase"    # D

    .line 31
    iget-object v1, p0, Lorg/HdrHistogram/LogarithmicIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/LogarithmicIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;JD)V

    .line 32
    return-void
.end method
