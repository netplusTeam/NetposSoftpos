.class final Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "AbstractOioChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/oio/AbstractOioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultOioUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/oio/AbstractOioChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;Lio/netty/channel/oio/AbstractOioChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/oio/AbstractOioChannel;
    .param p2, "x1"    # Lio/netty/channel/oio/AbstractOioChannel$1;

    .line 62
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 67
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {v0}, Lio/netty/channel/oio/AbstractOioChannel;->isActive()Z

    move-result v0

    .line 73
    .local v0, "wasActive":Z
    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {v1, p1, p2}, Lio/netty/channel/oio/AbstractOioChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    .line 77
    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {v1}, Lio/netty/channel/oio/AbstractOioChannel;->isActive()Z

    move-result v1

    .line 79
    .local v1, "active":Z
    invoke-virtual {p0, p3}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 80
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {v2}, Lio/netty/channel/oio/AbstractOioChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0    # "wasActive":Z
    .end local v1    # "active":Z
    :cond_1
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->closeIfClosed()V

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 68
    :cond_2
    :goto_1
    return-void
.end method
