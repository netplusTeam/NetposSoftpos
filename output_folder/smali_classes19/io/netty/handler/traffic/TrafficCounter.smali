.class public Lio/netty/handler/traffic/TrafficCounter;
.super Ljava/lang/Object;
.source "TrafficCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field final checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCumulativeTime:J

.field private volatile lastReadBytes:J

.field private lastReadThroughput:J

.field private volatile lastReadingTime:J

.field final lastTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastWriteThroughput:J

.field private volatile lastWritingTime:J

.field private volatile lastWrittenBytes:J

.field monitor:Ljava/lang/Runnable;

.field volatile monitorActive:Z

.field final name:Ljava/lang/String;

.field private readingTime:J

.field private realWriteThroughput:J

.field private final realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

.field private writingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lio/netty/handler/traffic/TrafficCounter;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 3
    .param p1, "trafficShapingHandler"    # Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "checkInterval"    # J

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    .line 280
    if-eqz p1, :cond_0

    .line 284
    const-string v0, "name"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    .line 286
    iput-object p2, p0, Lio/netty/handler/traffic/TrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 288
    invoke-direct {p0, p4, p5}, Lio/netty/handler/traffic/TrafficCounter;->init(J)V

    .line 289
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trafficShapingHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "checkInterval"    # J

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    .line 255
    const-string v0, "name"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    .line 257
    iput-object p1, p0, Lio/netty/handler/traffic/TrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 259
    invoke-direct {p0, p3, p4}, Lio/netty/handler/traffic/TrafficCounter;->init(J)V

    .line 260
    return-void
.end method

.method private init(J)V
    .locals 2
    .param p1, "checkInterval"    # J

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    .line 294
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 295
    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 296
    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWritingTime:J

    .line 297
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadingTime:J

    .line 298
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/traffic/TrafficCounter;->configure(J)V

    .line 299
    return-void
.end method

.method public static milliSecondFromNano()J
    .locals 4

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method bytesRealWriteFlowControl(J)V
    .locals 1
    .param p1, "write"    # J

    .line 350
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 351
    return-void
.end method

.method bytesRecvFlowControl(J)V
    .locals 1
    .param p1, "recv"    # J

    .line 328
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 329
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 330
    return-void
.end method

.method bytesWriteFlowControl(J)V
    .locals 1
    .param p1, "write"    # J

    .line 339
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 340
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 341
    return-void
.end method

.method public checkInterval()J
    .locals 2

    .line 358
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public configure(J)V
    .locals 6
    .param p1, "newCheckInterval"    # J

    .line 307
    const-wide/16 v0, 0xa

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    .line 308
    .local v2, "newInterval":J
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 309
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    .line 312
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    .line 316
    invoke-virtual {p0}, Lio/netty/handler/traffic/TrafficCounter;->start()V

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method public cumulativeReadBytes()J
    .locals 2

    .line 421
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public cumulativeWrittenBytes()J
    .locals 2

    .line 414
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentReadBytes()J
    .locals 2

    .line 393
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentWrittenBytes()J
    .locals 2

    .line 400
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealWriteThroughput()J
    .locals 2

    .line 443
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->realWriteThroughput:J

    return-wide v0
.end method

.method public getRealWrittenBytes()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 436
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public lastCumulativeTime()J
    .locals 2

    .line 429
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    return-wide v0
.end method

.method public lastReadBytes()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    return-wide v0
.end method

.method public lastReadThroughput()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    return-wide v0
.end method

.method public lastTime()J
    .locals 2

    .line 407
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastWriteThroughput()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    return-wide v0
.end method

