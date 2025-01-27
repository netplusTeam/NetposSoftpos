.class Lio/netty/resolver/RoundRobinInetAddressResolver$2;
.super Ljava/lang/Object;
.source "RoundRobinInetAddressResolver.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/RoundRobinInetAddressResolver;->doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
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
.field final synthetic this$0:Lio/netty/resolver/RoundRobinInetAddressResolver;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/RoundRobinInetAddressResolver;

    .line 77
    iput-object p1, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;->this$0:Lio/netty/resolver/RoundRobinInetAddressResolver;

    iput-object p2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
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

    .line 80
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lio/netty/resolver/RoundRobinInetAddressResolver;->access$000(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 87
    iget-object v2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 88
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 91
    .end local v0    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :goto_0
    goto :goto_1

    .line 92
    :cond_1
    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 94
    :goto_1
    return-void
.end method
