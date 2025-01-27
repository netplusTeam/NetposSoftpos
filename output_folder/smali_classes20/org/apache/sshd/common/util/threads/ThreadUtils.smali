.class public final Lorg/apache/sshd/common/util/threads/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDefaultInstance(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 82
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoaders(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->createDefaultInstance(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 88
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "instanceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "instance":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static createDefaultInstance(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 96
    .local p0, "cls":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/ClassLoader;>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 98
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {v1, p1, p2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->createDefaultInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v2

    .line 102
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterateDefaultClassLoaders(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 149
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    const-class v0, Lorg/apache/sshd/common/util/threads/ThreadUtils;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 150
    .local v0, "effectiveAnchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v1, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method static synthetic lambda$resolveDefaultClassLoaders$0(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p0, "anchor"    # Ljava/lang/Class;

    .line 76
    invoke-static {p0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->iterateDefaultClassLoaders(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static newCachedThreadPool(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 10
    .param p0, "poolName"    # Ljava/lang/String;

    .line 210
    new-instance v9, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

    invoke-direct {v7, p0}, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static newCachedThreadPoolIf(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1
    .param p0, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .param p1, "poolName"    # Ljava/lang/String;

    .line 206
    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newCachedThreadPool(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static newFixedThreadPool(Ljava/lang/String;I)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 10
    .param p0, "poolName"    # Ljava/lang/String;
    .param p1, "nThreads"    # I

    .line 196
    new-instance v9, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

    invoke-direct {v7, p0}, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, v9

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static newFixedThreadPoolIf(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;Ljava/lang/String;I)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1
    .param p0, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "nThreads"    # I

    .line 192
    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newFixedThreadPool(Ljava/lang/String;I)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1
    .param p0, "poolName"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newFixedThreadPool(Ljava/lang/String;I)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3
    .param p0, "poolName"    # Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1
    .param p0, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->protectExecutorServiceShutdown(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;Z)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static protectExecutorServiceShutdown(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;Z)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1
    .param p0, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .param p1, "shutdownOnExit"    # Z

    .line 56
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    instance-of v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    .line 57
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 131
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 132
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 133
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 134
    return-object v1

    .line 137
    :cond_0
    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 141
    :cond_1
    if-nez v1, :cond_2

    .line 142
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 145
    :cond_2
    return-object v1
.end method

.method public static resolveDefaultClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "anchor"    # Ljava/lang/Object;

    .line 68
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static resolveDefaultClassLoaders(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 76
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/sshd/common/util/threads/ThreadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/ThreadUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static resolveDefaultClassLoaders(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "anchor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 72
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoaders(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
