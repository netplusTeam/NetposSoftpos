.class public Lorg/HdrHistogram/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Lorg/HdrHistogram/ValueRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;,
        Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;,
        Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;
    }
.end annotation


# static fields
.field private static instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile activeHistogram:Lorg/HdrHistogram/Histogram;

.field private inactiveHistogram:Lorg/HdrHistogram/Histogram;

.field private final instanceId:J

.field private final recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/HdrHistogram/Recorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/Recorder;-><init>(IZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "numberOfSignificantValueDigits"    # I
    .param p2, "packed"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/HdrHistogram/Recorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/Recorder;->instanceId:J

    .line 46
    new-instance v2, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v2}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v2, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 68
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v3, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;-><init>(JILorg/HdrHistogram/Recorder$1;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;-><init>(JILorg/HdrHistogram/Recorder$1;)V

    :goto_0
    iput-object v3, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 71
    iput-object v2, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 72
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V

    .line 73
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 99
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/Recorder;-><init>(JJI)V

    .line 100
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 10
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/HdrHistogram/Recorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/HdrHistogram/Recorder;->instanceId:J

    .line 46
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 121
    new-instance v0, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;-><init>(JJJILorg/HdrHistogram/Recorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 124
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V

    .line 125
    return-void
.end method

.method private performIntervalSample()V
    .locals 10

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 298
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v0, v0, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/Recorder;->instanceId:J

    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 302
    invoke-virtual {v1}, Lorg/HdrHistogram/Histogram;->getLowestDiscernibleValue()J

    move-result-wide v4

    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 303
    invoke-virtual {v1}, Lorg/HdrHistogram/Histogram;->getHighestTrackableValue()J

    move-result-wide v6

    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 304
    invoke-virtual {v1}, Lorg/HdrHistogram/Histogram;->getNumberOfSignificantValueDigits()I

    move-result v8

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;-><init>(JJJILorg/HdrHistogram/Recorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v0, v0, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 306
    new-instance v0, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/Recorder;->instanceId:J

    iget-object v4, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 308
    invoke-virtual {v4}, Lorg/HdrHistogram/Histogram;->getNumberOfSignificantValueDigits()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;-><init>(JILorg/HdrHistogram/Recorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v0, v0, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    if-eqz v0, :cond_2

    .line 310
    new-instance v0, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/Recorder;->instanceId:J

    iget-object v4, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 312
    invoke-virtual {v4}, Lorg/HdrHistogram/Histogram;->getNumberOfSignificantValueDigits()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;-><init>(JILorg/HdrHistogram/Recorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected internal histogram type for activeHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/Histogram;->reset()V

    .line 321
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 322
    .local v0, "tempHistogram":Lorg/HdrHistogram/Histogram;
    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    iput-object v1, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 323
    iput-object v0, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, "now":J
    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V

    .line 328
    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/Histogram;->setEndTimeStamp(J)V

    .line 333
    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v3, v4, v5}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v0    # "tempHistogram":Lorg/HdrHistogram/Histogram;
    .end local v1    # "now":J
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 336
    throw v0
.end method

.method private validateFitAsReplacementHistogram(Lorg/HdrHistogram/Histogram;Z)V
    .locals 5
    .param p1, "replacementHistogram"    # Lorg/HdrHistogram/Histogram;
    .param p2, "enforeContainingInstance"    # Z

    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, "bad":Z
    if-nez p1, :cond_0

    .line 373
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v1, v1, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    .line 378
    invoke-static {v1}, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;->access$300(Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v3, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    .line 379
    invoke-static {v3}, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;->access$300(Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 381
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_2
    instance-of v1, p1, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v1, v1, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    if-eqz v1, :cond_6

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    .line 387
    invoke-static {v1}, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;->access$400(Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v3, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;

    .line 388
    invoke-static {v3}, Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;->access$400(Lorg/HdrHistogram/Recorder$InternalConcurrentHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 390
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_4
    instance-of v1, p1, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    if-eqz v1, :cond_6

    .line 393
    iget-object v1, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v1, v1, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    if-eqz v1, :cond_6

    if-eqz p2, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    .line 396
    invoke-static {v1}, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;->access$500(Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v3, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    .line 397
    invoke-static {v3}, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;->access$500(Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 399
    :cond_5
    const/4 v0, 0x0

    .line 402
    :cond_6
    :goto_0
    if-eqz v0, :cond_8

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replacement histogram must have been obtained via a previous getIntervalHistogram() call from this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_7

    const-string v3, " insatnce"

    goto :goto_1

    :cond_7
    const-string v3, " class"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_8
    return-void
.end method


# virtual methods
.method public declared-synchronized getIntervalHistogram()Lorg/HdrHistogram/Histogram;
    .locals 1

    monitor-enter p0

    .line 196
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/Recorder;->getIntervalHistogram(Lorg/HdrHistogram/Histogram;)Lorg/HdrHistogram/Histogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    .end local p0    # "this":Lorg/HdrHistogram/Recorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/Histogram;)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/Histogram;

    monitor-enter p0

    .line 225
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/Recorder;->getIntervalHistogram(Lorg/HdrHistogram/Histogram;Z)Lorg/HdrHistogram/Histogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 225
    .end local p0    # "this":Lorg/HdrHistogram/Recorder;
    .end local p1    # "histogramToRecycle":Lorg/HdrHistogram/Histogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/Histogram;Z)Lorg/HdrHistogram/Histogram;
    .locals 2
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/Histogram;
    .param p2, "enforeContainingInstance"    # Z

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/Recorder;->validateFitAsReplacementHistogram(Lorg/HdrHistogram/Histogram;Z)V

    .line 262
    iput-object p1, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 263
    invoke-direct {p0}, Lorg/HdrHistogram/Recorder;->performIntervalSample()V

    .line 264
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 265
    .local v0, "sampledHistogram":Lorg/HdrHistogram/Histogram;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-object v0

    .line 260
    .end local v0    # "sampledHistogram":Lorg/HdrHistogram/Histogram;
    .end local p0    # "this":Lorg/HdrHistogram/Recorder;
    .end local p1    # "histogramToRecycle":Lorg/HdrHistogram/Histogram;
    .end local p2    # "enforeContainingInstance":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntervalHistogramInto(Lorg/HdrHistogram/Histogram;)V
    .locals 1
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/Histogram;

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/Recorder;->performIntervalSample()V

    .line 280
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/Histogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lorg/HdrHistogram/Recorder;
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/Histogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordValue(J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 136
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2}, Lorg/HdrHistogram/Histogram;->recordValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 139
    throw v2
.end method

.method public recordValueWithCount(JJ)V
    .locals 4
    .param p1, "value"    # J
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 153
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithCount(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 156
    throw v2
.end method

.method public recordValueWithExpectedInterval(JJ)V
    .locals 4
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 180
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithExpectedInterval(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v2, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 183
    nop

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/Recorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 183
    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/Recorder;->performIntervalSample()V

    .line 290
    invoke-direct {p0}, Lorg/HdrHistogram/Recorder;->performIntervalSample()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Lorg/HdrHistogram/Recorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
