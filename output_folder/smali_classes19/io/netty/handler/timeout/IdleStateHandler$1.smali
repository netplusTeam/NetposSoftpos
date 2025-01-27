.class Lio/netty/handler/timeout/IdleStateHandler$1;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/timeout/IdleStateHandler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/timeout/IdleStateHandler;

    .line 103
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler$1;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$1;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v0}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$002(Lio/netty/handler/timeout/IdleStateHandler;J)J

    .line 107
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$1;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/timeout/IdleStateHandler;->access$202(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lio/netty/handler/timeout/IdleStateHandler;->access$102(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    .line 108
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/timeout/IdleStateHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
