.class public Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
.super Ljava/lang/Object;
.source "NettyEventLoopProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;,
        Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final channelFactory:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLoopGroupFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            "Lio/netty/channel/MultithreadEventLoopGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7wuXalLFWJiRh14LQGpbGMJTdy8(ILjava/util/concurrent/Executor;)Lio/netty/channel/nio/NioEventLoopGroup;
    .locals 1

    new-instance v0, Lio/netty/channel/nio/NioEventLoopGroup;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$Vsx8-5aKZJgk81sYm310N7J4yic()Lio/netty/channel/socket/nio/NioSocketChannel;
    .locals 1

    new-instance v0, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {v0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 54
    const-string v0, "io.netty.channel.epoll.Epoll"

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ClassUtil;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->access$000()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    .line 59
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            "Lio/netty/channel/MultithreadEventLoopGroup;",
            ">;",
            "Lio/netty/channel/ChannelFactory<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p1, "eventLoopGroupFactory":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Ljava/util/concurrent/Executor;Lio/netty/channel/MultithreadEventLoopGroup;>;"
    .local p2, "channelFactory":Lio/netty/channel/ChannelFactory;, "Lio/netty/channel/ChannelFactory<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    .line 85
    iput-object p2, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->channelFactory:Lio/netty/channel/ChannelFactory;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/function/BiFunction;
    .param p2, "x1"    # Lio/netty/channel/ChannelFactory;
    .param p3, "x2"    # Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;-><init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V

    return-void
.end method

.method static synthetic access$200()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 1

    .line 47
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    return-object v0
.end method

.method private static nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 3

    .line 62
    new-instance v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    new-instance v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;-><init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquireEventLoop(Ljava/util/concurrent/Executor;I)Lio/netty/channel/EventLoop;
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "threadCount"    # I

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    .line 90
    .local v0, "entry":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
    if-nez v0, :cond_3

    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    new-instance v4, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-string v5, "com.hivemq.client.mqtt"

    invoke-direct {v4, v5}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/MultithreadEventLoopGroup;

    .local v1, "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    goto :goto_0

    .line 96
    .end local v1    # "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    .end local p0    # "this":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    :cond_0
    instance-of v1, p1, Lio/netty/channel/MultithreadEventLoopGroup;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, p1

    check-cast v1, Lio/netty/channel/MultithreadEventLoopGroup;

    .line 98
    .restart local v1    # "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    if-eqz p2, :cond_2

    .line 99
    invoke-virtual {v1}, Lio/netty/channel/MultithreadEventLoopGroup;->executorCount()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 100
    sget-object v2, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v3, "Tried to use a different amount of Netty threads for the provided event loop. Using {} threads instead of {}"

    .line 101
    invoke-virtual {v1}, Lio/netty/channel/MultithreadEventLoopGroup;->executorCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 100
    invoke-interface {v2, v3, v4, v5}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v1    # "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/MultithreadEventLoopGroup;

    .line 106
    .restart local v1    # "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    :cond_2
    :goto_0
    new-instance v2, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;-><init>(Lio/netty/channel/MultithreadEventLoopGroup;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V

    move-object v0, v2

    .line 107
    iget-object v2, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    nop

    .end local v1    # "eventLoopGroup":Lio/netty/channel/MultithreadEventLoopGroup;
    goto :goto_1

    .line 109
    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    .line 110
    invoke-virtual {v1}, Lio/netty/channel/MultithreadEventLoopGroup;->executorCount()I

    move-result v1

    if-eq v1, p2, :cond_4

    .line 111
    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Tried to use a different amount of Netty threads for the same executor. Using {} threads instead of {}"

    iget-object v3, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    .line 112
    invoke-virtual {v3}, Lio/netty/channel/MultithreadEventLoopGroup;->executorCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 111
    invoke-interface {v1, v2, v3, v4}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_4
    iget v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    .line 116
    :goto_1
    iget-object v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {v1}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 88
    .end local v0    # "entry":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "threadCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getChannelFactory()Lio/netty/channel/ChannelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/ChannelFactory<",
            "*>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->channelFactory:Lio/netty/channel/ChannelFactory;

    return-object v0
.end method

.method public declared-synchronized releaseEventLoop(Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    .line 121
    .local v0, "entry":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
    iget v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    if-nez v1, :cond_1

    .line 122
    instance-of v1, p1, Lio/netty/channel/MultithreadEventLoopGroup;

    if-nez v1, :cond_0

    .line 123
    iget-object v2, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v7}, Lio/netty/channel/MultithreadEventLoopGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    .line 125
    .end local p0    # "this":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    monitor-exit p0

    return-void

    .line 119
    .end local v0    # "entry":Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
