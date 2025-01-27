.class final Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
.super Ljava/util/IdentityHashMap;
.source "ClosingFuture.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CloseableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/lang/AutoCloseable;",
        "Ljava/util/concurrent/Executor;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

.field private volatile whenClosed:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2200
    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2202
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture$1;

    .line 2200
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 2200
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "closeable"    # Ljava/lang/AutoCloseable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2255
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    if-nez p1, :cond_0

    .line 2257
    return-void

    .line 2259
    :cond_0
    monitor-enter p0

    .line 2260
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-nez v0, :cond_1

    .line 2261
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    monitor-exit p0

    return-void

    .line 2264
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$3300(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2266
    return-void

    .line 2264
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method applyAsyncClosingFunction(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/FluentFuture;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2224
    .local p1, "transformation":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<TV;TU;>;"
    .local p2, "input":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    .line 2226
    .local v0, "newCloseables":Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    .line 2227
    .local v1, "closingFuture":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TU;>;"
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    .line 2228
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$000(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2230
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2228
    return-object v2

    .line 2230
    .end local v1    # "closingFuture":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TU;>;"
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2231
    throw v1
.end method

.method applyClosingFunction(Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<",
            "-TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2211
    .local p1, "transformation":Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<-TV;TU;>;"
    .local p2, "input":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    .line 2213
    .local v0, "newCloseables":Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2213
    return-object v1

    .line 2215
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2216
    throw v1
.end method

.method public close()V
    .locals 4

    .line 2236
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_0

    .line 2237
    return-void

    .line 2239
    :cond_0
    monitor-enter p0

    .line 2240
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_1

    .line 2241
    monitor-exit p0

    return-void

    .line 2243
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    .line 2244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2246
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/ClosingFuture;->access$3300(Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;)V

    .line 2247
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/AutoCloseable;Ljava/util/concurrent/Executor;>;"
    goto :goto_0

    .line 2248
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->clear()V

    .line 2249
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    .line 2250
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2252
    :cond_3
    return-void

    .line 2244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method whenClosedCountDown()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 2272
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2273
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0

    .line 2275
    :cond_0
    monitor-enter p0

    .line 2276
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_1

    .line 2277
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit p0

    return-object v0

    .line 2279
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2280
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    .line 2281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
