.class public Lio/netty/util/concurrent/PromiseAggregator;
.super Ljava/lang/Object;
.source "PromiseAggregator.java"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "F::",
        "Lio/netty/util/concurrent/Future<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "TF;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final aggregatePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field

.field private final failPending:Z

.field private pendingPromises:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/netty/util/concurrent/PromiseAggregator;, "Lio/netty/util/concurrent/PromiseAggregator<TV;TF;>;"
    .local p1, "aggregatePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/util/concurrent/PromiseAggregator;-><init>(Lio/netty/util/concurrent/Promise;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/Promise;Z)V
    .locals 1
    .param p2, "failPending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lio/netty/util/concurrent/PromiseAggregator;, "Lio/netty/util/concurrent/PromiseAggregator<TV;TF;>;"
    .local p1, "aggregatePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "aggregatePromise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/Promise;

    iput-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    .line 49
    iput-boolean p2, p0, Lio/netty/util/concurrent/PromiseAggregator;->failPending:Z

    .line 50
    return-void
.end method


# virtual methods
.method public final varargs add([Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/PromiseAggregator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;)",
            "Lio/netty/util/concurrent/PromiseAggregator<",
            "TV;TF;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 65
    .local p0, "this":Lio/netty/util/concurrent/PromiseAggregator;, "Lio/netty/util/concurrent/PromiseAggregator<TV;TF;>;"
    .local p1, "promises":[Lio/netty/util/concurrent/Promise;, "[Lio/netty/util/concurrent/Promise<TV;>;"
    const-string v0, "promises"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    array-length v0, p1

    if-nez v0, :cond_0

    .line 67
    return-object p0

    .line 69
    :cond_0
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 72
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 73
    array-length v0, p1

    .local v0, "size":I
    goto :goto_0

    .line 75
    .end local v0    # "size":I
    :cond_1
    const/4 v0, 0x2

    .line 77
    .restart local v0    # "size":I
    :goto_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    .line 79
    .end local v0    # "size":I
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 80
    .local v2, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TV;>;"
    if-nez v2, :cond_3

    .line 81
    goto :goto_2

    .line 83
    :cond_3
    iget-object v3, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v2, p0}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 79
    .end local v2    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TV;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_4
    monitor-exit p0

    .line 87
    return-object p0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lio/netty/util/concurrent/PromiseAggregator;, "Lio/netty/util/concurrent/PromiseAggregator<TV;TF;>;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "TF;"
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_1

    .line 95
    .end local p0    # "this":Lio/netty/util/concurrent/PromiseAggregator;, "Lio/netty/util/concurrent/PromiseAggregator<TV;TF;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 98
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/util/concurrent/PromiseAggregator;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 99
    iget-boolean v1, p0, Lio/netty/util/concurrent/PromiseAggregator;->failPending:Z

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/concurrent/Promise;

    .line 101
    .local v2, "pendingFuture":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TV;>;"
    invoke-interface {v2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 102
    nop

    .end local v2    # "pendingFuture":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TV;>;"
    goto :goto_0

    .line 104
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseAggregator;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "future":Lio/netty/util/concurrent/Future;, "TF;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
