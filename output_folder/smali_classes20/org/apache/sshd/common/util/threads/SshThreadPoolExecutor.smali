.class public Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SshThreadPoolExecutor.java"

# interfaces
.implements Lorg/apache/sshd/common/util/threads/CloseableExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;
    }
.end annotation


# instance fields
.field protected final closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 36
    new-instance v0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;-><init>(Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    .line 62
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 71
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 36
    new-instance v0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;-><init>(Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    .line 72
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 66
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 36
    new-instance v0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;-><init>(Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    .line 67
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 76
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 36
    new-instance v0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;-><init>(Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    .line 77
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

    .line 121
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 122
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 1
    .param p1, "immediately"    # Z

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 96
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 106
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .line 101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

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

    .line 126
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 127
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 86
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 87
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

    .line 91
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected terminated()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->closeable:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->doCloseImmediately()V

    .line 82
    return-void
.end method
