.class Lio/netty/handler/address/ResolveAddressHandler$1;
.super Ljava/lang/Object;
.source "ResolveAddressHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/address/ResolveAddressHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/address/ResolveAddressHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$localAddress:Ljava/net/SocketAddress;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/address/ResolveAddressHandler;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/address/ResolveAddressHandler;

    .line 49
    iput-object p1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->this$0:Lio/netty/handler/address/ResolveAddressHandler;

    iput-object p2, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/SocketAddress;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 53
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v4, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1, v2, v3, v4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 58
    :goto_0
    iget-object v1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->this$0:Lio/netty/handler/address/ResolveAddressHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 59
    return-void
.end method
