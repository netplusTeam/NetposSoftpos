.class public abstract Lio/netty/channel/pool/AbstractChannelPoolMap;
.super Ljava/lang/Object;
.source "AbstractChannelPoolMap.java"

# interfaces
.implements Lio/netty/channel/pool/ChannelPoolMap;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P::",
        "Lio/netty/channel/pool/ChannelPool;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/channel/pool/ChannelPoolMap<",
        "TK;TP;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TP;>;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p0, "pool"    # Lio/netty/channel/pool/ChannelPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/pool/ChannelPool;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 105
    instance-of v0, p0, Lio/netty/channel/pool/SimpleChannelPool;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p0

    check-cast v0, Lio/netty/channel/pool/SimpleChannelPool;

    invoke-virtual {v0}, Lio/netty/channel/pool/SimpleChannelPool;->closeAsync()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lio/netty/channel/pool/ChannelPool;->close()V

    .line 110
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v1, v0}, Lio/netty/util/concurrent/GlobalEventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method private removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPool;

    .line 81
    .local v0, "pool":Lio/netty/channel/pool/ChannelPool;, "TP;"
    if-eqz v0, :cond_0

    .line 82
    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    .line 83
    .local v1, "removePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    new-instance v3, Lio/netty/channel/pool/AbstractChannelPoolMap$1;

    invoke-direct {v3, p0, v1}, Lio/netty/channel/pool/AbstractChannelPoolMap$1;-><init>(Lio/netty/channel/pool/AbstractChannelPoolMap;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v2, v3}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 93
    return-object v1

    .line 95
    .end local v1    # "removePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Boolean;>;"
    :cond_0
    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/netty/util/concurrent/GlobalEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 148
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->syncUninterruptibly()Lio/netty/util/concurrent/Future;

    .line 151
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TP;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPool;

    .line 43
    .local v0, "pool":Lio/netty/channel/pool/ChannelPool;, "TP;"
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->newPool(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/pool/ChannelPool;

    .line 46
    .local v1, "old":Lio/netty/channel/pool/ChannelPool;, "TP;"
    if-eqz v1, :cond_0

    .line 48
    invoke-static {v0}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    .line 49
    move-object v0, v1

    .line 52
    .end local v1    # "old":Lio/netty/channel/pool/ChannelPool;, "TP;"
    :cond_0
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 133
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TP;>;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    new-instance v0, Lio/netty/util/internal/ReadOnlyIterator;

    iget-object v1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected abstract newPool(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TP;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 64
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPool;

    .line 65
    .local v0, "pool":Lio/netty/channel/pool/ChannelPool;, "TP;"
    if-eqz v0, :cond_0

    .line 66
    invoke-static {v0}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    .line 67
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final size()I
    .locals 1

    .line 126
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap;, "Lio/netty/channel/pool/AbstractChannelPoolMap<TK;TP;>;"
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
