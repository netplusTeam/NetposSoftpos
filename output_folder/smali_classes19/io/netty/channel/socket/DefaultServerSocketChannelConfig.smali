.class public Lio/netty/channel/socket/DefaultServerSocketChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "DefaultServerSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/ServerSocketChannelConfig;


# instance fields
.field private volatile backlog:I

.field protected final javaSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/socket/ServerSocketChannel;
    .param p2, "javaSocket"    # Ljava/net/ServerSocket;

    .line 50
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    .line 44
    sget v0, Lio/netty/util/NetUtil;->SOMAXCONN:I

    iput v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    .line 51
    const-string v0, "javaSocket"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ServerSocket;

    iput-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    .line 52
    return-void
.end method


# virtual methods
.method public getBacklog()I
    .locals 1

    .line 138
    iget v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    return v0
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

    .line 62
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->isReuseAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BACKLOG:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getBacklog()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 72
    :cond_2
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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
    invoke-super {p0}, Lio/netty/channel/DefaultChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_BACKLOG:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 169
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 170
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 181
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 182
    return-object p0
.end method

.method public setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1
    .param p1, "backlog"    # I

    .line 143
    const-string v0, "backlog"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 144
    iput p1, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    .line 145
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 150
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    .line 151
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    .line 158
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 205
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    .line 206
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

    .line 77
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 80
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 82
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BACKLOG:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    .line 89
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_2
    invoke-super {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 132
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 133
    return-object p0
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .line 123
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 127
    return-object p0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 175
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 176
    return-object p0
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 2
    .param p1, "reuseAddress"    # Z

    .line 104
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    return-object p0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .line 187
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 188
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .line 193
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 194
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 199
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    .line 200
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 163
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    .line 164
    return-object p0
.end method
