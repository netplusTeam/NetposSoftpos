.class public final Lio/netty/channel/socket/nio/NioDatagramChannel;
.super Lio/netty/channel/nio/AbstractNioMessageChannel;
.source "NioDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannel;


# static fields
.field private static final DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field private final config:Lio/netty/channel/socket/DatagramChannelConfig;

.field private memberships:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Ljava/nio/channels/MembershipKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 67
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/socket/DatagramPacket;

    .line 69
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 70
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 71
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljava/net/SocketAddress;

    .line 72
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 73
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;-><init>(Ljava/nio/channels/DatagramChannel;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1
    .param p1, "ipFamily"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 134
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v0, p1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;-><init>(Ljava/nio/channels/DatagramChannel;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 2
    .param p1, "socket"    # Ljava/nio/channels/DatagramChannel;

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/nio/AbstractNioMessageChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    .line 151
    new-instance v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioDatagramChannel;Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->config:Lio/netty/channel/socket/DatagramChannelConfig;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 126
    invoke-static {p1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;-><init>(Ljava/nio/channels/DatagramChannel;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "ipFamily"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 143
    invoke-static {p1, p2}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;-><init>(Ljava/nio/channels/DatagramChannel;)V

    .line 144
    return-void
.end method

.method private static checkJavaVersion()V
    .locals 2

    .line 109
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only supported on java 7+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doBind0(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/util/internal/SocketUtils;->bind(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 204
    :goto_0
    return-void
.end method

.method private static isSingleDirectBuffer(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 342
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/DatagramChannel;
    .locals 3
    .param p0, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static newSocket(Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 3
    .param p0, "provider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p1, "ipFamily"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-static {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-static {}, Lio/netty/channel/socket/nio/NioDatagramChannel;->checkJavaVersion()V

    .line 102
    :try_start_0
    invoke-static {p1}, Lio/netty/channel/socket/nio/ProtocolFamilyConverter;->convert(Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 561
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 572
    nop

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 572
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/netty/channel/socket/nio/NioDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/net/SocketException;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 579
    .end local v0    # "e":Ljava/net/SocketException;
    return-object p3
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 520
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 531
    invoke-static {}, Lio/netty/channel/socket/nio/NioDatagramChannel;->checkJavaVersion()V

    .line 533
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    const-string v0, "sourceToBlock"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 539
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 540
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/MembershipKey;

    .line 541
    .local v2, "key":Ljava/nio/channels/MembershipKey;
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 543
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/nio/channels/MembershipKey;->block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    goto :goto_1

    .line 544
    :catch_0
    move-exception v3

    .line 545
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-interface {p4, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 548
    .end local v2    # "key":Ljava/nio/channels/MembershipKey;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 550
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    invoke-interface {p4}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 552
    return-object p4

    .line 550
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method clearReadPending0()V
    .locals 0

    .line 589
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->clearReadPending()V

    .line 590
    return-void
.end method

.method protected closeOnReadError(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 596
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    return v0

    .line 599
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->closeOnReadError(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->config()Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->config:Lio/netty/channel/socket/DatagramChannelConfig;

    return-object v0
.end method

.method protected continueOnWriteError()Z
    .locals 1

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->doBind0(Ljava/net/SocketAddress;)V

    .line 196
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 238
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 2
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    if-eqz p2, :cond_0

    .line 210
    invoke-direct {p0, p2}, Lio/netty/channel/socket/nio/NioDatagramChannel;->doBind0(Ljava/net/SocketAddress;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "success":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v0, 0x1

    .line 217
    const/4 v1, 0x1

    .line 219
    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->doClose()V

    .line 217
    :cond_1
    return v1

    .line 219
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->doClose()V

    .line 222
    :cond_2
    throw v1
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 233
    return-void
.end method

.method protected doFinishConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected doReadMessages(Ljava/util/List;)I
    .locals 11
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

    .line 242
    .local p1, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 243
    .local v0, "ch":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->config()Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object v1

    .line 244
    .local v1, "config":Lio/netty/channel/socket/DatagramChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v2

    .line 246
    .local v2, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v1}, Lio/netty/channel/socket/DatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 247
    .local v3, "data":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-interface {v2, v4}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 248
    const/4 v4, 0x1

    .line 250
    .local v4, "free":Z
    :try_start_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 251
    .local v5, "nioData":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 252
    .local v6, "pos":I
    invoke-virtual {v0, v5}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .local v7, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez v7, :cond_1

    .line 254
    const/4 v8, 0x0

    .line 266
    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 254
    :cond_0
    return v8

    .line 257
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v2, v8}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 258
    new-instance v8, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    invoke-interface {v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    .line 259
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-direct {v8, v9, v10, v7}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 258
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    const/4 v4, 0x0

    .line 261
    const/4 v8, 0x1

    .line 266
    if-eqz v4, :cond_2

    .line 267
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 261
    :cond_2
    return v8

    .line 262
    .end local v5    # "nioData":Ljava/nio/ByteBuffer;
    .end local v6    # "pos":I
    .end local v7    # "remoteAddress":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v5

    .line 263
    .local v5, "cause":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    const/4 v6, -0x1

    .line 266
    if-eqz v4, :cond_3

    .line 267
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 264
    :cond_3
    return v6

    .line 266
    .end local v5    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_4

    .line 267
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 269
    :cond_4
    throw v5
.end method

.method protected doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_0

    .line 278
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 279
    .local v0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    .line 280
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 281
    .local v0, "data":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 282
    .end local v0    # "data":Lio/netty/buffer/ByteBuf;
    .end local v1    # "remoteAddress":Ljava/net/SocketAddress;
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 283
    .restart local v0    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x0

    .line 286
    .restart local v1    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 287
    .local v2, "dataLen":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 288
    return v3

    .line 291
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_1
    nop

    .line 294
    .local v4, "nioData":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v5

    .local v5, "writtenBytes":I
    goto :goto_2

    .line 297
    .end local v5    # "writtenBytes":I
    :cond_3
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 299
    .restart local v5    # "writtenBytes":I
    :goto_2
    if-lez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;

    .line 304
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DatagramPacket;

    .line 306
    .local v0, "p":Lio/netty/channel/socket/DatagramPacket;
    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 307
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->isSingleDirectBuffer(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    return-object v0

    .line 310
    :cond_0
    new-instance v2, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newDirectBuffer(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)V

    return-object v2

    .line 313
    .end local v0    # "p":Lio/netty/channel/socket/DatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 314
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 315
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->isSingleDirectBuffer(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    return-object v0

    .line 318
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_5

    .line 323
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 324
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_5

    .line 325
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 326
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->isSingleDirectBuffer(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    return-object v0

    .line 329
    :cond_4
    new-instance v2, Lio/netty/channel/DefaultAddressedEnvelope;

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newDirectBuffer(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-object v2

    .line 333
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/socket/nio/NioDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 3

    .line 167
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 168
    .local v0, "ch":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->config:Lio/netty/channel/socket/DatagramChannelConfig;

    sget-object v2, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    .line 169
    invoke-interface {v1, v2}, Lio/netty/channel/socket/DatagramChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected javaChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 180
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method protected bridge synthetic javaChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 365
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 371
    nop

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/net/SocketException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 378
    .end local v0    # "e":Ljava/net/SocketException;
    return-object p2
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 397
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 406
    invoke-static {}, Lio/netty/channel/socket/nio/NioDatagramChannel;->checkJavaVersion()V

    .line 408
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    if-nez p3, :cond_0

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/DatagramChannel;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    .local v0, "key":Ljava/nio/channels/MembershipKey;
    goto :goto_0

    .line 416
    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    .line 419
    .restart local v0    # "key":Ljava/nio/channels/MembershipKey;
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    :try_start_1
    iget-object v2, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    goto :goto_1

    .line 424
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    .line 426
    :goto_1
    if-nez v1, :cond_2

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 428
    iget-object v2, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    nop

    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :try_start_2
    invoke-interface {p4}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    nop

    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    goto :goto_2

    .line 431
    .restart local v0    # "key":Ljava/nio/channels/MembershipKey;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "multicastAddress":Ljava/net/InetAddress;
    .end local p2    # "networkInterface":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    .end local p4    # "promise":Lio/netty/channel/ChannelPromise;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    .restart local p1    # "multicastAddress":Ljava/net/InetAddress;
    .restart local p2    # "networkInterface":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    .restart local p4    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 438
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object p4
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 384
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 391
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 443
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 449
    nop

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/net/SocketException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 454
    .end local v0    # "e":Ljava/net/SocketException;
    return-object p2
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 473
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 481
    invoke-static {}, Lio/netty/channel/socket/nio/NioDatagramChannel;->checkJavaVersion()V

    .line 483
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 488
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 489
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    if-eqz v0, :cond_4

    .line 490
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 492
    .local v1, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/MembershipKey;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/MembershipKey;

    .line 494
    .local v2, "key":Ljava/nio/channels/MembershipKey;
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    if-nez p3, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 496
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->drop()V

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 501
    .end local v2    # "key":Ljava/nio/channels/MembershipKey;
    :cond_2
    goto :goto_0

    .line 502
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 503
    iget-object v2, p0, Lio/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    .end local v1    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/MembershipKey;>;"
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-interface {p4}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 510
    return-object p4

    .line 507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 460
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 467
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 355
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 156
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 360
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->javaChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected setReadPending(Z)V
    .locals 0
    .param p1, "readPending"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    invoke-super {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->setReadPending(Z)V

    .line 586
    return-void
.end method
