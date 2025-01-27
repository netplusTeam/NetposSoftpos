.class Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;
.super Ljava/lang/Object;
.source "ThreadPerChannelEventLoopGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/ThreadPerChannelEventLoopGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/ThreadPerChannelEventLoopGroup;


# direct methods
.method constructor <init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 62
    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;->this$0:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;->this$0:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    invoke-virtual {v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;->this$0:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    invoke-static {v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->access$000(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method
