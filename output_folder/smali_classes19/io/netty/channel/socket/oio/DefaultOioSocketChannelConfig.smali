.class public Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultSocketChannelConfig;
.source "DefaultOioSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/oio/OioSocketChannelConfig;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/SocketChannel;
    .param p2, "javaSocket"    # Ljava/net/Socket;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V

    .line 44
    new-instance v0, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    .line 45
    return-void
.end method

.method constructor <init>(Lio/netty/channel/socket/oio/OioSocketChannel;Ljava/net/Socket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/oio/OioSocketChannel;
    .param p2, "javaSocket"    # Ljava/net/Socket;

    .line 48
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V

    .line 49
    new-instance v0, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    .line 50
    return-void
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 1

    .line 191
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    instance-of v0, v0, Lio/netty/channel/socket/oio/OioSocketChannel;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/socket/oio/OioSocketChannel;->clearReadPending0()V

    .line 194
    :cond_0
    return-void
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->getSoTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    nop

    .line 55
    invoke-super {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 54
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 173
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;

    .line 174
    return-object p0
.end method

.method public bridge synthetic setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllowHalfClosure(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "allowHalfClosure"    # Z

    .line 148
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 149
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 198
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 199
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 185
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 186
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 154
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 155
    return-object p0
.end method

.method public bridge synthetic setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setKeepAlive(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "keepAlive"    # Z

    .line 124
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 125
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 162
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 222
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;

    .line 223
    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 69
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 72
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setSoTimeout(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    .line 76
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 142
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/SocketChannelConfig;

    .line 143
    return-object p0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .line 118
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 119
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 179
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;

    .line 180
    return-object p0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "reuseAddress"    # Z

    .line 136
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 137
    return-object p0
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "sendBufferSize"    # I

    .line 112
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 113
    return-object p0
.end method

.method public bridge synthetic setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setSoLinger(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSoLinger(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "soLinger"    # I

    .line 106
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 107
    return-object p0
.end method

.method public setSoTimeout(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 2
    .param p1, "timeout"    # I

    .line 82
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-object p0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTcpNoDelay(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .line 100
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;

    .line 101
    return-object p0
.end method

.method public bridge synthetic setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficClass(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "trafficClass"    # I

    .line 130
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 131
    return-object p0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .line 204
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 205
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .line 210
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 211
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 216
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/SocketChannelConfig;

    .line 217
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 167
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 168
    return-object p0
.end method
