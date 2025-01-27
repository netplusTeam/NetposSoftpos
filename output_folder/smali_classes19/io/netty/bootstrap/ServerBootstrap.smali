.class public Lio/netty/bootstrap/ServerBootstrap;
.super Lio/netty/bootstrap/AbstractBootstrap;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/bootstrap/AbstractBootstrap<",
        "Lio/netty/bootstrap/ServerBootstrap;",
        "Lio/netty/channel/ServerChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final childAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile childGroup:Lio/netty/channel/EventLoopGroup;

.field private volatile childHandler:Lio/netty/channel/ChannelHandler;

.field private final childOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lio/netty/bootstrap/ServerBootstrapConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/netty/bootstrap/ServerBootstrap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lio/netty/bootstrap/AbstractBootstrap;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 53
    new-instance v0, Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/ServerBootstrapConfig;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    .line 57
    return-void
.end method

.method private constructor <init>(Lio/netty/bootstrap/ServerBootstrap;)V
    .locals 4
    .param p1, "bootstrap"    # Lio/netty/bootstrap/ServerBootstrap;

    .line 60
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;-><init>(Lio/netty/bootstrap/AbstractBootstrap;)V

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 53
    new-instance v2, Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-direct {v2, p0}, Lio/netty/bootstrap/ServerBootstrapConfig;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    .line 61
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 62
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 63
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v3, p1, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p1, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lio/netty/bootstrap/ServerBootstrap;)Lio/netty/bootstrap/ServerBootstrapConfig;
    .locals 1
    .param p0, "x0"    # Lio/netty/bootstrap/ServerBootstrap;

    .line 45
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    return-object v0
.end method

.method static synthetic access$100()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 45
    sget-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method


# virtual methods
.method public childAttr(Lio/netty/util/AttributeKey;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;TT;)",
            "Lio/netty/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 113
    .local p1, "childKey":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "childKey"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return-object p0
.end method

.method final childAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-static {v0}, Lio/netty/bootstrap/ServerBootstrap;->copiedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public childGroup()Lio/netty/channel/EventLoopGroup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method public childHandler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "childHandler"    # Lio/netty/channel/ChannelHandler;

    .line 126
    const-string v0, "childHandler"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandler;

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 127
    return-object p0
.end method

.method final childHandler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .line 269
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)",
            "Lio/netty/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 97
    .local p1, "childOption":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "childOption"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    monitor-enter v0

    .line 99
    if-nez p2, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    monitor-exit v0

    .line 105
    return-object p0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final childOptions()Ljava/util/Map;
    .locals 2
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

    .line 273
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-static {v1}, Lio/netty/bootstrap/ServerBootstrap;->copiedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic clone()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->clone()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/netty/bootstrap/ServerBootstrap;
    .locals 1

    .line 254
    new-instance v0, Lio/netty/bootstrap/ServerBootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/ServerBootstrap;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->clone()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/bootstrap/AbstractBootstrapConfig;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v0

    return-object v0
.end method

.method public final config()Lio/netty/bootstrap/ServerBootstrapConfig;
    .locals 1

    .line 284
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    return-object v0
.end method

.method public bridge synthetic group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object p1

    return-object p1
.end method

.method public group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "group"    # Lio/netty/channel/EventLoopGroup;

    .line 74
    invoke-virtual {p0, p1, p1}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 2
    .param p1, "parentGroup"    # Lio/netty/channel/EventLoopGroup;
    .param p2, "childGroup"    # Lio/netty/channel/EventLoopGroup;

    .line 83
    invoke-super {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 84
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "childGroup"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 88
    return-object p0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childGroup set already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method init(Lio/netty/channel/Channel;)V
    .locals 13
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 132
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->newOptionsArray()[Ljava/util/Map$Entry;

    move-result-object v0

    sget-object v1, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p1, v0, v1}, Lio/netty/bootstrap/ServerBootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 133
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->attrs0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lio/netty/bootstrap/ServerBootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {p1, v0}, Lio/netty/bootstrap/ServerBootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 135
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 137
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    iget-object v7, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 138
    .local v7, "currentChildGroup":Lio/netty/channel/EventLoopGroup;
    iget-object v8, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 140
    .local v8, "currentChildHandler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lio/netty/bootstrap/ServerBootstrap;->EMPTY_OPTION_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Ljava/util/Map$Entry;

    .line 142
    .local v5, "currentChildOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lio/netty/bootstrap/ServerBootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/util/Map$Entry;

    .line 145
    .local v9, "currentChildAttrs":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    new-array v10, v1, [Lio/netty/channel/ChannelHandler;

    const/4 v11, 0x0

    new-instance v12, Lio/netty/bootstrap/ServerBootstrap$1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lio/netty/bootstrap/ServerBootstrap$1;-><init>(Lio/netty/bootstrap/ServerBootstrap;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    aput-object v12, v10, v11

    invoke-interface {v0, v10}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 163
    return-void

    .line 142
    .end local v5    # "currentChildOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    .end local v9    # "currentChildAttrs":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic validate()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->validate()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lio/netty/bootstrap/ServerBootstrap;
    .locals 2

    .line 167
    invoke-super {p0}, Lio/netty/bootstrap/AbstractBootstrap;->validate()Lio/netty/bootstrap/AbstractBootstrap;

    .line 168
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "childGroup is not set. Using parentGroup instead."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/ServerBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 175
    :cond_0
    return-object p0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childHandler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
