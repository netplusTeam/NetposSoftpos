.class public Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultServerSocketChannelConfig;
.source "DefaultOioServerSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/ServerSocketChannel;
    .param p2, "javaSocket"    # Ljava/net/ServerSocket;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V

    .line 46
    new-instance v0, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    .line 47
    return-void
.end method

.method constructor <init>(Lio/netty/channel/socket/oio/OioServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/oio/OioServerSocketChannel;
    .param p2, "javaSocket"    # Ljava/net/ServerSocket;

    .line 50
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V

    .line 51
    new-instance v0, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    .line 52
    return-void
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    instance-of v0, v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->clearReadPending0()V

    .line 166
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

    .line 63
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->getSoTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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

    .line 56
    nop

    .line 57
    invoke-super {p0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 56
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 145
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 146
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 170
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    .line 171
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 157
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 158
    return-object p0
.end method

.method public bridge synthetic setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBacklog(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "backlog"    # I

    .line 102
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 103
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 126
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 127
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 134
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 194
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 195
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

    .line 71
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 74
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setSoTimeout(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    .line 78
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 120
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 121
    return-object p0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .line 114
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 115
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 151
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 152
    return-object p0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "reuseAddress"    # Z

    .line 108
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 109
    return-object p0
.end method

.method public setSoTimeout(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 2
    .param p1, "timeout"    # I

    .line 84
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    return-object p0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .line 176
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 177
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .line 182
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 183
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 188
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 189
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 139
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 140
    return-object p0
.end method
