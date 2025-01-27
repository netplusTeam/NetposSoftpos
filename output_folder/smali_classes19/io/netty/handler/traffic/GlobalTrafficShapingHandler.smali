.class public Lio/netty/handler/traffic/GlobalTrafficShapingHandler;
.super Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "GlobalTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;,
        Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final channelQueues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;",
            ">;"
        }
    .end annotation
.end field

.field maxGlobalWriteSize:J

.field private final queuesSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 201
    invoke-direct {p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>()V

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 202
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "checkInterval"    # J

    .line 190
    invoke-direct {p0, p2, p3}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(J)V

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 191
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJ)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J

    .line 175
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJ)V

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 176
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJ)V
    .locals 7
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J
    .param p6, "checkInterval"    # J

    .line 158
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJ)V

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 159
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJJ)V
    .locals 10
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J
    .param p6, "checkInterval"    # J
    .param p8, "maxTime"    # J

    .line 138
    move-object v9, p0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    const-wide/32 v0, 0x19000000

    iput-wide v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 139
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 140
    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/traffic/GlobalTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/traffic/GlobalTrafficShapingHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .param p3, "x3"    # J

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V

    return-void
.end method

.method private getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 243
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 244
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 245
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 246
    .local v2, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    if-nez v2, :cond_0

    .line 247
    new-instance v3, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;-><init>(Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;)V

    move-object v2, v3

    .line 248
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 249
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 250
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v3

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 251
    iget-wide v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    iput-wide v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 252
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    return-object v2
.end method

.method private sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "perChannel"    # Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .param p3, "now"    # J

    .line 380
    monitor-enter p2

    .line 381
    :try_start_0
    iget-object v0, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 382
    .local v0, "newToSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    :goto_0
    if-eqz v0, :cond_1

    .line 383
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->relativeTimeAction:J

    cmp-long v1, v1, p3

    if-gtz v1, :cond_0

    .line 384
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->size:J

    .line 385
    .local v1, "size":J
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 386
    iget-wide v3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 387
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 388
    iget-object v3, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v4, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v3, v4}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 389
    iput-wide p3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 390
    .end local v1    # "size":J
    nop

    .line 382
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    move-object v0, v1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 395
    :cond_1
    iget-object v1, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 398
    .end local v0    # "newToSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "wait"    # J
    .param p4, "now"    # J

    .line 297
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 299
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    if-eqz v1, :cond_0

    .line 300
    iget-wide v2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    add-long v2, p4, p2

    iget-wide v4, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 301
    iget-wide p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J

    .line 304
    :cond_0
    return-wide p2
.end method

.method createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    new-instance v6, Lio/netty/handler/traffic/TrafficCounter;

    .line 108
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->checkInterval:J

    const-string v3, "GlobalTC"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    .line 112
    .local v0, "tc":Lio/netty/handler/traffic/TrafficCounter;
    invoke-virtual {p0, v0}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->setTrafficCounter(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 113
    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->start()V

    .line 114
    return-void
.end method

.method public getMaxGlobalWriteSize()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 260
    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 261
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

    .line 265
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 266
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 267
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 268
    .local v2, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    if-eqz v2, :cond_4

    .line 270
    monitor-enter v2

    .line 271
    :try_start_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 273
    .local v4, "toSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v5

    .line 274
    .local v5, "size":J
    iget-object v7, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v7, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 275
    iget-wide v7, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    sub-long/2addr v7, v5

    iput-wide v7, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 276
    iget-object v7, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 277
    iget-object v7, v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v8, v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v7, v8}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 278
    nop

    .end local v4    # "toSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    .end local v5    # "size":J
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 280
    :cond_1
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v4, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 281
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 282
    .restart local v4    # "toSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    instance-of v5, v5, Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_2

    .line 283
    iget-object v5, v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    check-cast v5, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 285
    .end local v4    # "toSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    :cond_2
    goto :goto_1

    .line 287
    :cond_3
    :goto_2
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 288
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 290
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 291
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->releaseReadSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 292
    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 293
    return-void
.end method

.method informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "now"    # J

    .line 309
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 311
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    if-eqz v1, :cond_0

    .line 312
    iput-wide p2, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 314
    :cond_0
    return-void
.end method

.method public queuesSize()J
    .locals 2

    .line 231
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final release()V
    .locals 1

    .line 238
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    .line 239
    return-void
.end method

.method public setMaxGlobalWriteSize(J)V
    .locals 0
    .param p1, "maxGlobalWriteSize"    # J

    .line 224
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 225
    return-void
.end method

