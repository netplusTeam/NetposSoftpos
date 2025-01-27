.class public Lorg/HdrHistogram/SingleWriterRecorder;
.super Ljava/lang/Object;
.source "SingleWriterRecorder.java"

# interfaces
.implements Lorg/HdrHistogram/ValueRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;,
        Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;
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

    sput-object v0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/SingleWriterRecorder;-><init>(IZ)V

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
    sget-object v0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceId:J

    .line 46
    new-instance v2, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v2}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 68
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v3, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;-><init>(JILorg/HdrHistogram/SingleWriterRecorder$1;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(JILorg/HdrHistogram/SingleWriterRecorder$1;)V

    :goto_0
    iput-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 71
    iput-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 72
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

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

    .line 100
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/SingleWriterRecorder;-><init>(JJI)V

    .line 101
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 10
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceId:J

    .line 46
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 122
    new-instance v0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(JJJILorg/HdrHistogram/SingleWriterRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 125
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V

    .line 126
    return-void
.end method

.method private performIntervalSample()V
    .locals 6

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 299
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v0, v0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v2, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    invoke-direct {v0, v2, v1}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;Lorg/HdrHistogram/SingleWriterRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    instance-of v0, v0, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->instanceId:J

    iget-object v4, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 304
    invoke-virtual {v4}, Lorg/HdrHistogram/Histogram;->getNumberOfSignificantValueDigits()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;-><init>(JILorg/HdrHistogram/SingleWriterRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected internal histogram type for activeHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/Histogram;->reset()V

    .line 313
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 314
    .local v0, "tempHistogram":Lorg/HdrHistogram/Histogram;
    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    iput-object v1, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 315
    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    .local v1, "now":J
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V

    .line 320
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/Histogram;->setEndTimeStamp(J)V

    .line 325
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v3, v4, v5}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v0    # "tempHistogram":Lorg/HdrHistogram/Histogram;
    .end local v1    # "now":J
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 328
    throw v0
.end method

.method private validateFitAsReplacementHistogram(Lorg/HdrHistogram/Histogram;Z)V
    .locals 5
    .param p1, "replacementHistogram"    # Lorg/HdrHistogram/Histogram;
    .param p2, "enforeContainingInstance"    # Z

    .line 364
    const/4 v0, 0x1

    .line 365
    .local v0, "bad":Z
    if-nez p1, :cond_0

    .line 366
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    .line 370
    invoke-static {v1}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->access$400(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v3, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    .line 371
    invoke-static {v3}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->access$400(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 373
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :cond_2
    instance-of v1, p1, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    .line 377
    invoke-static {v1}, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;->access$500(Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    check-cast v3, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    .line 378
    invoke-static {v3}, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;->access$500(Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 380
    :cond_3
    const/4 v0, 0x0

    .line 383
    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replacement histogram must have been obtained via a previous getIntervalHistogram() call from this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_5

    const-string v3, " insatnce"

    goto :goto_1

    :cond_5
    const-string v3, " class"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_6
    return-void
.end method


# virtual methods
.method public declared-synchronized getIntervalHistogram()Lorg/HdrHistogram/Histogram;
    .locals 1

    monitor-enter p0

    .line 197
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/SingleWriterRecorder;->getIntervalHistogram(Lorg/HdrHistogram/Histogram;)Lorg/HdrHistogram/Histogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/Histogram;)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/Histogram;

    monitor-enter p0

    .line 226
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/SingleWriterRecorder;->getIntervalHistogram(Lorg/HdrHistogram/Histogram;Z)Lorg/HdrHistogram/Histogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterRecorder;
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

    .line 262
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/SingleWriterRecorder;->validateFitAsReplacementHistogram(Lorg/HdrHistogram/Histogram;Z)V

    .line 263
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 264
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterRecorder;->performIntervalSample()V

    .line 265
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    .line 266
    .local v0, "sampledHistogram":Lorg/HdrHistogram/Histogram;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-object v0

    .line 261
    .end local v0    # "sampledHistogram":Lorg/HdrHistogram/Histogram;
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterRecorder;
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

    .line 280
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterRecorder;->performIntervalSample()V

    .line 281
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->inactiveHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/Histogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 279
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterRecorder;
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/Histogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordValue(J)V
    .locals 4
    .param p1, "value"    # J

    .line 135
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 137
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2}, Lorg/HdrHistogram/Histogram;->recordValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 140
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

    .line 152
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 154
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithCount(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 157
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

    .line 179
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 181
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->activeHistogram:Lorg/HdrHistogram/Histogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithExpectedInterval(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 184
    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterRecorder;->performIntervalSample()V

    .line 291
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterRecorder;->performIntervalSample()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 289
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
