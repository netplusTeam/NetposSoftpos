.class final Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PoolThreadLocalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/buffer/PoolThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;

.field private final useCacheForAllThreads:Z


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "useCacheForAllThreads"    # Z

    .line 461
    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    .line 462
    iput-boolean p2, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    .line 463
    return-void
.end method

.method private leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    .line 495
    .local p1, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<TT;>;"
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 499
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 500
    .local v0, "minArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 501
    aget-object v2, p1, v1

    .line 502
    .local v2, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v3, v2, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, v0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 503
    move-object v0, v2

    .line 500
    .end local v2    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 496
    .end local v0    # "minArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized initialValue()Lio/netty/buffer/PoolThreadCache;
    .locals 12

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v2

    .line 468
    .local v2, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v3

    .line 470
    .local v3, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 471
    .local v0, "current":Ljava/lang/Thread;
    iget-boolean v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    new-instance v9, Lio/netty/buffer/PoolThreadCache;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v9

    .line 472
    .end local p0    # "this":Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Lio/netty/buffer/PoolThreadCache;

    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    .line 473
    invoke-static {v4}, Lio/netty/buffer/PooledByteBufAllocator;->access$200(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v7

    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v4}, Lio/netty/buffer/PooledByteBufAllocator;->access$300(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v8

    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v4}, Lio/netty/buffer/PooledByteBufAllocator;->access$400(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v9

    .line 474
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$500()I

    move-result v10

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$600()I

    move-result v11

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v4 .. v11}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V

    .line 476
    .local v1, "cache":Lio/netty/buffer/PoolThreadCache;
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 477
    invoke-static {}, Lio/netty/util/internal/ThreadExecutorMap;->currentExecutor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v4

    .line 478
    .local v4, "executor":Lio/netty/util/concurrent/EventExecutor;
    if-eqz v4, :cond_2

    .line 479
    iget-object v5, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v5}, Lio/netty/buffer/PooledByteBufAllocator;->access$800(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v7

    .line 480
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 479
    move-object v5, v4

    invoke-interface/range {v5 .. v11}, Lio/netty/util/concurrent/EventExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .end local v4    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 466
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v1    # "cache":Lio/netty/buffer/PoolThreadCache;
    .end local v2    # "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .end local v3    # "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->initialValue()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/buffer/PoolThreadCache;)V
    .locals 1
    .param p1, "threadCache"    # Lio/netty/buffer/PoolThreadCache;

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 492
    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    check-cast p1, Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->onRemoval(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method
