.class public abstract Lio/netty/util/concurrent/CompleteFuture;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "CompleteFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;


# direct methods
.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 36
    iput-object p1, p0, Lio/netty/util/concurrent/CompleteFuture;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 37
    return-void
.end method


# virtual methods
.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    const-string v1, "listener"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {v0, p0, v1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 49
    return-object p0
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/concurrent/GenericFutureListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    .local v3, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez v3, :cond_0

    .line 58
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v4

    invoke-static {v4, p0, v3}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 55
    .end local v3    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-object p0
.end method

.method public await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-object p0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 123
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 118
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 148
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 43
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/CompleteFuture;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .line 133
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 138
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 128
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    return-object p0
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    return-object p0
.end method

.method public sync()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method
