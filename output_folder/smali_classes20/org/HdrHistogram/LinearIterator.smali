.class public Lorg/HdrHistogram/LinearIterator;
.super Lorg/HdrHistogram/AbstractHistogramIterator;
.source "LinearIterator.java"

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
.field private currentStepHighestValueReportingLevel:J

.field private currentStepLowestValueReportingLevel:J

.field private valueUnitsPerBucket:J


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 0
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "valueUnitsPerBucket"    # J

    .line 42
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;-><init>()V

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/LinearIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 44
    return-void
.end method

.method private reset(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 2
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "valueUnitsPerBucket"    # J

    .line 32
    invoke-super {p0, p1}, Lorg/HdrHistogram/AbstractHistogramIterator;->resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 33
    iput-wide p2, p0, Lorg/HdrHistogram/LinearIterator;->valueUnitsPerBucket:J

    .line 34
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    iput-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepLowestValueReportingLevel:J

    .line 36
    return-void
.end method


# virtual methods
.method getValueIteratedTo()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 6

    .line 48
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    return v1

    .line 58
    :cond_0
    iget-wide v2, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    iget-wide v4, p0, Lorg/HdrHistogram/LinearIterator;->nextValueAtIndex:J

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

    .line 63
    iget-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    iget-wide v2, p0, Lorg/HdrHistogram/LinearIterator;->valueUnitsPerBucket:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    .line 64
    iget-object v0, p0, Lorg/HdrHistogram/LinearIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v1, p0, Lorg/HdrHistogram/LinearIterator;->currentStepHighestValueReportingLevel:J

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentStepLowestValueReportingLevel:J

    .line 65
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

    .line 74
    iget-wide v0, p0, Lorg/HdrHistogram/LinearIterator;->currentValueAtIndex:J

    iget-wide v2, p0, Lorg/HdrHistogram/LinearIterator;->currentStepLowestValueReportingLevel:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/HdrHistogram/LinearIterator;->currentIndex:I

    iget-object v2, p0, Lorg/HdrHistogram/LinearIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

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

.method public reset(J)V
    .locals 1
    .param p1, "valueUnitsPerBucket"    # J

    .line 28
    iget-object v0, p0, Lorg/HdrHistogram/LinearIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0, v0, p1, p2}, Lorg/HdrHistogram/LinearIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 29
    return-void
.end method
