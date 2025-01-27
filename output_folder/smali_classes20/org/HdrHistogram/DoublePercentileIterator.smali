.class public Lorg/HdrHistogram/DoublePercentileIterator;
.super Ljava/lang/Object;
.source "DoublePercentileIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field histogram:Lorg/HdrHistogram/DoubleHistogram;

.field private final integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

.field private final iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;I)V
    .locals 2
    .param p1, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "percentileTicksPerHalfDistance"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/HdrHistogram/DoublePercentileIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 38
    new-instance v0, Lorg/HdrHistogram/PercentileIterator;

    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {v0, v1, p2}, Lorg/HdrHistogram/PercentileIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;I)V

    iput-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

    .line 42
    new-instance v1, Lorg/HdrHistogram/DoubleHistogramIterationValue;

    iget-object v0, v0, Lorg/HdrHistogram/PercentileIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;-><init>(Lorg/HdrHistogram/HistogramIterationValue;)V

    iput-object v1, p0, Lorg/HdrHistogram/DoublePercentileIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/PercentileIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/HdrHistogram/DoublePercentileIterator;->next()Lorg/HdrHistogram/DoubleHistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/DoubleHistogramIterationValue;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/PercentileIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    .line 53
    iget-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/PercentileIterator;->remove()V

    .line 59
    return-void
.end method

.method public reset(I)V
    .locals 1
    .param p1, "percentileTicksPerHalfDistance"    # I

    .line 29
    iget-object v0, p0, Lorg/HdrHistogram/DoublePercentileIterator;->integerPercentileIterator:Lorg/HdrHistogram/PercentileIterator;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/PercentileIterator;->reset(I)V

    .line 30
    return-void
.end method
