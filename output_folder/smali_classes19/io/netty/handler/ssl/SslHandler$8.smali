.class Lio/netty/handler/ssl/SslHandler$8;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/SslHandler;

    .line 2086
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$8;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$8;->val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler$8;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/ssl/SslHandler$8;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "f"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$8;->val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2091
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2093
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$8;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$2600(Lio/netty/handler/ssl/SslHandler;)J

    move-result-wide v0

    .line 2094
    .local v0, "closeNotifyReadTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 2097
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$8;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler$8;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v2, v3}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 2101
    :cond_1
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$8;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2102
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$8;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v3, Lio/netty/handler/ssl/SslHandler$8$1;

    invoke-direct {v3, p0, v0, v1}, Lio/netty/handler/ssl/SslHandler$8$1;-><init>(Lio/netty/handler/ssl/SslHandler$8;J)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v2

    .local v2, "closeNotifyReadTimeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 2116
    .end local v2    # "closeNotifyReadTimeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_2
    const/4 v2, 0x0

    .line 2120
    .restart local v2    # "closeNotifyReadTimeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_0
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler$8;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v3}, Lio/netty/handler/ssl/SslHandler;->access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object v3

    new-instance v4, Lio/netty/handler/ssl/SslHandler$8$2;

    invoke-direct {v4, p0, v2}, Lio/netty/handler/ssl/SslHandler$8$2;-><init>(Lio/netty/handler/ssl/SslHandler$8;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-virtual {v3, v4}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 2130
    .end local v2    # "closeNotifyReadTimeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_1
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2086
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler$8;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
