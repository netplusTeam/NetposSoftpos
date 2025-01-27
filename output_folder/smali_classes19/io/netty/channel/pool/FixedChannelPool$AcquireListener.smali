.class Lio/netty/channel/pool/FixedChannelPool$AcquireListener;
.super Ljava/lang/Object;
.source "FixedChannelPool.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/FixedChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcquireListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected acquired:Z

.field private final originalPromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p2, "originalPromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p2, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    .line 406
    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    if-eqz v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$1000(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    .line 440
    return-void
.end method

.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$300(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$400(Lio/netty/channel/pool/FixedChannelPool;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 417
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FixedChannelPool was closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 418
    return-void

    .line 421
    :cond_1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_1

    .line 424
    :cond_2
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$500(Lio/netty/channel/pool/FixedChannelPool;)V

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$900(Lio/netty/channel/pool/FixedChannelPool;)V

    .line 430
    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 432
    :goto_1
    return-void

    .line 410
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
