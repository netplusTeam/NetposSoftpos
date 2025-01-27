.class public Lio/netty/bootstrap/Bootstrap;
.super Lio/netty/bootstrap/AbstractBootstrap;
.source "Bootstrap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/bootstrap/AbstractBootstrap<",
        "Lio/netty/bootstrap/Bootstrap;",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RESOLVER:Lio/netty/resolver/AddressResolverGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/bootstrap/BootstrapConfig;

.field private volatile remoteAddress:Ljava/net/SocketAddress;

.field private volatile resolver:Lio/netty/resolver/AddressResolverGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/AddressResolverGroup<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lio/netty/bootstrap/Bootstrap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/bootstrap/Bootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 50
    sget-object v0, Lio/netty/resolver/DefaultAddressResolverGroup;->INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;

    sput-object v0, Lio/netty/bootstrap/Bootstrap;->DEFAULT_RESOLVER:Lio/netty/resolver/AddressResolverGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lio/netty/bootstrap/AbstractBootstrap;-><init>()V

    .line 52
    new-instance v0, Lio/netty/bootstrap/BootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/BootstrapConfig;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    .line 54
    sget-object v0, Lio/netty/bootstrap/Bootstrap;->DEFAULT_RESOLVER:Lio/netty/resolver/AddressResolverGroup;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    .line 59
    return-void
.end method

.method private constructor <init>(Lio/netty/bootstrap/Bootstrap;)V
    .locals 1
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;

    .line 62
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;-><init>(Lio/netty/bootstrap/AbstractBootstrap;)V

    .line 52
    new-instance v0, Lio/netty/bootstrap/BootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/BootstrapConfig;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    .line 54
    sget-object v0, Lio/netty/bootstrap/Bootstrap;->DEFAULT_RESOLVER:Lio/netty/resolver/AddressResolverGroup;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    .line 63
    iget-object v0, p1, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    .line 64
    iget-object v0, p1, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/bootstrap/Bootstrap;
    .param p1, "x1"    # Lio/netty/channel/Channel;
    .param p2, "x2"    # Ljava/net/SocketAddress;
    .param p3, "x3"    # Ljava/net/SocketAddress;
    .param p4, "x4"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/SocketAddress;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-static {p0, p1, p2}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private static doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p0, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "connectPromise"    # Lio/netty/channel/ChannelPromise;

    .line 245
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 246
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/netty/bootstrap/Bootstrap$3;

    invoke-direct {v2, p1, v0, p0, p2}, Lio/netty/bootstrap/Bootstrap$3;-><init>(Ljava/net/SocketAddress;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method private doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 155
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->initAndRegister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 156
    .local v0, "regFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    .line 158
    .local v7, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    return-object v0

    .line 162
    :cond_0
    invoke-interface {v7}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, v7, p1, p2, v1}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-direct {v1, v7}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;-><init>(Lio/netty/channel/Channel;)V

    move-object v8, v1

    .line 166
    .local v8, "promise":Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;
    new-instance v9, Lio/netty/bootstrap/Bootstrap$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/bootstrap/Bootstrap$1;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v9}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 184
    return-object v8
.end method

.method private doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 191
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    :try_start_1
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    invoke-virtual {v1, v0}, Lio/netty/resolver/AddressResolverGroup;->getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .local v1, "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    nop

    .line 200
    :try_start_2
    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->resolve(Ljava/net/SocketAddress;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    .line 208
    .local v2, "resolveFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/SocketAddress;>;"
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v3

    .line 211
    .local v3, "resolveFailureCause":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 213
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 214
    invoke-interface {p4, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    invoke-static {v4, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 219
    :goto_0
    return-object p4

    .line 223
    .end local v3    # "resolveFailureCause":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Lio/netty/bootstrap/Bootstrap$2;

    invoke-direct {v3, p0, p1, p4, p3}, Lio/netty/bootstrap/Bootstrap$2;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;Ljava/net/SocketAddress;)V

    invoke-interface {v2, v3}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 236
    nop

    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .end local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    .end local v2    # "resolveFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/SocketAddress;>;"
    goto :goto_2

    .line 202
    .restart local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .restart local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    :cond_3
    :goto_1
    invoke-static {p2, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 203
    return-object p4

    .line 195
    .end local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v1

    .line 196
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 197
    invoke-interface {p4, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 234
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 235
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 237
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2
    return-object p4
.end method


# virtual methods
.method public bridge synthetic clone()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    .line 281
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/Bootstrap;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    return-object v0
.end method

.method public clone(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "group"    # Lio/netty/channel/EventLoopGroup;

    .line 290
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/Bootstrap;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    .line 291
    .local v0, "bs":Lio/netty/bootstrap/Bootstrap;
    iput-object p1, v0, Lio/netty/bootstrap/Bootstrap;->group:Lio/netty/channel/EventLoopGroup;

    .line 292
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/bootstrap/AbstractBootstrapConfig;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    return-object v0
.end method

.method public final config()Lio/netty/bootstrap/BootstrapConfig;
    .locals 1

    .line 297
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    return-object v0
.end method

.method public connect()Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 111
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 112
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v1}, Lio/netty/bootstrap/BootstrapConfig;->localAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "remoteAddress not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "inetPort"    # I

    .line 123
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/InetAddress;I)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "inetHost"    # Ljava/net/InetAddress;
    .param p2, "inetPort"    # I

    .line 130
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 137
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 139
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 146
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 148
    invoke-direct {p0, p1, p2}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method init(Lio/netty/channel/Channel;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 262
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 263
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    iget-object v2, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v2}, Lio/netty/bootstrap/BootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 265
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->newOptionsArray()[Ljava/util/Map$Entry;

    move-result-object v1

    sget-object v2, Lio/netty/bootstrap/Bootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p1, v1, v2}, Lio/netty/bootstrap/Bootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 266
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->attrs0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lio/netty/bootstrap/Bootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    invoke-static {p1, v1}, Lio/netty/bootstrap/Bootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 267
    return-void
.end method

.method public remoteAddress(Ljava/lang/String;I)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "inetPort"    # I

    .line 94
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 95
    return-object p0
.end method

.method public remoteAddress(Ljava/net/InetAddress;I)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "inetHost"    # Ljava/net/InetAddress;
    .param p2, "inetPort"    # I

    .line 102
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 103
    return-object p0
.end method

.method public remoteAddress(Ljava/net/SocketAddress;)Lio/netty/bootstrap/Bootstrap;
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 86
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 87
    return-object p0
.end method

.method final remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 301
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public resolver(Lio/netty/resolver/AddressResolverGroup;)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;)",
            "Lio/netty/bootstrap/Bootstrap;"
        }
    .end annotation

    .line 77
    .local p1, "resolver":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<*>;"
    if-nez p1, :cond_0

    sget-object v0, Lio/netty/bootstrap/Bootstrap;->DEFAULT_RESOLVER:Lio/netty/resolver/AddressResolverGroup;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    .line 78
    return-object p0
.end method

.method final resolver()Lio/netty/resolver/AddressResolverGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->resolver:Lio/netty/resolver/AddressResolverGroup;

    return-object v0
.end method

.method public bridge synthetic validate()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lio/netty/bootstrap/Bootstrap;
    .locals 2

    .line 271
    invoke-super {p0}, Lio/netty/bootstrap/AbstractBootstrap;->validate()Lio/netty/bootstrap/AbstractBootstrap;

    .line 272
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    return-object p0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
