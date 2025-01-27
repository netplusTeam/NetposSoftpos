.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitTerminationUninterruptibly(Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 534
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p0, v1, v2, v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitTerminationUninterruptibly(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 535
    return-void
.end method

.method public static awaitTerminationUninterruptibly(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 564
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 568
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 568
    :cond_0
    return v5

    .line 569
    :catch_0
    move-exception v5

    .line 570
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 571
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 572
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 575
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 576
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 578
    :cond_1
    throw v1
.end method

.method public static awaitTerminationUninterruptibly(Ljava/util/concurrent/ExecutorService;Ljava/time/Duration;)Z
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 547
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitTerminationUninterruptibly(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 58
    const/4 v0, 0x0

    .line 62
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 63
    :cond_0
    return-void

    .line 69
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 72
    :cond_1
    throw v1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 66
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 99
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 104
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 104
    :cond_0
    return v5

    .line 105
    :catch_0
    move-exception v5

    .line 106
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 107
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 108
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 111
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_1
    throw v1
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;Ljava/time/Duration;)Z
    .locals 3
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 85
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p0, "condition"    # Ljava/util/concurrent/locks/Condition;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 141
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 145
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 145
    :cond_0
    return v5

    .line 146
    :catch_0
    move-exception v5

    .line 147
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 148
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 149
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 152
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 155
    :cond_1
    throw v1
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/locks/Condition;Ljava/time/Duration;)Z
    .locals 3
    .param p0, "condition"    # Ljava/util/concurrent/locks/Condition;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 126
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 240
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 244
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 244
    :cond_0
    return-object v1

    .line 250
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 253
    :cond_1
    throw v1

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 247
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 308
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 310
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 311
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 316
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 316
    :cond_0
    return-object v5

    .line 317
    :catch_0
    move-exception v5

    .line 318
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 319
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 320
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 323
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 326
    :cond_1
    throw v1
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;Ljava/time/Duration;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/time/Duration;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 281
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .locals 3
    .param p0, "toJoin"    # Ljava/lang/Thread;

    .line 161
    const/4 v0, 0x0

    .line 165
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 166
    :cond_0
    return-void

    .line 172
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 175
    :cond_1
    throw v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 169
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "toJoin"    # Ljava/lang/Thread;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 197
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 201
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 205
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 206
    :cond_0
    return-void

    .line 207
    :catch_0
    move-exception v5

    .line 208
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 209
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 210
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 213
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 216
    :cond_1
    throw v1
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;Ljava/time/Duration;)V
    .locals 3
    .param p0, "toJoin"    # Ljava/lang/Thread;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 187
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V

    .line 188
    return-void
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 358
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 362
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 363
    :cond_0
    return-void

    .line 369
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 372
    :cond_1
    throw v1

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 366
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "sleepFor"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 395
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 399
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 400
    :cond_0
    return-void

    .line 401
    :catch_0
    move-exception v5

    .line 402
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 403
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 404
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 407
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 408
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 410
    :cond_1
    throw v1
.end method

.method public static sleepUninterruptibly(Ljava/time/Duration;)V
    .locals 3
    .param p0, "sleepFor"    # Ljava/time/Duration;

    .line 384
    invoke-static {p0}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    .line 385
    return-void
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 332
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    const/4 v0, 0x0

    .line 336
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 336
    :cond_0
    return-object v1

    .line 342
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 345
    :cond_1
    throw v1

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 339
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 465
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 470
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v1, v2, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 470
    :cond_0
    return v5

    .line 471
    :catch_0
    move-exception v5

    .line 472
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 473
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 474
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 477
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 480
    :cond_1
    throw v1
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;ILjava/time/Duration;)Z
    .locals 3
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "permits"    # I
    .param p2, "timeout"    # Ljava/time/Duration;

    .line 448
    nop

    .line 449
    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 448
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 435
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;Ljava/time/Duration;)Z
    .locals 3
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 422
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static tryLockUninterruptibly(Ljava/util/concurrent/locks/Lock;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p0, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, "interrupted":Z
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 507
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 511
    .local v3, "end":J
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v5}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 511
    :cond_0
    return v5

    .line 512
    :catch_0
    move-exception v5

    .line 513
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 514
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v1, v3, v6

    .line 515
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 518
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 521
    :cond_1
    throw v1
.end method

.method public static tryLockUninterruptibly(Ljava/util/concurrent/locks/Lock;Ljava/time/Duration;)Z
    .locals 3
    .param p0, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 492
    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryLockUninterruptibly(Ljava/util/concurrent/locks/Lock;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
