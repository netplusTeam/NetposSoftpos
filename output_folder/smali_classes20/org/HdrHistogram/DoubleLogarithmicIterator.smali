.class public Lorg/HdrHistogram/DoubleLogarithmicIterator;
.super Ljava/lang/Object;
.source "DoubleLogarithmicIterator.java"

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

.field private final integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

.field private final iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;DD)V
    .locals 7
    .param p1, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "valueUnitsInFirstBucket"    # D
    .param p4, "logBase"    # D

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 43
    new-instance v6, Lorg/HdrHistogram/LogarithmicIterator;

    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 45
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v2, p2

    double-to-long v2, v2

    move-object v0, v6

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/LogarithmicIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;JD)V

    iput-object v6, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

    .line 48
    new-instance v0, Lorg/HdrHistogram/DoubleHistogramIterationValue;

    iget-object v1, v6, Lorg/HdrHistogram/LogarithmicIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/DoubleHistogramIterationValue;-><init>(Lorg/HdrHistogram/HistogramIterationValue;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    .line 49
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LogarithmicIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleLogarithmicIterator;->next()Lorg/HdrHistogram/DoubleHistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/DoubleHistogramIterationValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LogarithmicIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    .line 59
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LogarithmicIterator;->remove()V

    .line 65
    return-void
.end method

.method public reset(DD)V
    .locals 3
    .param p1, "valueUnitsInFirstBucket"    # D
    .param p3, "logBase"    # D

    .line 29
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->integerLogarithmicIterator:Lorg/HdrHistogram/LogarithmicIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleLogarithmicIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 30
    invoke-virtual {v1}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    .line 29
    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/HdrHistogram/LogarithmicIterator;->reset(JD)V

    .line 33
    return-void
.end method