.method public lastWrittenBytes()J
    .locals 2

    .line 386
    iget-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readTimeToWait(JJJ)J
    .locals 9
    .param p1, "size"    # J
    .param p3, "limitTraffic"    # J
    .param p5, "maxTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/traffic/TrafficCounter;->readTimeToWait(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public readTimeToWait(JJJJ)J
    .locals 28
    .param p1, "size"    # J
    .param p3, "limitTraffic"    # J
    .param p5, "maxTime"    # J
    .param p7, "now"    # J

    .line 494
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual/range {p0 .. p2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRecvFlowControl(J)V

    .line 495
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_8

    cmp-long v5, p3, v3

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 498
    :cond_0
    iget-object v5, v0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 499
    .local v5, "lastTimeCheck":J
    iget-object v7, v0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 500
    .local v7, "sum":J
    iget-wide v9, v0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 501
    .local v9, "localReadingTime":J
    iget-wide v11, v0, Lio/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    .line 502
    .local v11, "lastRB":J
    sub-long v13, v1, v5

    .line 503
    .local v13, "interval":J
    move-wide v15, v11

    .end local v11    # "lastRB":J
    .local v15, "lastRB":J
    iget-wide v11, v0, Lio/netty/handler/traffic/TrafficCounter;->lastReadingTime:J

    sub-long/2addr v11, v5

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 504
    .local v11, "pastDelay":J
    const-wide/16 v17, 0xa

    cmp-long v19, v13, v17

    const-string v3, "Time: "

    const-wide/16 v20, 0x3e8

    if-lez v19, :cond_4

    .line 506
    mul-long v20, v20, v7

    div-long v20, v20, p3

    sub-long v20, v20, v13

    move-wide/from16 v22, v5

    .end local v5    # "lastTimeCheck":J
    .local v22, "lastTimeCheck":J
    add-long v4, v20, v11

    .line 507
    .local v4, "time":J
    cmp-long v17, v4, v17

    if-lez v17, :cond_3

    .line 508
    sget-object v6, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 509
    move-wide/from16 v24, v15

    .end local v15    # "lastRB":J
    .local v24, "lastRB":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v15, 0x3a

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v24    # "lastRB":J
    .restart local v15    # "lastRB":J
    :cond_1
    move-wide/from16 v24, v15

    .line 511
    .end local v15    # "lastRB":J
    .restart local v24    # "lastRB":J
    :goto_0
    cmp-long v3, v4, p5

    if-lez v3, :cond_2

    add-long v15, v1, v4

    sub-long/2addr v15, v9

    cmp-long v3, v15, p5

    if-lez v3, :cond_2

    .line 512
    move-wide/from16 v4, p5

    .line 514
    :cond_2
    move-wide v15, v11

    .end local v11    # "pastDelay":J
    .local v15, "pastDelay":J
    add-long v11, v1, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 515
    return-wide v4

    .line 517
    .end local v24    # "lastRB":J
    .restart local v11    # "pastDelay":J
    .local v15, "lastRB":J
    :cond_3
    move-wide/from16 v24, v15

    move-wide v15, v11

    .end local v11    # "pastDelay":J
    .local v15, "pastDelay":J
    .restart local v24    # "lastRB":J
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 518
    const-wide/16 v11, 0x0

    return-wide v11

    .line 521
    .end local v4    # "time":J
    .end local v22    # "lastTimeCheck":J
    .end local v24    # "lastRB":J
    .restart local v5    # "lastTimeCheck":J
    .restart local v11    # "pastDelay":J
    .local v15, "lastRB":J
    :cond_4
    move-wide/from16 v22, v5

    move-wide/from16 v24, v15

    move-wide v15, v11

    .end local v5    # "lastTimeCheck":J
    .end local v11    # "pastDelay":J
    .local v15, "pastDelay":J
    .restart local v22    # "lastTimeCheck":J
    .restart local v24    # "lastRB":J
    add-long v11, v7, v24

    .line 522
    .local v11, "lastsum":J
    iget-object v4, v0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v4, v13

    .line 523
    .local v4, "lastinterval":J
    mul-long v20, v20, v11

    div-long v20, v20, p3

    sub-long v20, v20, v4

    move-wide/from16 v26, v7

    .end local v7    # "sum":J
    .local v26, "sum":J
    add-long v6, v20, v15

    .line 524
    .local v6, "time":J
    cmp-long v8, v6, v17

    if-lez v8, :cond_7

    .line 525
    sget-object v8, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v8}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 526
    move-wide/from16 v17, v13

    .end local v13    # "interval":J
    .local v17, "interval":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v13, 0x3a

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v13, v15

    .end local v15    # "pastDelay":J
    .local v13, "pastDelay":J
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 525
    .end local v17    # "interval":J
    .local v13, "interval":J
    .restart local v15    # "pastDelay":J
    :cond_5
    move-wide/from16 v17, v13

    move-wide v13, v15

    .line 528
    .end local v15    # "pastDelay":J
    .local v13, "pastDelay":J
    .restart local v17    # "interval":J
    :goto_1
    cmp-long v3, v6, p5

    if-lez v3, :cond_6

    add-long v15, v1, v6

    sub-long/2addr v15, v9

    cmp-long v3, v15, p5

    if-lez v3, :cond_6

    .line 529
    move-wide/from16 v6, p5

    .line 531
    :cond_6
    move-wide v15, v4

    .end local v4    # "lastinterval":J
    .local v15, "lastinterval":J
    add-long v3, v1, v6

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 532
    return-wide v6

    .line 534
    .end local v17    # "interval":J
    .restart local v4    # "lastinterval":J
    .local v13, "interval":J
    .local v15, "pastDelay":J
    :cond_7
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    .line 535
    const-wide/16 v3, 0x0

    return-wide v3

    .line 496
    .end local v4    # "lastinterval":J
    .end local v6    # "time":J
    .end local v9    # "localReadingTime":J
    .end local v11    # "lastsum":J
    .end local v13    # "interval":J
    .end local v15    # "pastDelay":J
    .end local v22    # "lastTimeCheck":J
    .end local v24    # "lastRB":J
    .end local v26    # "sum":J
    :cond_8
    :goto_2
    return-wide v3
