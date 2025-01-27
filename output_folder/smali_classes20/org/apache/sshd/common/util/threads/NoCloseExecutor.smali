.class public Lorg/apache/sshd/common/util/threads/NoCloseExecutor;
.super Ljava/lang/Object;
.source "NoCloseExecutor.java"

# interfaces
.implements Lorg/apache/sshd/common/util/threads/CloseableExecutorService;


# instance fields
.field protected final closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

.field protected final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 49
    new-instance v0, Lorg/apache/sshd/common/future/DefaultCloseFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    .line 50
    return-void
.end method


# virtual methods
.method public addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 143
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/common/future/CloseFuture;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InterruptedException;

    throw v1
.end method

.method public close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 1
    .param p1, "immediately"    # Z

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 87
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 94
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 148
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 107
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Executor has been shut down"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/NoCloseExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
