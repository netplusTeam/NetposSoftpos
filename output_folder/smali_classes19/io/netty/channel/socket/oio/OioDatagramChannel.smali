.class public Lio/netty/channel/socket/oio/OioDatagramChannel;
.super Lio/netty/channel/oio/AbstractOioMessageChannel;
.source "OioDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

.field private final socket:Ljava/net/MulticastSocket;

.field private final tmpPacket:Ljava/net/DatagramPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-class v0, Lio/netty/channel/socket/oio/OioDatagramChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/oio/OioDatagramChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/socket/oio/OioDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/socket/DatagramPacket;

    .line 67
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 68
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 69
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljava/net/SocketAddress;

    .line 70
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 71
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/oio/OioDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-static {}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newSocket()Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;-><init>(Ljava/net/MulticastSocket;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/net/MulticastSocket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/MulticastSocket;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/oio/AbstractOioMessageChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 75
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "success":Z
    const/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 103
    invoke-virtual {p1, v2}, Ljava/net/MulticastSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x1

    .line 109
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/net/MulticastSocket;->close()V

    .line 114
    :cond_0
    iput-object p1, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    .line 115
    new-instance v1, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/oio/DefaultOioDatagramChannelConfig;-><init>(Lio/netty/channel/socket/DatagramChannel;Ljava/net/DatagramSocket;)V

    iput-object v1, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->config:Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    .line 116
    return-void

    .line 109
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/net/SocketException;
    :try_start_1
    new-instance v2, Lio/netty/channel/ChannelException;

    const-string v3, "Failed to configure the datagram socket timeout."

    invoke-direct {v2, v3, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p1    # "socket":Ljava/net/MulticastSocket;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v0    # "success":Z
    .restart local p1    # "socket":Ljava/net/MulticastSocket;
    :goto_0
    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/net/MulticastSocket;->close()V

    .line 112
    :cond_1
    throw v1
.end method

.method private ensureBound()V
    .locals 3

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/channel/socket/DatagramChannel;

    .line 366
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be bound to join a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newSocket()Ljava/net/MulticastSocket;
    .locals 3

    .line 79
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "failed to create a new socket"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 444
    return-object p3
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 431
    return-object p4
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->config()Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->config:Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 165
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 207
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    const-string v0, "Failed to close a socket."

    if-eqz p2, :cond_0

    .line 181
    iget-object v1, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p2}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, p1}, Ljava/net/MulticastSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    const/4 v1, 0x1

    .line 189
    if-nez v1, :cond_1

    .line 191
    :try_start_1
    iget-object v2, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v2

    .line 193
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/channel/socket/oio/OioDatagramChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 189
    :catchall_1
    move-exception v2

    if-nez v1, :cond_2

    .line 191
    :try_start_2
    iget-object v3, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 194
    goto :goto_1

    .line 192
    :catchall_2
    move-exception v3

    .line 193
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/channel/socket/oio/OioDatagramChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    throw v2
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->disconnect()V

    .line 202
    return-void
.end method

.method protected doReadMessages(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    .local p1, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->config()Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    .line 212
    .local v0, "config":Lio/netty/channel/socket/DatagramChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    .line 214
    .local v1, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v0}, Lio/netty/channel/socket/DatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->guess()I

    move-result v3

    invoke-interface {v2, v3}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 215
    .local v2, "data":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x1

    .line 218
    .local v3, "free":Z
    const/4 v4, -0x1

    :try_start_0
    iget-object v5, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 219
    iget-object v5, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 220
    iget-object v5, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    iget-object v6, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 222
    iget-object v5, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 224
    .local v5, "remoteAddr":Ljava/net/InetSocketAddress;
    iget-object v6, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-interface {v1, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 225
    new-instance v6, Lio/netty/channel/socket/DatagramPacket;

    invoke-interface {v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v7

    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    const/4 v3, 0x0

    .line 227
    const/4 v4, 0x1

    .line 240
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 227
    :cond_0
    return v4

    .line 236
    .end local v5    # "remoteAddr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v5

    .line 237
    .local v5, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    nop

    .line 240
    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 238
    :cond_1
    return v4

    .line 231
    .end local v5    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 232
    .local v5, "e":Ljava/net/SocketException;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "socket closed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    .line 235
    nop

    .line 240
    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 235
    :cond_2
    return v4

    .line 233
    :cond_3
    nop

    .end local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .end local v1    # "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    .end local v2    # "data":Lio/netty/buffer/ByteBuf;
    .end local v3    # "free":Z
    .end local p1    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .restart local v1    # "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    .restart local v2    # "data":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "free":Z
    .restart local p1    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 243
    :cond_4
    throw v4

    .line 228
    :catch_1
    move-exception v4

    .line 230
    .local v4, "e":Ljava/net/SocketTimeoutException;
    const/4 v5, 0x0

    .line 240
    if-eqz v3, :cond_5

    .line 241
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 230
    :cond_5
    return v5
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 8
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 251
    nop

    .line 293
    .end local v0    # "o":Ljava/lang/Object;
    return-void

    .line 256
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lio/netty/channel/AddressedEnvelope;

    if-eqz v1, :cond_1

    .line 258
    move-object v1, v0

    check-cast v1, Lio/netty/channel/AddressedEnvelope;

    .line 259
    .local v1, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Ljava/net/SocketAddress;>;"
    invoke-interface {v1}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    .line 260
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    invoke-interface {v1}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 261
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    goto :goto_1

    .line 262
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 263
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    .line 266
    .restart local v2    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_1
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 268
    .local v3, "length":I
    if-eqz v2, :cond_2

    .line 269
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    goto :goto_2

    .line 271
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    iget-object v4, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 279
    :goto_2
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    iget-object v4, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v5

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v6

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6, v3}, Ljava/net/DatagramPacket;->setData([BII)V

    goto :goto_3

    .line 282
    :cond_3
    iget-object v4, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-static {v1, v5, v3}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;II)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/DatagramPacket;->setData([B)V

    .line 284
    :goto_3
    iget-object v4, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    iget-object v5, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->tmpPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v4, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 285
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 291
    goto :goto_4

    .line 274
    :cond_4
    new-instance v4, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v4}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v3    # "length":I
    .end local p1    # "in":Lio/netty/channel/ChannelOutboundBuffer;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local v3    # "length":I
    .restart local p1    # "in":Lio/netty/channel/ChannelOutboundBuffer;
    :catch_0
    move-exception v4

    .line 290
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v4}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 292
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v3    # "length":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_0
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-nez v0, :cond_2

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_1

    .line 303
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 304
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_1

    .line 305
    return-object p1

    .line 309
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/socket/oio/OioDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    :goto_0
    return-object p1
.end method

.method public isActive()Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->config:Lio/netty/channel/socket/oio/OioDatagramChannelConfig;

    sget-object v1, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    .line 143
    invoke-interface {v0, v1}, Lio/netty/channel/socket/oio/OioDatagramChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    .line 144
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 315
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 320
    invoke-direct {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 323
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p2
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 360
    return-object p4
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 332
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 339
    invoke-direct {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    .line 341
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 342
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p3
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 373
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 379
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 380
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 384
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p2
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 417
    return-object p4
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 390
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 398
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 399
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p3
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 169
    invoke-super {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 154
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 120
    sget-object v0, Lio/netty/channel/socket/oio/OioDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 174
    invoke-super {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method
