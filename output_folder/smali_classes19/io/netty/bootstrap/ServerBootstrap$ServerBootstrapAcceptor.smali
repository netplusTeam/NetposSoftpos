.class Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/ServerBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerBootstrapAcceptor"
.end annotation


# instance fields
.field private final childAttrs:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final childGroup:Lio/netty/channel/EventLoopGroup;

.field private final childHandler:Lio/netty/channel/ChannelHandler;

.field private final childOptions:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final enableAutoReadTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "childGroup"    # Lio/netty/channel/EventLoopGroup;
    .param p3, "childHandler"    # Lio/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/EventLoopGroup;",
            "Lio/netty/channel/ChannelHandler;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p4, "childOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    .local p5, "childAttrs":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 189
    iput-object p2, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 190
    iput-object p3, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 191
    iput-object p4, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childOptions:[Ljava/util/Map$Entry;

    .line 192
    iput-object p5, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childAttrs:[Ljava/util/Map$Entry;

    .line 199
    new-instance v0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor$1;

    invoke-direct {v0, p0, p1}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor$1;-><init>(Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->enableAutoReadTask:Ljava/lang/Runnable;

    .line 205
    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/Channel;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 178
    invoke-static {p0, p1}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->forceClose(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static forceClose(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "child"    # Lio/netty/channel/Channel;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 232
    invoke-interface {p0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    .line 233
    invoke-static {}, Lio/netty/bootstrap/ServerBootstrap;->access$100()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Failed to register an accepted channel: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 210
    move-object v0, p2

    check-cast v0, Lio/netty/channel/Channel;

    .line 212
    .local v0, "child":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget-object v3, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childHandler:Lio/netty/channel/ChannelHandler;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 214
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childOptions:[Ljava/util/Map$Entry;

    invoke-static {}, Lio/netty/bootstrap/ServerBootstrap;->access$100()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/netty/bootstrap/AbstractBootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 215
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childAttrs:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lio/netty/bootstrap/AbstractBootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->childGroup:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v1, v0}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor$2;

    invoke-direct {v2, p0, v0}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor$2;-><init>(Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;Lio/netty/channel/Channel;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    .line 227
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->forceClose(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 229
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 239
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 243
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    iget-object v2, p0, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;->enableAutoReadTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 247
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 248
    return-void
.end method
