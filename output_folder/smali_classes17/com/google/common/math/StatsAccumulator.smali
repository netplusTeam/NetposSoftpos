.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 47
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 49
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .locals 2
    .param p0, "previousMean"    # D
    .param p2, "value"    # D

    .line 418
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    return-wide p2

    .line 421
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 423
    :cond_2
    :goto_0
    return-wide p0
.end method

.method private merge(JDDDD)V
    .locals 15
    .param p1, "otherCount"    # J
    .param p3, "otherMean"    # D
    .param p5, "otherSumOfSquaresOfDeltas"    # D
    .param p7, "otherMin"    # D
    .param p9, "otherMax"    # D

    .line 196
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_0

    .line 197
    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 198
    iput-wide v3, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 199
    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 200
    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 201
    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-wide v11, v9

    move-wide v9, v7

    goto :goto_1

    .line 203
    :cond_0
    add-long/2addr v11, v1

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 204
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v11, v12}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static/range {p3 .. p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 206
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v13, v3, v11

    .line 207
    .local v13, "delta":D
    long-to-double v9, v1

    mul-double/2addr v9, v13

    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v7, v7

    div-double/2addr v9, v7

    add-double/2addr v11, v9

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 208
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double v9, v3, v11

    mul-double/2addr v9, v13

    long-to-double v11, v1

    mul-double/2addr v9, v11

    add-double/2addr v9, v5

    add-double/2addr v7, v9

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 209
    .end local v13    # "delta":D
    goto :goto_0

    .line 210
    :cond_1
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v7, v8, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 211
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 213
    :goto_0
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    move-wide/from16 v9, p7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 214
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-wide/from16 v11, p9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 216
    :goto_1
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 7
    .param p1, "value"    # D

    .line 53
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v5, 0x1

    if-nez v2, :cond_0

    .line 54
    iput-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 55
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 56
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 57
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 58
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iput-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_1

    .line 62
    :cond_0
    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 63
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v2, p1, v0

    .line 66
    .local v2, "delta":D
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 67
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double v0, p1, v0

    mul-double/2addr v0, v2

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 68
    .end local v2    # "delta":D
    goto :goto_0

    .line 69
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 70
    iput-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 72
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 73
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .locals 12
    .param p1, "values"    # Lcom/google/common/math/Stats;

    .line 171
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v10

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 175
    return-void
.end method

.method public addAll(Lcom/google/common/math/StatsAccumulator;)V
    .locals 12
    .param p1, "values"    # Lcom/google/common/math/StatsAccumulator;

    .line 184
    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->min()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->max()D

    move-result-wide v10

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 188
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 85
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 86
    .end local v1    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/stream/DoubleStream;)V
    .locals 3
    .param p1, "values"    # Ljava/util/stream/DoubleStream;

    .line 142
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 143
    return-void
.end method

.method public addAll(Ljava/util/stream/IntStream;)V
    .locals 3
    .param p1, "values"    # Ljava/util/stream/IntStream;

    .line 152
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda7;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Ljava/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 153
    return-void
.end method

.method public addAll(Ljava/util/stream/LongStream;)V
    .locals 3
    .param p1, "values"    # Ljava/util/stream/LongStream;

    .line 163
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Ljava/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 164
    return-void
.end method

.method public varargs addAll([D)V
    .locals 4
    .param p1, "values"    # [D

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 108
    .local v2, "value":D
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 107
    .end local v2    # "value":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 5
    .param p1, "values"    # [I

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 119
    .local v2, "value":I
    int-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 118
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public varargs addAll([J)V
    .locals 6
    .param p1, "values"    # [J

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 131
    .local v2, "value":J
    long-to-double v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 130
    .end local v2    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .locals 4

    .line 391
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 392
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0
.end method

.method public mean()D
    .locals 4

    .line 247
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 248
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0
.end method

.method public min()D
    .locals 4

    .line 373
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 374
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .locals 2

    .line 310
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .locals 4

    .line 283
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 284
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 287
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 288
    const-wide/16 v0, 0x0

    return-wide v0

    .line 290
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .locals 6

    .line 330
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 331
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 334
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .locals 12

    .line 220
    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method

.method public final sum()D
    .locals 4

    .line 264
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    .line 396
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
