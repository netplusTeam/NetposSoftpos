.class public abstract Lio/netty/resolver/AddressResolverGroup;
.super Ljava/lang/Object;
.source "AddressResolverGroup.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executorTerminationListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final resolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/AddressResolverGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/netty/resolver/AddressResolverGroup;

    .line 36
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/netty/resolver/AddressResolverGroup;

    .line 36
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 8

    .line 112
    .local p0, "this":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<TT;>;"
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lio/netty/resolver/AddressResolver;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/resolver/AddressResolver;

    check-cast v1, [Lio/netty/resolver/AddressResolver;

    .line 114
    .local v1, "rArray":[Lio/netty/resolver/AddressResolver;, "[Lio/netty/resolver/AddressResolver<TT;>;"
    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    .line 116
    .local v3, "listeners":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/GenericFutureListener<Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;>;>;"
    iget-object v4, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    array-length v0, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, v3, v4

    .line 120
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/GenericFutureListener<Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-interface {v6, v7}, Lio/netty/util/concurrent/Future;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 119
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/GenericFutureListener<Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;>;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    .line 125
    .local v4, "r":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    :try_start_1
    invoke-interface {v4}, Lio/netty/resolver/AddressResolver;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v5

    .line 127
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lio/netty/resolver/AddressResolverGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "Failed to close a resolver:"

    invoke-interface {v6, v7, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v4    # "r":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_1
    return-void

    .line 117
    .end local v1    # "rArray":[Lio/netty/resolver/AddressResolver;, "[Lio/netty/resolver/AddressResolver<TT;>;"
    .end local v3    # "listeners":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/GenericFutureListener<Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;>;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .locals 5
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<TT;>;"
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutor;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/resolver/AddressResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .local v1, "r":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    if-nez v1, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Lio/netty/resolver/AddressResolverGroup;->newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .local v2, "newResolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    nop

    .line 75
    :try_start_2
    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v3, Lio/netty/resolver/AddressResolverGroup$1;

    invoke-direct {v3, p0, p1, v2}, Lio/netty/resolver/AddressResolverGroup$1;-><init>(Lio/netty/resolver/AddressResolverGroup;Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/AddressResolver;)V

    .line 88
    .local v3, "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    iget-object v4, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 91
    move-object v1, v2

    goto :goto_0

    .line 71
    .end local v2    # "newResolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    .end local v3    # "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "failed to create a new resolver"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    throw v3

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 95
    return-object v1

    .line 93
    .end local v1    # "r":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "executor not accepting a task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
