.class public abstract Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "AbstractTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;
    }
.end annotation


# static fields
.field static final CHANNEL_DEFAULT_USER_DEFINED_WRITABILITY_INDEX:I = 0x1

.field public static final DEFAULT_CHECK_INTERVAL:J = 0x3e8L

.field static final DEFAULT_MAX_SIZE:J = 0x400000L

.field public static final DEFAULT_MAX_TIME:J = 0x3a98L

.field static final GLOBALCHANNEL_DEFAULT_USER_DEFINED_WRITABILITY_INDEX:I = 0x3

.field static final GLOBAL_DEFAULT_USER_DEFINED_WRITABILITY_INDEX:I = 0x2

.field static final MINIMAL_WAIT:J = 0xaL

.field static final READ_SUSPENDED:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final REOPEN_TASK:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field protected volatile checkInterval:J

.field protected volatile maxTime:J

.field volatile maxWriteDelay:J

.field volatile maxWriteSize:J

.field private volatile readLimit:J

.field protected trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

.field final userDefinedWritabilityIndex:I

.field private volatile writeLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    .line 51
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".READ_SUSPENDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AttributeKey;->valueOf(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v1

    sput-object v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->READ_SUSPENDED:Lio/netty/util/AttributeKey;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".REOPEN_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lio/netty/util/AttributeKey;->valueOf(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->REOPEN_TASK:Lio/netty/util/AttributeKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .line 209
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3a98

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 210
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 9
    .param p1, "checkInterval"    # J

    .line 221
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x3a98

    move-object v0, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 222
    return-void
.end method

.method protected constructor <init>(JJ)V
    .locals 9
    .param p1, "writeLimit"    # J
    .param p3, "readLimit"    # J

    .line 201
    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3a98

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 202
    return-void
.end method

.method protected constructor <init>(JJJ)V
    .locals 9
    .param p1, "writeLimit"    # J
    .param p3, "readLimit"    # J
    .param p5, "checkInterval"    # J

    .line 188
    const-wide/16 v7, 0x3a98

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 189
    return-void
.end method

