.class public abstract Lio/netty/resolver/SimpleNameResolver;
.super Ljava/lang/Object;
.source "SimpleNameResolver.java"

# interfaces
.implements Lio/netty/resolver/NameResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/resolver/NameResolver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;


# direct methods
.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 38
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/resolver/SimpleNameResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 97
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    return-void
.end method

.method protected abstract doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

.method protected abstract doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 47
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    iget-object v0, p0, Lio/netty/resolver/SimpleNameResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    invoke-virtual {p0}, Lio/netty/resolver/SimpleNameResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 53
    .local v0, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    invoke-virtual {p0, p1, v0}, Lio/netty/resolver/SimpleNameResolver;->resolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public resolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/SimpleNameResolver;->doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1
.end method

.method public final resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    invoke-virtual {p0}, Lio/netty/resolver/SimpleNameResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 71
    .local v0, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    invoke-virtual {p0, p1, v0}, Lio/netty/resolver/SimpleNameResolver;->resolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public resolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/netty/resolver/SimpleNameResolver;, "Lio/netty/resolver/SimpleNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/SimpleNameResolver;->doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object p2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1
.end method
