.class public Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
.super Ljava/lang/Object;
.source "PackedArrayRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;
    }
.end annotation


# static fields
.field private static instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

.field private final instanceId:J

.field private final recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "virtualLength"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceId:J

    .line 52
    new-instance v2, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v2}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 62
    new-instance v2, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;-><init>(JILorg/HdrHistogram/packedarray/PackedArrayRecorder$1;)V

    iput-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 63
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setStartTimeStamp(J)V

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceIdSequencer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceId:J

    .line 52
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 74
    new-instance v0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;-><init>(JIILorg/HdrHistogram/packedarray/PackedArrayRecorder$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 75
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setStartTimeStamp(J)V

    .line 76
    return-void
.end method

.method private performIntervalSample(Lorg/HdrHistogram/packedarray/PackedLongArray;)Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 7
    .param p1, "arrayToRecycle"    # Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 226
    move-object v0, p1

    .line 228
    .local v0, "inactiveArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    :try_start_0
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 231
    if-nez v0, :cond_1

    .line 232
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    instance-of v1, v1, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    iget-wide v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->instanceId:J

    iget-object v4, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/PackedLongArray;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;-><init>(JILorg/HdrHistogram/packedarray/PackedArrayRecorder$1;)V

    move-object v0, v1

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected internal array type for activeArray"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inactiveArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .end local p1    # "arrayToRecycle":Lorg/HdrHistogram/packedarray/PackedLongArray;
    throw v1

    .line 238
    .restart local v0    # "inactiveArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .restart local p1    # "arrayToRecycle":Lorg/HdrHistogram/packedarray/PackedLongArray;
    :cond_1
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->clear()V

    .line 242
    :goto_0
    move-object v1, v0

    .line 243
    .local v1, "tempArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    move-object v0, v2

    .line 244
    iput-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    .local v2, "now":J
    iget-object v4, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v4, v2, v3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setStartTimeStamp(J)V

    .line 249
    invoke-virtual {v0, v2, v3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setEndTimeStamp(J)V

    .line 254
    iget-object v4, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    const-wide/32 v5, 0x7a120

    invoke-virtual {v4, v5, v6}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v1    # "tempArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .end local v2    # "now":J
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 257
    nop

    .line 258
    return-object v0

    .line 256
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 257
    throw v1
.end method

.method private validateFitAsReplacementArray(Lorg/HdrHistogram/packedarray/PackedLongArray;Z)V
    .locals 5
    .param p1, "replacementArray"    # Lorg/HdrHistogram/packedarray/PackedLongArray;
    .param p2, "enforeContainingInstance"    # Z

    .line 277
    const/4 v0, 0x1

    .line 278
    .local v0, "bad":Z
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    instance-of v1, v1, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    .line 284
    invoke-static {v1}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;->access$200(Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    check-cast v3, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    .line 285
    invoke-static {v3}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;->access$200(Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 287
    :cond_1
    const/4 v0, 0x0

    .line 290
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replacement array must have been obtained via a previous getIntervalArray() call from this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    const-string v3, " insatnce"

    goto :goto_1

    :cond_3
    const-string v3, " class"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_4
    return-void
.end method


# virtual methods
.method public add(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "valueToAdd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 125
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v2, p1, p2, p3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->add(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 128
    throw v2
.end method

.method public declared-synchronized getIntervalArray()Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 1

    monitor-enter p0

    .line 148
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->getIntervalArray(Lorg/HdrHistogram/packedarray/PackedLongArray;)Lorg/HdrHistogram/packedarray/PackedLongArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntervalArray(Lorg/HdrHistogram/packedarray/PackedLongArray;)Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 1
    .param p1, "arrayToRecycle"    # Lorg/HdrHistogram/packedarray/PackedLongArray;

    monitor-enter p0

    .line 178
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->getIntervalArray(Lorg/HdrHistogram/packedarray/PackedLongArray;Z)Lorg/HdrHistogram/packedarray/PackedLongArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    .end local p0    # "this":Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
    .end local p1    # "arrayToRecycle":Lorg/HdrHistogram/packedarray/PackedLongArray;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntervalArray(Lorg/HdrHistogram/packedarray/PackedLongArray;Z)Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 1
    .param p1, "arrayToRecycle"    # Lorg/HdrHistogram/packedarray/PackedLongArray;
    .param p2, "enforeContainingInstance"    # Z

    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->validateFitAsReplacementArray(Lorg/HdrHistogram/packedarray/PackedLongArray;Z)V

    .line 213
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->performIntervalSample(Lorg/HdrHistogram/packedarray/PackedLongArray;)Lorg/HdrHistogram/packedarray/PackedLongArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .local v0, "sampledArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    monitor-exit p0

    return-object v0

    .line 211
    .end local v0    # "sampledArray":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .end local p0    # "this":Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
    .end local p1    # "arrayToRecycle":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .end local p2    # "enforeContainingInstance":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public increment(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 110
    .local v0, "criticalValueAtEnter":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v2, p1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->increment(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 113
    throw v2
.end method

.method public length()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->length()I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 222
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->performIntervalSample(Lorg/HdrHistogram/packedarray/PackedLongArray;)Lorg/HdrHistogram/packedarray/PackedLongArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    .end local p0    # "this":Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVirtualLength(I)V
    .locals 2
    .param p1, "newVirtualLength"    # I

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 96
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->activeArray:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setVirtualLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 99
    nop

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder;->recordingPhaser:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 99
    throw v0
.end method
