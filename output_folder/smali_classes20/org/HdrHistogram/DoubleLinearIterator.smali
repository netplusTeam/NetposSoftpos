.class public Lorg/HdrHistogram/DoubleLinearIterator;
.super Ljava/lang/Object;
.source "DoubleLinearIterator.java"

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

.field private final integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

.field private final iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 4
    .param p1, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "valueUnitsPerBucket"    # D

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/HdrHistogram/DoubleLinearIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 37
    new-instance v0, Lorg/HdrHistogram/LinearIterator;

    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 39
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v2, p2

    double-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/HdrHistogram/LinearIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;J)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

    .line 41
    new-instance v1, Lorg/HdrHistogram/DoubleHistogramIterationValue;

    iget-object v0, v0, Lorg/HdrHistogram/LinearIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;-><init>(Lorg/HdrHistogram/HistogramIterationValue;)V

    iput-object v1, p0, Lorg/HdrHistogram/DoubleLinearIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    .line 42
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LinearIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleLinearIterator;->next()Lorg/HdrHistogram/DoubleHistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/DoubleHistogramIterationValue;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LinearIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    .line 52
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/LinearIterator;->remove()V

    .line 58
    return-void
.end method

.method public reset(D)V
    .locals 3
    .param p1, "valueUnitsPerBucket"    # D

    .line 28
    iget-object v0, p0, Lorg/HdrHistogram/DoubleLinearIterator;->integerLinearIterator:Lorg/HdrHistogram/LinearIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleLinearIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v1}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/LinearIterator;->reset(J)V

    .line 29
    return-void
.end method
