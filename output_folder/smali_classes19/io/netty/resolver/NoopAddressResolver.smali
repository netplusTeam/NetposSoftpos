.class public Lio/netty/resolver/NoopAddressResolver;
.super Lio/netty/resolver/AbstractAddressResolver;
.source "NoopAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/AbstractAddressResolver<",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 33
    invoke-direct {p0, p1}, Lio/netty/resolver/AbstractAddressResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected doIsResolved(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "unresolvedAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/net/SocketAddress;>;"
    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 44
    return-void
.end method

.method protected doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .param p1, "unresolvedAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<Ljava/net/SocketAddress;>;>;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 50
    return-void
.end method