.end method

.method declared-synchronized resetAccounting(J)V
    .locals 8
    .param p1, "newLastTime"    # J

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v0, p1, v0

    .line 223
    .local v0, "interval":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 225
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    sget-object v4, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/traffic/TrafficCounter;->checkInterval()J

    move-result-wide v5

    const/4 v7, 0x1

    shl-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Acct schedule not ok: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > 2*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/traffic/TrafficCounter;->checkInterval()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 230
    .end local p0    # "this":Lio/netty/handler/traffic/TrafficCounter;
    :cond_1
    iget-object v4, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    iput-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    .line 231
    iget-object v4, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    iput-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    .line 232
    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    iput-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    .line 234
    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    iput-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    .line 236
    iget-object v4, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    mul-long/2addr v2, v6

    div-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/handler/traffic/TrafficCounter;->realWriteThroughput:J

    .line 237
    iget-wide v2, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWritingTime:J

    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWritingTime:J

    .line 238
    iget-wide v2, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadingTime:J

    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->readingTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadingTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "interval":J
    .end local p1    # "newLastTime":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetCumulativeTime()V
    .locals 3

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    .line 452
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 453
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 454
    return-void
.end method

.method public declared-synchronized start()V
    .locals 9

    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 186
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 189
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 191
    .local v0, "localCheckInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lio/netty/handler/traffic/TrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_1

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z

    .line 193
    new-instance v3, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;-><init>(Lio/netty/handler/traffic/TrafficCounter;Lio/netty/handler/traffic/TrafficCounter$1;)V

    iput-object v3, p0, Lio/netty/handler/traffic/TrafficCounter;->monitor:Ljava/lang/Runnable;

    .line 194
    iget-object v2, p0, Lio/netty/handler/traffic/TrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    move-wide v6, v0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/traffic/TrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local p0    # "this":Lio/netty/handler/traffic/TrafficCounter;
    :cond_1
    monitor-exit p0

    return-void

    .line 184
    .end local v0    # "localCheckInterval":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z

    .line 207
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 208
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0, p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 211
    .end local p0    # "this":Lio/netty/handler/traffic/TrafficCounter;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_2
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    const-string v1, " Current Speed Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    const/16 v3, 0xa

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB/s, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 617
    const-string v2, "Asked Write: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    shr-long/2addr v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    const-string v2, "Real Write: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lio/netty/handler/traffic/TrafficCounter;->realWriteThroughput:J

    shr-long/2addr v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    const-string v1, "Current Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    const-string v2, "Current asked Write: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    shr-long/2addr v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string v1, "Current real Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/traffic/TrafficCounter;->realWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    return-object v0
.end method

