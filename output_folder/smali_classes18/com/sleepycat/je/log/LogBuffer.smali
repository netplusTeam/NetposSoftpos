.class public Lcom/sleepycat/je/log/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"

# interfaces
.implements Lcom/sleepycat/je/log/LogSource;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG_NAME:Ljava/lang/String;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private data:[B

.field private env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private firstLsn:J

.field private lastLsn:J

.field private readLatch:Lcom/sleepycat/je/latch/Latch;

.field private rewriteAllowed:Z

.field private writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    nop

    .line 60
    const-class v0, Lcom/sleepycat/je/log/LogBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogBuffer;->DEBUG_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->data:[B

    .line 89
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 90
    sget-object v0, Lcom/sleepycat/je/log/LogBuffer;->DEBUG_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/sleepycat/je/latch/LatchFactory;->createExclusiveLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/Latch;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    .line 92
    iput-object p2, p0, Lcom/sleepycat/je/log/LogBuffer;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 93
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogBuffer;->reinit()V

    .line 94
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "firstLsn"    # J

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    iput-object p1, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 104
    iput-wide p2, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    .line 105
    iput-wide p2, p0, Lcom/sleepycat/je/log/LogBuffer;->lastLsn:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogBuffer;->rewriteAllowed:Z

    .line 107
    return-void
.end method


# virtual methods
.method public allocate(I)Lcom/sleepycat/je/log/LogBufferSegment;
    .locals 3
    .param p1, "size"    # I

    .line 304
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/LogBuffer;->hasRoom(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->data:[B

    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 309
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 311
    new-instance v1, Lcom/sleepycat/je/log/LogBufferSegment;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/log/LogBufferSegment;-><init>(Lcom/sleepycat/je/log/LogBuffer;Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 313
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method containsLsn(J)Z
    .locals 9
    .param p1, "lsn"    # J

    .line 211
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogBuffer;->waitForZeroAndLatch()V

    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "found":Z
    iget-wide v3, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1

    .line 222
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 224
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    .line 226
    .local v0, "fileOffset":J
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .local v3, "contentSize":I
    goto :goto_0

    .line 231
    .end local v3    # "contentSize":I
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 233
    .restart local v3    # "contentSize":I
    :goto_0
    iget-wide v4, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 234
    .local v4, "firstLsnOffset":J
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 236
    .local v6, "lastContentOffset":J
    cmp-long v8, v4, v0

    if-gtz v8, :cond_1

    cmp-long v8, v6, v0

    if-lez v8, :cond_1

    .line 238
    const/4 v2, 0x1

    .line 242
    .end local v0    # "fileOffset":J
    .end local v3    # "contentSize":I
    .end local v4    # "firstLsnOffset":J
    .end local v6    # "lastContentOffset":J
    :cond_1
    if-eqz v2, :cond_2

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 246
    const/4 v0, 0x0

    return v0

    .line 211
    .end local v2    # "found":Z
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public free()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 321
    return-void
.end method

.method public getBytes(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "fileOffset"    # J

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    .local v0, "copy":Ljava/nio/ByteBuffer;
    iget-wide v1, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v1

    sub-long v1, p1, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    return-object v0
.end method

.method public getBytes(JI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "fileOffset"    # J
    .param p3, "numBytes"    # I

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogBuffer;->getBytes(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getCapacity()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getDataBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getFirstLsn()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    return-wide v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 381
    const/16 v0, 0x11

    return v0
.end method

.method getRewriteAllowed()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogBuffer;->rewriteAllowed:Z

    return v0
.end method

.method hasRoom(I)Z
    .locals 2
    .param p1, "numBytes"    # I

    .line 166
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public latchForWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 270
    return-void
.end method

.method registerLsn(J)V
    .locals 5
    .param p1, "lsn"    # J

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogBuffer;->lastLsn:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 147
    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastlsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/LogBuffer;->lastLsn:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 151
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/sleepycat/je/log/LogBuffer;->lastLsn:J

    .line 153
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 154
    iput-wide p1, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    .line 156
    :cond_2
    return-void

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method reinit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    .line 118
    iput-wide v0, p0, Lcom/sleepycat/je/log/LogBuffer;->lastLsn:J

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogBuffer;->rewriteAllowed:Z

    .line 120
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 122
    return-void
.end method

.method public release()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->releaseIfOwner()V

    .line 283
    return-void
.end method

.method setRewriteAllowed()V
    .locals 1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogBuffer;->rewriteAllowed:Z

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LogBuffer firstLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/log/LogBuffer;->firstLsn:J

    .line 387
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method public waitForZeroAndLatch()V
    .locals 4

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_3

    .line 329
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    const-wide/16 v1, 0x64

    invoke-static {p0, v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 336
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/log/LogBuffer;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Interrupt during read operation"

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 342
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->writePinCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    .line 343
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/log/LogBuffer;->readLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->release()V

    goto :goto_0

    .line 349
    :cond_3
    return-void
.end method
