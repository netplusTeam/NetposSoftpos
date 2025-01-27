.class public Lcom/sleepycat/je/utilint/LatencyPercentile;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "LatencyPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LatencyPercentile;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxTrackedLatencyMillis:I

.field private final name:Ljava/lang/String;

.field private final percentile:F

.field private volatile savedPercentileValue:I

.field private volatile trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/utilint/LatencyPercentile;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 206
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 207
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->name:Ljava/lang/String;

    .line 208
    iget v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->percentile:F

    iput v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->percentile:F

    .line 209
    iget v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    iput v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    .line 210
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;-><init>(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 211
    iget v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->savedPercentileValue:I

    iput v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->savedPercentileValue:I

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "percentile"    # F
    .param p3, "maxTrackedLatencyMillis"    # I

    .line 188
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->name:Ljava/lang/String;

    .line 190
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 195
    iput p2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->percentile:F

    .line 196
    if-ltz p3, :cond_0

    .line 201
    iput p3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    .line 202
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->clear()V

    .line 203
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maxTrackedLatencyMillis must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Percentile must not be less than 0.0 or greater than 1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized calculate(Z)J
    .locals 16
    .param p1, "clear"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 348
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->clearInternal()Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/utilint/LatencyPercentile;
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 356
    .local v0, "values":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    :goto_0
    iget-object v2, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .local v2, "count":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 358
    monitor-exit p0

    return-wide v4

    .line 366
    :cond_1
    long-to-float v6, v2

    :try_start_1
    iget v7, v1, Lcom/sleepycat/je/utilint/LatencyPercentile;->percentile:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 368
    .local v6, "percentileCount":J
    iget-object v8, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v8

    .line 369
    .local v8, "histogramLength":I
    const/4 v9, 0x0

    .line 370
    .local v9, "percentileValue":I
    const-wide/16 v10, 0x0

    .line 371
    .local v10, "numSeen":J
    const/4 v12, 0x0

    .local v12, "latency":I
    :goto_1
    if-ge v12, v8, :cond_4

    .line 372
    iget-object v13, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v13

    .line 374
    .local v13, "latencyCount":J
    cmp-long v15, v13, v4

    if-nez v15, :cond_2

    .line 375
    goto :goto_2

    .line 378
    :cond_2
    move v9, v12

    .line 379
    add-long/2addr v10, v13

    .line 381
    cmp-long v15, v10, v6

    if-ltz v15, :cond_3

    .line 382
    goto :goto_3

    .line 371
    .end local v13    # "latencyCount":J
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 386
    .end local v12    # "latency":I
    :cond_4
    :goto_3
    iput v9, v1, Lcom/sleepycat/je/utilint/LatencyPercentile;->savedPercentileValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    int-to-long v4, v9

    monitor-exit p0

    return-wide v4

    .line 347
    .end local v0    # "values":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    .end local v2    # "count":J
    .end local v6    # "percentileCount":J
    .end local v8    # "histogramLength":I
    .end local v9    # "percentileValue":I
    .end local v10    # "numSeen":J
    .end local p1    # "clear":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkSameMax(Lcom/sleepycat/je/utilint/LatencyPercentile;)V
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 315
    iget v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    iget v1, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    if-ne v0, v1, :cond_0

    .line 321
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats must have the same maximum.  This stat uses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but other stat uses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearInternal()Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 331
    .local v0, "values":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    iget v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 333
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "latencyMillis"    # J

    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 276
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 286
    .local v0, "values":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    long-to-int v1, p1

    iget v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    .line 287
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 288
    .local v1, "bucket":I
    iget-object v2, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->incrementAndGet(I)J

    .line 291
    iget-object v2, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 292
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/LatencyPercentile;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 295
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/LatencyPercentile;->checkSameMax(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    .line 296
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->add(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 297
    return-void
.end method

.method public clear()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->clearInternal()Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 247
    return-void
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->copy()Lcom/sleepycat/je/utilint/LatencyPercentile;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LatencyPercentile;
    .locals 1

    .line 230
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;-><init>(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->copy()Lcom/sleepycat/je/utilint/LatencyPercentile;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->calculate(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Z)Ljava/lang/String;
    .locals 3
    .param p1, "useCommas"    # Z

    .line 218
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "unknown"

    return-object v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->calculate(Z)J

    move-result-wide v0

    .line 222
    .local v0, "value":J
    if-eqz p1, :cond_1

    .line 223
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 225
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isNotSet()Z
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    iget-object v0, v0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public negate()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->negate()Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatencyPercentile[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->percentile:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxTracked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->maxTrackedLatencyMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->savedPercentileValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackedValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterval(Lcom/sleepycat/je/utilint/LatencyPercentile;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 309
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/LatencyPercentile;->checkSameMax(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    .line 310
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->computeInterval(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile;->trackedValues:Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 311
    return-void
.end method
