.class final Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;
.super Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
.source "DefaultChannelPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingHandlerRemovedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1482
    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    .line 1483
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 1484
    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    .line 1493
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 1494
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->access$000(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    goto :goto_0

    .line 1498
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v1

    .line 1500
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v2, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    sget-object v2, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1503
    invoke-virtual {v5}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 1501
    const-string v4, "Can\'t invoke handlerRemoved() as the EventExecutor {} rejected it, removing handler {}."

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1506
    :cond_1
    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    .line 1509
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1488
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->access$000(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 1489
    return-void
.end method
