.class Lio/netty/handler/address/DynamicAddressConnectHandler$1;
.super Ljava/lang/Object;
.source "DynamicAddressConnectHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/address/DynamicAddressConnectHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/address/DynamicAddressConnectHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/address/DynamicAddressConnectHandler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/address/DynamicAddressConnectHandler;

    .line 49
    iput-object p1, p0, Lio/netty/handler/address/DynamicAddressConnectHandler$1;->this$0:Lio/netty/handler/address/DynamicAddressConnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 52
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/address/DynamicAddressConnectHandler$1;->this$0:Lio/netty/handler/address/DynamicAddressConnectHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 57
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/address/DynamicAddressConnectHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
