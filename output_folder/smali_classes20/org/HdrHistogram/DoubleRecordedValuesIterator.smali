.class public Lorg/HdrHistogram/DoubleRecordedValuesIterator;
.super Ljava/lang/Object;
.source "DoubleRecordedValuesIterator.java"

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

.field private final integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

.field private final iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 2
    .param p1, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 35
    new-instance v0, Lorg/HdrHistogram/RecordedValuesIterator;

    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/RecordedValuesIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    .line 36
    new-instance v1, Lorg/HdrHistogram/DoubleHistogramIterationValue;

    iget-object v0, v0, Lorg/HdrHistogram/RecordedValuesIterator;->currentIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;-><init>(Lorg/HdrHistogram/HistogramIterationValue;)V

    iput-object v1, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    .line 37
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/RecordedValuesIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->next()Lorg/HdrHistogram/DoubleHistogramIterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/DoubleHistogramIterationValue;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/RecordedValuesIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    .line 47
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->iterationValue:Lorg/HdrHistogram/DoubleHistogramIterationValue;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/RecordedValuesIterator;->remove()V

    .line 53
    return-void
.end method

.method public reset()V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecordedValuesIterator;->integerRecordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/RecordedValuesIterator;->reset()V

    .line 28
    return-void
.end method
