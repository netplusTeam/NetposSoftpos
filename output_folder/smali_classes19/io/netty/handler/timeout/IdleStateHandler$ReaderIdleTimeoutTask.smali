.class final Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
.super Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;
.source "IdleStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReaderIdleTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 484
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    .line 485
    invoke-direct {p0, p2}, Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    .line 486
    return-void
.end method


# virtual methods
.method protected run(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 490
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$300(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v0

    .line 491
    .local v0, "nextDelay":J
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$400(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v2}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$500(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 495
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 497
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$300(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/handler/timeout/IdleStateHandler;->access$602(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 499
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$700(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v2

    .line 500
    .local v2, "first":Z
    iget-object v3, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$702(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    .line 503
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v4, Lio/netty/handler/timeout/IdleState;->READER_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v3, v4, v2}, Lio/netty/handler/timeout/IdleStateHandler;->newIdleStateEvent(Lio/netty/handler/timeout/IdleState;Z)Lio/netty/handler/timeout/IdleStateEvent;

    move-result-object v3

    .line 504
    .local v3, "event":Lio/netty/handler/timeout/IdleStateEvent;
    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v4, p1, v3}, Lio/netty/handler/timeout/IdleStateHandler;->channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v3    # "event":Lio/netty/handler/timeout/IdleStateEvent;
    goto :goto_0

    .line 505
    :catchall_0
    move-exception v3

    .line 506
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 508
    .end local v2    # "first":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 510
    :cond_1
    iget-object v8, p0, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-wide v5, v0

    invoke-virtual/range {v2 .. v7}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v8, v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$602(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 512
    :goto_1
    return-void
.end method
