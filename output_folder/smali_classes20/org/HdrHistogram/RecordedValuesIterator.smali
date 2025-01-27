.class public Lorg/HdrHistogram/RecordedValuesIterator;
.super Lorg/HdrHistogram/AbstractHistogramIterator;
.source "RecordedValuesIterator.java"

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
.field visitedIndex:I


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 0
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 36
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;-><init>()V

    .line 37
    invoke-direct {p0, p1}, Lorg/HdrHistogram/RecordedValuesIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 38
    return-void
.end method

.method private reset(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 29
    invoke-super {p0, p1}, Lorg/HdrHistogram/AbstractHistogramIterator;->resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/HdrHistogram/RecordedValuesIterator;->visitedIndex:I

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method incrementIterationLevel()V
    .locals 1

    .line 42
    iget v0, p0, Lorg/HdrHistogram/RecordedValuesIterator;->currentIndex:I

    iput v0, p0, Lorg/HdrHistogram/RecordedValuesIterator;->visitedIndex:I

    .line 43
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

    .line 47
    iget-object v0, p0, Lorg/HdrHistogram/RecordedValuesIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v1, p0, Lorg/HdrHistogram/RecordedValuesIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v0

    .line 48
    .local v0, "currentCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/HdrHistogram/RecordedValuesIterator;->visitedIndex:I

    iget v3, p0, Lorg/HdrHistogram/RecordedValuesIterator;->currentIndex:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->remove()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/HdrHistogram/RecordedValuesIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0, v0}, Lorg/HdrHistogram/RecordedValuesIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 26
    return-void
.end method
