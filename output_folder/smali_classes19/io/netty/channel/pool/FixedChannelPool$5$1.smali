.class Lio/netty/channel/pool/FixedChannelPool$5$1;
.super Ljava/lang/Object;
.source "FixedChannelPool.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/pool/FixedChannelPool$5;


# direct methods
.method constructor <init>(Lio/netty/channel/pool/FixedChannelPool$5;)V
    .locals 0
    .param p1, "this$1"    # Lio/netty/channel/pool/FixedChannelPool$5;

    .line 467
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    .local p1, "f":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

    iget-object v0, v0, Lio/netty/channel/pool/FixedChannelPool$5;->val$closeComplete:Lio/netty/util/concurrent/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

    iget-object v0, v0, Lio/netty/channel/pool/FixedChannelPool$5;->val$closeComplete:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 475
    :goto_0
    return-void
.end method
