.class public Lorg/HdrHistogram/HistogramIterationValue;
.super Ljava/lang/Object;
.source "HistogramIterationValue.java"


# instance fields
.field private countAddedInThisIterationStep:J

.field private countAtValueIteratedTo:J

.field private integerToDoubleValueConversionRatio:D

.field private percentile:D

.field private percentileLevelIteratedTo:D

.field private totalCountToThisValue:J

.field private totalValueToThisValue:J

.field private valueIteratedFrom:J

.field private valueIteratedTo:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public getCountAddedInThisIterationStep()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAddedInThisIterationStep:J

    return-wide v0
.end method

.method public getCountAtValueIteratedTo()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAtValueIteratedTo:J

    return-wide v0
.end method

.method public getDoubleValueIteratedFrom()D
    .locals 4

    .line 100
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedFrom:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/HdrHistogram/HistogramIterationValue;->integerToDoubleValueConversionRatio:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getDoubleValueIteratedTo()D
    .locals 4

    .line 92
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedTo:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/HdrHistogram/HistogramIterationValue;->integerToDoubleValueConversionRatio:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getIntegerToDoubleValueConversionRatio()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->integerToDoubleValueConversionRatio:D

    return-wide v0
.end method

.method public getPercentile()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentile:D

    return-wide v0
.end method

.method public getPercentileLevelIteratedTo()D
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentileLevelIteratedTo:D

    return-wide v0
.end method

.method public getTotalCountToThisValue()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalCountToThisValue:J

    return-wide v0
.end method

.method public getTotalValueToThisValue()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalValueToThisValue:J

    return-wide v0
.end method

.method public getValueIteratedFrom()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedFrom:J

    return-wide v0
.end method

.method public getValueIteratedTo()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedTo:J

    return-wide v0
.end method

.method reset()V
    .locals 2

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedTo:J

    .line 64
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedFrom:J

    .line 65
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAtValueIteratedTo:J

    .line 66
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAddedInThisIterationStep:J

    .line 67
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalCountToThisValue:J

    .line 68
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalValueToThisValue:J

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentile:D

    .line 70
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentileLevelIteratedTo:D

    .line 71
    return-void
.end method

.method set(JJJJJJDDD)V
    .locals 15
    .param p1, "valueIteratedTo"    # J
    .param p3, "valueIteratedFrom"    # J
    .param p5, "countAtValueIteratedTo"    # J
    .param p7, "countInThisIterationStep"    # J
    .param p9, "totalCountToThisValue"    # J
    .param p11, "totalValueToThisValue"    # J
    .param p13, "percentile"    # D
    .param p15, "percentileLevelIteratedTo"    # D
    .param p17, "integerToDoubleValueConversionRatio"    # D

    .line 51
    move-object v0, p0

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedTo:J

    .line 52
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedFrom:J

    .line 53
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lorg/HdrHistogram/HistogramIterationValue;->countAtValueIteratedTo:J

    .line 54
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lorg/HdrHistogram/HistogramIterationValue;->countAddedInThisIterationStep:J

    .line 55
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lorg/HdrHistogram/HistogramIterationValue;->totalCountToThisValue:J

    .line 56
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lorg/HdrHistogram/HistogramIterationValue;->totalValueToThisValue:J

    .line 57
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lorg/HdrHistogram/HistogramIterationValue;->percentile:D

    .line 58
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/HdrHistogram/HistogramIterationValue;->percentileLevelIteratedTo:D

    .line 59
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/HdrHistogram/HistogramIterationValue;->integerToDoubleValueConversionRatio:D

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "valueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedTo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevValueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->valueIteratedFrom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countAtValueIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAtValueIteratedTo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countAddedInThisIterationStep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->countAddedInThisIterationStep:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCountToThisValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalCountToThisValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalValueToThisValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->totalValueToThisValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentile:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentileLevelIteratedTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/HdrHistogram/HistogramIterationValue;->percentileLevelIteratedTo:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
