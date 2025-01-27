.class final Lio/netty/channel/local/LocalChannelRegistry;
.super Ljava/lang/Object;
.source "LocalChannelRegistry.java"


# static fields
.field private static final boundChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/netty/channel/local/LocalAddress;",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static get(Ljava/net/SocketAddress;)Lio/netty/channel/Channel;
    .locals 1
    .param p0, "localAddress"    # Ljava/net/SocketAddress;

    .line 52
    sget-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method

.method static register(Lio/netty/channel/Channel;Lio/netty/channel/local/LocalAddress;Ljava/net/SocketAddress;)Lio/netty/channel/local/LocalAddress;
    .locals 5
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "oldLocalAddress"    # Lio/netty/channel/local/LocalAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 32
    if-nez p1, :cond_3

    .line 35
    instance-of v0, p2, Lio/netty/channel/local/LocalAddress;

    if-eqz v0, :cond_2

    .line 39
    move-object v0, p2

    check-cast v0, Lio/netty/channel/local/LocalAddress;

    .line 40
    .local v0, "addr":Lio/netty/channel/local/LocalAddress;
    sget-object v1, Lio/netty/channel/local/LocalAddress;->ANY:Lio/netty/channel/local/LocalAddress;

    invoke-virtual {v1, v0}, Lio/netty/channel/local/LocalAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lio/netty/channel/local/LocalAddress;

    invoke-direct {v1, p0}, Lio/netty/channel/local/LocalAddress;-><init>(Lio/netty/channel/Channel;)V

    move-object v0, v1

    .line 44
    :cond_0
    sget-object v1, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/Channel;

    .line 45
    .local v1, "boundChannel":Lio/netty/channel/Channel;
    if-nez v1, :cond_1

    .line 48
    return-object v0

    .line 46
    :cond_1
    new-instance v2, Lio/netty/channel/ChannelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address already in use by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    .end local v0    # "addr":Lio/netty/channel/local/LocalAddress;
    .end local v1    # "boundChannel":Lio/netty/channel/Channel;
    :cond_2
    new-instance v0, Lio/netty/channel/ChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_3
    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unregister(Lio/netty/channel/local/LocalAddress;)V
    .locals 1
    .param p0, "localAddress"    # Lio/netty/channel/local/LocalAddress;

    .line 56
    sget-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
