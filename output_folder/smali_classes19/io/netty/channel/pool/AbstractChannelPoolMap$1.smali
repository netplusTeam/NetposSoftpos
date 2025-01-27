.class Lio/netty/channel/pool/AbstractChannelPoolMap$1;
.super Ljava/lang/Object;
.source "AbstractChannelPoolMap.java"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/AbstractChannelPoolMap;->removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "Lio/netty/util/concurrent/Future<",
        "-",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/pool/AbstractChannelPoolMap;

.field final synthetic val$removePromise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/channel/pool/AbstractChannelPoolMap;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/pool/AbstractChannelPoolMap;

    .line 83
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap$1;, "Lio/netty/channel/pool/AbstractChannelPoolMap$1;"
    iput-object p1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->this$0:Lio/netty/channel/pool/AbstractChannelPoolMap;

    iput-object p2, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/netty/channel/pool/AbstractChannelPoolMap$1;, "Lio/netty/channel/pool/AbstractChannelPoolMap$1;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 91
    :goto_0
    return-void
.end method