.method submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
    .locals 23
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "size"    # J
    .param p5, "writedelay"    # J
    .param p7, "now"    # J
    .param p9, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 334
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v5, p3

    move-wide/from16 v3, p7

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v17

    .line 335
    .local v17, "channel":Lio/netty/channel/Channel;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 336
    .local v2, "key":Ljava/lang/Integer;
    iget-object v0, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 337
    .local v0, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    if-nez v0, :cond_0

    .line 340
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 337
    :cond_0
    move-object v1, v0

    .line 343
    .end local v0    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .local v1, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    :goto_0
    move-wide/from16 v9, p5

    .line 344
    .local v9, "delay":J
    const/16 v18, 0x0

    .line 346
    .local v18, "globalSizeExceeded":Z
    monitor-enter v1

    .line 347
    const-wide/16 v11, 0x0

    cmp-long v0, p5, v11

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v5, v6}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    move-object/from16 v15, p2

    move-object/from16 v13, p9

    :try_start_1
    invoke-interface {v8, v15, v13}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 350
    iput-wide v3, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 351
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 364
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

    .line 347
    :cond_1
    move-object/from16 v15, p2

    move-object/from16 v13, p9

    .line 353
    :try_start_2
    iget-wide v11, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    add-long v11, v3, v9

    move-wide/from16 v19, v9

    .end local v9    # "delay":J
    .local v19, "delay":J
    :try_start_3
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    sub-long/2addr v11, v9

    iget-wide v9, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J

    cmp-long v0, v11, v9

    if-lez v0, :cond_3

    .line 354
    iget-wide v9, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v10, v9

    .end local v19    # "delay":J
    .restart local v9    # "delay":J
    goto :goto_2

    .line 364
    .end local v9    # "delay":J
    .restart local v19    # "delay":J
    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v9, v19

    goto/16 :goto_3

    .line 353
    .end local v19    # "delay":J
    .restart local v9    # "delay":J
    :cond_2
    move-wide/from16 v19, v9

    .line 356
    .end local v9    # "delay":J
    .restart local v19    # "delay":J
    :cond_3
    move-wide/from16 v10, v19

    .end local v19    # "delay":J
    .local v10, "delay":J
    :goto_2
    :try_start_4
    new-instance v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
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
    invoke-direct/range {v9 .. v16}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;)V

    .line 357
    .local v0, "newToSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    iget-object v9, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 358
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    add-long/2addr v9, v5

    iput-wide v9, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 359
    iget-object v9, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 360
    iget-wide v9, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v11, v1

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .local v11, "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    move-object/from16 v1, p0

    move-object v12, v2

    .end local v2    # "key":Ljava/lang/Integer;
    .local v12, "key":Ljava/lang/Integer;
    move-object/from16 v2, p1

    move-wide/from16 v3, v21

    move-wide v5, v9

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->checkWriteSuspend(Lio/netty/channel/ChannelHandlerContext;JJ)V

    .line 361
    iget-object v1, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-wide v3, v7, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 362
    const/16 v18, 0x1

    .line 364
    :cond_4
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 365
    if-eqz v18, :cond_5

    .line 366
    const/4 v1, 0x0

    invoke-virtual {v7, v8, v1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 368
    :cond_5
    iget-wide v9, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 369
    .local v9, "futureNow":J
    move-object v4, v11

    .line 370
    .local v4, "forSchedule":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v13

    new-instance v14, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;-><init>(Lio/netty/handler/traffic/GlobalTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, v21

    .end local v21    # "delay":J
    .local v2, "delay":J
    invoke-interface {v13, v14, v2, v3, v1}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 376
    return-void

    .line 364
    .end local v0    # "newToSend":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
    .end local v2    # "delay":J
    .end local v4    # "forSchedule":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v9    # "futureNow":J
    .restart local v21    # "delay":J
    :catchall_3
    move-exception v0

    move-wide/from16 v2, v21

    move-wide v9, v2

    .end local v21    # "delay":J
    .restart local v2    # "delay":J
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .restart local v21    # "delay":J
    :catchall_4
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v2, v21

    move-wide v9, v2

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v21    # "delay":J
    .local v2, "delay":J
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .restart local v12    # "key":Ljava/lang/Integer;
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .restart local v10    # "delay":J
    :catchall_5
    move-exception v0

    move-object v12, v2

    move-wide v2, v10

    move-object v11, v1

    move-wide v9, v2

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v10    # "delay":J
    .local v2, "delay":J
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .restart local v12    # "key":Ljava/lang/Integer;
    goto :goto_3

    .end local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v12    # "key":Ljava/lang/Integer;
    .restart local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .local v2, "key":Ljava/lang/Integer;
    .local v9, "delay":J
    :catchall_6
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    move-wide/from16 v19, v9

    .end local v1    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .end local v2    # "key":Ljava/lang/Integer;
    .restart local v11    # "perChannel":Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
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

.method protected userDefinedWritabilityIndex()I
    .locals 1

    .line 118
    const/4 v0, 0x2

    return v0
.end method
