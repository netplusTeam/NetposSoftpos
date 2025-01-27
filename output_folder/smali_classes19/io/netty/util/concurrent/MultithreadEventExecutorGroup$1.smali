.class Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;
.super Ljava/lang/Object;
.source "MultithreadEventExecutorGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    .line 113
    iput-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$000(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$100(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$200(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 119
    :cond_0
    return-void
.end method
