.class public Lorg/HdrHistogram/AllValuesIterator;
.super Lorg/HdrHistogram/AbstractHistogramIterator;
.source "AllValuesIterator.java"

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

    .line 37
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lorg/HdrHistogram/AllValuesIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 39
    return-void
.end method

.method private reset(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 30
    invoke-super {p0, p1}, Lorg/HdrHistogram/AbstractHistogramIterator;->resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/HdrHistogram/AllValuesIterator;->visitedIndex:I

    .line 32
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 53
    iget-object v0, p0, Lorg/HdrHistogram/AllValuesIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/HdrHistogram/AllValuesIterator;->arrayTotalCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 57
    iget v0, p0, Lorg/HdrHistogram/AllValuesIterator;->currentIndex:I

    iget-object v1, p0, Lorg/HdrHistogram/AllValuesIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v1, v1, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 54
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method incrementIterationLevel()V
    .locals 1

    .line 43
    iget v0, p0, Lorg/HdrHistogram/AllValuesIterator;->currentIndex:I

    iput v0, p0, Lorg/HdrHistogram/AllValuesIterator;->visitedIndex:I

    .line 44
    return-void
.end method

.method public bridge synthetic next()Lorg/HdrHistogram/HistogramIterationValue;
    .locals 1

    .line 19
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method reachedIterationLevel()Z
    .locals 2

    .line 48
    iget v0, p0, Lorg/HdrHistogram/AllValuesIterator;->visitedIndex:I

    iget v1, p0, Lorg/HdrHistogram/AllValuesIterator;->currentIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 19
    invoke-super {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->remove()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/HdrHistogram/AllValuesIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0, v0}, Lorg/HdrHistogram/AllValuesIterator;->reset(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 27
    return-void
.end method
