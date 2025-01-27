.class public Lio/netty/resolver/RoundRobinInetAddressResolver;
.super Lio/netty/resolver/InetNameResolver;
.source "RoundRobinInetAddressResolver.java"


# instance fields
.field private final nameResolver:Lio/netty/resolver/NameResolver;
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
    .locals 0
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

    .line 46
    .local p2, "nameResolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<Ljava/net/InetAddress;>;"
    invoke-direct {p0, p1}, Lio/netty/resolver/InetNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 47
    iput-object p2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    .line 48
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 37
    invoke-static {p0}, Lio/netty/resolver/RoundRobinInetAddressResolver;->randomIndex(I)I

    move-result v0

    return v0
.end method

.method private static randomIndex(I)I
    .locals 1
    .param p0, "numAddresses"    # I

    .line 99
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0}, Lio/netty/resolver/NameResolver;->close()V

    .line 105
    return-void
.end method

.method protected doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
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

    .line 55
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/RoundRobinInetAddressResolver$1;

    invoke-direct {v1, p0, p2, p1}, Lio/netty/resolver/RoundRobinInetAddressResolver$1;-><init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 73
    return-void
.end method

.method protected doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
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

    .line 77
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/RoundRobinInetAddressResolver$2;

    invoke-direct {v1, p0, p2}, Lio/netty/resolver/RoundRobinInetAddressResolver$2;-><init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 96
    return-void
.end method
