.class final Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;
.super Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;
.source "IdleStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AllIdleTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 552
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    .line 553
    invoke-direct {p0, p2}, Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    .line 554
    return-void
.end method


# virtual methods
.method protected run(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 559
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$1100(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v0

    .line 560
    .local v0, "nextDelay":J
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$400(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v2}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$500(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v4

    iget-object v6, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v6}, Lio/netty/handler/timeout/IdleStateHandler;->access$000(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 563
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 566
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$1100(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/handler/timeout/IdleStateHandler;->access$1202(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 568
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$200(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v2

    .line 569
    .local v2, "first":Z
    iget-object v3, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$202(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    .line 572
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v3, p1, v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$1000(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    return-void

    .line 576
    :cond_1
    iget-object v3, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v4, Lio/netty/handler/timeout/IdleState;->ALL_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v3, v4, v2}, Lio/netty/handler/timeout/IdleStateHandler;->newIdleStateEvent(Lio/netty/handler/timeout/IdleState;Z)Lio/netty/handler/timeout/IdleStateEvent;

    move-result-object v3

    .line 577
    .local v3, "event":Lio/netty/handler/timeout/IdleStateEvent;
    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v4, p1, v3}, Lio/netty/handler/timeout/IdleStateHandler;->channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v3    # "event":Lio/netty/handler/timeout/IdleStateEvent;
    goto :goto_0

    .line 578
    :catchall_0
    move-exception v3

    .line 579
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 581
    .end local v2    # "first":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 584
    :cond_2
    iget-object v8, p0, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-wide v5, v0

    invoke-virtual/range {v2 .. v7}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v8, v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$1202(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 586
    :goto_1
    return-void
.end method
