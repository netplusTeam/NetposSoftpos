.class public Lcom/sleepycat/utilint/LatencyStat;
.super Ljava/lang/Object;
.source "LatencyStat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/utilint/LatencyStat$Values;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxTrackedLatencyMillis:I

.field private save95:I

.field private save99:I

.field private saveAvg:F

.field private saveMax:I

.field private saveMin:I

.field private saveNumOps:I

.field private saveNumRequests:I

.field private saveRequestsOverflow:I

.field private volatile trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxTrackedLatencyMillis"    # J

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    long-to-int v0, p1

    iput v0, p0, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    .line 106
    invoke-virtual {p0}, Lcom/sleepycat/utilint/LatencyStat;->clear()V

    .line 107
    return-void
.end method

.method private declared-synchronized calculate(Z)Lcom/sleepycat/utilint/Latency;
    .locals 37
    .param p1, "clear"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 156
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/utilint/LatencyStat;->clearInternal()Lcom/sleepycat/utilint/LatencyStat$Values;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/utilint/LatencyStat;
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;

    .line 165
    .local v0, "values":Lcom/sleepycat/utilint/LatencyStat$Values;
    :goto_0
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numOps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 166
    .local v2, "totalOps":I
    iget-object v3, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    move v13, v3

    .line 167
    .local v13, "totalRequests":I
    if-eqz v2, :cond_9

    if-nez v13, :cond_1

    goto/16 :goto_4

    .line 171
    :cond_1
    iget-object v3, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->totalNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    move-wide v14, v3

    .line 172
    .local v14, "totalNanos":J
    iget-object v3, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->requestsOverflow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    move v12, v3

    .line 173
    .local v12, "nOverflow":I
    iget v3, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->maxIncludingOverflow:I

    move v11, v3

    .line 174
    .local v11, "maxIncludingOverflow":I
    iget v3, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->minIncludingOverflow:I

    move v10, v3

    .line 176
    .local v10, "minIncludingOverflow":I
    long-to-double v3, v14

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v3, v5

    int-to-double v5, v13

    div-double/2addr v3, v5

    double-to-float v9, v3

    .line 182
    .local v9, "avgMs":F
    const/4 v3, -0x1

    .line 183
    .local v3, "percent95":I
    const/4 v4, -0x1

    .line 190
    .local v4, "percent99":I
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v8, v5

    .line 191
    .local v8, "avgMsInt":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 192
    .local v5, "max":I
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 196
    .local v6, "min":I
    sub-int v7, v13, v12

    .line 197
    .local v7, "nTrackedRequests":I
    move/from16 v16, v3

    .end local v3    # "percent95":I
    .local v16, "percent95":I
    const/4 v3, 0x1

    if-ne v7, v3, :cond_2

    .line 199
    const/4 v3, 0x1

    .line 200
    .local v3, "percent95Count":I
    const/16 v17, 0x1

    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v31

    .local v17, "percent99Count":I
    goto :goto_1

    .line 203
    .end local v3    # "percent95Count":I
    .end local v17    # "percent99Count":I
    :cond_2
    move/from16 v17, v4

    .end local v4    # "percent99":I
    .local v17, "percent99":I
    int-to-double v3, v7

    const-wide v18, 0x3fee666666666666L    # 0.95

    mul-double v3, v3, v18

    double-to-int v3, v3

    .line 204
    .restart local v3    # "percent95Count":I
    move/from16 v18, v3

    .end local v3    # "percent95Count":I
    .local v18, "percent95Count":I
    int-to-double v3, v7

    const-wide v19, 0x3fefae147ae147aeL    # 0.99

    mul-double v3, v3, v19

    double-to-int v3, v3

    move/from16 v4, v18

    .line 207
    .end local v18    # "percent95Count":I
    .local v3, "percent99Count":I
    .local v4, "percent95Count":I
    :goto_1
    move/from16 v18, v5

    .end local v5    # "max":I
    .local v18, "max":I
    iget-object v5, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->histogram:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v5

    .line 208
    .local v5, "histogramLength":I
    const/16 v19, 0x0

    .line 209
    .local v19, "numRequestsSeen":I
    const/16 v20, 0x0

    move/from16 v31, v11

    move v11, v6

    move/from16 v6, v16

    move/from16 v32, v20

    move/from16 v20, v7

    move/from16 v7, v32

    move/from16 v33, v19

    move/from16 v19, v10

    move/from16 v10, v33

    move/from16 v34, v18

    move/from16 v18, v31

    move-wide/from16 v35, v14

    move/from16 v14, v17

    move-wide/from16 v16, v35

    move/from16 v15, v34

    .end local v17    # "percent99":I
    .local v6, "percent95":I
    .local v7, "latency":I
    .local v10, "numRequestsSeen":I
    .local v11, "min":I
    .local v14, "percent99":I
    .local v15, "max":I
    .local v16, "totalNanos":J
    .local v18, "maxIncludingOverflow":I
    .local v19, "minIncludingOverflow":I
    .local v20, "nTrackedRequests":I
    :goto_2
    if-ge v7, v5, :cond_8

    .line 211
    move/from16 v21, v5

    .end local v5    # "histogramLength":I
    .local v21, "histogramLength":I
    iget-object v5, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->histogram:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v5

    .line 213
    .local v5, "count":I
    if-nez v5, :cond_3

    .line 214
    goto :goto_3

    .line 217
    :cond_3
    if-le v11, v7, :cond_4

    .line 218
    move v11, v7

    .line 221
    :cond_4
    if-ge v15, v7, :cond_5

    .line 222
    move v15, v7

    .line 225
    :cond_5
    if-ge v10, v4, :cond_6

    .line 226
    move v6, v7

    .line 229
    :cond_6
    if-ge v10, v3, :cond_7

    .line 230
    move v14, v7

    .line 233
    :cond_7
    add-int/2addr v10, v5

    .line 209
    .end local v5    # "count":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v21

    goto :goto_2

    .end local v21    # "histogramLength":I
    .local v5, "histogramLength":I
    :cond_8
    move/from16 v21, v5

    .line 236
    .end local v5    # "histogramLength":I
    .end local v7    # "latency":I
    .restart local v21    # "histogramLength":I
    iput v15, v1, Lcom/sleepycat/utilint/LatencyStat;->saveMax:I

    .line 237
    iput v11, v1, Lcom/sleepycat/utilint/LatencyStat;->saveMin:I

    .line 238
    iput v9, v1, Lcom/sleepycat/utilint/LatencyStat;->saveAvg:F

    .line 239
    iput v2, v1, Lcom/sleepycat/utilint/LatencyStat;->saveNumOps:I

    .line 240
    iput v13, v1, Lcom/sleepycat/utilint/LatencyStat;->saveNumRequests:I

    .line 241
    iput v6, v1, Lcom/sleepycat/utilint/LatencyStat;->save95:I

    .line 242
    iput v14, v1, Lcom/sleepycat/utilint/LatencyStat;->save99:I

    .line 243
    iput v12, v1, Lcom/sleepycat/utilint/LatencyStat;->saveRequestsOverflow:I

    .line 245
    new-instance v22, Lcom/sleepycat/utilint/Latency;

    iget v5, v1, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    move/from16 v23, v3

    .end local v3    # "percent99Count":I
    .local v23, "percent99Count":I
    move-object/from16 v3, v22

    move/from16 v24, v4

    .end local v4    # "percent95Count":I
    .local v24, "percent95Count":I
    move v4, v5

    move v5, v11

    move/from16 v25, v6

    .end local v6    # "percent95":I
    .local v25, "percent95":I
    move v6, v15

    move v7, v9

    move/from16 v26, v8

    .end local v8    # "avgMsInt":I
    .local v26, "avgMsInt":I
    move v8, v2

    move/from16 v27, v9

    .end local v9    # "avgMs":F
    .local v27, "avgMs":F
    move v9, v13

    move/from16 v28, v10

    .end local v10    # "numRequestsSeen":I
    .local v28, "numRequestsSeen":I
    move/from16 v10, v25

    move/from16 v29, v11

    .end local v11    # "min":I
    .local v29, "min":I
    move v11, v14

    move/from16 v30, v12

    .end local v12    # "nOverflow":I
    .local v30, "nOverflow":I
    invoke-direct/range {v3 .. v12}, Lcom/sleepycat/utilint/Latency;-><init>(IIIFIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v22

    .line 168
    .end local v14    # "percent99":I
    .end local v15    # "max":I
    .end local v16    # "totalNanos":J
    .end local v18    # "maxIncludingOverflow":I
    .end local v19    # "minIncludingOverflow":I
    .end local v20    # "nTrackedRequests":I
    .end local v21    # "histogramLength":I
    .end local v23    # "percent99Count":I
    .end local v24    # "percent95Count":I
    .end local v25    # "percent95":I
    .end local v26    # "avgMsInt":I
    .end local v27    # "avgMs":F
    .end local v28    # "numRequestsSeen":I
    .end local v29    # "min":I
    .end local v30    # "nOverflow":I
    :cond_9
    :goto_4
    :try_start_1
    new-instance v3, Lcom/sleepycat/utilint/Latency;

    iget v4, v1, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    invoke-direct {v3, v4}, Lcom/sleepycat/utilint/Latency;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 155
    .end local v0    # "values":Lcom/sleepycat/utilint/LatencyStat$Values;
    .end local v2    # "totalOps":I
    .end local v13    # "totalRequests":I
    .end local p1    # "clear":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clearInternal()Lcom/sleepycat/utilint/LatencyStat$Values;
    .locals 3

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;

    .line 123
    .local v0, "values":Lcom/sleepycat/utilint/LatencyStat$Values;
    new-instance v1, Lcom/sleepycat/utilint/LatencyStat$Values;

    iget v2, p0, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    invoke-direct {v1, v2}, Lcom/sleepycat/utilint/LatencyStat$Values;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-object v0

    .line 116
    .end local v0    # "values":Lcom/sleepycat/utilint/LatencyStat$Values;
    .end local p0    # "this":Lcom/sleepycat/utilint/LatencyStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public calculate()Lcom/sleepycat/utilint/Latency;
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/utilint/LatencyStat;->calculate(Z)Lcom/sleepycat/utilint/Latency;

    move-result-object v0

    return-object v0
.end method

.method public calculateAndClear()Lcom/sleepycat/utilint/Latency;
    .locals 1

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/utilint/LatencyStat;->calculate(Z)Lcom/sleepycat/utilint/Latency;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/sleepycat/utilint/LatencyStat;->clearInternal()Lcom/sleepycat/utilint/LatencyStat$Values;

    .line 111
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;

    iget-object v0, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numOps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;

    iget-object v0, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 313
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 312
    :goto_1
    return v0
.end method

.method public set(IJ)V
    .locals 5
    .param p1, "numRecordedOps"    # I
    .param p2, "nanoLatency"    # J

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 266
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/utilint/LatencyStat;->trackedValues:Lcom/sleepycat/utilint/LatencyStat$Values;

    .line 276
    .local v0, "values":Lcom/sleepycat/utilint/LatencyStat$Values;
    const-wide/32 v1, 0x7a120

    add-long/2addr v1, p2

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 280
    .local v1, "millisRounded":I
    iget v2, p0, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    if-lt v1, v2, :cond_1

    .line 281
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->requestsOverflow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->histogram:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->incrementAndGet(I)I

    .line 290
    :goto_0
    iget v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->maxIncludingOverflow:I

    if-ge v2, v1, :cond_2

    .line 291
    iput v1, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->maxIncludingOverflow:I

    goto :goto_0

    .line 293
    :cond_2
    :goto_1
    iget v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->minIncludingOverflow:I

    if-le v2, v1, :cond_3

    .line 294
    iput v1, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->minIncludingOverflow:I

    goto :goto_1

    .line 301
    :cond_3
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->totalNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 307
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numOps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 308
    iget-object v2, v0, Lcom/sleepycat/utilint/LatencyStat$Values;->numRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 309
    return-void
.end method

.method public set(J)V
    .locals 1
    .param p1, "nanoLatency"    # J

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sleepycat/utilint/LatencyStat;->set(IJ)V

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 318
    new-instance v10, Lcom/sleepycat/utilint/Latency;

    iget v1, p0, Lcom/sleepycat/utilint/LatencyStat;->maxTrackedLatencyMillis:I

    iget v2, p0, Lcom/sleepycat/utilint/LatencyStat;->saveMin:I

    iget v3, p0, Lcom/sleepycat/utilint/LatencyStat;->saveMax:I

    iget v4, p0, Lcom/sleepycat/utilint/LatencyStat;->saveAvg:F

    iget v5, p0, Lcom/sleepycat/utilint/LatencyStat;->saveNumRequests:I

    iget v6, p0, Lcom/sleepycat/utilint/LatencyStat;->saveNumOps:I

    iget v7, p0, Lcom/sleepycat/utilint/LatencyStat;->save95:I

    iget v8, p0, Lcom/sleepycat/utilint/LatencyStat;->save99:I

    iget v9, p0, Lcom/sleepycat/utilint/LatencyStat;->saveRequestsOverflow:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/utilint/Latency;-><init>(IIIFIIIII)V

    .line 322
    .local v0, "results":Lcom/sleepycat/utilint/Latency;
    invoke-virtual {v0}, Lcom/sleepycat/utilint/Latency;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
