.class public Lorg/HdrHistogram/DoubleRecorder;
.super Ljava/lang/Object;
.source "DoubleRecorder.java"

# interfaces
.implements Lorg/HdrHistogram/DoubleValueRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;,
        Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;
    }
.end annotation


# static fields
.field private static instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

.field private inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

.field private final instanceId:J

.field private final recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/HdrHistogram/DoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/DoubleRecorder;-><init>(IZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "numberOfSignificantValueDigits"    # I
    .param p2, "packed"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/HdrHistogram/DoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/DoubleRecorder;->instanceId:J

    .line 45
    new-instance v2, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v2}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 67
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v3, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;-><init>(JILorg/HdrHistogram/DoubleRecorder$1;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    invoke-direct {v3, v0, v1, p1, v2}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(JILorg/HdrHistogram/DoubleRecorder$1;)V

    :goto_0
    iput-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 70
    iput-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 71
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->setStartTimeStamp(J)V

    .line 72
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 8
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/HdrHistogram/DoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/HdrHistogram/DoubleRecorder;->instanceId:J

    .line 45
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 97
    new-instance v0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(JJILorg/HdrHistogram/DoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 100
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->setStartTimeStamp(J)V

    .line 101
    return-void
.end method

.method private performIntervalSample()V
    .locals 6

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 273
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    instance-of v0, v0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    check-cast v2, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    invoke-direct {v0, v2, v1}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;Lorg/HdrHistogram/DoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    instance-of v0, v0, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/DoubleRecorder;->instanceId:J

    iget-object v4, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 279
    invoke-virtual {v4}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;-><init>(JILorg/HdrHistogram/DoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected internal histogram type for activeHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->reset()V

    .line 288
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 289
    .local v0, "tempHistogram":Lorg/HdrHistogram/ConcurrentDoubleHistogram;
    iget-object v1, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    iput-object v1, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 290
    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 294
    .local v1, "now":J
    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->setStartTimeStamp(J)V

    .line 295
    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->setEndTimeStamp(J)V

    .line 300
    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v3, v4, v5}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v0    # "tempHistogram":Lorg/HdrHistogram/ConcurrentDoubleHistogram;
    .end local v1    # "now":J
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 303
    throw v0
.end method

.method private validateFitAsReplacementHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)V
    .locals 5
    .param p1, "replacementHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "enforeContainingInstance"    # Z

    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "bad":Z
    if-nez p1, :cond_0

    .line 340
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    .line 344
    invoke-static {v1}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->access$400(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    check-cast v3, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    .line 345
    invoke-static {v3}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->access$400(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_2
    instance-of v1, p1, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    .line 351
    invoke-static {v1}, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;->access$500(Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    check-cast v3, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    .line 352
    invoke-static {v3}, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;->access$500(Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 354
    :cond_3
    const/4 v0, 0x0

    .line 357
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 361
    return-void

    .line 358
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replacement histogram must have been obtained via a previous getIntervalHistogram() call from this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized getIntervalHistogram()Lorg/HdrHistogram/DoubleHistogram;
    .locals 1

    monitor-enter p0

    .line 172
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/DoubleRecorder;->getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 172
    .end local p0    # "this":Lorg/HdrHistogram/DoubleRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;)Lorg/HdrHistogram/DoubleHistogram;
    .locals 1
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/DoubleHistogram;

    monitor-enter p0

    .line 200
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/DoubleRecorder;->getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    .end local p0    # "this":Lorg/HdrHistogram/DoubleRecorder;
    .end local p1    # "histogramToRecycle":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)Lorg/HdrHistogram/DoubleHistogram;
    .locals 2
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "enforeContainingInstance"    # Z

    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleRecorder;->validateFitAsReplacementHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)V

    .line 237
    move-object v0, p1

    check-cast v0, Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    iput-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 238
    invoke-direct {p0}, Lorg/HdrHistogram/DoubleRecorder;->performIntervalSample()V

    .line 239
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 240
    .local v0, "sampledHistogram":Lorg/HdrHistogram/DoubleHistogram;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-object v0

    .line 235
    .end local v0    # "sampledHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/DoubleRecorder;
    .end local p1    # "histogramToRecycle":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "enforeContainingInstance":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntervalHistogramInto(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 1
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/DoubleHistogram;

    monitor-enter p0

    .line 254
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/DoubleRecorder;->performIntervalSample()V

    .line 255
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->copyInto(Lorg/HdrHistogram/DoubleHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 253
    .end local p0    # "this":Lorg/HdrHistogram/DoubleRecorder;
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordValue(D)V
    .locals 4
    .param p1, "value"    # D

    .line 110
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 112
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v2, p1, p2}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->recordValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 115
    throw v2
.end method

.method public recordValueWithCount(DJ)V
    .locals 4
    .param p1, "value"    # D
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 129
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->recordValueWithCount(DJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 132
    throw v2
.end method

.method public recordValueWithExpectedInterval(DD)V
    .locals 4
    .param p1, "value"    # D
    .param p3, "expectedIntervalBetweenValueSamples"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 156
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->activeHistogram:Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;->recordValueWithExpectedInterval(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v2, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/DoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 159
    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/DoubleRecorder;->performIntervalSample()V

    .line 265
    invoke-direct {p0}, Lorg/HdrHistogram/DoubleRecorder;->performIntervalSample()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 263
    .end local p0    # "this":Lorg/HdrHistogram/DoubleRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