.method public writeTimeToWait(JJJ)J
    .locals 9
    .param p1, "size"    # J
    .param p3, "limitTraffic"    # J
    .param p5, "maxTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/traffic/TrafficCounter;->writeTimeToWait(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeTimeToWait(JJJJ)J
    .locals 27
    .param p1, "size"    # J
    .param p3, "limitTraffic"    # J
    .param p5, "maxTime"    # J
    .param p7, "now"    # J

    .line 569
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual/range {p0 .. p2}, Lio/netty/handler/traffic/TrafficCounter;->bytesWriteFlowControl(J)V

    .line 570
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_8

    cmp-long v5, p3, v3

    if-nez v5, :cond_0

    move-wide v7, v3

    goto/16 :goto_0

    .line 573
    :cond_0
    iget-object v5, v0, Lio/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 574
    .local v5, "lastTimeCheck":J
    iget-object v7, v0, Lio/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 575
    .local v7, "sum":J
    iget-wide v9, v0, Lio/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    .line 576
    .local v9, "lastWB":J
    iget-wide v11, v0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 577
    .local v11, "localWritingTime":J
    iget-wide v13, v0, Lio/netty/handler/traffic/TrafficCounter;->lastWritingTime:J

    sub-long/2addr v13, v5

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 578
    .local v13, "pastDelay":J
    sub-long v3, v1, v5

    .line 579
    .local v3, "interval":J
    const-wide/16 v16, 0xa

    cmp-long v18, v3, v16

    const-string v15, "Time: "

    const-wide/16 v19, 0x3e8

    move-wide/from16 v21, v5

    .end local v5    # "lastTimeCheck":J
    .local v21, "lastTimeCheck":J
    if-lez v18, :cond_4

    .line 581
    mul-long v19, v19, v7

    div-long v19, v19, p3

    sub-long v19, v19, v3

    add-long v5, v19, v13

    .line 582
    .local v5, "time":J
    cmp-long v16, v5, v16

    if-lez v16, :cond_3

    .line 583
    move-wide/from16 v23, v9

    .end local v9    # "lastWB":J
    .local v23, "lastWB":J
    sget-object v9, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v9}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 584
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v15, 0x3a

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 586
    :cond_1
    cmp-long v9, v5, p5

    if-lez v9, :cond_2

    add-long v9, v1, v5

    sub-long/2addr v9, v11

    cmp-long v9, v9, p5

    if-lez v9, :cond_2

    .line 587
    move-wide/from16 v5, p5

    .line 589
    :cond_2
    add-long v9, v1, v5

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 590
    return-wide v5

    .line 592
    .end local v23    # "lastWB":J
    .restart local v9    # "lastWB":J
    :cond_3
    move-wide/from16 v23, v9

    .end local v9    # "lastWB":J
    .restart local v23    # "lastWB":J
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 593
    const-wide/16 v9, 0x0

    return-wide v9

    .line 596
    .end local v5    # "time":J
    .end local v23    # "lastWB":J
    .restart local v9    # "lastWB":J
    :cond_4
    move-wide/from16 v23, v9

    .end local v9    # "lastWB":J
    .restart local v23    # "lastWB":J
    add-long v9, v7, v23

    .line 597
    .local v9, "lastsum":J
    iget-object v5, v0, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 598
    .local v5, "lastinterval":J
    mul-long v19, v19, v9

    div-long v19, v19, p3

    sub-long v19, v19, v5

    move-wide/from16 v25, v3

    .end local v3    # "interval":J
    .local v25, "interval":J
    add-long v3, v19, v13

    .line 599
    .local v3, "time":J
    cmp-long v16, v3, v16

    if-lez v16, :cond_7

    .line 600
    move-wide/from16 v16, v7

    .end local v7    # "sum":J
    .local v16, "sum":J
    sget-object v7, Lio/netty/handler/traffic/TrafficCounter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v7}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 601
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v15, 0x3a

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 603
    :cond_5
    cmp-long v7, v3, p5

    if-lez v7, :cond_6

    add-long v7, v1, v3

    sub-long/2addr v7, v11

    cmp-long v7, v7, p5

    if-lez v7, :cond_6

    .line 604
    move-wide/from16 v3, p5

    .line 606
    :cond_6
    add-long v7, v1, v3

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 607
    return-wide v3

    .line 609
    .end local v16    # "sum":J
    .restart local v7    # "sum":J
    :cond_7
    move-wide/from16 v16, v7

    .end local v7    # "sum":J
    .restart local v16    # "sum":J
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lio/netty/handler/traffic/TrafficCounter;->writingTime:J

    .line 610
    const-wide/16 v7, 0x0

    return-wide v7

    .line 570
    .end local v3    # "time":J
    .end local v5    # "lastinterval":J
    .end local v9    # "lastsum":J
    .end local v11    # "localWritingTime":J
    .end local v13    # "pastDelay":J
    .end local v16    # "sum":J
    .end local v21    # "lastTimeCheck":J
    .end local v23    # "lastWB":J
    .end local v25    # "interval":J
    :cond_8
    move-wide v7, v3

    .line 571
    :goto_0
    return-wide v7
.end method
