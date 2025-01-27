.class Lio/netty/resolver/InetSocketAddressResolver$2;
.super Ljava/lang/Object;
.source "InetSocketAddressResolver.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/InetSocketAddressResolver;->doResolveAll(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/util/List<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/InetSocketAddressResolver;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field final synthetic val$unresolvedAddress:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lio/netty/resolver/InetSocketAddressResolver;Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/InetSocketAddressResolver;

    .line 74
    iput-object p1, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->this$0:Lio/netty/resolver/InetSocketAddressResolver;

    iput-object p2, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->val$unresolvedAddress:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
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
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 82
    .local v3, "inetAddress":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->val$unresolvedAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v4, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 85
    .end local v0    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v1    # "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 88
    :goto_1
    return-void
.end method
