.class public Lorg/HdrHistogram/SingleWriterDoubleRecorder;
.super Ljava/lang/Object;
.source "SingleWriterDoubleRecorder.java"

# interfaces
.implements Lorg/HdrHistogram/DoubleValueRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;,
        Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;
    }
.end annotation


# static fields
.field private static instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

.field private inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

.field private final instanceId:J

.field private final recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;-><init>(IZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 7
    .param p1, "numberOfSignificantValueDigits"    # I
    .param p2, "packed"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceId:J

    .line 45
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 67
    if-eqz p2, :cond_0

    new-instance v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V

    :goto_0
    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 71
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V

    .line 72
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 9
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceId:J

    .line 45
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 97
    new-instance v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JJILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 100
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V

    .line 101
    return-void
.end method

.method private performIntervalSample()V
    .locals 7

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 272
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    instance-of v0, v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    check-cast v1, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    instance-of v0, v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    iget-wide v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->instanceId:J

    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 277
    invoke-virtual {v1}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected internal histogram type for activeHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/DoubleHistogram;->reset()V

    .line 286
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 287
    .local v0, "tempHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    iput-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 288
    iput-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 292
    .local v1, "now":J
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V

    .line 293
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/DoubleHistogram;->setEndTimeStamp(J)V

    .line 298
    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v3, v4, v5}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v0    # "tempHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v1    # "now":J
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 301
    throw v0
.end method

.method private validateFitAsReplacementHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)V
    .locals 5
    .param p1, "replacementHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "enforeContainingInstance"    # Z

    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, "bad":Z
    if-nez p1, :cond_0

    .line 338
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    .line 342
    invoke-static {v1}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->access$400(Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    check-cast v3, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    .line 343
    invoke-static {v3}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->access$400(Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_2
    instance-of v1, p1, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    .line 349
    invoke-static {v1}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;->access$500(Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    check-cast v3, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    .line 350
    invoke-static {v3}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;->access$500(Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 352
    :cond_3
    const/4 v0, 0x0

    .line 355
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 359
    return-void

    .line 356
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replacement histogram must have been obtained via a previous getIntervalHistogram() call from this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
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

    .line 169
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;)Lorg/HdrHistogram/DoubleHistogram;
    .locals 1
    .param p1, "histogramToRecycle"    # Lorg/HdrHistogram/DoubleHistogram;

    monitor-enter p0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->getIntervalHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 199
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterDoubleRecorder;
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
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->validateFitAsReplacementHistogram(Lorg/HdrHistogram/DoubleHistogram;Z)V

    .line 237
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 238
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->performIntervalSample()V

    .line 239
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 240
    .local v0, "sampledHistogram":Lorg/HdrHistogram/DoubleHistogram;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-object v0

    .line 235
    .end local v0    # "sampledHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterDoubleRecorder;
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
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->performIntervalSample()V

    .line 255
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->inactiveHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/DoubleHistogram;->copyInto(Lorg/HdrHistogram/DoubleHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 253
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordValue(D)V
    .locals 4
    .param p1, "value"    # D

    .line 109
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 111
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v2, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->recordValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 114
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

    .line 125
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 127
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCount(DJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 130
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

    .line 151
    iget-object v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 153
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->activeHistogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithExpectedInterval(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 156
    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->performIntervalSample()V

    .line 264
    invoke-direct {p0}, Lorg/HdrHistogram/SingleWriterDoubleRecorder;->performIntervalSample()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