.method protected constructor <init>(JJJJ)V
    .locals 2
    .param p1, "writeLimit"    # J
    .param p3, "readLimit"    # J
    .param p5, "checkInterval"    # J
    .param p7, "maxTime"    # J

    .line 165
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 92
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 97
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 107
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteDelay:J

    .line 111
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteSize:J

    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->userDefinedWritabilityIndex()I

    move-result v0

    iput v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->userDefinedWritabilityIndex:I

    .line 171
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    .line 172
    iput-wide p3, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    .line 173
    iput-wide p5, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 174
    iput-wide p7, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 175
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxTime must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 49
    sget-object v0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method protected static isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 535
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->READ_SUSPENDED:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 536
    .local v0, "suspended":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method protected calculateSize(Ljava/lang/Object;)J
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .line 642
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 643
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 645
    :cond_0
    instance-of v0, p1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    .line 646
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 648
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 20
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v18

    .line 478
    .local v18, "size":J
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v4

    .line 479
    .local v4, "now":J
    const-wide/16 v0, 0x0

    cmp-long v0, v18, v0

    if-lez v0, :cond_2

    .line 481
    iget-object v9, v6, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    iget-wide v12, v6, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-wide v14, v6, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    move-wide/from16 v10, v18

    move-wide/from16 v16, v4

    invoke-virtual/range {v9 .. v17}, Lio/netty/handler/traffic/TrafficCounter;->readTimeToWait(JJJJ)J

    move-result-wide v9

    .line 482
    .local v9, "wait":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v11, v4

    .end local v4    # "now":J
    .local v11, "now":J
    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J

    move-result-wide v0

    .line 483
    .end local v9    # "wait":J
    .local v0, "wait":J
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 486
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 487
    .local v2, "channel":Lio/netty/channel/Channel;
    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    .line 488
    .local v3, "config":Lio/netty/channel/ChannelConfig;
    sget-object v4, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    const/16 v9, 0x3a

    if-eqz v5, :cond_0

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read suspend: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 490
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 492
    :cond_0
    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/netty/channel/ChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 494
    sget-object v5, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->READ_SUSPENDED:Lio/netty/util/AttributeKey;

    invoke-interface {v2, v5}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v10}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 497
    sget-object v5, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->REOPEN_TASK:Lio/netty/util/AttributeKey;

    invoke-interface {v2, v5}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v5

    .line 498
    .local v5, "attr":Lio/netty/util/Attribute;, "Lio/netty/util/Attribute<Ljava/lang/Runnable;>;"
    invoke-interface {v5}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    .line 499
    .local v10, "reopenTask":Ljava/lang/Runnable;
    if-nez v10, :cond_1

    .line 500
    new-instance v13, Lio/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;

    invoke-direct {v13, v7}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    move-object v10, v13

    .line 501
    invoke-interface {v5, v10}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 503
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v13

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v10, v0, v1, v14}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 504
    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 505
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Suspend final status => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 506
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " will reopened at: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 505
    invoke-interface {v4, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    .end local v0    # "wait":J
    .end local v2    # "channel":Lio/netty/channel/Channel;
    .end local v3    # "config":Lio/netty/channel/ChannelConfig;
    .end local v5    # "attr":Lio/netty/util/Attribute;, "Lio/netty/util/Attribute<Ljava/lang/Runnable;>;"
    .end local v10    # "reopenTask":Ljava/lang/Runnable;
    .end local v11    # "now":J
    .restart local v4    # "now":J
    :cond_2
    move-wide v11, v4

    .line 511
    .end local v4    # "now":J
    .restart local v11    # "now":J
    :cond_3
    :goto_0
    invoke-virtual {v6, v7, v11, v12}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 512
    invoke-interface/range {p1 .. p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 513
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 581
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    .line 582
    return-void
.end method

.method checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "wait"    # J
    .param p4, "now"    # J

    .line 523
    return-wide p2
.end method

.method checkWriteSuspend(Lio/netty/channel/ChannelHandlerContext;JJ)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "delay"    # J
    .param p4, "queueSize"    # J

    .line 598
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteSize:J

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteDelay:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 601
    :cond_1
    return-void
.end method

.method public configure(J)V
    .locals 3
    .param p1, "newCheckInterval"    # J

    .line 267
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 268
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    .line 269
    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->configure(J)V

    .line 271
    :cond_0
    return-void
.end method

.method public configure(JJ)V
    .locals 3
    .param p1, "newWriteLimit"    # J
    .param p3, "newReadLimit"    # J

    .line 254
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    .line 255
    iput-wide p3, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    .line 256
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 259
    :cond_0
    return-void
.end method

.method public configure(JJJ)V
    .locals 0
    .param p1, "newWriteLimit"    # J
    .param p3, "newReadLimit"    # J
    .param p5, "newCheckInterval"    # J

    .line 238
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(JJ)V

    .line 239
    invoke-virtual {p0, p5, p6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(J)V

    .line 240
    return-void
.end method

.method protected doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0
    .param p1, "counter"    # Lio/netty/handler/traffic/TrafficCounter;

    .line 417
    return-void
.end method

.method public getCheckInterval()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    return-wide v0
.end method

.method public getMaxTimeWait()J
    .locals 2

    .line 358
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    return-wide v0
.end method

.method public getMaxWriteDelay()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteDelay:J

    return-wide v0
.end method

.method public getMaxWriteSize()J
    .locals 2

    .line 389
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteSize:J

    return-wide v0
.end method

.method public getReadLimit()J
    .locals 2

    .line 300
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    return-wide v0
.end method

.method public getWriteLimit()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    return-wide v0
.end method

.method informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "now"    # J

    .line 532
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 541
    invoke-static {p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 545
    :cond_0
    return-void
.end method

.method releaseReadSuspended(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 470
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 471
    .local v0, "channel":Lio/netty/channel/Channel;
    sget-object v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->READ_SUSPENDED:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 472
    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 473
    return-void
.end method

.method releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 607
    return-void
.end method

.method public setCheckInterval(J)V
    .locals 1
    .param p1, "checkInterval"    # J

    .line 330
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 331
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1, p2}, Lio/netty/handler/traffic/TrafficCounter;->configure(J)V

    .line 334
    :cond_0
    return-void
.end method

.method public setMaxTimeWait(J)V
    .locals 2
    .param p1, "maxTime"    # J

    .line 348
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 351
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 352
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxTime must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxWriteDelay(J)V
    .locals 2
    .param p1, "maxWriteDelay"    # J

    .line 379
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 382
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteDelay:J

    .line 383
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWriteDelay must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxWriteSize(J)V
    .locals 0
    .param p1, "maxWriteSize"    # J

    .line 405
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteSize:J

    .line 406
    return-void
.end method

.method public setReadLimit(J)V
    .locals 3
    .param p1, "readLimit"    # J

    .line 313
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    .line 314
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 317
    :cond_0
    return-void
.end method

.method setTrafficCounter(Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0
    .param p1, "newTrafficCounter"    # Lio/netty/handler/traffic/TrafficCounter;

    .line 139
    iput-object p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 140
    return-void
.end method

.method setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "writable"    # Z

    .line 585
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 586
    .local v0, "cob":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    .line 587
    iget v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->userDefinedWritabilityIndex:I

    invoke-virtual {v0, v1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->setUserDefinedWritability(IZ)V

    .line 589
    :cond_0
    return-void
.end method

.method public setWriteLimit(J)V
    .locals 3
    .param p1, "writeLimit"    # J

    .line 290
    iput-wide p1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    .line 291
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 294
    :cond_0
    return-void
.end method

.method abstract submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
.end method

.method protected submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JLio/netty/channel/ChannelPromise;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "delay"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-virtual {p0, p2}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v3

    .line 572
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v7

    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V

    .line 573
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x122

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 620
    const-string v1, "TrafficShaping with Write Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string v1, " Read Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    const-string v1, " CheckInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 623
    const-string v1, " maxDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    const-string v1, " maxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxWriteSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    const-string v1, " and Counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 629
    :cond_0
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trafficCounter()Lio/netty/handler/traffic/TrafficCounter;
    .locals 1

    .line 614
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    return-object v0
.end method

.method protected userDefinedWritabilityIndex()I
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v12

    .line 551
    .local v12, "size":J
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v14

    .line 552
    .local v14, "now":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-lez v0, :cond_2

    .line 554
    iget-object v0, v10, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    iget-wide v3, v10, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iget-wide v5, v10, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    move-wide v1, v12

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/traffic/TrafficCounter;->writeTimeToWait(JJJJ)J

    move-result-wide v7

    .line 555
    .local v7, "wait":J
    const-wide/16 v0, 0xa

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1

    .line 556
    sget-object v0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
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

    .line 558
    invoke-static/range {p1 .. p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->isHandlerActive(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 560
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    move-wide v5, v7

    move-wide/from16 v16, v7

    .end local v7    # "wait":J
    .local v16, "wait":J
    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V

    .line 561
    return-void

    .line 555
    .end local v16    # "wait":J
    .restart local v7    # "wait":J
    :cond_1
    move-wide/from16 v16, v7

    .line 565
    .end local v7    # "wait":J
    :cond_2
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V

    .line 566
    return-void
.end method
