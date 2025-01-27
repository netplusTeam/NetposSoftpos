.class public Lorg/HdrHistogram/DoubleHistogram;
.super Lorg/HdrHistogram/EncodableHistogram;
.source "DoubleHistogram.java"

# interfaces
.implements Lorg/HdrHistogram/DoubleValueRecorder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/DoubleHistogram$AllValues;,
        Lorg/HdrHistogram/DoubleHistogram$RecordedValues;,
        Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;,
        Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;,
        Lorg/HdrHistogram/DoubleHistogram$Percentiles;
    }
.end annotation


# static fields
.field private static final DHIST_compressedEncodingCookie:I = 0xc72124f

.field private static final DHIST_encodingCookie:I = 0xc72124e

.field private static final constructorArgTypes:[Ljava/lang/Class;

.field private static final highestAllowedValueEver:D

.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private autoResize:Z

.field private configuredHighestToLowestValueRatio:J

.field private volatile currentHighestValueLimitInAutoRange:D

.field private volatile currentLowestValueInAutoRange:D

.field integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1516
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/HdrHistogram/AbstractHistogram;

    aput-object v2, v0, v1

    sput-object v0, Lorg/HdrHistogram/DoubleHistogram;->constructorArgTypes:[Ljava/lang/Class;

    .line 1715
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1716
    .local v0, "value":D
    :goto_0
    const-wide v2, 0x7fcfffffffffffffL    # 4.4942328371557893E307

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 1717
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    goto :goto_0

    .line 1719
    :cond_0
    sput-wide v0, Lorg/HdrHistogram/DoubleHistogram;->highestAllowedValueEver:D

    .line 1720
    .end local v0    # "value":D
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 77
    const-class v4, Lorg/HdrHistogram/Histogram;

    const-wide/16 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->setAutoResize(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p2, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    const-wide/16 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->setAutoResize(Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 112
    const-class v0, Lorg/HdrHistogram/Histogram;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(JILjava/lang/Class;)V
    .locals 6
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p4, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V

    .line 135
    return-void
.end method

.method constructor <init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 7
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I
    .param p5, "internalCountsHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ")V"
        }
    .end annotation

    .line 141
    .local p4, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 148
    return-void
.end method

.method private constructor <init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;Z)V
    .locals 19
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I
    .param p5, "internalCountsHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p6, "mimicInternalModel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;",
            "Lorg/HdrHistogram/AbstractHistogram;",
            "Z)V"
        }
    .end annotation

    .line 154
    .local p4, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    move-wide/from16 v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {p0 .. p0}, Lorg/HdrHistogram/EncodableHistogram;-><init>()V

    .line 66
    const/4 v0, 0x0

    move-object/from16 v12, p0

    iput-boolean v0, v12, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    .line 156
    const-wide/16 v1, 0x2

    cmp-long v1, v7, v1

    if-ltz v1, :cond_5

    .line 160
    long-to-double v1, v7

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double v5, v9

    :try_start_0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x43c0000000000000L    # 2.305843009213694E18

    cmpl-double v1, v1, v3

    if-gez v1, :cond_4

    .line 164
    const-class v1, Lorg/HdrHistogram/AtomicHistogram;

    if-eq v10, v1, :cond_3

    .line 170
    invoke-direct/range {p0 .. p3}, Lorg/HdrHistogram/DoubleHistogram;->deriveIntegerValueRange(JI)J

    move-result-wide v1

    move-wide v13, v1

    .line 175
    .local v13, "integerValueRange":J
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/16 v5, 0x1

    const/4 v15, 0x1

    if-nez v11, :cond_0

    .line 177
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v17, v2, v0

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v17, v2, v15

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x2

    aput-object v17, v2, v18

    .line 178
    invoke-virtual {v10, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 180
    .local v2, "histogramConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/HdrHistogram/AbstractHistogram;>;"
    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v1, v0

    sub-long v5, v13, v5

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v15

    .line 184
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v18

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/AbstractHistogram;

    .line 193
    .local v0, "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    const-wide/high16 v5, 0x4089000000000000L    # 800.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move-wide v1, v3

    .line 194
    .end local v2    # "histogramConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .local v1, "initialLowestValueInAutoRange":D
    move-wide v15, v1

    goto :goto_0

    .end local v0    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local v1    # "initialLowestValueInAutoRange":D
    :cond_0
    if-eqz p6, :cond_1

    .line 195
    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Lorg/HdrHistogram/AbstractHistogram;

    aput-object v2, v1, v0

    .line 196
    invoke-virtual {v10, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 198
    .local v1, "histogramConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/HdrHistogram/AbstractHistogram;>;"
    new-array v2, v15, [Ljava/lang/Object;

    aput-object v11, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/AbstractHistogram;

    .line 200
    .restart local v0    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    const-wide/high16 v5, 0x4089000000000000L    # 800.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide v1, v2

    .line 201
    .local v1, "initialLowestValueInAutoRange":D
    move-wide v15, v1

    goto :goto_0

    .line 203
    .end local v0    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local v1    # "initialLowestValueInAutoRange":D
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/AbstractHistogram;->getLowestDiscernibleValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    .line 204
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/AbstractHistogram;->getHighestTrackableValue()J

    move-result-wide v0

    sub-long v2, v13, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 205
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/AbstractHistogram;->getNumberOfSignificantValueDigits()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 208
    move-object/from16 v0, p5

    .line 210
    .restart local v0    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    nop

    .line 211
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/AbstractHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v1

    iget v3, v11, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    move-wide v15, v1

    .line 216
    .local v15, "initialLowestValueInAutoRange":D
    :goto_0
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v15

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/DoubleHistogram;->init(JDLorg/HdrHistogram/AbstractHistogram;)V

    .line 221
    .end local v0    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local v13    # "integerValueRange":J
    .end local v15    # "initialLowestValueInAutoRange":D
    nop

    .line 222
    return-void

    .line 206
    .restart local v13    # "integerValueRange":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "integer values histogram does not match stated parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "highestToLowestValueRatio":J
    .end local p3    # "numberOfSignificantValueDigits":I
    .end local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .end local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p6    # "mimicInternalModel":Z
    throw v0

    .line 165
    .end local v13    # "integerValueRange":J
    .restart local p1    # "highestToLowestValueRatio":J
    .restart local p3    # "numberOfSignificantValueDigits":I
    .restart local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .restart local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p6    # "mimicInternalModel":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AtomicHistogram cannot be used as an internal counts histogram (does not support shifting). Use ConcurrentHistogram instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "highestToLowestValueRatio":J
    .end local p3    # "numberOfSignificantValueDigits":I
    .end local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .end local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p6    # "mimicInternalModel":Z
    throw v0

    .line 161
    .restart local p1    # "highestToLowestValueRatio":J
    .restart local p3    # "numberOfSignificantValueDigits":I
    .restart local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .restart local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p6    # "mimicInternalModel":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "highestToLowestValueRatio * (10^numberOfSignificantValueDigits) must be < (1L << 61)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "highestToLowestValueRatio":J
    .end local p3    # "numberOfSignificantValueDigits":I
    .end local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .end local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p6    # "mimicInternalModel":Z
    throw v0

    .line 218
    .restart local p1    # "highestToLowestValueRatio":J
    .restart local p3    # "numberOfSignificantValueDigits":I
    .restart local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .restart local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p6    # "mimicInternalModel":Z
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "highestToLowestValueRatio must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "highestToLowestValueRatio":J
    .end local p3    # "numberOfSignificantValueDigits":I
    .end local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .end local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p6    # "mimicInternalModel":Z
    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    .restart local p1    # "highestToLowestValueRatio":J
    .restart local p3    # "numberOfSignificantValueDigits":I
    .restart local p4    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .restart local p5    # "internalCountsHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p6    # "mimicInternalModel":Z
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 7
    .param p1, "source"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 230
    iget-wide v1, p1, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    .line 231
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v3

    iget-object v0, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 230
    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 235
    iget-boolean v0, p1, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    iput-boolean v0, p0, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    .line 236
    iget-wide v0, p1, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    iget-wide v2, p1, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 237
    return-void
.end method

.method private autoAdjustRangeForValue(D)V
    .locals 2
    .param p1, "value"    # D

    .line 408
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->autoAdjustRangeForValueSlowPath(D)V

    .line 412
    return-void
.end method

.method private declared-synchronized autoAdjustRangeForValueSlowPath(D)V
    .locals 7
    .param p1, "value"    # D

    monitor-enter p0

    .line 416
    :try_start_0
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    cmpg-double v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_2

    .line 417
    const-wide/16 v3, 0x0

    cmpg-double v0, p1, v3

    if-ltz v0, :cond_1

    .line 421
    :cond_0
    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    div-double/2addr v3, p1

    .line 423
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    .line 422
    invoke-direct {p0, v3, v4}, Lorg/HdrHistogram/DoubleHistogram;->findCappedContainingBinaryOrderOfMagnitude(D)I

    move-result v0

    .line 424
    .local v0, "shiftAmount":I
    invoke-direct {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->shiftCoveredRangeToTheRight(I)V

    .line 426
    .end local v0    # "shiftAmount":I
    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    cmpg-double v0, p1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 418
    .end local p0    # "this":Lorg/HdrHistogram/DoubleHistogram;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Negative values cannot be recorded"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p1    # "value":D
    throw v0

    .line 427
    .restart local p1    # "value":D
    :cond_2
    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_5

    .line 428
    sget-wide v3, Lorg/HdrHistogram/DoubleHistogram;->highestAllowedValueEver:D

    cmpl-double v0, p1, v3

    if-gtz v0, :cond_4

    .line 437
    :cond_3
    nop

    .line 439
    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v3

    add-double/2addr v3, p1

    iget-wide v5, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    .line 438
    invoke-direct {p0, v3, v4}, Lorg/HdrHistogram/DoubleHistogram;->findCappedContainingBinaryOrderOfMagnitude(D)I

    move-result v0

    .line 440
    .restart local v0    # "shiftAmount":I
    invoke-direct {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->shiftCoveredRangeToTheLeft(I)V

    .line 442
    .end local v0    # "shiftAmount":I
    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    cmpl-double v0, p1, v3

    if-gez v0, :cond_3

    goto :goto_0

    .line 429
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be recorded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p1    # "value":D
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .restart local p1    # "value":D
    :cond_5
    :goto_0
    nop

    .line 451
    monitor-exit p0

    return-void

    .line 415
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 444
    .restart local p1    # "value":D
    :catch_0
    move-exception v0

    .line 445
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds for histogram, current covered range ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") cannot be extended any further.\nCaused by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local p1    # "value":D
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static constructHistogramFromBuffer(ILjava/nio/ByteBuffer;Ljava/lang/Class;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;
    .locals 8
    .param p0, "cookie"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "minBarForHighestToLowestValueRatio"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/HdrHistogram/DoubleHistogram;",
            ">(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 1524
    .local p2, "doubleHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "histogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1525
    .local v0, "numberOfSignificantValueDigits":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 1527
    .local v1, "configuredHighestToLowestValueRatio":J
    invoke-static {p0}, Lorg/HdrHistogram/DoubleHistogram;->isNonCompressedDoubleHistogramCookie(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1528
    nop

    .line 1529
    invoke-static {p1, p3, p4, p5}, Lorg/HdrHistogram/AbstractHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v3

    .local v3, "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    goto :goto_0

    .line 1530
    .end local v3    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :cond_0
    invoke-static {p0}, Lorg/HdrHistogram/DoubleHistogram;->isCompressedDoubleHistogramCookie(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1531
    nop

    .line 1532
    invoke-static {p1, p3, p4, p5}, Lorg/HdrHistogram/AbstractHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v3

    .line 1538
    .restart local v3    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :goto_0
    :try_start_0
    sget-object v4, Lorg/HdrHistogram/DoubleHistogram;->constructorArgTypes:[Ljava/lang/Class;

    .line 1539
    invoke-virtual {p2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1541
    .local v4, "doubleHistogramConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1543
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    .line 1542
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/HdrHistogram/DoubleHistogram;

    .line 1548
    .local v5, "histogram":Lorg/HdrHistogram/DoubleHistogram;, "TT;"
    invoke-virtual {v5, v7}, Lorg/HdrHistogram/DoubleHistogram;->setAutoResize(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    return-object v5

    .line 1550
    .end local v4    # "doubleHistogramConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "histogram":Lorg/HdrHistogram/DoubleHistogram;, "TT;"
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    .line 1552
    .local v4, "ex":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to construct DoubleHistogram of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1534
    .end local v3    # "valuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local v4    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The buffer does not contain a DoubleHistogram"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/DoubleHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestToLowestValueRatio"    # J

    .line 1565
    const-class v0, Lorg/HdrHistogram/Histogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "minBarForHighestToLowestValueRatio"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;J)",
            "Lorg/HdrHistogram/DoubleHistogram;"
        }
    .end annotation

    .line 1584
    .local p1, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1585
    .local v0, "cookie":I
    invoke-static {v0}, Lorg/HdrHistogram/DoubleHistogram;->isNonCompressedDoubleHistogramCookie(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1588
    const-class v2, Lorg/HdrHistogram/DoubleHistogram;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;->constructHistogramFromBuffer(ILjava/nio/ByteBuffer;Ljava/lang/Class;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v1

    .line 1591
    .local v1, "histogram":Lorg/HdrHistogram/DoubleHistogram;
    return-object v1

    .line 1586
    .end local v1    # "histogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The buffer does not contain a DoubleHistogram"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .end local p2    # "minBarForHighestToLowestValueRatio":J
    throw v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    .end local v0    # "cookie":I
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    .restart local p2    # "minBarForHighestToLowestValueRatio":J
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/DoubleHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestToLowestValueRatio"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 1607
    const-class v0, Lorg/HdrHistogram/Histogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "minBarForHighestToLowestValueRatio"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;J)",
            "Lorg/HdrHistogram/DoubleHistogram;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 1626
    .local p1, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 1627
    .local v6, "cookie":I
    invoke-static {v6}, Lorg/HdrHistogram/DoubleHistogram;->isCompressedDoubleHistogramCookie(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    const-class v2, Lorg/HdrHistogram/DoubleHistogram;

    move v0, v6

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;->constructHistogramFromBuffer(ILjava/nio/ByteBuffer;Ljava/lang/Class;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    .line 1633
    .local v0, "histogram":Lorg/HdrHistogram/DoubleHistogram;
    return-object v0

    .line 1628
    .end local v0    # "histogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer does not contain a compressed DoubleHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deriveIntegerValueRange(JI)J
    .locals 6
    .param p1, "externalHighestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 1671
    nop

    .line 1672
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->deriveInternalHighestToLowestValueRatio(J)J

    move-result-wide v0

    .line 1679
    .local v0, "internalHighestToLowestValueRatio":J
    invoke-static {p3}, Lorg/HdrHistogram/AbstractHistogram;->numberOfSubbuckets(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 1680
    .local v2, "lowestTackingIntegerValue":J
    mul-long v4, v2, v0

    .line 1682
    .local v4, "integerValueRange":J
    return-wide v4
.end method

.method private deriveInternalHighestToLowestValueRatio(J)J
    .locals 3
    .param p1, "externalHighestToLowestValueRatio"    # J

    .line 1664
    nop

    .line 1665
    invoke-static {p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->findContainingBinaryOrderOfMagnitude(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    .line 1666
    .local v0, "internalHighestToLowestValueRatio":J
    return-wide v0
.end method

.method private findCappedContainingBinaryOrderOfMagnitude(D)I
    .locals 5
    .param p1, "doubleNumber"    # D

    .line 1700
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    long-to-double v2, v0

    cmpl-double v2, p1, v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-lez v2, :cond_0

    .line 1701
    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 1703
    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 1704
    const/16 v0, 0x32

    return v0

    .line 1706
    :cond_1
    invoke-static {p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->findContainingBinaryOrderOfMagnitude(D)I

    move-result v0

    return v0
.end method

.method private static findContainingBinaryOrderOfMagnitude(D)I
    .locals 3
    .param p0, "doubleNumber"    # D

    .line 1695
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1696
    .local v0, "longNumber":J
    invoke-static {v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->findContainingBinaryOrderOfMagnitude(J)I

    move-result v2

    return v2
.end method

.method private static findContainingBinaryOrderOfMagnitude(J)I
    .locals 1
    .param p0, "longNumber"    # J

    .line 1690
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 1691
    .local v0, "pow2ceiling":I
    return v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/DoubleHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 1646
    nop

    .line 1647
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1646
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/DoubleHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    return-object v0
.end method

.method private getLowestTrackingIntegerValue()J
    .locals 2

    .line 1686
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v0, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private getNeededByteBufferCapacity(I)I
    .locals 1
    .param p1, "relevantLength"    # I

    .line 1454
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity(I)I

    move-result v0

    return v0
.end method

.method private handleShiftValuesException(ILjava/lang/Exception;)V
    .locals 8
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 578
    iget-boolean v0, p0, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getHighestTrackableValue()J

    move-result-wide v0

    .line 583
    .local v0, "highestTrackableValue":J
    invoke-static {v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->findContainingBinaryOrderOfMagnitude(J)I

    move-result v2

    .line 584
    .local v2, "currentContainingOrderOfMagnitude":I
    add-int v3, p1, v2

    .line 585
    .local v3, "newContainingOrderOfMagnitude":I
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    .line 591
    const-wide/16 v4, 0x1

    shl-long v6, v4, v3

    sub-long/2addr v6, v4

    .line 592
    .local v6, "newHighestTrackableValue":J
    iget-object v4, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v4, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->resize(J)V

    .line 593
    iget-object v4, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iput-wide v6, v4, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    .line 594
    iget-wide v4, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    shl-long/2addr v4, p1

    iput-wide v4, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    .line 595
    return-void

    .line 586
    .end local v6    # "newHighestTrackableValue":J
    :cond_0
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resize histogram covered range beyond (1L << 63) / (1L << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v6, v6, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - 1.\nCaused by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    .end local v0    # "highestTrackableValue":J
    .end local v2    # "currentContainingOrderOfMagnitude":I
    .end local v3    # "newContainingOrderOfMagnitude":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value outside of histogram covered range.\nCaused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(JDLorg/HdrHistogram/AbstractHistogram;)V
    .locals 4
    .param p1, "configuredHighestToLowestValueRatio"    # J
    .param p3, "lowestTrackableUnitValue"    # D
    .param p5, "integerValuesHistogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 241
    iput-wide p1, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    .line 242
    iput-object p5, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 243
    nop

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->deriveInternalHighestToLowestValueRatio(J)J

    move-result-wide v0

    .line 245
    .local v0, "internalHighestToLowestValueRatio":J
    long-to-double v2, v0

    mul-double/2addr v2, p3

    invoke-direct {p0, p3, p4, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 246
    return-void
.end method

.method static isCompressedDoubleHistogramCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .line 1465
    const v0, 0xc72124f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isDoubleHistogramCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .line 1461
    invoke-static {p0}, Lorg/HdrHistogram/DoubleHistogram;->isCompressedDoubleHistogramCookie(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/HdrHistogram/DoubleHistogram;->isNonCompressedDoubleHistogramCookie(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isNonCompressedDoubleHistogramCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .line 1469
    const v0, 0xc72124e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    .line 1431
    .local v6, "configuredHighestToLowestValueRatio":J
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v8

    .line 1432
    .local v8, "lowestValueInAutoRange":D
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/HdrHistogram/AbstractHistogram;

    .line 1433
    .local v10, "integerValuesHistogram":Lorg/HdrHistogram/AbstractHistogram;
    move-object v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram;->init(JDLorg/HdrHistogram/AbstractHistogram;)V

    .line 1434
    return-void
.end method

.method private recordCountAtValue(JD)V
    .locals 5
    .param p1, "count"    # J
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "throwCount":I
    :goto_0
    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    cmpg-double v1, p3, v1

    if-ltz v1, :cond_0

    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    cmpl-double v1, p3, v1

    if-ltz v1, :cond_1

    .line 337
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->autoAdjustRangeForValue(D)V

    .line 340
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1, p3, p4, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordConvertedDoubleValueWithCount(DJ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 348
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x40

    if-gt v0, v2, :cond_2

    .line 354
    .end local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 351
    .restart local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: Unexpected non-transient AIOOB Exception caused by:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private recordSingleValue(D)V
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "throwCount":I
    :goto_0
    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_0

    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    .line 364
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->autoAdjustRangeForValue(D)V

    .line 367
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordConvertedDoubleValue(D)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-void

    .line 369
    :catch_0
    move-exception v1

    .line 375
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x40

    if-gt v0, v2, :cond_2

    .line 381
    .end local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 378
    .restart local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: Unexpected non-transient AIOOB Exception caused by:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private recordValueWithCountAndExpectedInterval(DJD)V
    .locals 3
    .param p1, "value"    # D
    .param p3, "count"    # J
    .param p5, "expectedIntervalBetweenValueSamples"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 388
    invoke-direct {p0, p3, p4, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->recordCountAtValue(JD)V

    .line 389
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-gtz v0, :cond_0

    .line 390
    return-void

    .line 391
    :cond_0
    sub-double v0, p1, p5

    .line 392
    .local v0, "missingValue":D
    :goto_0
    cmpl-double v2, v0, p5

    if-ltz v2, :cond_1

    .line 394
    invoke-direct {p0, p3, p4, v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->recordCountAtValue(JD)V

    .line 393
    sub-double/2addr v0, p5

    goto :goto_0

    .line 396
    .end local v0    # "missingValue":D
    :cond_1
    return-void
.end method

.method private setTrackableValueRange(DD)V
    .locals 3
    .param p1, "lowestValueInAutoRange"    # D
    .param p3, "highestValueInAutoRange"    # D

    .line 249
    iput-wide p1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    .line 250
    iput-wide p3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    .line 251
    invoke-direct {p0}, Lorg/HdrHistogram/DoubleHistogram;->getLowestTrackingIntegerValue()J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, p1, v0

    .line 252
    .local v0, "integerToDoubleValueConversionRatio":D
    iget-object v2, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setIntegerToDoubleValueConversionRatio(D)V

    .line 253
    return-void
.end method

.method private shiftCoveredRangeToTheLeft(I)V
    .locals 12
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    .line 523
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    .line 524
    .local v0, "newLowestValueInAutoRange":D
    iget-wide v2, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    .line 527
    .local v2, "newHighestValueLimitInAutoRange":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, p1

    long-to-double v6, v6

    mul-double/2addr v6, v4

    .line 529
    .local v6, "shiftMultiplier":D
    nop

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 537
    .local v4, "newIntegerToDoubleValueConversionRatio":D
    iget-wide v8, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    mul-double/2addr v8, v6

    iput-wide v8, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    .line 545
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v8

    iget-object v10, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 548
    :try_start_1
    iget-object v8, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v8, p1, v4, v5}, Lorg/HdrHistogram/AbstractHistogram;->shiftValuesRight(ID)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    mul-double/2addr v0, v6

    .line 552
    mul-double/2addr v2, v6

    .line 566
    goto :goto_0

    .line 553
    :catch_0
    move-exception v8

    .line 555
    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    invoke-direct {p0, p1, v8}, Lorg/HdrHistogram/DoubleHistogram;->handleShiftValuesException(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    div-double/2addr v0, v6

    .line 569
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    :goto_0
    mul-double/2addr v0, v6

    .line 570
    mul-double/2addr v2, v6

    .line 573
    .end local v4    # "newIntegerToDoubleValueConversionRatio":D
    .end local v6    # "shiftMultiplier":D
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 574
    nop

    .line 575
    return-void

    .line 573
    :catchall_0
    move-exception v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 574
    throw v4
.end method

.method private shiftCoveredRangeToTheRight(I)V
    .locals 12
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    .line 463
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    .line 464
    .local v0, "newLowestValueInAutoRange":D
    iget-wide v2, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    .line 467
    .local v2, "newHighestValueLimitInAutoRange":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, p1

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 474
    .local v4, "shiftMultiplier":D
    :try_start_0
    iget-wide v6, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    mul-double/2addr v6, v4

    iput-wide v6, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    .line 476
    nop

    .line 477
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v6

    mul-double/2addr v6, v4

    .line 485
    .local v6, "newIntegerToDoubleValueConversionRatio":D
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v8

    iget-object v10, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 488
    :try_start_1
    iget-object v8, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v8, p1, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->shiftValuesLeft(ID)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    goto :goto_0

    .line 490
    :catch_0
    move-exception v8

    .line 492
    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    invoke-direct {p0, p1, v8}, Lorg/HdrHistogram/DoubleHistogram;->handleShiftValuesException(ILjava/lang/Exception;)V

    .line 494
    div-double/2addr v2, v4

    .line 500
    iget-object v9, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v9, p1, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->shiftValuesLeft(ID)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    :goto_0
    mul-double/2addr v0, v4

    .line 506
    mul-double/2addr v2, v4

    .line 509
    .end local v4    # "shiftMultiplier":D
    .end local v6    # "newIntegerToDoubleValueConversionRatio":D
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 510
    throw v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "o"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1424
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 1425
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1426
    return-void
.end method


# virtual methods
.method public add(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 9
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 711
    iget-object v0, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v0, v0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    .line 712
    .local v0, "arrayLength":I
    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 713
    .local v1, "fromIntegerHistogram":Lorg/HdrHistogram/AbstractHistogram;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 714
    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v3

    .line 715
    .local v3, "count":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 716
    nop

    .line 717
    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v5

    long-to-double v5, v5

    .line 718
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 716
    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCount(DJ)V

    .line 713
    .end local v3    # "count":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 9
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # D

    .line 749
    move-object v0, p0

    .line 751
    .local v0, "toHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram;->recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;

    move-result-object v1

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/HdrHistogram/HistogramIterationValue;

    .line 752
    .local v8, "v":Lorg/HdrHistogram/HistogramIterationValue;
    nop

    .line 753
    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 754
    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v3

    .line 752
    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCountAndExpectedInterval(DJD)V

    .line 755
    .end local v8    # "v":Lorg/HdrHistogram/HistogramIterationValue;
    goto :goto_0

    .line 756
    :cond_0
    return-void
.end method

.method public allValues()Lorg/HdrHistogram/DoubleHistogram$AllValues;
    .locals 2

    .line 1226
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram$AllValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/HdrHistogram/DoubleHistogram$AllValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram$1;)V

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/DoubleHistogram;
    .locals 5

    .line 629
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram;

    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    .line 630
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JI)V

    .line 631
    .local v0, "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 632
    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-object v2, v0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 633
    return-object v0
.end method

.method public copyCorrectedForCoordinatedOmission(D)Lorg/HdrHistogram/DoubleHistogram;
    .locals 5
    .param p1, "expectedIntervalBetweenValueSamples"    # D

    .line 659
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram;

    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    .line 660
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JI)V

    .line 661
    .local v0, "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-wide v1, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/HdrHistogram/DoubleHistogram;->setTrackableValueRange(DD)V

    .line 662
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 663
    return-object v0
.end method

.method public copyInto(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 2
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 672
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->reset()V

    .line 673
    invoke-virtual {p1, p0}, Lorg/HdrHistogram/DoubleHistogram;->add(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 674
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V

    .line 675
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->setEndTimeStamp(J)V

    .line 676
    return-void
.end method

.method public copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 2
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # D

    .line 689
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->reset()V

    .line 690
    invoke-virtual {p1, p0, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 691
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V

    .line 692
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/DoubleHistogram;->setEndTimeStamp(J)V

    .line 693
    return-void
.end method

.method public declared-synchronized encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 1478
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    .line 1479
    .local v0, "maxValue":J
    iget-object v2, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1480
    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getBucketsNeededToCoverValue(J)I

    move-result v3

    .line 1479
    invoke-virtual {v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->getLengthForNumberOfBuckets(I)I

    move-result v2

    .line 1481
    .local v2, "relevantLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-direct {p0, v2}, Lorg/HdrHistogram/DoubleHistogram;->getNeededByteBufferCapacity(I)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1485
    const v3, 0xc72124e

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1486
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1487
    iget-wide v3, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1488
    iget-object v3, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v3, p1}, Lorg/HdrHistogram/AbstractHistogram;->encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x10

    monitor-exit p0

    return v3

    .line 1482
    .end local p0    # "this":Lorg/HdrHistogram/DoubleHistogram;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer does not have capacity for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1483
    invoke-direct {p0, v2}, Lorg/HdrHistogram/DoubleHistogram;->getNeededByteBufferCapacity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1477
    .end local v0    # "maxValue":J
    .end local v2    # "relevantLength":I
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;

    .line 1513
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/DoubleHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "compressionLevel"    # I

    monitor-enter p0

    .line 1501
    const v0, 0xc72124f

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1502
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1503
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1504
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x10

    monitor-exit p0

    return v0

    .line 1500
    .end local p0    # "this":Lorg/HdrHistogram/DoubleHistogram;
    .end local p1    # "targetBuffer":Ljava/nio/ByteBuffer;
    .end local p2    # "compressionLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 797
    if-ne p0, p1, :cond_0

    .line 798
    const/4 v0, 0x1

    return v0

    .line 800
    :cond_0
    instance-of v0, p1, Lorg/HdrHistogram/DoubleHistogram;

    if-nez v0, :cond_1

    .line 801
    const/4 v0, 0x0

    return v0

    .line 803
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/HdrHistogram/DoubleHistogram;

    .line 804
    .local v0, "that":Lorg/HdrHistogram/DoubleHistogram;
    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-object v2, v0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCountAtValue(D)J
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCountBetweenValues(DD)D
    .locals 5
    .param p1, "lowValue"    # D
    .param p3, "highValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1142
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    .line 1143
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v3

    mul-double/2addr v3, p3

    double-to-long v3, v3

    .line 1141
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->getCountBetweenValues(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method getCurrentHighestTrackableValue()D
    .locals 2

    .line 843
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentHighestValueLimitInAutoRange:D

    return-wide v0
.end method

.method getCurrentLowestTrackableNonZeroValue()D
    .locals 2

    .line 834
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->currentLowestValueInAutoRange:D

    return-wide v0
.end method

.method getDoubleToIntegerValueConversionRatio()D
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEndTimeStamp()J
    .locals 2

    .line 1003
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getEndTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEstimatedFootprintInBytes()I
    .locals 1

    .line 971
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->_getEstimatedFootprintInBytes()I

    move-result v0

    return v0
.end method

.method public getHighestToLowestValueRatio()J
    .locals 2

    .line 877
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    return-wide v0
.end method

.method public getIntegerToDoubleValueConversionRatio()D
    .locals 2

    .line 859
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    return-wide v0
.end method

.method public getMaxValue()D
    .locals 4

    .line 1053
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxValueAsDouble()D
    .locals 2

    .line 1072
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    .line 1081
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getMean()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinNonZeroValue()D
    .locals 4

    .line 1062
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinValue()D
    .locals 4

    .line 1044
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getMinValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNeededByteBufferCapacity()I
    .locals 1

    .line 1450
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity()I

    move-result v0

    return v0
.end method

.method public getNumberOfSignificantValueDigits()I
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v0, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    return v0
.end method

.method public getPercentileAtOrBelowValue(D)D
    .locals 3
    .param p1, "value"    # D

    .line 1125
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getPercentileAtOrBelowValue(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    .line 987
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getStartTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStdDeviation()D
    .locals 4

    .line 1090
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getStdDeviation()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1019
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 825
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAtPercentile(D)D
    .locals 4
    .param p1, "percentile"    # D

    .line 1109
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getValueAtPercentile(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 809
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->hashCode()I

    move-result v0

    return v0
.end method

.method public highestEquivalentValue(D)D
    .locals 6
    .param p1, "value"    # D

    .line 915
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->nextNonEquivalentValue(D)D

    move-result-wide v0

    .line 919
    .local v0, "nextNonEquivalentValue":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 920
    .local v2, "highestEquivalentValue":D
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    cmpg-double v4, v4, v0

    if-gez v4, :cond_0

    .line 921
    invoke-static {v2, v3}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 924
    :cond_0
    return-wide v2
.end method

.method public isAutoResize()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    return v0
.end method

.method public linearBucketValues(D)Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;
    .locals 7
    .param p1, "valueUnitsPerBucket"    # D

    .line 1184
    new-instance v6, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DLorg/HdrHistogram/DoubleHistogram$1;)V

    return-object v6
.end method

.method public logarithmicBucketValues(DD)Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;
    .locals 9
    .param p1, "valueUnitsInFirstBucket"    # D
    .param p3, "logBase"    # D

    .line 1200
    new-instance v8, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DDLorg/HdrHistogram/DoubleHistogram$1;)V

    return-object v8
.end method

.method public lowestEquivalentValue(D)D
    .locals 4
    .param p1, "value"    # D

    .line 902
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 903
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 902
    return-wide v0
.end method

.method public medianEquivalentValue(D)D
    .locals 4
    .param p1, "value"    # D

    .line 936
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->medianEquivalentValue(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 937
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 936
    return-wide v0
.end method

.method public nextNonEquivalentValue(D)D
    .locals 4
    .param p1, "value"    # D

    .line 949
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->nextNonEquivalentValue(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 950
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 949
    return-wide v0
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    .line 1384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V

    .line 1385
    return-void
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    .locals 5
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;
    .param p4, "useCsvFormat"    # Z

    .line 1404
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1406
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1404
    invoke-virtual {v0, p1, p2, v1, p4}, Lorg/HdrHistogram/AbstractHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V

    .line 1408
    return-void
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    .line 1358
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V

    .line 1359
    return-void
.end method

.method public percentiles(I)Lorg/HdrHistogram/DoubleHistogram$Percentiles;
    .locals 2
    .param p1, "percentileTicksPerHalfDistance"    # I

    .line 1170
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Lorg/HdrHistogram/DoubleHistogram$Percentiles;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;ILorg/HdrHistogram/DoubleHistogram$1;)V

    return-object v0
.end method

.method public recordValue(D)V
    .locals 0
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->recordSingleValue(D)V

    .line 290
    return-void
.end method

.method public recordValueWithCount(DJ)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p3, p4, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->recordCountAtValue(JD)V

    .line 302
    return-void
.end method

.method public recordValueWithExpectedInterval(DD)V
    .locals 7
    .param p1, "value"    # D
    .param p3, "expectedIntervalBetweenValueSamples"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 328
    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCountAndExpectedInterval(DJD)V

    .line 329
    return-void
.end method

.method public recordedValues()Lorg/HdrHistogram/DoubleHistogram$RecordedValues;
    .locals 2

    .line 1213
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram$RecordedValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/HdrHistogram/DoubleHistogram$RecordedValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram$1;)V

    return-object v0
.end method

.method public reset()V
    .locals 10

    .line 610
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/AbstractHistogram;->reset()V

    .line 611
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4089000000000000L    # 800.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 612
    .local v0, "initialLowestValueInAutoRange":D
    iget-wide v5, p0, Lorg/HdrHistogram/DoubleHistogram;->configuredHighestToLowestValueRatio:J

    iget-object v9, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    move-object v4, p0

    move-wide v7, v0

    invoke-direct/range {v4 .. v9}, Lorg/HdrHistogram/DoubleHistogram;->init(JDLorg/HdrHistogram/AbstractHistogram;)V

    .line 613
    return-void
.end method

.method public setAutoResize(Z)V
    .locals 0
    .param p1, "autoResize"    # Z

    .line 270
    iput-boolean p1, p0, Lorg/HdrHistogram/DoubleHistogram;->autoResize:Z

    .line 271
    return-void
.end method

.method public setEndTimeStamp(J)V
    .locals 1
    .param p1, "timeStampMsec"    # J

    .line 1011
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->setEndTimeStamp(J)V

    .line 1012
    return-void
.end method

.method public setStartTimeStamp(J)V
    .locals 1
    .param p1, "timeStampMsec"    # J

    .line 995
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->setStartTimeStamp(J)V

    .line 996
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/AbstractHistogram;->setTag(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public sizeOfEquivalentValueRange(D)D
    .locals 4
    .param p1, "value"    # D

    .line 889
    iget-object v0, p0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->sizeOfEquivalentValueRange(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 890
    invoke-virtual {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 889
    return-wide v0
.end method

.method public subtract(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 11
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 766
    iget-object v0, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v0, v0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    .line 767
    .local v0, "arrayLength":I
    iget-object v1, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 768
    .local v1, "otherIntegerHistogram":Lorg/HdrHistogram/AbstractHistogram;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 769
    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v3

    .line 770
    .local v3, "otherCount":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 771
    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v5

    long-to-double v5, v5

    .line 772
    invoke-virtual {p1}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 773
    .local v5, "otherValue":D
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/DoubleHistogram;->getCountAtValue(D)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-ltz v7, :cond_0

    .line 777
    neg-long v7, v3

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCount(DJ)V

    goto :goto_1

    .line 774
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "otherHistogram count ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") at value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is larger than this one\'s ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 775
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/DoubleHistogram;->getCountAtValue(D)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 768
    .end local v3    # "otherCount":J
    .end local v5    # "otherValue":D
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public valuesAreEquivalent(DD)Z
    .locals 4
    .param p1, "value1"    # D
    .param p3, "value2"    # D

    .line 962
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->lowestEquivalentValue(D)D

    move-result-wide v0

    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->lowestEquivalentValue(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
