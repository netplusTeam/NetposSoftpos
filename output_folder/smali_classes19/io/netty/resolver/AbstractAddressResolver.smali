.class public abstract Lio/netty/resolver/AbstractAddressResolver;
.super Ljava/lang/Object;
.source "AbstractAddressResolver.java"

# interfaces
.implements Lio/netty/resolver/AddressResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/resolver/AddressResolver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 43
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 45
    const-class v0, Lio/netty/resolver/AbstractAddressResolver;

    const-string v1, "T"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Class;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    .local p2, "addressType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 55
    invoke-static {p2}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 205
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    return-void
.end method

.method protected abstract doIsResolved(Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 63
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    iget-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public final isResolved(Ljava/net/SocketAddress;)Z
    .locals 2
    .param p1, "address"    # Ljava/net/SocketAddress;

    .line 73
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    .line 79
    .local v0, "castAddress":Ljava/net/SocketAddress;, "TT;"
    invoke-virtual {p0, v0}, Lio/netty/resolver/AbstractAddressResolver;->doIsResolved(Ljava/net/SocketAddress;)Z

    move-result v1

    return v1

    .line 74
    .end local v0    # "castAddress":Ljava/net/SocketAddress;, "TT;"
    :cond_0
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method public isSupported(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;

    .line 68
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    iget-object v0, p0, Lio/netty/resolver/AbstractAddressResolver;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final resolve(Ljava/net/SocketAddress;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    const-string v0, "address"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lio/netty/resolver/AbstractAddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p1

    .line 99
    .local v0, "cast":Ljava/net/SocketAddress;, "TT;"
    iget-object v1, p0, Lio/netty/resolver/AbstractAddressResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/EventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :cond_1
    move-object v0, p1

    .line 105
    .restart local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    .line 106
    .local v1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    invoke-virtual {p0, v0, v1}, Lio/netty/resolver/AbstractAddressResolver;->doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object v1

    .line 108
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    .end local v1    # "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/EventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public final resolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    const-string v0, "address"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p1

    .line 127
    .local v0, "cast":Ljava/net/SocketAddress;, "TT;"
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :cond_1
    move-object v0, p1

    .line 133
    .restart local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lio/netty/resolver/AbstractAddressResolver;->doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object p2

    .line 135
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1
.end method

.method public final resolveAll(Ljava/net/SocketAddress;)Lio/netty/util/concurrent/Future;
    .locals 3
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    const-string v0, "address"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lio/netty/resolver/AbstractAddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    move-object v0, p1

    .line 151
    .local v0, "cast":Ljava/net/SocketAddress;, "TT;"
    iget-object v1, p0, Lio/netty/resolver/AbstractAddressResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 156
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :cond_1
    move-object v0, p1

    .line 157
    .restart local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    .line 158
    .local v1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    invoke-virtual {p0, v0, v1}, Lio/netty/resolver/AbstractAddressResolver;->doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-object v1

    .line 160
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    .end local v1    # "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lio/netty/resolver/AbstractAddressResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/EventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public final resolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/netty/resolver/AbstractAddressResolver;, "Lio/netty/resolver/AbstractAddressResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    const-string v0, "address"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    .line 179
    .local v0, "cast":Ljava/net/SocketAddress;, "TT;"
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1

    .line 184
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :cond_1
    move-object v0, p1

    .line 185
    .restart local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lio/netty/resolver/AbstractAddressResolver;->doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-object p2

    .line 187
    .end local v0    # "cast":Ljava/net/SocketAddress;, "TT;"
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1
.end method
