.class public Lio/netty/handler/ipfilter/UniqueIpFilter;
.super Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.source "UniqueIpFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final connected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;-><init>()V

    .line 36
    new-instance v0, Lio/netty/util/internal/ConcurrentSet;

    invoke-direct {v0}, Lio/netty/util/internal/ConcurrentSet;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ipfilter/UniqueIpFilter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ipfilter/UniqueIpFilter;

    .line 34
    iget-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 41
    .local v0, "remoteIp":Ljava/net/InetAddress;
    iget-object v1, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    return v1

    .line 44
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ipfilter/UniqueIpFilter$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/ipfilter/UniqueIpFilter$1;-><init>(Lio/netty/handler/ipfilter/UniqueIpFilter;Ljava/net/InetAddress;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 50
    const/4 v1, 0x1

    return v1
.end method

.method protected bridge synthetic accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ipfilter/UniqueIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method
