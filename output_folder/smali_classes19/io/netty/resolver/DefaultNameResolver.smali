.class public Lio/netty/resolver/DefaultNameResolver;
.super Lio/netty/resolver/InetNameResolver;
.source "DefaultNameResolver.java"


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 35
    invoke-direct {p0, p1}, Lio/netty/resolver/InetNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/net/InetAddress;>;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/SocketUtils;->addressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 45
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    return-void
.end method

.method protected doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/SocketUtils;->allAddressesByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 54
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    return-void
.end method
