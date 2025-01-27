.class public Lorg/HdrHistogram/DoubleHistogramIterationValue;
.super Ljava/lang/Object;
.source "DoubleHistogramIterationValue.java"


# instance fields
.field private final integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;


# direct methods
.method constructor <init>(Lorg/HdrHistogram/HistogramIterationValue;)V
    .locals 0
    .param p1, "integerHistogramIterationValue"    # Lorg/HdrHistogram/HistogramIterationValue;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    .line 45
    return-void
.end method


# virtual methods
.method public getCountAddedInThisIterationStep()J
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAddedInThisIterationStep()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCountAtValueIteratedTo()J
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntegerHistogramIterationValue()Lorg/HdrHistogram/HistogramIterationValue;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    return-object v0
.end method

.method public getPercentile()D
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentile()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPercentileLevelIteratedTo()D
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalCountToThisValue()J
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getTotalCountToThisValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalValueToThisValue()D
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getTotalValueToThisValue()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    .line 82
    invoke-virtual {v2}, Lorg/HdrHistogram/HistogramIterationValue;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 81
    return-wide v0
.end method

.method public getValueIteratedFrom()D
    .locals 4

    .line 64
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedFrom()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    .line 65
    invoke-virtual {v2}, Lorg/HdrHistogram/HistogramIterationValue;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 64
    return-wide v0
.end method

.method public getValueIteratedTo()D
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    .line 60
    invoke-virtual {v2}, Lorg/HdrHistogram/HistogramIterationValue;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 59
    return-wide v0
.end method

.method reset()V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogramIterationValue;->integerHistogramIterationValue:Lorg/HdrHistogram/HistogramIterationValue;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramIterationValue;->reset()V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "valueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getValueIteratedTo()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevValueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getValueIteratedFrom()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countAtValueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countAddedInThisIterationStep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getCountAddedInThisIterationStep()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCountToThisValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getTotalCountToThisValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalValueToThisValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getTotalValueToThisValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getPercentile()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentileLevelIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
