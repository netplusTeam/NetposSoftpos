.class Lio/netty/handler/ipfilter/UniqueIpFilter$1;
.super Ljava/lang/Object;
.source "UniqueIpFilter.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ipfilter/UniqueIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

.field final synthetic val$remoteIp:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lio/netty/handler/ipfilter/UniqueIpFilter;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ipfilter/UniqueIpFilter;

    .line 44
    iput-object p1, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

    iput-object p2, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->val$remoteIp:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

    invoke-static {v0}, Lio/netty/handler/ipfilter/UniqueIpFilter;->access$000(Lio/netty/handler/ipfilter/UniqueIpFilter;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->val$remoteIp:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
