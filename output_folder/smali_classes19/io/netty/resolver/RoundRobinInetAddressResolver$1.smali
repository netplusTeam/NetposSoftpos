.class Lio/netty/resolver/RoundRobinInetAddressResolver$1;
.super Ljava/lang/Object;
.source "RoundRobinInetAddressResolver.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/RoundRobinInetAddressResolver;->doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
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

.field final synthetic val$inetHost:Ljava/lang/String;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/RoundRobinInetAddressResolver;

    .line 55
    iput-object p1, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->this$0:Lio/netty/resolver/RoundRobinInetAddressResolver;

    iput-object p2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p3, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$inetHost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
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

    .line 58
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 61
    .local v1, "numAddresses":I
    if-lez v1, :cond_0

    .line 64
    iget-object v2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-static {v1}, Lio/netty/resolver/RoundRobinInetAddressResolver;->access$000(I)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    new-instance v3, Ljava/net/UnknownHostException;

    iget-object v4, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$inetHost:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 68
    .end local v0    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v1    # "numAddresses":I
    :goto_0
    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 71
    :goto_1
    return-void
.end method
