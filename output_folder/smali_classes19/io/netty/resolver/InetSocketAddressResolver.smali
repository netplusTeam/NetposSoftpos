.class public Lio/netty/resolver/InetSocketAddressResolver;
.super Lio/netty/resolver/AbstractAddressResolver;
.source "InetSocketAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/AbstractAddressResolver<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final nameResolver:Lio/netty/resolver/NameResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/NameResolver<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/NameResolver;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/resolver/NameResolver<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "nameResolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<Ljava/net/InetAddress;>;"
    const-class v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1, v0}, Lio/netty/resolver/AbstractAddressResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Class;)V

    .line 42
    iput-object p2, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0}, Lio/netty/resolver/NameResolver;->close()V

    .line 95
    return-void
.end method

.method protected doIsResolved(Ljava/net/InetSocketAddress;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .line 47
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic doIsResolved(Ljava/net/SocketAddress;)Z
    .locals 0

    .line 31
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1}, Lio/netty/resolver/InetSocketAddressResolver;->doIsResolved(Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method

.method protected doResolve(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "unresolvedAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/net/InetSocketAddress;>;"
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/resolver/NameResolver;->resolve(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/InetSocketAddressResolver$1;

    invoke-direct {v1, p0, p2, p1}, Lio/netty/resolver/InetSocketAddressResolver$1;-><init>(Lio/netty/resolver/InetSocketAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/net/InetSocketAddress;)V

    .line 56
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 66
    return-void
.end method

.method protected bridge synthetic doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver;->doResolve(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method protected doResolveAll(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "unresolvedAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<Ljava/net/InetSocketAddress;>;>;"
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/InetSocketAddressResolver$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver$2;-><init>(Lio/netty/resolver/InetSocketAddressResolver;Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    .line 74
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 90
    return-void
.end method

.method protected bridge synthetic doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver;->doResolveAll(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method
