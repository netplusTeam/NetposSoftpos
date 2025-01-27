.class public Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
.super Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "GlobalChannelTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;,
        Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final DEFAULT_ACCELERATION:F = -0.1f

.field private static final DEFAULT_DEVIATION:F = 0.1f

.field private static final DEFAULT_SLOWDOWN:F = 0.4f

.field private static final MAX_DEVIATION:F = 0.4f

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile accelerationFactor:F

.field final channelQueues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile maxDeviation:F

.field volatile maxGlobalWriteSize:J

.field private final queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile readChannelLimit:J

.field private volatile readDeviationActive:Z

.field private volatile slowDownFactor:F

.field private volatile writeChannelLimit:J

.field private volatile writeDeviationActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    .line 89
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 262
    invoke-direct {p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>()V

    .line 93
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 263
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "checkInterval"    # J

    .line 252
    invoke-direct {p0, p2, p3}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(J)V

    .line 93
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 253
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJJ)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeGlobalLimit"    # J
    .param p4, "readGlobalLimit"    # J
    .param p6, "writeChannelLimit"    # J
    .param p8, "readChannelLimit"    # J

    .line 236
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJ)V

    .line 93
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 237
    iput-wide p6, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    .line 238
    iput-wide p8, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    .line 239
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJJJ)V
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeGlobalLimit"    # J
    .param p4, "readGlobalLimit"    # J
    .param p6, "writeChannelLimit"    # J
    .param p8, "readChannelLimit"    # J
    .param p10, "checkInterval"    # J

    .line 213
    move-object v7, p0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJ)V

    .line 93
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    const-wide/32 v0, 0x19000000

    iput-wide v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 214
    move-wide v0, p6

    iput-wide v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    .line 215
    move-wide/from16 v2, p8

    iput-wide v2, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    .line 216
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJJJJ)V
    .locals 10
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeGlobalLimit"    # J
    .param p4, "readGlobalLimit"    # J
    .param p6, "writeChannelLimit"    # J
    .param p8, "readChannelLimit"    # J
    .param p10, "checkInterval"    # J
    .param p12, "maxTime"    # J

    .line 186
    move-object v9, p0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 93
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    const-wide/32 v0, 0x19000000

    iput-wide v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 187
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 188
    move-wide/from16 v0, p6

    iput-wide v0, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    .line 189
    move-wide/from16 v2, p8

    iput-wide v2, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    .line 190
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;J)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .param p3, "x3"    # J

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;J)V

    return-void
.end method

.method private computeBalancedWait(FFJ)J
    .locals 3
    .param p1, "maxLocal"    # F
    .param p2, "maxGlobal"    # F
    .param p3, "wait"    # J

    .line 349
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 351
    return-wide p3

    .line 353
    :cond_0
    div-float v0, p1, p2

    .line 355
    .local v0, "ratio":F
    iget v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxDeviation:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 356
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxDeviation:F

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 357
    return-wide p3

    .line 359
    :cond_1
    iget v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->slowDownFactor:F

    .line 360
    const-wide/16 v1, 0xa

    cmp-long v1, p3, v1

    if-gez v1, :cond_3

    .line 361
    const-wide/16 p3, 0xa

    goto :goto_0

    .line 365
    :cond_2
    iget v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->accelerationFactor:F

    .line 367
    :cond_3
    :goto_0
    long-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1
.end method

