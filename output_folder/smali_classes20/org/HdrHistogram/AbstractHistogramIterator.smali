.class abstract Lorg/HdrHistogram/AbstractHistogramIterator;
.super Ljava/lang/Object;
.source "AbstractHistogramIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/HdrHistogram/HistogramIterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field arrayTotalCount:J

.field countAtThisValue:J

.field currentIndex:I

.field final currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

.field currentValueAtIndex:J

.field private freshSubBucket:Z

.field histogram:Lorg/HdrHistogram/AbstractHistogram;

.field private integerToDoubleValueConversionRatio:D

.field nextValueAtIndex:J

.field prevValueIteratedTo:J

.field totalCountToCurrentIndex:J

.field totalCountToPrevIndex:J

.field totalValueToCurrentIndex:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v0}, Lorg/HdrHistogram/HistogramIterationValue;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    return-void
.end method

.method private exhaustedSubBuckets()Z
    .locals 2

    .line 138
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v1, v1, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getPercentileIteratedFrom()D
    .locals 4

    .line 130
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToPrevIndex:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getPercentileIteratedTo()D
    .locals 4

    .line 126
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getValueIteratedTo()J
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentValueAtIndex:J

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 66
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 64
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method abstract incrementIterationLevel()V
.end method

.method incrementSubBucket()V
    .locals 3

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->freshSubBucket:Z

    .line 144
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    .line 145
    iget-object v2, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v2, v1}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentValueAtIndex:J

    .line 147
    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->nextValueAtIndex:J

    .line 148
    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/HistogramIterationValue;
    .locals 26

    move-object/from16 v0, p0

    .line 77
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->exhaustedSubBuckets()Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    iget-object v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v2, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->countAtThisValue:J

    .line 79
    iget-boolean v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->freshSubBucket:Z

    if-eqz v3, :cond_0

    .line 80
    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    .line 81
    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalValueToCurrentIndex:J

    iget-object v5, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v6, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentValueAtIndex:J

    invoke-virtual {v5, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v5

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalValueToCurrentIndex:J

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->freshSubBucket:Z

    .line 84
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->reachedIterationLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->getValueIteratedTo()J

    move-result-wide v13

    .local v13, "valueIteratedTo":J
    move-wide v3, v13

    .line 86
    iget-object v2, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    iget-wide v5, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->prevValueIteratedTo:J

    iget-wide v7, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->countAtThisValue:J

    iget-wide v9, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    move-wide v11, v9

    move-wide v15, v13

    .end local v13    # "valueIteratedTo":J
    .local v15, "valueIteratedTo":J
    iget-wide v13, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToPrevIndex:J

    sub-long v13, v9, v13

    move-object/from16 v21, v2

    move-wide v1, v9

    move-wide v9, v13

    iget-wide v13, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalValueToCurrentIndex:J

    move-wide/from16 v22, v15

    .end local v15    # "valueIteratedTo":J
    .local v22, "valueIteratedTo":J
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    long-to-double v1, v1

    mul-double/2addr v1, v15

    move-wide/from16 v24, v3

    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    long-to-double v3, v3

    div-double v15, v1, v3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->getPercentileIteratedTo()D

    move-result-wide v17

    iget-wide v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->integerToDoubleValueConversionRatio:D

    move-wide/from16 v19, v1

    .line 86
    move-object/from16 v2, v21

    move-wide/from16 v3, v24

    invoke-virtual/range {v2 .. v20}, Lorg/HdrHistogram/HistogramIterationValue;->set(JJJJJJDDD)V

    .line 90
    move-wide/from16 v1, v22

    .end local v22    # "valueIteratedTo":J
    .local v1, "valueIteratedTo":J
    iput-wide v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->prevValueIteratedTo:J

    .line 91
    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    iput-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToPrevIndex:J

    .line 93
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->incrementIterationLevel()V

    .line 94
    iget-object v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v3}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 97
    iget-object v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    return-object v3

    .line 95
    :cond_1
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 99
    .end local v1    # "valueIteratedTo":J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogramIterator;->incrementSubBucket()V

    goto/16 :goto_0

    .line 103
    :cond_3
    iget-object v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, v0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    goto :goto_1

    .line 107
    :cond_4
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 105
    :cond_5
    :goto_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method abstract reachedIterationLevel()Z
.end method

.method public remove()V
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method resetIterator(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 6
    .param p1, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 40
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 41
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->arrayTotalCount:J

    .line 42
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->integerToDoubleValueConversionRatio:D

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIndex:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentValueAtIndex:J

    .line 45
    iget v2, p1, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    iput-wide v4, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->nextValueAtIndex:J

    .line 46
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->prevValueIteratedTo:J

    .line 47
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToPrevIndex:J

    .line 48
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalCountToCurrentIndex:J

    .line 49
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->totalValueToCurrentIndex:J

    .line 50
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->countAtThisValue:J

    .line 51
    iput-boolean v3, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->freshSubBucket:Z

    .line 52
    iget-object v0, p0, Lorg/HdrHistogram/AbstractHistogramIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->reset()V

    .line 53
    return-void
.end method
