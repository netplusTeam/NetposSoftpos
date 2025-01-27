.class public Lorg/HdrHistogram/WriterReaderPhaser;
.super Ljava/lang/Object;
.source "WriterReaderPhaser.java"


# static fields
.field private static final evenEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/WriterReaderPhaser;",
            ">;"
        }
    .end annotation
.end field

.field private static final oddEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/WriterReaderPhaser;",
            ">;"
        }
    .end annotation
.end field

.field private static final startEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/WriterReaderPhaser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile evenEndEpoch:J

.field private volatile oddEndEpoch:J

.field private final readerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile startEpoch:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 143
    const-class v0, Lorg/HdrHistogram/WriterReaderPhaser;

    .line 144
    const-string v1, "startEpoch"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/HdrHistogram/WriterReaderPhaser;->startEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 145
    nop

    .line 146
    const-string v1, "evenEndEpoch"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/HdrHistogram/WriterReaderPhaser;->evenEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 147
    nop

    .line 148
    const-string v1, "oddEndEpoch"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/WriterReaderPhaser;->oddEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->startEpoch:J

    .line 138
    iput-wide v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->evenEndEpoch:J

    .line 139
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->oddEndEpoch:J

    .line 141
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public flipPhase()V
    .locals 2

    .line 269
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase(J)V

    .line 270
    return-void
.end method

.method public flipPhase(J)V
    .locals 10
    .param p1, "yieldTimeNsec"    # J

    .line 224
    iget-object v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-wide v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->startEpoch:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    .local v0, "nextPhaseIsEven":Z
    :goto_0
    if-eqz v0, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    .line 233
    .local v4, "initialStartValue":J
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lorg/HdrHistogram/WriterReaderPhaser;->evenEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/HdrHistogram/WriterReaderPhaser;->oddEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :goto_2
    invoke-virtual {v1, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 236
    sget-object v1, Lorg/HdrHistogram/WriterReaderPhaser;->startEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 239
    .local v6, "startValueAtFlip":J
    :goto_3
    if-eqz v0, :cond_3

    iget-wide v8, p0, Lorg/HdrHistogram/WriterReaderPhaser;->oddEndEpoch:J

    goto :goto_4

    :cond_3
    iget-wide v8, p0, Lorg/HdrHistogram/WriterReaderPhaser;->evenEndEpoch:J

    :goto_4
    cmp-long v1, v8, v6

    if-eqz v1, :cond_5

    .line 240
    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 241
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 244
    :cond_4
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 245
    :catch_0
    move-exception v1

    .line 247
    :goto_5
    goto :goto_3

    .line 250
    :cond_5
    return-void

    .line 225
    .end local v0    # "nextPhaseIsEven":Z
    .end local v4    # "initialStartValue":J
    .end local v6    # "startValueAtFlip":J
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "flipPhase() can only be called while holding the readerLock()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readerLock()V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    return-void
.end method

.method public readerUnlock()V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    return-void
.end method

.method public writerCriticalSectionEnter()J
    .locals 2

    .line 164
    sget-object v0, Lorg/HdrHistogram/WriterReaderPhaser;->startEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public writerCriticalSectionExit(J)V
    .locals 2
    .param p1, "criticalValueAtEnter"    # J

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/HdrHistogram/WriterReaderPhaser;->oddEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/HdrHistogram/WriterReaderPhaser;->evenEndEpochUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 183
    return-void
.end method
