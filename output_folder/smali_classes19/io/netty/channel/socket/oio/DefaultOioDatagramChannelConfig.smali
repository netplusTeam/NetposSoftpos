.class final Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;
.super Lio/netty/channel/socket/DefaultDatagramChannelConfig;
.source "DefaultOioDatagramChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/oio/OioDatagramChannelConfig;


# direct methods
.method constructor <init>(Lio/netty/channel/socket/DatagramChannel;Ljava/net/DatagramSocket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/DatagramChannel;
    .param p2, "javaSocket"    # Ljava/net/DatagramSocket;

    .line 39
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Lio/netty/channel/socket/DatagramChannel;Ljava/net/DatagramSocket;)V

    .line 40
    new-instance v0, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    .line 41
    return-void
.end method


# virtual methods
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

    .line 51
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->getSoTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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

    .line 45
    invoke-super {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->javaSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 162
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 163
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 180
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 181
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 174
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 175
    return-object p0
.end method

.method public bridge synthetic setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBroadcast(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "broadcast"    # Z

    .line 90
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 91
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 150
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 151
    return-object p0
.end method

.method public bridge synthetic setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 96
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 97
    return-object p0
.end method

.method public bridge synthetic setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setLoopbackModeDisabled(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setLoopbackModeDisabled(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "loopbackModeDisabled"    # Z

    .line 102
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 103
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I

    .line 156
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 157
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 204
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 205
    return-object p0
.end method

.method public bridge synthetic setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 108
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 109
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

    .line 59
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 62
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setSoTimeout(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    .line 66
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .line 120
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 121
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 168
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 169
    return-object p0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "reuseAddress"    # Z

    .line 114
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 115
    return-object p0
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "sendBufferSize"    # I

    .line 126
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 127
    return-object p0
.end method

.method public setSoTimeout(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 2
    .param p1, "timeout"    # I

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->javaSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    return-object p0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToLive(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "ttl"    # I

    .line 132
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 133
    return-object p0
.end method

.method public bridge synthetic setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficClass(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "trafficClass"    # I

    .line 138
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 139
    return-object p0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .line 186
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 187
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .line 192
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 193
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 198
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 199
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioDatagramChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 144
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 145
    return-object p0
.end method