.method private computeDeviationCumulativeBytes()V
    .locals 15

    .line 315
    const-wide/16 v0, 0x0

    .line 316
    .local v0, "maxWrittenBytes":J
    const-wide/16 v2, 0x0

    .line 317
    .local v2, "maxReadBytes":J
    const-wide v4, 0x7fffffffffffffffL

    .line 318
    .local v4, "minWrittenBytes":J
    const-wide v6, 0x7fffffffffffffffL

    .line 319
    .local v6, "minReadBytes":J
    iget-object v8, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 320
    .local v9, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v10, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v10}, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes()J

    move-result-wide v10

    .line 321
    .local v10, "value":J
    cmp-long v12, v0, v10

    if-gez v12, :cond_0

    .line 322
    move-wide v0, v10

    .line 324
    :cond_0
    cmp-long v12, v4, v10

    if-lez v12, :cond_1

    .line 325
    move-wide v4, v10

    .line 327
    :cond_1
    iget-object v12, v9, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v12}, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes()J

    move-result-wide v10

    .line 328
    cmp-long v12, v2, v10

    if-gez v12, :cond_2

    .line 329
    move-wide v2, v10

    .line 331
    :cond_2
    cmp-long v12, v6, v10

    if-lez v12, :cond_3

    .line 332
    move-wide v6, v10

    .line 334
    .end local v9    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v10    # "value":J
    :cond_3
    goto :goto_0

    .line 335
    :cond_4
    iget-object v8, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v8, v10, :cond_5

    move v8, v10

    goto :goto_1

    :cond_5
    move v8, v9

    .line 336
    .local v8, "multiple":Z
    :goto_1
    const-wide/16 v11, 0x2

    if-eqz v8, :cond_6

    div-long v13, v2, v11

    cmp-long v13, v6, v13

    if-gez v13, :cond_6

    move v13, v10

    goto :goto_2

    :cond_6
    move v13, v9

    :goto_2
    iput-boolean v13, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readDeviationActive:Z

    .line 337
    if-eqz v8, :cond_7

    div-long v11, v0, v11

    cmp-long v11, v4, v11

    if-gez v11, :cond_7

    move v9, v10

    :cond_7
    iput-boolean v9, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeDeviationActive:Z

    .line 338
    iget-object v9, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 339
    iget-object v9, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 340
    return-void
.end method

.method private getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 459
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 460
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 462
    .local v2, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    if-nez v2, :cond_0

    .line 463
    new-instance v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    invoke-direct {v3}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;-><init>()V

    move-object v2, v3

    .line 464
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 466
    new-instance v3, Lio/netty/handler/traffic/TrafficCounter;

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChannelTC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->checkInterval:J

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    iput-object v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 468
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    .line 469
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v3

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 470
    iget-wide v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 471
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_0
    return-object v2
.end method

