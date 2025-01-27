.class final Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;
.super Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;
.source "IdleStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriterIdleTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 517
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    .line 518
    invoke-direct {p0, p2}, Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    .line 519
    return-void
.end method


# virtual methods
.method protected run(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 524
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$000(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v0

    .line 525
    .local v0, "lastWriteTime":J
    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$800(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v4}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 526
    .local v2, "nextDelay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 528
    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$800(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v4

    move-object v6, p1

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    invoke-static {v4, v5}, Lio/netty/handler/timeout/IdleStateHandler;->access$902(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 530
    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$100(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v4

    .line 531
    .local v4, "first":Z
    iget-object v5, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lio/netty/handler/timeout/IdleStateHandler;->access$102(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    .line 534
    :try_start_0
    iget-object v5, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v5, p1, v4}, Lio/netty/handler/timeout/IdleStateHandler;->access$1000(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 535
    return-void

    .line 538
    :cond_0
    iget-object v5, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v6, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v5, v6, v4}, Lio/netty/handler/timeout/IdleStateHandler;->newIdleStateEvent(Lio/netty/handler/timeout/IdleState;Z)Lio/netty/handler/timeout/IdleStateEvent;

    move-result-object v5

    .line 539
    .local v5, "event":Lio/netty/handler/timeout/IdleStateEvent;
    iget-object v6, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v6, p1, v5}, Lio/netty/handler/timeout/IdleStateHandler;->channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .end local v5    # "event":Lio/netty/handler/timeout/IdleStateEvent;
    goto :goto_0

    .line 540
    :catchall_0
    move-exception v5

    .line 541
    .local v5, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v5}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 543
    .end local v4    # "first":Z
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 545
    :cond_1
    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v4

    move-object v7, p1

    move-object v8, p0

    move-wide v9, v2

    invoke-virtual/range {v6 .. v11}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    invoke-static {v4, v5}, Lio/netty/handler/timeout/IdleStateHandler;->access$902(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 547
    :goto_1
    return-void
.end method
