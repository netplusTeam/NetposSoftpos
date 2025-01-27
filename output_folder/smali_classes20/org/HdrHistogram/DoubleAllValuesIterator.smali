.class public Lorg/HdrHistogram/DoubleAllValuesIterator;
.super Ljava/lang/Object;
.source "DoubleAllValuesIterator.java"

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

.field private final integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

.field private final iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 2
    .param p1, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 34
    new-instance v0, Lorg/HdrHistogram/AllValuesIterator;

    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/AllValuesIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

    .line 35
    new-instance v1, Lorg/HdrHistogram/DoubleHistogramIterationValue;

    iget-object v0, v0, Lorg/HdrHistogram/AllValuesIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;-><init>(Lorg/HdrHistogram/HistogramIterationValue;)V

    iput-object v1, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    .line 36
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/AllValuesIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleAllValuesIterator;->next()Lorg/HdrHistogram/DoubleHistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/DoubleHistogramIterationValue;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/AllValuesIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    .line 46
    iget-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/AllValuesIterator;->remove()V

    .line 52
    return-void
.end method

.method public reset()V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/HdrHistogram/DoubleAllValuesIterator;->integerAllValuesIterator:Lorg/HdrHistogram/AllValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/AllValuesIterator;->reset()V

    .line 27
    return-void
.end method
