.class Lio/netty/resolver/InetSocketAddressResolver$1;
.super Ljava/lang/Object;
.source "InetSocketAddressResolver.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/InetSocketAddressResolver;->doResolve(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/InetSocketAddressResolver;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field final synthetic val$unresolvedAddress:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lio/netty/resolver/InetSocketAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/InetSocketAddressResolver;

    .line 56
    iput-object p1, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->this$0:Lio/netty/resolver/InetSocketAddressResolver;

    iput-object p2, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p3, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->val$unresolvedAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->val$unresolvedAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 64
    :goto_0
    return-void
.end method
