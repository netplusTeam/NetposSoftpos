.class public Lio/netty/channel/socket/DefaultDatagramChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "DefaultDatagramChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannelConfig;


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile activeOnOpen:Z

.field private final javaSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/DatagramChannel;Ljava/net/DatagramSocket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/DatagramChannel;
    .param p2, "javaSocket"    # Ljava/net/DatagramSocket;

    .line 55
    new-instance v0, Lio/netty/channel/FixedRecvByteBufAllocator;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lio/netty/channel/FixedRecvByteBufAllocator;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    .line 56
    const-string v0, "javaSocket"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    iput-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    .line 57
    return-void
.end method

.method private setActiveOnOpen(Z)V
    .locals 2
    .param p1, "activeOnOpen"    # Z

    .line 141
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iput-boolean p1, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->activeOnOpen:Z

    .line 145
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only changed before channel was registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 2

    .line 181
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    .line 235
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 242
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 75
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->isBroadcast()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->isReuseAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 87
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 88
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->isLoopbackModeDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 90
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 91
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getInterface()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 93
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 94
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0

    .line 96
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 97
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getTimeToLive()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 99
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 100
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getTrafficClass()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 102
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 103
    iget-boolean v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->activeOnOpen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 105
    :cond_9
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

    .line 66
    nop

    .line 67
    invoke-super {p0}, Lio/netty/channel/DefaultChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 66
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 282
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimeToLive()I
    .locals 2

    .line 319
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTrafficClass()I
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getBroadcast()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isLoopbackModeDisabled()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLoopbackMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final javaSocket()Ljava/net/DatagramSocket;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 384
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 385
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 402
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    .line 403
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 396
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 397
    return-object p0
.end method

.method public setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 3
    .param p1, "broadcast"    # Z

    .line 160
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    .line 161
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maybeSuperUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A non-root user can\'t receive a broadcast packet if the socket is not bound to a wildcard address; setting the SO_BROADCAST flag anyway as requested on the socket which is bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    .line 169
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    return-object p0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 371
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    .line 372
    return-object p0
.end method

.method public setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 194
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .line 203
    return-object p0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "loopbackModeDisabled"    # Z

    .line 221
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 230
    return-object p0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    .line 379
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 426
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    .line 427
    return-object p0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 248
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    nop

    .line 257
    return-object p0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 111
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 114
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    goto/16 :goto_0

    .line 115
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 116
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;

    goto/16 :goto_0

    .line 117
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 118
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 120
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 122
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 123
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 124
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 125
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 126
    move-object v0, p2

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 127
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 128
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 129
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 130
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 131
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 132
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setActiveOnOpen(Z)V

    .line 137
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_9
    invoke-super {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .line 291
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 295
    return-object p0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 390
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 391
    return-object p0
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "reuseAddress"    # Z

    .line 272
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .line 276
    return-object p0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "sendBufferSize"    # I

    .line 310
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    nop

    .line 314
    return-object p0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "ttl"    # I

    .line 332
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    instance-of v1, v0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    nop

    .line 341
    return-object p0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "trafficClass"    # I

    .line 356
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->javaSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 360
    return-object p0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .line 408
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 409
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .line 414
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 415
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 420
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    .line 421
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 365
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    .line 366
    return-object p0
.end method