.method private sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;J)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "perChannel"    # Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .param p3, "now"    # J

    .line 747
    monitor-enter p2

    .line 748
    :try_start_0
    iget-object v0, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;

    .line 749
    .local v0, "newToSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    :goto_0
    if-eqz v0, :cond_1

    .line 750
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    cmp-long v1, v1, p3

    if-gtz v1, :cond_0

    .line 751
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->size:J

    .line 752
    .local v1, "size":J
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 753
    iget-object v3, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 754
    iget-wide v3, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    .line 755
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 756
    iget-object v3, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v4, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v3, v4}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 757
    iput-wide p3, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 758
    .end local v1    # "size":J
    nop

    .line 749
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;

    move-object v0, v1

    goto :goto_0

    .line 759
    :cond_0
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 763
    :cond_1
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 766
    .end local v0    # "newToSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public accelerationFactor()F
    .locals 1

    .line 277
    iget v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->accelerationFactor:F

    return v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 24
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v18

    .line 520
    .local v18, "size":J
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v4

    .line 521
    .local v4, "now":J
    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    if-lez v2, :cond_7

    .line 523
    iget-object v9, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->getReadLimit()J

    move-result-wide v12

    iget-wide v14, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    move-wide/from16 v10, v18

    move-wide/from16 v16, v4

    invoke-virtual/range {v9 .. v17}, Lio/netty/handler/traffic/TrafficCounter;->readTimeToWait(JJJJ)J

    move-result-wide v20

    .line 524
    .local v20, "waitGlobal":J
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 525
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 526
    .local v3, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    const-wide/16 v22, 0x0

    .line 527
    .local v22, "wait":J
    if-eqz v3, :cond_3

    .line 528
    iget-object v9, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    iget-wide v12, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    iget-wide v14, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    move-wide/from16 v10, v18

    move-wide/from16 v16, v4

    invoke-virtual/range {v9 .. v17}, Lio/netty/handler/traffic/TrafficCounter;->readTimeToWait(JJJJ)J

    move-result-wide v9

    .line 529
    .end local v22    # "wait":J
    .local v9, "wait":J
    iget-boolean v11, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readDeviationActive:Z

    if-eqz v11, :cond_2

    .line 532
    iget-object v11, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v11}, Lio/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes()J

    move-result-wide v11

    .line 533
    .local v11, "maxLocalRead":J
    iget-object v13, v6, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    .line 534
    .local v13, "maxGlobalRead":J
    cmp-long v0, v11, v0

    if-gtz v0, :cond_0

    .line 535
    const-wide/16 v11, 0x0

    .line 537
    :cond_0
    cmp-long v0, v13, v11

    if-gez v0, :cond_1

    .line 538
    move-wide v13, v11

    .line 540
    :cond_1
    long-to-float v0, v11

    long-to-float v1, v13

    invoke-direct {v6, v0, v1, v9, v10}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->computeBalancedWait(FFJ)J

    move-result-wide v22

    .end local v9    # "wait":J
    .restart local v22    # "wait":J
    goto :goto_0

    .line 529
    .end local v11    # "maxLocalRead":J
    .end local v13    # "maxGlobalRead":J
    .end local v22    # "wait":J
    .restart local v9    # "wait":J
    :cond_2
    move-wide/from16 v22, v9

    .line 543
    .end local v9    # "wait":J
    .restart local v22    # "wait":J
    :cond_3
    :goto_0
    cmp-long v0, v22, v20

    if-gez v0, :cond_4

    .line 544
    move-wide/from16 v22, v20

    .line 546
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v2

    move-object v10, v3

    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v9, "key":Ljava/lang/Integer;
    .local v10, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    move-wide/from16 v2, v22

    move-wide v11, v4

    .end local v4    # "now":J
    .local v11, "now":J
    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J

    move-result-wide v0

    .line 547
    .end local v22    # "wait":J
    .local v0, "wait":J
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    .line 550
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 551
    .local v2, "channel":Lio/netty/channel/Channel;
    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    .line 552
    .local v3, "config":Lio/netty/channel/ChannelConfig;
    sget-object v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    const/16 v13, 0x3a

    if-eqz v5, :cond_5

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read Suspend: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 554
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 553
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 556
    :cond_5
    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 557
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/netty/channel/ChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 558
    sget-object v5, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->READ_SUSPENDED:Lio/netty/util/AttributeKey;

    invoke-interface {v2, v5}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v5

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v5, v14}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 561
    sget-object v5, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->REOPEN_TASK:Lio/netty/util/AttributeKey;

    invoke-interface {v2, v5}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v5

    .line 562
    .local v5, "attr":Lio/netty/util/Attribute;, "Lio/netty/util/Attribute<Ljava/lang/Runnable;>;"
    invoke-interface {v5}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Runnable;

    .line 563
    .local v14, "reopenTask":Ljava/lang/Runnable;
    if-nez v14, :cond_6

    .line 564
    new-instance v15, Lio/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;

    invoke-direct {v15, v7}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    move-object v14, v15

    .line 565
    invoke-interface {v5, v14}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 567
    :cond_6
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v15

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v14, v0, v1, v13}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 568
    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suspend final status => "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 570
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " will reopened at: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 569
    invoke-interface {v4, v13}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    .end local v0    # "wait":J
    .end local v2    # "channel":Lio/netty/channel/Channel;
    .end local v3    # "config":Lio/netty/channel/ChannelConfig;
    .end local v5    # "attr":Lio/netty/util/Attribute;, "Lio/netty/util/Attribute<Ljava/lang/Runnable;>;"
    .end local v9    # "key":Ljava/lang/Integer;
    .end local v10    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v11    # "now":J
    .end local v14    # "reopenTask":Ljava/lang/Runnable;
    .end local v20    # "waitGlobal":J
    .restart local v4    # "now":J
    :cond_7
    move-wide v11, v4

    .line 575
    .end local v4    # "now":J
    .restart local v11    # "now":J
    :cond_8
    :goto_1
    invoke-virtual {v6, v7, v11, v12}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 576
    invoke-interface/range {p1 .. p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 577
    return-void
.end method

.method public channelTrafficCounters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/netty/handler/traffic/TrafficCounter;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;

    invoke-direct {v0, p0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;)V

    return-object v0
.end method

.method protected checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "wait"    # J
    .param p4, "now"    # J

    .line 581
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 582
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 583
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    if-eqz v1, :cond_0

    .line 584
    iget-wide v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    add-long v2, p4, p2

    iget-wide v4, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 585
    iget-wide p2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    .line 588
    :cond_0
    return-wide p2
.end method

.method public configureChannel(JJ)V
    .locals 5
    .param p1, "newWriteLimit"    # J
    .param p3, "newReadLimit"    # J

    .line 406
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    .line 407
    iput-wide p3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    .line 408
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    .line 409
    .local v0, "now":J
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 410
    .local v3, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v4, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 411
    .end local v3    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 9
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 149
    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ecccccd    # 0.4f

    const v2, -0x42333333    # -0.1f

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->setMaxDeviation(FFF)V

    .line 150
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;

    iget-wide v7, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->checkInterval:J

    const-string v6, "GlobalChannelTC"

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    .line 154
    .local v0, "tc":Lio/netty/handler/traffic/TrafficCounter;
    invoke-virtual {p0, v0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->setTrafficCounter(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 155
    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->start()V

    .line 156
    return-void

    .line 151
    .end local v0    # "tc":Lio/netty/handler/traffic/TrafficCounter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0
    .param p1, "counter"    # Lio/netty/handler/traffic/TrafficCounter;

    .line 344
    invoke-direct {p0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->computeDeviationCumulativeBytes()V

    .line 345
    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 346
    return-void
.end method

.method public getMaxGlobalWriteSize()J
    .locals 2

    .line 374
    iget-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    return-wide v0
.end method

.method public getReadChannelLimit()J
    .locals 2

    .line 436
    iget-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    return-wide v0
.end method

.method public getWriteChannelLimit()J
    .locals 2

    .line 418
    iget-wide v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 479
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    .line 480
    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 481
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    .line 486
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 487
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 489
    .local v2, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    if-eqz v2, :cond_4

    .line 491
    monitor-enter v2

    .line 492
    :try_start_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;

    .line 494
    .local v4, "toSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v5

    .line 495
    .local v5, "size":J
    iget-object v7, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v7, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 496
    iget-object v7, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v7, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 497
    iget-wide v7, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    sub-long/2addr v7, v5

    iput-wide v7, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    .line 498
    iget-object v7, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 499
    iget-object v7, v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v8, v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v7, v8}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 500
    nop

    .end local v4    # "toSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    .end local v5    # "size":J
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 502
    :cond_1
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v4, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 503
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;

    .line 504
    .restart local v4    # "toSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    instance-of v5, v5, Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_2

    .line 505
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    check-cast v5, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 507
    .end local v4    # "toSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    :cond_2
    goto :goto_1

    .line 509
    :cond_3
    :goto_2
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 510
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 512
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 513
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->releaseReadSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 514
    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 515
    return-void
.end method

.method protected informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "now"    # J

    .line 593
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 594
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 595
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    if-eqz v1, :cond_0

    .line 596
    iput-wide p2, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 598
    :cond_0
    return-void
.end method

.method public maxDeviation()F
    .locals 1

    .line 270
    iget v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxDeviation:F

    return v0
.end method

.method protected maximumCumulativeReadBytes()J
    .locals 2

    .line 619
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method protected maximumCumulativeWrittenBytes()J
    .locals 2

    .line 615
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public queuesSize()J
    .locals 2

    .line 398
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final release()V
    .locals 1

    .line 454
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    .line 455
    return-void
.end method

.method public setMaxDeviation(FFF)V
    .locals 2
    .param p1, "maxDeviation"    # F
    .param p2, "slowDownFactor"    # F
    .param p3, "accelerationFactor"    # F

    .line 299
    const v0, 0x3ecccccd    # 0.4f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 302
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_1

    .line 305
    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 308
    iput p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxDeviation:F

    .line 309
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p3, v0

    iput v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->accelerationFactor:F

    .line 310
    add-float/2addr v0, p2

    iput v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->slowDownFactor:F

    .line 311
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accelerationFactor must be <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slowDownFactor must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDeviation must be <= 0.4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxGlobalWriteSize(J)V
    .locals 2
    .param p1, "maxGlobalWriteSize"    # J

    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 391
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 392
    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxGlobalWriteSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadChannelLimit(J)V
    .locals 5
    .param p1, "readLimit"    # J

    .line 443
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    .line 444
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    .line 445
    .local v0, "now":J
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 446
    .local v3, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v4, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 447
    .end local v3    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method public setWriteChannelLimit(J)V
    .locals 5
    .param p1, "writeLimit"    # J

    .line 425
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    .line 426
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    .line 427
    .local v0, "now":J
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 428
    .local v3, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    iget-object v4, v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4, v0, v1}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 429
    .end local v3    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method

.method public slowDownFactor()F
    .locals 1

    .line 284
    iget v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->slowDownFactor:F

    return v0
.end method

.method protected submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
    .locals 23
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "size"    # J
    .param p5, "writedelay"    # J
    .param p7, "now"    # J
    .param p9, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 700
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v5, p3

    move-wide/from16 v3, p7

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v17

    .line 701
    .local v17, "channel":Lio/netty/channel/Channel;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 702
    .local v2, "key":Ljava/lang/Integer;
    iget-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 703
    .local v0, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    if-nez v0, :cond_0

    .line 706
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 703
    :cond_0
    move-object v1, v0

    .line 709
    .end local v0    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    :goto_0
    move-wide/from16 v9, p5

    .line 710
    .local v9, "delay":J
    const/16 v18, 0x0

    .line 712
    .local v18, "globalSizeExceeded":Z
    monitor-enter v1

    .line 713
    const-wide/16 v11, 0x0

    cmp-long v0, p5, v11

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 715
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 716
    move-object/from16 v15, p2

    move-object/from16 v13, p9

    :try_start_1
    invoke-interface {v8, v15, v13}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 717
    iput-wide v3, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 718
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 731
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v13, p9

    :goto_1
    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_3

    .line 713
    :cond_1
    move-object/from16 v15, p2

    move-object/from16 v13, p9

    .line 720
    :try_start_2
    iget-wide v11, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    add-long v11, v3, v9

    move-wide/from16 v19, v9

    .end local v9    # "delay":J
    .local v19, "delay":J
    :try_start_3
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    sub-long/2addr v11, v9

    iget-wide v9, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    cmp-long v0, v11, v9

    if-lez v0, :cond_3

    .line 721
    iget-wide v9, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v10, v9

    .end local v19    # "delay":J
    .restart local v9    # "delay":J
    goto :goto_2

    .line 731
    .end local v9    # "delay":J
    .restart local v19    # "delay":J
    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v9, v19

    goto/16 :goto_3

    .line 720
    .end local v19    # "delay":J
    .restart local v9    # "delay":J
    :cond_2
    move-wide/from16 v19, v9

    .line 723
    .end local v9    # "delay":J
    .restart local v19    # "delay":J
    :cond_3
    move-wide/from16 v10, v19

    .end local v19    # "delay":J
    .local v10, "delay":J
    :goto_2
    :try_start_4
    new-instance v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    add-long v19, v10, v3

    const/16 v16, 0x0

    move-object v9, v0

    move-wide/from16 v21, v10

    .end local v10    # "delay":J
    .local v21, "delay":J
    move-wide/from16 v10, v19

    move-object/from16 v12, p2

    move-wide/from16 v13, p3

    move-object/from16 v15, p9

    :try_start_5
    invoke-direct/range {v9 .. v16}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;)V

    .line 724
    .local v0, "newToSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    iget-object v9, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 725
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    add-long/2addr v9, v5

    iput-wide v9, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J

    .line 726
    iget-object v9, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 727
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->queueSize:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v11, v1

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v11, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    move-object/from16 v1, p0

    move-object v12, v2

    .end local v2    # "key":Ljava/lang/Integer;
    .local v12, "key":Ljava/lang/Integer;
    move-object/from16 v2, p1

    move-wide/from16 v3, v21

    move-wide v5, v9

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->checkWriteSuspend(Lio/netty/channel/ChannelHandlerContext;JJ)V

    .line 728
    iget-object v1, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-wide v3, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxGlobalWriteSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 729
    const/16 v18, 0x1

    .line 731
    :cond_4
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 732
    if-eqz v18, :cond_5

    .line 733
    const/4 v1, 0x0

    invoke-virtual {v7, v8, v1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 735
    :cond_5
    iget-wide v9, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 736
    .local v9, "futureNow":J
    move-object v4, v11

    .line 737
    .local v4, "forSchedule":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v13

    new-instance v14, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$2;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;J)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, v21

    .end local v21    # "delay":J
    .local v2, "delay":J
    invoke-interface {v13, v14, v2, v3, v1}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 743
    return-void

    .line 731
    .end local v0    # "newToSend":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
    .end local v2    # "delay":J
    .end local v4    # "forSchedule":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v9    # "futureNow":J
    .restart local v21    # "delay":J
    :catchall_3
    move-exception v0

    move-wide/from16 v2, v21

    move-wide v9, v2

    .end local v21    # "delay":J
    .restart local v2    # "delay":J
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .restart local v21    # "delay":J
    :catchall_4
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v2, v21

    move-wide v9, v2

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v21    # "delay":J
    .local v2, "delay":J
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v12    # "key":Ljava/lang/Integer;
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .restart local v10    # "delay":J
    :catchall_5
    move-exception v0

    move-object v12, v2

    move-wide v2, v10

    move-object v11, v1

    move-wide v9, v2

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v10    # "delay":J
    .local v2, "delay":J
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v12    # "key":Ljava/lang/Integer;
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .local v9, "delay":J
    :catchall_6
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v19, v9

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v2    # "key":Ljava/lang/Integer;
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v12    # "key":Ljava/lang/Integer;
    :goto_3
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x154

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-super {p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    const-string v1, " Write Channel Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string v1, " Read Channel Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->readChannelLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    return-object v0
.end method

.method protected userDefinedWritabilityIndex()I
    .locals 1

    .line 160
    const/4 v0, 0x3

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 22
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v12

    .line 657
    .local v12, "size":J
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v14

    .line 658
    .local v14, "now":J
    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-lez v0, :cond_7

    .line 660
    iget-object v0, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->getWriteLimit()J

    move-result-wide v3

    iget-wide v5, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    move-wide v1, v12

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/traffic/TrafficCounter;->writeTimeToWait(JJJJ)J

    move-result-wide v18

    .line 661
    .local v18, "waitGlobal":J
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 662
    .local v9, "key":Ljava/lang/Integer;
    iget-object v0, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 663
    .local v7, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    const-wide/16 v20, 0x0

    .line 664
    .local v20, "wait":J
    if-eqz v7, :cond_3

    .line 665
    iget-object v0, v7, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    iget-wide v3, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeChannelLimit:J

    iget-wide v5, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->maxTime:J

    move-wide v1, v12

    move-object v11, v7

    .end local v7    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .local v11, "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/traffic/TrafficCounter;->writeTimeToWait(JJJJ)J

    move-result-wide v0

    .line 666
    .end local v20    # "wait":J
    .local v0, "wait":J
    iget-boolean v2, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->writeDeviationActive:Z

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, v11, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lio/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes()J

    move-result-wide v2

    .line 670
    .local v2, "maxLocalWrite":J
    iget-object v4, v10, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 671
    .local v4, "maxGlobalWrite":J
    cmp-long v6, v2, v16

    if-gtz v6, :cond_0

    .line 672
    const-wide/16 v2, 0x0

    .line 674
    :cond_0
    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    .line 675
    move-wide v4, v2

    .line 677
    :cond_1
    long-to-float v6, v2

    long-to-float v7, v4

    invoke-direct {v10, v6, v7, v0, v1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->computeBalancedWait(FFJ)J

    move-result-wide v20

    .end local v0    # "wait":J
    .restart local v20    # "wait":J
    goto :goto_0

    .line 666
    .end local v2    # "maxLocalWrite":J
    .end local v4    # "maxGlobalWrite":J
    .end local v20    # "wait":J
    .restart local v0    # "wait":J
    :cond_2
    move-wide/from16 v20, v0

    goto :goto_0

    .line 664
    .end local v0    # "wait":J
    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v7    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v20    # "wait":J
    :cond_3
    move-object v11, v7

    .line 680
    .end local v7    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    :goto_0
    cmp-long v0, v20, v18

    if-gez v0, :cond_4

    .line 681
    move-wide/from16 v20, v18

    move-wide/from16 v7, v20

    goto :goto_1

    .line 680
    :cond_4
    move-wide/from16 v7, v20

    .line 683
    .end local v20    # "wait":J
    .local v7, "wait":J
    :goto_1
    const-wide/16 v0, 0xa

    cmp-long v0, v7, v0

    if-ltz v0, :cond_6

    .line 684
    sget-object v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write suspend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 688
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    move-wide v5, v7

    move-wide/from16 v20, v7

    .end local v7    # "wait":J
    .restart local v20    # "wait":J
    move-wide v7, v14

    move-object/from16 v16, v9

    .end local v9    # "key":Ljava/lang/Integer;
    .local v16, "key":Ljava/lang/Integer;
    move-object/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V

    .line 689
    return-void

    .line 683
    .end local v16    # "key":Ljava/lang/Integer;
    .end local v20    # "wait":J
    .restart local v7    # "wait":J
    .restart local v9    # "key":Ljava/lang/Integer;
    :cond_6
    move-wide/from16 v20, v7

    move-object/from16 v16, v9

    .line 693
    .end local v7    # "wait":J
    .end local v9    # "key":Ljava/lang/Integer;
    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
    .end local v18    # "waitGlobal":J
    :cond_7
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V

    .line 694
    return-void
.end method
